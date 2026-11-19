#!/usr/bin/env node
/*
 * bridge_unit_test.js -- 单元测试：把 pcm_bridge_draft.js **原样**加载到一套
 * 假 Frida 环境里跑，验证三件事：
 *
 *   T1 timespec 读取：tv_sec@+0 / tv_nsec@+4 分别正确（修订 3 的两次读同一地址会被抓出来）
 *   T2 时钟失败：hook 内丢帧、drain 内不发、计数正确、绝不写入 ts=0 的帧
 *   T3 端到端：一帧从 hook 到 sendto 的头字段/载荷/CRC 全部正确（CRC 用 BigInt 独立参考）
 *   T4 DRY_RUN：绝不调用 socket()/connect()/sendto()
 *
 * 它不连设备、不连 frida-server，纯 node 本机执行。
 *
 *   node bridge_unit_test.js
 */
'use strict';
const fs = require('fs');
const path = require('path');

const BRIDGE = path.join(__dirname, '..', 'pcm_bridge_draft.js');
const SRC = fs.readFileSync(BRIDGE, 'utf8');

/* ---------------- 迷你断言 ---------------- */
let pass = 0, fail = 0;
const failures = [];
function ok(cond, name, detail) {
  if (cond) { pass++; console.log(`  ok   ${name}`); }
  else { fail++; failures.push(name + (detail ? ' :: ' + detail : '')); console.log(`  FAIL ${name}${detail ? ' :: ' + detail : ''}`); }
}
function eq(a, b, name) { ok(a === b, name, `got=${a} want=${b}`); }
function hex(v) { return '0x' + (v >>> 0).toString(16).padStart(8, '0'); }

/* ---------------- 假内存（Buffer 支撑，支持 add 形成视图） ---------------- */
class Mem {
  constructor(buf, off) { this.buf = buf; this.off = off; this.kind = 'mem'; }
  add(n) { return new Mem(this.buf, this.off + n); }
  readS32() { return this.buf.readInt32LE(this.off); }
  readU32() { return this.buf.readUInt32LE(this.off); }
  readS16() { return this.buf.readInt16LE(this.off); }
  writeS32(v) { this.buf.writeInt32LE(v | 0, this.off); }
  writeU8(v) { this.buf.writeUInt8(v & 0xff, this.off); }
  writeU16(v) { this.buf.writeUInt16LE(v & 0xffff, this.off); }
  writeU32(v) { this.buf.writeUInt32LE(v >>> 0, this.off); }
  writeU64(v) { const n = typeof v === 'bigint' ? v : BigInt(Math.floor(v));
    this.buf.writeUInt32LE(Number(n & 0xffffffffn), this.off);
    this.buf.writeUInt32LE(Number((n >> 32n) & 0xffffffffn), this.off + 4); }
  writeS16(v) { this.buf.writeInt16LE(v | 0, this.off); }
  writeUtf8String(s) { this.buf.write(s, this.off, 'utf8'); }
  readByteArray(n) { return this.buf.subarray(this.off, this.off + n); }
  isNull() { return false; }
  toInt32() { return this.value | 0; }
  sub(o) { return { toInt32: () => 0xd455c, toString: () => 'feed' }; }
  toString() { return 'mem@' + this.off; }
}
function mkPtr(value) { const m = new Mem(Buffer.alloc(8), 0); m.value = value; m.kind = 'ptr'; return m; }

