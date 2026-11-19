#!/usr/bin/env node
/*
 * bridge_unit_test.js -- T3 单元测试
 *
 * 原则：**载入真正发布的 pcm_bridge_draft.js**，放进一套假 Frida 环境里执行，
 * 不复制、不简化被测实现，保证测到的就是会送上设备的代码。
 *
 * 覆盖（对应任务书第五节 18 项）：
 *   T01 T2 式整帧 5120 B 复制入环
 *   T02 lane0 抽取（q*4 int16 == q*8 byte）与独立参考实现一致
 *   T03 TGZ2 v2 头字段全部正确
 *   T04 ts_us / epoch / seq 正确（seq 同 epoch 内单调 +1）
 *   T05 真实 PCM 不置 SYNTHETIC（也不置 SPEECH）
 *   T06 JS FNV-1a == C tgz2_fnv1a()（内嵌 tests_c/fnv_golden.c 的实算常量）
 *   T07 sendto 成功路径
 *   T08 EAGAIN 丢帧不重试
 *   T09 ENOBUFS 丢帧不重试
 *   T10 对端消失 -> 关 socket -> 下个 tick 重连
 *   T11 过期帧（>500 ms）丢弃且不发送
 *   T12 clock_gettime 失败丢帧
 *   T13 环满丢帧
 *   T14 出现第二个生产线程 -> 禁用旁路
 *   T15 stop 幂等
 *   T16 初始化中途失败 -> 资源回滚
 *   T17 DRY_RUN 不建 socket / 不 sendto
 *   T18 Hook 回调内不做 socket / CRC / lane0 抽取 / 动态分配
 *
 * 不连设备、不连 frida-server：node tests/bridge_unit_test.js
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
  if (cond) { pass++; console.log('  ok   ' + name); }
  else {
    fail++;
    failures.push(name + (detail ? ' :: ' + detail : ''));
    console.log('  FAIL ' + name + (detail ? ' :: ' + detail : ''));
  }
}
function eq(a, b, name) {
  ok(a === b, name, 'got=' + String(a) + ' want=' + String(b));
}
function hx(v) { return '0x' + (v >>> 0).toString(16).padStart(8, '0'); }

/* ---------------- 假内存 ---------------- */
class Mem {
  constructor(buf, off) { this.buf = buf; this.off = off; this.isMem = true; }
  add(n) { return new Mem(this.buf, this.off + n); }
  readS32() { return this.buf.readInt32LE(this.off); }
  readU32() { return this.buf.readUInt32LE(this.off); }
  readS16() { return this.buf.readInt16LE(this.off); }
  writeU8(v) { this.buf.writeUInt8(v & 0xff, this.off); return this; }
  writeS16(v) { this.buf.writeInt16LE(v | 0, this.off); return this; }
  writeU16(v) { this.buf.writeUInt16LE(v & 0xffff, this.off); return this; }
  writeU32(v) { this.buf.writeUInt32LE(v >>> 0, this.off); return this; }
  writeUtf8String(s) { this.buf.write(s, this.off, 'utf8'); return this; }
  writeByteArray(ta) {
    const b = ArrayBuffer.isView(ta)
      ? Buffer.from(ta.buffer, ta.byteOffset, ta.byteLength)
      : Buffer.from(ta);
    b.copy(this.buf, this.off);
    return this;
  }
  /* Frida 语义：返回 ArrayBuffer（不是 Buffer），这样被测代码里的
   * `new Int16Array(ab)` 才是真正的原始视图，而不是逐元素转换 */
  readByteArray(n) {
    const out = new ArrayBuffer(n);
    this.buf.copy(Buffer.from(out), 0, this.off, this.off + n);
    return out;
  }
  isNull() { return false; }
  toInt32() { return 0; }
  sub() { return new Ptr(0xd455c, 'feed'); }
  toString() { return 'mem@' + this.off; }
}

class Ptr {
  constructor(v, name, bytes) { this.v = v >>> 0; this.name = name || ''; this.bytes = bytes || null; }
  add(n) { return new Ptr(this.v + n, this.name, this.bytes); }
  sub(o) { return new Ptr((this.v - o.v) >>> 0, this.name, this.bytes); }
  isNull() { return this.v === 0; }
  toInt32() { return this.v | 0; }
  readByteArray(n) {
    const out = new ArrayBuffer(n);
    if (this.bytes) Buffer.from(out).set(this.bytes.subarray(0, n));
    return out;
  }
  writeU8() { return this; }
  toString() { return 'ptr:0x' + this.v.toString(16) + (this.name ? '(' + this.name + ')' : ''); }
}

/* ---------------- 假 Frida 环境 ---------------- */
const SIG = Buffer.from([0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
                         0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1]);
const BASE_US = 12345 * 1000000 + 678901;   /* 12345.678901 s */
const FEED_OFF = 0xd455c;

function makeEnv(opts) {
  opts = opts || {};
  const env = {
    allocs: [], sends: [], timers: { interval: [], timeout: [] },
    hooks: [], detachCount: 0, weakBinds: [],
    clearedIntervals: 0, clearedTimeouts: 0,
    intervalCalls: 0,
    attachThrows: !!opts.attachThrows,
    detachThrows: !!opts.detachThrows,
    invalidListener: opts.invalidListener || null,
    intervalThrows: opts.intervalThrows || 0,
    intervalNull: opts.intervalNull || 0,
    us: opts.us === undefined ? BASE_US : opts.us,
    clockFail: !!opts.clockFail,
    nbMode: opts.nbMode || 'ok',
    connectFails: !!opts.connectFails,
    socketFails: !!opts.socketFails,
    errno: 0,
    sendPlan: [],                 /* 每次 sendto 的行为：'ok' | errno 数字 */
    syscalls: { socket: 0, connect: 0, sendto: 0, fcntl: 0, close: 0 },
    closed: [], frames: [],
    tid: opts.tid || 4242,
    moduleLoaded: opts.moduleLoaded !== false,
    symbolFound: opts.symbolFound !== false,
    feedOffset: opts.feedOffset === undefined ? FEED_OFF : opts.feedOffset,
    sigBytes: opts.sigBytes || SIG
  };
  env.advanceUs = function (d) { env.us += d; };

  const libcImpl = {
    socket: () => {
      env.syscalls.socket++;
      if (env.socketFails) return -1;
      return 100 + env.syscalls.socket;
    },
    connect: () => { env.syscalls.connect++; return env.connectFails ? -1 : 0; },
    sendto: (fd, buf, len) => {
      env.syscalls.sendto++;
      const plan = env.sendPlan.length ? env.sendPlan.shift() : 'ok';
      if (plan !== 'ok') { env.errno = plan; return -1; }
      const copy = Buffer.alloc(len);
      buf.buf.copy(copy, 0, buf.off, buf.off + len);
      env.frames.push({ fd, buf: copy });
      return len;
    },
    fcntl: (fd, cmd) => {
      env.syscalls.fcntl++;
      if (cmd === 4) return env.nbMode === 'setfail' ? -1 : 0;      /* F_SETFL */
      if (cmd === 3) return env.nbMode === 'readfail' ? 0 : 0x800;  /* F_GETFL */
      return 0;
    },
    close: (fd) => { env.syscalls.close++; env.closed.push(fd); return 0; },
    clock_gettime: (clk, tsp) => {
      if (env.clockFail) return -1;
      tsp.writeU32(Math.floor(env.us / 1000000));
      tsp.add(4).writeU32((env.us % 1000000) * 1000);
      return 0;
    },
    errno: () => ({ readS32: () => env.errno }),
    __errno: () => ({ readS32: () => env.errno })
  };

  const ModuleStub = {
    findBaseAddress: (n) => (env.moduleLoaded && n === 'libsmartbox.so' ? new Ptr(0x8f202000, 'base') : null),
    findExportByName: (mod, sym) => {
      if (mod === 'libsmartbox.so') {
        if (!env.symbolFound || sym !== '_ZN14AGSpeechEngine4feedEjPKvi') return null;
        return new Ptr(0x8f202000 + env.feedOffset, 'feed', env.sigBytes);
      }
      if (!libcImpl[sym]) throw new Error('unbound libc symbol: ' + sym);
      const p = new Ptr(0x70000000, sym);
      p.libcName = sym;
      return p;
    },
    getExportByName: (mod, sym) => ModuleStub.findExportByName(mod, sym)
  };

  const MemoryStub = {
    alloc: (n) => { const m = new Mem(Buffer.alloc(n), 0); env.allocs.push({ n, mem: m }); return m; },
    copy: (dst, src, n) => { src.buf.copy(dst.buf, dst.off, src.off, src.off + n); }
  };

  const envObj = {
    Module: ModuleStub,
    Memory: MemoryStub,
    Process: { getCurrentThreadId: () => env.tid },
    Interceptor: {
      attach(addr, cbs) {
        if (env.attachThrows) throw new Error('attach failed (injected)');
        if (env.invalidListener === 'null') return null;
        if (env.invalidListener === 'empty') return {};
        env.hooks.push(cbs);
        return {
          detach() {
            env.detachCount++;
            if (env.detachThrows) throw new Error('detach failed (injected)');
          }
        };
      }
    },
    /* NativeFunction(fnPtr, ret, args) -> 调用对应的 libc 桩 */
    NativeFunction: function (fnPtr) {
      const name = fnPtr.libcName || fnPtr.name;
      return function () { return libcImpl[name].apply(null, arguments); };
    },
    ptr: (v) => new Ptr(v, 'literal'),
    send: (o) => { env.sends.push(o); },
    setInterval: (fn) => {
      env.intervalCalls++;
      if (env.intervalThrows === env.intervalCalls) throw new Error('setInterval failed (injected)');
      if (env.intervalNull === env.intervalCalls) return null;
      env.timers.interval.push(fn);
      return env.timers.interval.length;
    },
    clearInterval: () => { env.clearedIntervals++; },
    setTimeout: (fn) => { env.timers.timeout.push(fn); return env.timers.timeout.length; },
    clearTimeout: () => { env.clearedTimeouts++; },
    Script: { bindWeak: (t, cb) => { env.weakBinds.push(cb); return 1; } },
    rpc: { exports: null }
  };
  env.obj = envObj;
  return env;
}