/* ---------------- 假 Frida 环境 ---------------- */
function makeEnv(opts) {
  const env = {
    allocs: [], sends: [], timers: { interval: [], timeout: [] },
    hooks: [], detachCount: 0, weakBinds: [],
    clearedIntervals: 0, clearedTimeouts: 0,
    attachThrows: !!(opts && opts.attachThrows),
    detachThrows: !!(opts && opts.detachThrows),
    syscalls: { socket: 0, connect: 0, sendto: 0, fcntl: 0, close: 0 },
    clock: { mode: opts.clockMode || 'ok', sec: opts.sec, nsec: opts.nsec, calls: 0 },
    tid: opts.tid || 4242
  };

  const MemoryStub = {
    alloc(n) { const m = new Mem(Buffer.alloc(Math.max(n, 8) + 16), 0); m.size = n; env.allocs.push(m); return m; }
  };

  const feedPtr = new Mem(Buffer.alloc(64), 0);
  const sig = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
               0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];
  sig.forEach((b, i) => feedPtr.buf.writeUInt8(b, i));
  feedPtr.sub = () => ({ toInt32: () => 0xd455c });
  feedPtr.toString = () => '0xfakefeed';

  const ModuleStub = {
    findBaseAddress(name) { return name === 'libsmartbox.so' ? new Mem(Buffer.alloc(8), 0) : null; },
    findExportByName(mod, sym) {
      if (mod === 'libsmartbox.so' && sym === '_ZN14AGSpeechEngine4feedEjPKvi') return feedPtr;
      return null;
    },
    getExportByName(mod, name) { return { __libc: name }; }
  };

  const libcImpl = {
    socket: () => { env.syscalls.socket++; return 7; },
    connect: () => { env.syscalls.connect++; return 0; },
    fcntl: (fd, cmd, arg) => {
      env.syscalls.fcntl++;
      if (cmd === 3) return 0x800;      /* F_GETFL -> O_NONBLOCK 已置位 */
      return 0;
    },
    close: () => { env.syscalls.close++; return 0; },
    sendto: (fd, buf, len) => { env.syscalls.sendto++; env.lastSend = { fd, len, buf }; return len; },
    clock_gettime: (clk, tsp) => {
      env.clock.calls++;
      if (env.clock.mode === 'fail') return -1;
      if (env.clock.mode === 'badnsec') {        /* tv_nsec 非法：1e9 */
        tsp.writeS32(env.clock.sec);
        tsp.add(4).writeS32(1000000000);
        return 0;
      }
      tsp.writeS32(env.clock.sec);
      tsp.add(4).writeS32(env.clock.nsec);
      return 0;
    }
  };

  const envObj = {
    Module: ModuleStub,
    Memory: MemoryStub,
    Process: { getCurrentThreadId: () => env.tid },
    Interceptor: {
      attach(addr, cbs) {
        if (env.attachThrows) throw new Error('attach failed (injected)');
        env.hooks.push(cbs);
        return {
          detach() {
            env.detachCount++;
            if (env.detachThrows) throw new Error('detach failed (injected)');
          }
        };
      }
    },
    NativeFunction: function (tag, ret, args) { return function (...a) { return libcImpl[tag.__libc](...a); }; },
    ptr: (v) => mkPtr(v),
    send: (o) => { env.sends.push(o); },
    setInterval: (fn) => { env.timers.interval.push(fn); return env.timers.interval.length; },
    clearInterval: () => { env.clearedIntervals++; },
    setTimeout: (fn, ms) => { env.timers.timeout.push(fn); return env.timers.timeout.length; },
    clearTimeout: () => { env.clearedTimeouts++; },
    Script: { bindWeak: (t, cb) => { env.weakBinds.push(cb); return 1; } },
    rpc: { exports: null }
  };
  env.obj = envObj;
  return env;
}

function loadBridge(src, env) {
  const o = env.obj;
  const fn = new Function('Module', 'Memory', 'Process', 'Interceptor', 'NativeFunction',
                          'send', 'setInterval', 'clearInterval', 'setTimeout', 'clearTimeout',
                          'Script', 'rpc', 'ptr', src);
  fn(o.Module, o.Memory, o.Process, o.Interceptor, o.NativeFunction,
     o.send, o.setInterval, o.clearInterval, o.setTimeout, o.clearTimeout,
     o.Script, o.rpc, o.ptr);
  return o.rpc.exports;
}

/* 造一帧 5120 B 的 4ch 交错 PCM，ch0[i] = i（便于校验抽取与 CRC） */
function makePcm() {
  const buf = Buffer.alloc(5120);
  for (let i = 0; i < 640; i++) {
    buf.writeInt16LE(i - 320, i * 8);          /* ch0 有正有负 */
    buf.writeInt16LE(999, i * 8 + 2);          /* ch1 无关 */
    buf.writeInt16LE(-999, i * 8 + 4);
    buf.writeInt16LE(0, i * 8 + 6);
  }
  return buf;
}

/* BigInt 参考实现（与 C 的 uint32 回绕乘法等价，不依赖被测代码） */
function fnvBig(buf) {
  let h = 2166136261n;
  for (let i = 0; i < buf.length; i++) { h ^= BigInt(buf[i]); h = (h * 16777619n) & 0xffffffffn; }
  return Number(h);
}