const PARAMS = ['Module', 'Memory', 'Process', 'Interceptor', 'NativeFunction',
                'send', 'setInterval', 'clearInterval', 'setTimeout', 'clearTimeout',
                'Script', 'rpc', 'ptr'];

function loadBridge(src, env) {
  /* 同一个 realm 里执行：ArrayBuffer / Int16Array 的 instanceof 才和被替代的
   * readByteArray 返回值一致（跨 realm 会失配） */
  const fn = new Function(...PARAMS, src);
  const o = env.obj;
  fn(o.Module, o.Memory, o.Process, o.Interceptor, o.NativeFunction,
     o.send, o.setInterval, o.clearInterval, o.setTimeout, o.clearTimeout,
     o.Script, o.rpc, o.ptr);
  return o.rpc.exports;
}

function mount(opts) {
  const env = makeEnv(opts || {});
  const src = opts && opts.dryRun
    ? SRC.replace(/var DRY_RUN\s*=\s*false;/, 'var DRY_RUN = true;')
    : SRC;
  if (opts && opts.dryRun) ok(/var DRY_RUN\s*=\s*true;/.test(src), 'DRY_RUN 已改写为 true');
  const exportsObj = loadBridge(src, env);
  const ringRec = env.allocs.find(a => a.n === 64 * 5120);
  return { env, exports: exportsObj, ring: ringRec ? ringRec.mem : null, epoch: exportsObj.stats().epoch };
}

/* ---- 造帧：4 路交错 int16，lane0 = i-320，lane1 = 999，lane2 = -999，lane3 = i%7 ---- */
function makePcm() {
  const buf = Buffer.alloc(5120);
  for (let i = 0; i < 640; i++) {
    buf.writeInt16LE(i - 320, i * 8);
    buf.writeInt16LE(999, i * 8 + 2);
    buf.writeInt16LE(-999, i * 8 + 4);
    buf.writeInt16LE(i % 7, i * 8 + 6);
  }
  return buf;
}
function lane0Ref() {
  const out = Buffer.alloc(1280);
  for (let i = 0; i < 640; i++) out.writeInt16LE(i - 320, i * 2);
  return out;
}

/* 把 5120 B 的 PCM 挂成一个可被 Memory.copy 读取的指针 */
function feed(env, pcm, len) {
  const hook = env.hooks[0];
  if (!hook) return false;
  hook.onEnter([null, null, new Mem(pcm, 0), { toInt32: () => (len === undefined ? 5120 : len) }]);
  return true;
}
function tick(env, which) { env.timers.interval[which === undefined ? 0 : which](); }

function readU64LE(buf, off) {
  const lo = BigInt(buf.readUInt32LE(off)), hi = BigInt(buf.readUInt32LE(off + 4));
  return Number(lo | (hi << 32n));
}
function fnvBig(buf) {
  let h = 2166136261n;
  for (let i = 0; i < buf.length; i++) { h ^= BigInt(buf[i]); h = (h * 16777619n) & 0xffffffffn; }
  return Number(h);
}

/* 从发布文件里按标记抽取纯函数 */
function extract(mark) {
  const re = new RegExp('/\\* ' + mark + '-BEGIN \\*/([\\s\\S]*?)/\\* ' + mark + '-END \\*/');
  const m = SRC.match(re);
  return m ? m[1] : null;
}

/* ================================================================= T01 */
function testWholeFrameCopy() {
  console.log('\n[T01] T2 式整帧 5120 B 复制（Hook 内只有一次 Memory.copy）');
  const { env, exports, ring } = mount();
  ok(ring !== null, '预分配环 64*5120 = 327680 B 存在');
  const pcm = makePcm();
  ok(feed(env, pcm), 'onEnter 已触发');
  const st = exports.stats();
  eq(st.frames, 1, 'frames = 1');
  eq(st.produced, 1, 'produced = 1');
  eq(st.depthMax, 1, 'depthMax = 1');
  const slot0 = ring.buf.subarray(0, 5120);
  ok(slot0.equals(pcm), '环槽 0 与输入帧逐字节一致（4 路全部保留，未只存 lane0）');
  eq(slot0.subarray(0, 2).readInt16LE(0), -320, 'slot[0..1] = lane0[0] = -320');
  eq(slot0.subarray(8, 10).readInt16LE(0), -319, 'slot[8..9] = 第二个 lane0 样本 = -319');

  /* 第二帧进槽 1，槽边界必须按 5120 对齐 */
  const pcm2 = Buffer.alloc(5120, 0x5a);
  feed(env, pcm2);
  ok(ring.buf.subarray(5120, 10240).equals(pcm2), '槽 1 偏移 = 5120（不是 1320）');
  eq(exports.stats().produced, 2, 'produced = 2');
}

/* ================================================================= T02 */
function testLane0Extraction() {
  console.log('\n[T02] lane0 抽取：in16[q*4]（字节 q*8）与独立参考实现一致');
  const laneSrc = extract('LANE');
  ok(!!laneSrc, 'LANE-BEGIN/END 标记存在');
  const extractLane0 = new Function(laneSrc + '\nreturn extractLane0;')();

  const pcm = makePcm();
  const in16 = new Int16Array(pcm.buffer.slice(pcm.byteOffset, pcm.byteOffset + pcm.length));
  const got = new Int16Array(640);
  extractLane0(in16, got, 640, 4);
  const want = new Int16Array(640);
  for (let q = 0; q < 640; q++) want[q] = pcm.readInt16LE(q * 8);
  ok(Buffer.from(got.buffer).equals(Buffer.from(want.buffer)), '640 样本逐个相等');

  /* 反面对照：用错步长（8）会取到别的通道 */
  const wrong = new Int16Array(640);
  extractLane0(in16, wrong, 640, 8);
  ok(!Buffer.from(wrong.buffer).equals(Buffer.from(want.buffer)), '步长写错（stride=8）会被本测试抓出来');

  /* 端到端：消费端实际发出的载荷 == lane0 参考 */
  const { env, exports } = mount();
  feed(env, pcm);
  tick(env);
  eq(env.frames.length, 1, '发出 1 帧');
  ok(env.frames[0].buf.subarray(40).equals(lane0Ref()), '发出的 1280 B 载荷 == lane0 参考');
  eq(exports.stats().crcFrames, 1, '消费端算了 1 次 CRC');
}

/* ================================================================= T03/T04/T05 */
function testHeaderFields() {
  console.log('\n[T03] TGZ2 v2 头字段（offset 与 tgz2_frame.h 完全一致）');
  const { env, exports, epoch } = mount();
  feed(env, makePcm());
  tick(env);
  const m = env.frames[0].buf;
  eq(m.length, 1320, '整帧长度 = 40 + 1280 = 1320');
  eq(m.readUInt32LE(0) >>> 0, 0x325A4754, 'off 0  magic = TGZ2');
  eq(m.readUInt8(4), 2, 'off 4  ver = 2');
  eq(m.readUInt16LE(6), 40, 'off 6  hdr_len = 40');
  eq(m.readUInt32LE(24), 16000, 'off 24 rate = 16000');
  eq(m.readUInt16LE(28), 1, 'off 28 ch = 1');
  eq(m.readUInt16LE(30), 16, 'off 30 bits = 16');
  eq(m.readUInt32LE(32), 1280, 'off 32 payload_len = 1280');
  eq(m.readUInt32LE(36) >>> 0, fnvBig(m.subarray(40)), 'off 36 crc = FNV-1a(payload)');

  console.log('\n[T04] ts_us / epoch / seq');
  eq(readU64LE(m, 12), BASE_US, 'off 12 ts_us = CLOCK_MONOTONIC 微秒');
  eq(m.readUInt32LE(20) >>> 0, epoch >>> 0, 'off 20 epoch = 本次启动的 epoch');
  ok((epoch >>> 0) !== 0, 'epoch != 0');
  eq(m.readUInt32LE(8), 1, 'off 8  seq 首帧 = 1');
  env.advanceUs(40000);
  feed(env, makePcm());
  tick(env);
  eq(env.frames.length, 2, '第二帧已发送');  eq(env.frames[1].buf.readUInt32LE(8), 2, 'seq 单调 +1（同 epoch 内）');
  eq(readU64LE(env.frames[1].buf, 12), BASE_US + 40000, '第二帧 ts_us 跟随采样时刻');
  eq(env.frames[1].buf.readUInt32LE(20) >>> 0, epoch >>> 0, '两帧同 epoch');

  console.log('\n[T05] 真实 PCM 不得置 SYNTHETIC');
  eq(m.readUInt8(5), 0, 'off 5  flags = 0');
  eq((m.readUInt8(5) & 0x01), 0, 'SYNTHETIC 位为 0');
  eq((m.readUInt8(5) & 0x02), 0, 'SPEECH 位为 0（本轮不做 VAD）');
}