/* ---------------- T1: decodeTimespec 单元测试 ---------------- */
function testTimespec() {
  console.log('\n[T1] decodeTimespec (timespec 偏移)');
  const m = SRC.match(/\/\* TS-BEGIN[\s\S]*?\*\/([\s\S]*?)\/\* TS-END \*\//);
  ok(!!m, 'TS-BEGIN/TS-END 标记存在');
  if (!m) return;
  const decode = new Function(m[1] + '\nreturn decodeTimespec;')();

  function mk(sec, nsec) {
    const b = Buffer.alloc(8);
    b.writeInt32LE(sec, 0);
    b.writeInt32LE(nsec, 4);
    return new Mem(b, 0);
  }

  eq(decode(mk(0, 0)), 0, '(0,0) -> 0');
  eq(decode(mk(12345, 678901234)), 12345678901, '(12345,678901234) -> 12345678901');
  eq(decode(mk(100, 500)), 100000000, '(100,500) -> 100000000（500 ns 截断为 0 µs）');
  eq(decode(mk(1, 999999999)), 1999999, '(1,999999999) -> 1999999');

  /* 这条专门抓"两次读同一地址"：正确 7000999；旧写法会得到 7000000（n 也被当成 7） */
  const offByOff = decode(mk(7, 999999));
  eq(offByOff, 7000999, '(7,999999) -> 7000999');
  ok(offByOff !== 7000000, '必须不是 7000000（证明 tv_nsec 取自 +4，而不是重复读 +0）');

  eq(decode(mk(-1, 0)), -1, 'tv_sec 负数 -> -1');
  eq(decode(mk(0, -1)), -1, 'tv_nsec 负数 -> -1');
  eq(decode(mk(0, 1000000000)), -1, 'tv_nsec = 1e9 -> -1');
  eq(decode(mk(0, 999999999)), 999999, 'tv_nsec = 999999999 -> 999999')
}

/* ---------------- T2/T3: 整脚本跑在假环境里 ---------------- */
const SEC = 12345, NSEC = 678901234;
const EXPECT_US = SEC * 1000000 + Math.floor(NSEC / 1000);

function mount(opts) {
  const env = makeEnv(Object.assign({ sec: SEC, nsec: NSEC, tid: 4242 }, opts || {}));
  const src = opts && opts.dryRun
    ? SRC.replace(/var DRY_RUN\s*=\s*false;/, 'var DRY_RUN = true;')
    : SRC;
  if (opts && opts.dryRun) {
    ok(/var DRY_RUN\s*=\s*true;/.test(src), 'DRY_RUN 已改写为 true');
  }
  const exportsObj = loadBridge(src, env);
  return { env, exports: exportsObj };
}

function feedOnce(env, pcmBuf) {
  const hook = env.hooks[0];
  if (!hook) return false;
  const data = new Mem(pcmBuf, 0);
  const args = [mkPtr(0), mkPtr(1), data, mkPtr(5120)];
  hook.onEnter(args);
  return true;
}

function findRing(env) {
  /* 环是第一个大块分配（RING_CAP * MSG_LEN = 84480） */
  return env.allocs.find(a => a.size === 64 * 1320);
}

function testNormal() {
  console.log('\n[T2] 正常时钟：hook -> 环 -> sendto，头字段/载荷/CRC 全查');
  const { env, exports } = mount();
  const ring = findRing(env);
  ok(!!ring, '找到环形缓冲（64*1320）');
  ok(env.hooks.length === 1, 'hook 已安装');

  const pcm = makePcm();
  ok(feedOnce(env, pcm), 'onEnter 已调用');
  const st1 = exports.stats();
  eq(st1.enabled, true, 'enabled = true');
  eq(st1.frames, 1, 'frames = 1');
  eq(st1.clockFail, 0, 'clockFail = 0');
  eq(st1.clockDrop, 0, 'clockDrop = 0');

  /* 载荷：ch0 = i-320（小端 int16） */
  const payload = Buffer.alloc(1280);
  for (let i = 0; i < 640; i++) payload.writeInt16LE(i - 320, i * 2);
  const slot0 = ring.buf.subarray(0, 40 + 1280);
  ok(slot0.subarray(40, 40 + 1280).equals(payload), 'ch0 抽取逐字节正确');

  /* 还没发：drain 由 tick 驱动 */
  eq(env.syscalls.sendto, 0, 'drain 未跑时没有 sendto');

  env.timers.interval[0]();          /* 触发一次 tick */
  eq(env.syscalls.sendto, 1, 'tick 后 sendto 调用 1 次');
  eq(env.syscalls.socket, 1, 'socket() 调用 1 次');
  eq(env.lastSend.len, 1320, '发送长度 = 1320');
  eq(exports.stats().sent, 1, 'sent = 1');

  /* 头字段 */
  const h = slot0;
  eq(h.readUInt32LE(0) >>> 0, 0x325A4754, 'magic = TGZ2');
  eq(h.readUInt8(4), 2, 'ver = 2');
  eq(h.readUInt16LE(6), 40, 'hdr_len = 40');
  eq(h.readUInt32LE(8), 1, 'seq = 1');
  const lo = BigInt(h.readUInt32LE(12)), hi = BigInt(h.readUInt32LE(16));
  const ts = Number(lo | (hi << 32n));
  eq(ts, EXPECT_US, `ts_us = ${EXPECT_US}（来自 tv_sec*1e6+tv_nsec/1000）`);
  eq(h.readUInt32LE(24), 16000, 'rate = 16000');
  eq(h.readUInt16LE(28), 1, 'ch = 1');
  eq(h.readUInt16LE(30), 16, 'bits = 16');
  eq(h.readUInt32LE(32), 1280, 'payload_len = 1280');
  eq(h.readUInt32LE(36) >>> 0, fnvBig(payload), 'crc 与 BigInt 参考实现一致');
}

function testClockFail(mode, label) {
  console.log(`\n[T3] 时钟失败（${label}）：必须丢帧且不发送`);
  const { env, exports } = mount({ clockMode: mode });
  const ring = findRing(env);
  const pcm = makePcm();
  feedOnce(env, pcm);

  const st = exports.stats();
  eq(st.frames, 0, 'frames = 0（未入环）');
  eq(st.clockDrop, 1, 'clockDrop = 1');
  eq(st.clockFail >= 1, true, 'clockFail >= 1');

  env.timers.interval[0]();          /* tick 也不能发 */
  eq(env.syscalls.sendto, 0, '时钟失败时没有 sendto');
  eq(exports.stats().sent, 0, 'sent = 0');
  eq(exports.stats().noClockTicks >= 1, true, 'noClockTicks >= 1（drain 直接返回）');

  /* 环里不能留下 ts=0 的帧：槽 0 的头应当仍是全零（从未写头） */
  ok(ring.buf.subarray(0, 8).every(b => b === 0), '环槽内没有写入任何头（不存在 ts=0 的帧）');
}

function testClockRecover() {
  console.log('\n[T4] 时钟恢复后必须立刻恢复正常发送');
  const { env, exports } = mount({ clockMode: 'fail' });
  feedOnce(env, makePcm());
  eq(exports.stats().clockDrop, 1, '失败阶段 clockDrop = 1');
  env.clock.mode = 'ok';
  feedOnce(env, makePcm());
  eq(exports.stats().frames, 1, '恢复后 frames = 1');
  env.timers.interval[0]();
  eq(env.syscalls.sendto, 1, '恢复后有 sendto');
}

function testDryRun() {
  console.log('\n[T5] DRY_RUN：绝不 socket()/connect()/sendto()');
  const { env, exports } = mount({ dryRun: true });
  feedOnce(env, makePcm());
  env.timers.interval[0]();
  eq(env.syscalls.socket, 0, 'socket() 0 次');
  eq(env.syscalls.connect, 0, 'connect() 0 次');
  eq(env.syscalls.sendto, 0, 'sendto() 0 次');
  eq(exports.stats().frames, 1, 'DRY_RUN 仍统计 frames = 1');
  eq(exports.stats().sent, 1, 'DRY_RUN 仍统计 sent = 1');
}

function testMultiProducer() {
  console.log('\n[T6] 单生产者守卫：换 tid 立即禁用');
  const { env, exports } = mount();
  feedOnce(env, makePcm());
  eq(exports.stats().enabled, true, '第一个 tid 后仍 enabled');
  env.tid = 9999;
  feedOnce(env, makePcm());
  const st = exports.stats();
  eq(st.enabled, false, '第二个 tid 后 enabled = false');
  eq(/multi-producer/.test(st.why), true, 'why 记录 multi-producer');
  const before = st.frames;
  feedOnce(env, makePcm());
  eq(exports.stats().frames, before, '禁用后不再入环');
}

/* ---------------- T7–T10: 生命周期 ---------------- */
function testLifecycle() {
  console.log('\n[T7] stop：先关闸门 -> 清定时器 -> detach 一次 -> 关 socket');
  const { env, exports } = mount();
  feedOnce(env, makePcm());
  env.timers.interval[0]();                      /* 建 socket + 发一帧 */
  eq(env.syscalls.sendto, 1, 'stop 之前已发送 1 帧');
  eq(env.hooks.length, 1, 'stop 之前 hook 在位');

  const s = exports.stop();
  eq(s.stopped, true, 'stopped = true');
  eq(s.hookDetachAttempted, true, 'hookDetachAttempted = true');
  eq(s.hookDetached, true, 'hookDetached = true');
  eq(s.hookDetachError, null, 'hookDetachError = null');
  eq(env.detachCount, 1, 'listener.detach() 调用 1 次');
  eq(env.clearedIntervals, 2, 'tick 与 stat 都 clearInterval（2 次）');
  eq(s.tickActive, false, 'tickActive = false');
  eq(s.statActive, false, 'statActive = false');
  eq(env.syscalls.close >= 1, true, 'socket 已关闭');
  eq(exports.stats().enabled, false, 'enabled 已置 false');

  /* teardown 之后：tick 与 hook 都不再产生动作 */
  const sentBefore = env.syscalls.sendto;
  env.timers.interval[0]();
  eq(env.syscalls.sendto, sentBefore, 'teardown 后 tick 不再发送');
  feedOnce(env, makePcm());
  eq(exports.stats().frames, 1, 'teardown 后 hook 不再入环（frames 停在 1）');
}

function testStopIdempotent() {
  console.log('\n[T8] stop 幂等：重复调用不重复 detach / 不重复清理');
  const { env, exports } = mount();
  const a = exports.stop();
  const b = exports.stop();
  const c = exports.stop();
  eq(a.stopped && b.stopped && c.stopped, true, '三次 stop 都返回 stopped = true');
  eq(env.detachCount, 1, 'detach 只发生 1 次');
  eq(env.clearedIntervals, 2, 'clearInterval 只发生 2 次（tick + stat）');
}

function testDetachFailure() {
  console.log('\n[T9] detach 抛异常：错误被记录，不中断后续清理');
  const { env, exports } = mount({ detachThrows: true });
  feedOnce(env, makePcm());
  env.timers.interval[0]();                        /* 先真的建出 socket */
  eq(env.syscalls.socket, 1, 'socket 已创建');
  const closes = env.syscalls.close;

  const s = exports.stop();
  eq(s.hookDetachAttempted, true, 'hookDetachAttempted = true');
  eq(s.hookDetached, false, 'hookDetached = false');
  eq(/detach failed/.test(s.hookDetachError || ''), true, 'hookDetachError 记录异常 -> ' + s.hookDetachError);
  eq(env.clearedIntervals, 2, '定时器仍然被清理');
  eq(env.syscalls.close, closes + 1, 'detach 抛异常后 socket 仍然被关闭一次');
}

function testAttachFailure() {
  console.log('\n[T10] attach 失败：统一回滚，不留 hook / 不留定时器');
  const { env, exports } = mount({ attachThrows: true });
  const st = exports.stats();
  eq(st.enabled, false, 'enabled = false');
  eq(/^install:/.test(st.why), true, 'why 以 install: 开头 -> ' + st.why);
  eq(env.hooks.length, 0, '没有可用的 hook');
  eq(env.timers.interval.length, 0, '没有创建任何定时器');
  eq(st.lifecycle.stopped, true, '已进入 stopped 状态');
  eq(st.lifecycle.hookDetachAttempted, false, '没有 listener，未尝试 detach');
}

function testStopAfterSocketClose() {
  console.log('\n[T11] stop 关 socket 之后不再发送');
  const { env, exports } = mount();
  feedOnce(env, makePcm());
  env.timers.interval[0]();
  const closes = env.syscalls.close;
  const sent = env.syscalls.sendto;
  exports.stop();
  eq(env.syscalls.close, closes + 1, 'stop 关闭 socket 恰好一次');
  feedOnce(env, makePcm());
  env.timers.interval[0]();
  eq(env.syscalls.sendto, sent, 'stop 之后不再 sendto');
}

/* ---------------- 跑 ---------------- */
console.log('bridge_unit_test.js  (source: ' + path.basename(BRIDGE) + ', ' + SRC.split('\n').length + ' lines)');
testTimespec();
testNormal();
testClockFail('fail', 'clock_gettime 返回 -1');
testClockFail('badnsec', 'tv_nsec = 1e9 非法');
testClockRecover();
testDryRun();
testMultiProducer();
testLifecycle();
testStopIdempotent();
testDetachFailure();
testAttachFailure();
testStopAfterSocketClose();

console.log(`\n=== ${pass} passed, ${fail} failed ===`);
if (fail) { console.log(failures.map(f => '  - ' + f).join('\n')); process.exit(1); }