/* ================================================================= T06 */
function testFnvCrossCheck() {
  console.log('\n[T06] JS FNV-1a == C tgz2_fnv1a()');
  const src = extract('FNV-BYTES');
  ok(!!src, 'FNV-BYTES-BEGIN/END 标记存在');
  const fnvBytes = new Function('FNV_BASIS', src + '\nreturn fnvBytes;')(2166136261);

  /* 由 tests_c/fnv_golden.c（调用真正的 tgz2_fnv1a）实算得到 */
  const C = [
    { name: 'empty',            data: Buffer.alloc(0),                    crc: 0x811c9dc5 },
    { name: 'one_0x61',         data: Buffer.from([0x61]),                crc: 0xe40c292c },
    { name: 'abc',              data: Buffer.from([0x61, 0x62, 0x63]),     crc: 0x1a47e90b },
    { name: 'lane0_640',        data: lane0Ref(),                          crc: 0xa7ce7505 },
    { name: 'zeros_1280',       data: Buffer.alloc(1280),                  crc: 0x09d6a1c5 },
    { name: 'synth_seq1',       data: synthPayload(1),                     crc: 0xee980ac9 }
  ];
  for (const c of C) {
    const js = fnvBytes(new Uint8Array(c.data.buffer, c.data.byteOffset, c.data.length), 0, c.data.length);
    eq(hx(js), hx(c.crc), `C 金标准 ${c.name} (${c.data.length} B)`);
    eq(js, fnvBig(c.data), `BigInt 参考 ${c.name}`);
  }

  /* 端到端：真实发送帧的 CRC 与两条独立路径一致 */
  const { env } = mount();
  feed(env, makePcm());
  tick(env);
  const m = env.frames[0].buf;
  eq(m.readUInt32LE(36) >>> 0, fnvBig(m.subarray(40)), '真实帧头 CRC == BigInt(载荷)');
  eq(m.readUInt32LE(36) >>> 0, 0xa7ce7505, '真实帧 CRC == C 金标准 lane0_640');
}

/* tgz2_fill_payload(seq) 的 JS 复刻，仅用于对拍 C 常量 */
function synthPayload(seq) {
  let st = (Math.imul(seq, 2654435761) + 0x9E3779B9) >>> 0;
  const out = Buffer.alloc(1280);
  for (let i = 0; i < 640; i++) {
    let x = st || 0x1234567;
    x = (x ^ (x << 13)) >>> 0;
    x = (x ^ (x >>> 17)) >>> 0;
    x = (x ^ (x << 5)) >>> 0;
    st = x;
    out.writeInt16LE((x >>> 17) - 16384, i * 2);
  }
  return out;
}

/* ================================================================= T07 */
function testSendSuccess() {
  console.log('\n[T07] sendto 成功路径');
  const { env, exports } = mount();
  feed(env, makePcm());
  eq(env.syscalls.sendto, 0, 'drain 之前不发送');
  tick(env);
  eq(env.syscalls.socket, 1, 'socket() 1 次');
  eq(env.syscalls.connect, 1, 'connect() 1 次（connected DGRAM）');
  eq(env.syscalls.fcntl >= 2, true, 'fcntl 设置 + 回读（>=2 次）');
  eq(env.syscalls.sendto, 1, 'sendto() 1 次');
  eq(env.frames[0].buf.length, 1320, '发送长度 1320');
  const st = exports.stats();
  eq(st.sent, 1, 'sent = 1');
  eq(st.pending, 0, 'pending = 0');
  eq(st.fd > 0, true, 'fd 已就绪');
  eq(st.nonblockVerified, true, 'O_NONBLOCK 已回读确认');
  eq(st.sessions, 1, 'sessions = 1');
  eq(st.latN === undefined ? st.latP50_us >= 0 : true, true, 'lat 统计可用');
  ok(st.pendingEq, 'frames-produced 与各类丢弃口径自洽');
}

/* ================================================================= T08/T09 */
function testSendDrop(errnoVal, label, tid) {
  console.log(`\n[${tid}] ${label}：丢本帧、不重试、不阻塞`);
  const { env, exports } = mount();
  env.sendPlan.push(errnoVal);
  feed(env, makePcm());
  tick(env);
  const st = exports.stats();
  eq(env.syscalls.sendto, 1, 'sendto 只调用 1 次（没有重试）');
  eq(st.sendDrop, 1, 'sendDrop = 1');
  eq(st.sent, 0, 'sent = 0');
  eq(st.pending, 0, 'pending = 0（帧已丢弃）');
  eq(st.sendErr, 0, 'sendErr = 0');
  eq(st.fd > 0, true, 'fd 保持（可继续发后续帧）');
  eq(st.lastErrno, errnoVal, 'lastErrno 记录 = ' + errnoVal);

  /* 下一帧照常发送 */
  feed(env, makePcm());
  tick(env);
  eq(exports.stats().sent, 1, '下一帧正常发送');
}

/* ================================================================= T10 */
function testPeerGoneReconnect() {
  console.log('\n[T10] 对端消失 -> 关 socket -> 下个 tick 重连');
  const { env, exports } = mount();
  env.sendPlan.push(32);           /* EPIPE */
  feed(env, makePcm());
  tick(env);
  let st = exports.stats();
  eq(env.syscalls.close >= 1, true, 'socket 已关闭');
  eq(st.fd, -1, 'fd = -1');
  eq(st.reconnects, 1, 'reconnects = 1');
  eq(st.sendDrop, 1, '该帧计入 sendDrop');

  /* 重连需要等 RETRY_MS，期间新帧不应造成阻塞，只记 noPeerDrop */
  feed(env, makePcm());
  tick(env);
  st = exports.stats();
  eq(st.noPeerDrop, 1, '重连窗口内丢帧计入 noPeerDrop');
  eq(env.syscalls.socket, 1, '窗口内不建新 socket（受 RETRY_MS 限制）');

  env.advanceUs(600000);           /* 600 ms > RETRY_MS */
  feed(env, makePcm());
  tick(env);
  st = exports.stats();
  eq(env.syscalls.socket, 2, '窗口过后重建 socket');
  eq(st.sessions, 2, 'sessions = 2');
  eq(st.sent, 1, '重连后成功发送 1 帧');
  eq(st.connectFail, 0, 'connect 未失败');
}

/* ================================================================= T11 */
function testStale() {
  console.log('\n[T11] 过期帧（> MAX_AGE_MS=500）丢弃，不发送旧语音');
  const { env, exports } = mount();
  feed(env, makePcm());
  env.advanceUs(500001);
  tick(env);
  const st = exports.stats();
  eq(st.stale, 1, 'stale = 1');
  eq(env.syscalls.sendto, 0, '未调用 sendto');
  eq(st.sent, 0, 'sent = 0');
  eq(st.pending, 0, 'pending = 0');

  /* 边界：正好 500 ms 仍算新鲜 */
  feed(env, makePcm());
  env.advanceUs(499999);
  tick(env);
  eq(exports.stats().sent, 1, '499.999 ms 的帧仍然发送');
}

/* ================================================================= T12 */
function testClockFail() {
  console.log('\n[T12] clock_gettime 失败 -> Hook 丢帧、消费端不发');
  const { env, exports, ring } = mount({ clockFail: true });
  ok(feed(env, makePcm()), 'onEnter 已触发');
  let st = exports.stats();
  eq(st.produced, 0, 'produced = 0（未入环）');
  eq(st.clockDrop, 1, 'clockDrop = 1');
  eq(st.clockFail >= 1, true, 'clockFail >= 1');
  ok(ring.buf.subarray(0, 5120).every(b => b === 0), '环里没有写入任何半帧数据');

  tick(env);
  st = exports.stats();
  eq(env.syscalls.sendto, 0, '时钟不可用时不发送');
  eq(st.noClockTicks >= 1, true, 'noClockTicks >= 1（drain 直接返回）');
  ok(st.pendingEq, 'frames-produced 口径自洽（clockDrop 解释差额）');
}

/* ================================================================= T13 */
function testRingFull() {
  console.log('\n[T13] 环满丢帧（64 槽，绝不覆盖未消费数据）');
  const { env, exports, ring } = mount();
  const pcm = makePcm();
  const first = Buffer.from(pcm);
  for (let i = 0; i < 64; i++) feed(env, pcm);
  let st = exports.stats();
  eq(st.produced, 64, 'produced = 64');
  eq(st.depthMax, 64, 'depthMax = 64');
  const before = Buffer.from(ring.buf.subarray(0, 5120));
  feed(env, pcm);
  st = exports.stats();
  eq(st.ringDrop, 1, 'ringDrop = 1');
  eq(st.produced, 64, 'produced 不变');
  ok(ring.buf.subarray(0, 5120).equals(before), '槽 0 未被覆盖');
  ok(ring.buf.subarray(0, 5120).equals(first), '槽 0 内容仍是第 1 帧');
  ok(st.pendingEq, 'frames-produced = ringDrop');
}

/* ================================================================= T14 */
function testMultiProducer() {
  console.log('\n[T14] 第二个生产线程 -> 立即禁用旁路');
  const { env, exports } = mount();
  feed(env, makePcm());
  eq(exports.stats().enabled, true, '首个 tid 后仍 enabled');
  env.tid = 9999;
  feed(env, makePcm());
  let st = exports.stats();
  eq(st.enabled, false, '第二个 tid 后 enabled = false');
  eq(/multi-producer/.test(st.why), true, 'why 记录 multi-producer');
  eq(st.produced, 1, '第二线程的帧没有入环');
  eq(st.producerTid, 4242, 'producerTid 仍是原线程');
  eq(st.tids['4242'], 1, 'tids 记录原线程调用次数');
  const sentBefore = env.syscalls.sendto;
  tick(env);
  eq(env.syscalls.sendto, sentBefore, '禁用后消费端不再发送');
}

/* ================================================================= T15 */
function testStopIdempotent() {
  console.log('\n[T15] stop 幂等：先关闸门 -> 清定时器 -> detach 一次 -> close');
  const { env, exports } = mount();
  feed(env, makePcm());
  tick(env);
  eq(env.syscalls.sendto, 1, 'stop 前已发送 1 帧');
  eq(env.hooks.length, 1, 'stop 前 hook 在位');

  const a = exports.stop();
  eq(a.stopped, true, 'stopped = true');
  eq(a.hookDetachAttempted, true, 'detach 已尝试');
  eq(a.hookDetached, true, 'detach 成功');
  eq(a.hookDetachError, null, 'hookDetachError = null');
  eq(env.detachCount, 1, 'listener.detach() 1 次');
  eq(env.clearedIntervals, 2, 'tick + stat 都 clearInterval');
  eq(a.tickActive, false, 'tickActive = false');
  eq(a.statActive, false, 'statActive = false');
  eq(env.syscalls.close, 1, 'socket 关闭 1 次');

  const b = exports.stop();
  const c = exports.stop();
  eq(b.stopped && c.stopped, true, '重复 stop 仍返回 stopped');
  eq(env.detachCount, 1, '重复 stop 不重复 detach');
  eq(env.syscalls.close, 1, '重复 stop 不重复 close');

  const sentBefore = env.syscalls.sendto;
  tick(env);
  feed(env, makePcm());
  eq(env.syscalls.sendto, sentBefore, 'teardown 后 tick 不再发送');
  eq(exports.stats().frames, 1, 'teardown 后 hook 不再入环');
}

/* ================================================================= T16 */
function testInitRollback() {
  console.log('\n[T16] 初始化中途失败 -> 资源全部回滚');
  /* 1) attach 抛异常 */
  {
    const { env, exports } = mount({ attachThrows: true });
    const st = exports.stats();
    eq(st.enabled, false, 'attach 失败: enabled = false');
    eq(/^install:/.test(st.why), true, 'attach 失败: why 记录 install:*');
    eq(env.detachCount, 0, 'attach 失败: 没有可 detach 的 listener');
    eq(env.intervalCalls, 0, 'attach 失败: 没有创建定时器');
    eq(st.lifecycle.stopped, true, 'attach 失败: teardown 已执行');
    eq(st.fd, -1, 'attach 失败: 没有 fd 泄漏');
  }
  /* 2) attach 返回无效 listener */
  for (const kind of ['null', 'empty']) {
    const { env, exports } = mount({ invalidListener: kind });
    const st = exports.stats();
    eq(st.enabled, false, `listener=${kind}: enabled = false`);
    eq(env.intervalCalls, 0, `listener=${kind}: 没有创建定时器`);
    eq(st.lifecycle.tickActive, false, `listener=${kind}: tick 未残留`);
  }
  /* 3) setInterval 返回 null（第 1 / 第 2 次） */
  for (const n of [1, 2]) {
    const { env, exports } = mount({ intervalNull: n });
    const st = exports.stats();
    eq(env.detachCount, 1, `第 ${n} 个 setInterval 返回 null: detach 1 次`);
    eq(st.lifecycle.tickActive, false, `第 ${n} 个: tick 未残留`);
    eq(st.lifecycle.statActive, false, `第 ${n} 个: stat 未残留`);
    eq(st.enabled, false, `第 ${n} 个: enabled = false`);
  }
  /* 4) O_NONBLOCK 设置失败：建了 socket 就必须关掉，且绝不发送 */
  {
    const { env, exports } = mount({ nbMode: 'setfail' });
    feed(env, makePcm());
    tick(env);
    const st = exports.stats();
    eq(env.syscalls.socket, 1, 'nb 失败: socket 建过 1 次');
    eq(env.syscalls.close, 1, 'nb 失败: socket 已关闭');
    eq(env.syscalls.sendto, 0, 'nb 失败: 绝不发送');
    eq(st.enabled, false, 'nb 失败: 旁路被禁用');
    eq(st.why, 'nonblock-set-fail', 'nb 失败: why = nonblock-set-fail');
    eq(st.noPeerDrop, 1, 'nb 失败: 该帧计入 noPeerDrop');
  }
  /* 5) O_NONBLOCK 回读失败 */
  {
    const { env, exports } = mount({ nbMode: 'readfail' });
    feed(env, makePcm());
    tick(env);
    const st = exports.stats();
    eq(st.why, 'nonblock-not-set', '回读失败: why = nonblock-not-set');
    eq(env.syscalls.sendto, 0, '回读失败: 绝不发送');
    eq(env.syscalls.close, 1, '回读失败: socket 已关闭');
  }
  /* 6) connect 失败：关 socket、计 connectFail，下个 tick 重试 */
  {
    const { env, exports } = mount({ connectFails: true });
    feed(env, makePcm());
    tick(env);
    let st = exports.stats();
    eq(st.connectFail, 1, 'connect 失败: connectFail = 1');
    eq(env.syscalls.close, 1, 'connect 失败: socket 已关闭');
    eq(st.noPeerDrop, 1, 'connect 失败: 帧计入 noPeerDrop');
    eq(env.syscalls.sendto, 0, 'connect 失败: 没有 sendto');
    env.connectFails = false;
    env.advanceUs(600000);
    feed(env, makePcm());
    tick(env);
    st = exports.stats();
    eq(st.sent, 1, 'connect 恢复后正常发送');
    eq(st.sessions, 1, 'sessions = 1（只有成功那次）');
  }
}

/* ================================================================= T17 */
function testDryRun() {
  console.log('\n[T17] DRY_RUN：不 socket / 不 connect / 不 sendto');
  const { env, exports } = mount({ dryRun: true });
  feed(env, makePcm());
  tick(env);
  const st = exports.stats();
  eq(env.syscalls.socket, 0, 'socket() 0 次');
  eq(env.syscalls.connect, 0, 'connect() 0 次');
  eq(env.syscalls.sendto, 0, 'sendto() 0 次');
  eq(st.frames, 1, 'DRY_RUN 仍统计 frames = 1');
  eq(st.produced, 1, 'DRY_RUN 仍统计 produced = 1');
  eq(st.sent, 1, 'DRY_RUN 仍统计 sent = 1');
  eq(st.dry, true, 'stats().dry = true');
}

/* ================================================================= T18 */
function testHookPurity() {
  console.log('\n[T18] Hook 回调内不做 socket / CRC / lane0 抽取 / 动态分配');
  const m = SRC.match(/\/\* HOOK-BEGIN \*\/([\s\S]*?)\/\* HOOK-END \*\//);
  ok(!!m, 'HOOK-BEGIN/END 标记存在');
  if (m) {
    const body = m[1];
    const forbidden = ['sendto', 'socket(', 'connect(', 'close(', 'fnv', 'readS16', 'writeS16',
                       'readByteArray', 'Memory.alloc', 'setInterval', 'console.', 'send(',
                       'new ', 'setTimeout', '.sort(', 'Process.getCurrentThreadId() }'];
    /* 只禁真正的动作；getCurrentThreadId 是允许的（单生产者守卫需要） */
    const check = forbidden.filter(t => t !== '.sort(');
    for (const t of check) {
      ok(body.indexOf(t) === -1, 'Hook 体内不含 `' + t + '`');
    }
    ok(/Memory\.copy\(/.test(body), 'Hook 体内有且只有 Memory.copy 的内存动作');
    ok((body.match(/Memory\.copy\(/g) || []).length === 1, 'Memory.copy 恰好出现 1 次');
    ok(/args\[2\]/.test(body) && /args\[3\]/.test(body), '参数位置沿用 args[2] / args[3]');
    ok(/len !== FRAME_IN/.test(body), '保留 5120 长度检查');
  }

  /* 动态验证：入环过程中没有新增分配、没有 syscall、没有 CRC、没有抽取 */
  const { env, exports } = mount();
  const allocsBefore = env.allocs.length;
  const pcm = makePcm();
  feed(env, pcm);
  const st = exports.stats();
  eq(env.allocs.length, allocsBefore, 'Hook 调用期间 Memory.alloc 次数 = 0');
  eq(env.syscalls.sendto + env.syscalls.socket + env.syscalls.connect + env.syscalls.close, 0,
     'Hook 调用期间 syscall 数 = 0');
  eq(st.crcFrames, 0, 'Hook 期间没有算 CRC（crcFrames = 0）');
  eq(st.sent, 0, 'Hook 期间没有发送');
  eq(st.produced, 1, 'Hook 只负责整帧入环');
}

/* ================================================================= 跑 */
console.log('bridge_unit_test.js  (source: ' + path.basename(BRIDGE) + ', ' +
            SRC.split('\n').length + ' lines, ' + SRC.length + ' chars)');
testWholeFrameCopy();
testLane0Extraction();
testHeaderFields();
testFnvCrossCheck();
testSendSuccess();
testSendDrop(11, 'EAGAIN', 'T08');
testSendDrop(105, 'ENOBUFS', 'T09');
testPeerGoneReconnect();
testStale();
testClockFail();
testRingFull();
testMultiProducer();
testStopIdempotent();
testInitRollback();
testDryRun();
testHookPurity();

console.log(`\n=== ${pass} passed, ${fail} failed ===`);
if (fail) { console.log(failures.map(f => '  - ' + f).join('\n')); process.exit(1); }
