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
 *   T14 多生产者线程：TID 变化不禁用，帧照常入环（T3-08）；单/双/5 TID + 真重入拦截
 *   T15 stop 幂等
 *   T16 初始化中途失败 -> 资源回滚
 *   T17 DRY_RUN 不建 socket / 不 sendto
 *   T18 Hook 回调内不做 socket / CRC / lane0 抽取 / 动态分配
 *   T19 clock_gettime exclusive 调度（T3-09）：NativeFunction 选项、调用链审计、
 *       两个 TID 在放锁窗口重叠时是否丢帧（含 cooperative 负对照）、
 *       运行时拒绝该选项时必须停止而不是静默降级
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
    sigBytes: opts.sigBytes || SIG,
    /* T3-09 调度相关开关 */
    rejectScheduling: !!opts.rejectScheduling,        /* 老 Frida：拒绝 scheduling 选项 */
    cooperativeOverride: !!opts.cooperativeOverride    /* 负对照：忽略 scheduling，全部 cooperative */
  };
  env.advanceUs = function (d) { env.us += d; };

  /* ---------------- T3-09：假脚本锁（Frida JS 运行时的锁模型） ----------------
   * 事实：Frida 的 JS 运行时单线程，凡是执行 JS 的线程都持有"脚本锁"。
   * 默认 NativeFunction 是 cooperative —— 调用原生函数期间**释放**脚本锁，
   * 别的原生线程可以在那个窗口里抢到锁进入 JS；exclusive 则继续持锁。
   *
   * 这个模型不预判哪段代码是"并发"的：谁想进入 Hook 回调就调 env.enter()，
   * 锁被别的 TID 占着就排队（真机上就是阻塞在取锁上），锁一释放就按序恢复。
   * 因此"两个原生线程的回调是否重叠"完全由被测代码里的调度方式决定。
   */
  env.jsLock = { holder: null };   /* 持锁线程 TID；null = 无人持锁 */
  env.lockDepth = 0;
  env.lockEvents = [];             /* {ev:'release'|'reacquire', name, tid} */
  env.nativeTrace = [];            /* 每次 NativeFunction 调用 {name,sched,tid,holder} */
  env.nativeFns = [];              /* 每次 NativeFunction 创建 {name,ret,args,opts,sched} */
  env.foreign = [];                /* 已到达但阻塞在脚本锁上的原生线程任务 */
  env.lockContended = 0;
  env.pumped = 0;
  env.pumping = false;

  /* 锁空闲时按序放行排队的原生线程 */
  env.pump = function () {
    if (env.pumping) return;
    env.pumping = true;
    try {
      let guard = 0;
      while (env.foreign.length && env.jsLock.holder === null && guard++ < 64) {
        const task = env.foreign.shift();
        const saved = env.tid;
        env.tid = task.tid;
        env.pumped++;
        try { task.run(); } finally { env.tid = saved; }
      }
    } finally { env.pumping = false; }
  };

  /* 原生线程进入 JS 回调：先拿脚本锁 */
  env.enter = function (fn, args) {
    const tid = env.tid;
    const held = env.jsLock.holder;
    if (held !== null && held !== tid) {
      env.lockContended++;
      env.foreign.push({ tid: tid, run: () => env.enter(fn, args) });
      return undefined;
    }
    const outermost = (held === null);
    if (outermost) env.jsLock.holder = tid;
    env.lockDepth++;
    try { return fn.call(null, args); }
    finally {
      env.lockDepth--;
      if (outermost) env.jsLock.holder = null;
    }
  };

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
        /* T3-09：进入回调必须先拿到脚本锁（真 Frida 里由运行时完成） */
        const hook = {
          onLeave: cbs.onLeave,
          onEnter: (args) => env.enter(cbs.onEnter, args)
        };
        env.hooks.push(hook);
        return {
          detach() {
            env.detachCount++;
            if (env.detachThrows) throw new Error('detach failed (injected)');
          }
        };
      }
    },
    /* NativeFunction(fnPtr, ret, args[, abiOrOptions]) -> 调用对应的 libc 桩
     * T3-09：解析第 4 个参数里的 scheduling，并把 cooperative 的"放锁窗口"建模出来。 */
    NativeFunction: function (fnPtr, ret, argTypes, abiOrOptions) {
      const name = fnPtr.libcName || fnPtr.name;
      let opts = null;
      let sched = 'cooperative';
      if (typeof abiOrOptions === 'string') {
        opts = { abi: abiOrOptions };
      } else if (abiOrOptions && typeof abiOrOptions === 'object') {
        opts = abiOrOptions;
        if (opts.scheduling !== undefined) {
          /* 老版本 Frida 会直接拒绝未知选项 */
          if (env.rejectScheduling) throw new Error('invalid option: scheduling (injected)');
          if (opts.scheduling !== 'cooperative' && opts.scheduling !== 'exclusive') {
            throw new Error('invalid scheduling: ' + opts.scheduling);
          }
          sched = opts.scheduling;
        }
      }
      /* 负对照：模拟"运行时接受但忽略 scheduling"的退化情况 */
      if (env.cooperativeOverride) sched = 'cooperative';
      env.nativeFns.push({ name: name, ret: ret, args: argTypes, opts: opts, sched: sched });

      const impl = libcImpl[name];
      if (!impl) throw new Error('unbound libc symbol: ' + name);
      return function () {
        const holderAtCall = env.jsLock.holder;
        env.nativeTrace.push({ name: name, sched: sched, tid: env.tid, holder: holderAtCall });
        if (sched === 'exclusive') {
          /* 持锁执行：别的原生线程进不来 */
          return impl.apply(null, arguments);
        }
        /* cooperative：释放脚本锁 -> 排队的原生线程可以在窗口内进入 JS */
        env.jsLock.holder = null;
        env.lockEvents.push({ ev: 'release', name: name, tid: env.tid });
        try {
          env.pump();
          return impl.apply(null, arguments);
        } finally {
          env.jsLock.holder = holderAtCall;
          env.lockEvents.push({ ev: 'reacquire', name: name, tid: env.tid });
        }
      };
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

/* 把 5120 B 的 PCM 挂成一个可被 Memory.copy 读取的指针
 * tid 给定时先切到该线程（模拟"现在是这个线程在跑"） */
function feed(env, pcm, len, tid) {
  const hook = env.hooks[0];
  if (!hook) return false;
  if (tid !== undefined) env.tid = tid;
  feedInner(env, pcm, len);
  /* 回调返回 -> 脚本锁释放 -> 阻塞在锁上的其它原生线程这时才恢复 */
  env.pump();
  return true;
}
function feedInner(env, pcm, len) {
  const hook = env.hooks[0];
  if (!hook) return false;
  hook.onEnter([null, null, new Mem(pcm, 0), { toInt32: () => (len === undefined ? 5120 : len) }]);
  return true;
}
/* 让 tid 这个原生线程"已经在 feed 里、阻塞在脚本锁上"（T3-09 并发窗口） */
function queueFeed(env, pcm, tid, len) {
  /* 这个线程确实在等锁：真机上它阻塞在取脚本锁上，直到持锁者放锁/退出回调 */
  env.lockContended++;
  env.foreign.push({ tid: tid, run: () => feedInner(env, pcm, len) });
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
  console.log('\n[T14] 多生产者线程：TID 变化不禁用，帧照常入环（T3-08）');

  /* ---- T14a：单 TID 连续调用 ---- */
  {
    const { env, exports } = mount({ tid: 4242 });
    const pcm = makePcm();
    for (let k = 0; k < 5; k++) feed(env, pcm);
    const st = exports.stats();
    eq(st.enabled, true, 'T14a 单 TID: 仍 enabled');
    eq(st.disables, 0, 'T14a 单 TID: disables = 0');
    eq(st.frames, 5, 'T14a 单 TID: frames = 5');
    eq(st.produced, 5, 'T14a 单 TID: produced = 5');
    eq(st.tidCount, 1, 'T14a 单 TID: tidCount = 1');
    eq(st.producerTid, 4242, 'T14a 单 TID: producerTid = 4242');
    eq(st.tids['4242'], 5, 'T14a 单 TID: 该线程调用 5 次');
    eq(st.otherTidCalls, 0, 'T14a 单 TID: otherTidCalls = 0');
    ok(st.pendingEq, 'T14a 单 TID: frames-produced 不变式成立');
  }

  /* ---- T14b：两个 TID 交替（复现真机 19873 / 14171） ---- */
  {
    const { env, exports } = mount({ tid: 19873 });
    const pcm = makePcm();
    for (let k = 0; k < 6; k++) {
      env.tid = (k % 2 === 0) ? 19873 : 14171;
      feed(env, pcm);
    }
    const st = exports.stats();
    eq(st.enabled, true, 'T14b 两 TID 交替: 仍 enabled（不再自禁用）');
    eq(st.disables, 0, 'T14b 两 TID 交替: disables = 0');
    eq(/multi-producer/.test(String(st.why)), false, 'T14b: why 里没有 multi-producer');
    eq(st.frames, 6, 'T14b: frames = 6');
    eq(st.produced, 6, 'T14b: produced = 6');
    eq(st.ringDrop, 0, 'T14b: ringDrop = 0');
    eq(st.tidCount, 2, 'T14b: tidCount = 2');
    eq(st.producerTid, 19873, 'T14b: producerTid 仍是首个线程（诊断用）');
    eq(st.tids['19873'], 3, 'T14b: TID 19873 调用 3 次');
    eq(st.tids['14171'], 3, 'T14b: TID 14171 调用 3 次');
    eq(st.tids.firstTid, 19873, 'T14b: tids 里附带 firstTid');
    eq(Object.keys(st.tids).length, 3, 'T14b: tids = 2 个线程 + firstTid');
    eq(st.otherTidCalls, 3, 'T14b: otherTidCalls = 3');
    ok(st.pendingEq, 'T14b: frames-produced 不变式成立');

    tick(env);
    eq(st.tids && exports.stats().sent > 0, true, 'T14b: 消费端仍在发送（没被禁用）');
    const after = exports.stats();
    eq(after.crcFrames, after.sent, 'T14b: 发出的每帧都算了 CRC');
  }

  /* ---- T14c：多个 TID 轮转 + 载荷完整性（无环交错/覆盖） ---- */
  {
    const tids = [101, 202, 303, 404, 505];
    const { env, exports } = mount({ tid: tids[0] });
    const pcm = makePcm();
    for (let k = 0; k < 10; k++) {
      env.tid = tids[k % tids.length];
      feed(env, pcm);
    }
    const st = exports.stats();
    eq(st.enabled, true, 'T14c 多 TID: 仍 enabled');
    eq(st.disables, 0, 'T14c 多 TID: disables = 0');
    eq(st.frames, 10, 'T14c: frames = 10');
    eq(st.produced, 10, 'T14c: produced = 10');
    eq(st.tidCount, 5, 'T14c: tidCount = 5');
    eq(st.otherTidCalls, 8, 'T14c: otherTidCalls = 8（10 帧里 8 帧不是首线程）');
    for (const t of tids) eq(st.tids[String(t)], 2, 'T14c: TID ' + t + ' 调用 2 次');

    tick(env); tick(env);            /* DRAIN_BURST = 8，两个 tick 才能排空 10 帧 */
    const sentAll = exports.stats().sent;
    eq(sentAll, 10, 'T14c: 10 帧全部发出（两个 tick）');
    eq(env.frames.length, 10, 'T14c: mock 收到 10 个数据报');
    const ref = lane0Ref();
    let payloadOk = 0, seqOk = 0;
    for (let k = 0; k < env.frames.length; k++) {
      const buf = env.frames[k].buf;
      if (buf.subarray(40, 40 + 1280).equals(ref)) payloadOk++;
      if (buf.readUInt32LE(8) === (k + 1)) seqOk++;      /* TGZ2 v2: off 8 = seq */
    }
    eq(payloadOk, 10, 'T14c: 10 帧载荷全部等于 lane0 参考数据（无交错/无覆盖）');
    eq(seqOk, 10, 'T14c: 序号 1..10 连续');
  }
}

/* ================================================================= T14b */
function testHookReentry() {
  console.log('\n[T14d] 真正的重入仍被 inHook 拦住（同一线程在回调内再次 feed）');
  const { env, exports } = mount({ tid: 777 });
  const hook = env.hooks[0];
  const pcm = makePcm();
  const origCopy = env.obj.Memory.copy;

  let nested = 0;
  env.obj.Memory.copy = function (dst, src, n) {
    /* 在 onEnter 内部再触发一次 onEnter：模拟同一线程的重入 */
    if (nested === 0) {
      nested++;
      hook.onEnter([null, null, new Mem(pcm, 0), { toInt32: () => 5120 }]);
    }
    return origCopy(dst, src, n);
  };

  feed(env, pcm);
  env.obj.Memory.copy = origCopy;

  const st = exports.stats();
  eq(nested, 1, '重入确实被触发了一次');
  eq(st.hookReentry, 1, 'hookReentry = 1（被 inHook 拦住）');
  eq(st.frames, 1, 'frames 只算外层 1 次（重入未计数）');
  eq(st.produced, 1, 'produced = 1（重入帧没入环）');
  eq(st.hookEx, 0, '没有异常逃逸');
  ok(st.pendingEq, '不变式仍成立');
}

/* ================================================================= T19 */
/* 第 k 帧：lane0 = i - 320 + k*1000（每帧不同，便于逐帧核对载荷） */
function makePcmAt(k) {
  const buf = Buffer.alloc(5120);
  for (let i = 0; i < 640; i++) {
    buf.writeInt16LE(i - 320 + k * 1000, i * 8);
    buf.writeInt16LE(999, i * 8 + 2);
    buf.writeInt16LE(-999, i * 8 + 4);
    buf.writeInt16LE(i % 7, i * 8 + 6);
  }
  return buf;
}
function lane0At(k) {
  const out = Buffer.alloc(1280);
  for (let i = 0; i < 640; i++) out.writeInt16LE(i - 320 + k * 1000, i * 2);
  return out;
}

/* 6 个原生生产者帧同时在生产：线程 A(19873) 先拿到脚本锁进入回调，
 * 另外 5 帧来自 14171/19873 交替的线程，全部阻塞在锁上。
 * A 在回调里调用 clock_gettime —— 其调度方式决定这 5 个线程能否在窗口内挤进来。 */
function runConcurrentBurst(env, n) {
  const tids = [14171, 19873];
  for (let k = 1; k < n; k++) queueFeed(env, makePcmAt(k), tids[k % 2]);
  feed(env, makePcmAt(0), 5120, 19873);
}

/* 去掉注释，只留可执行代码（注释里提到 scheduling 是正常的） */
function stripComments(s) {
  return s
    .replace(/\/\*[\s\S]*?\*\//g, '')
    .replace(/(^|[^:'"\\])\/\/[^\n]*/g, '$1');
}

function testClockExclusive() {
  console.log('\n[T19] clock_gettime exclusive：多线程 Hook 不再因放锁丢帧（T3-09）');
  const CODE = stripComments(SRC);

  /* ---- T19a：NativeFunction 创建参数（只有 clock_gettime 指定了调度） ---- */
  {
    const { env, exports } = mount({ tid: 19873 });
    const st = exports.stats();
    const cg = env.nativeFns.filter(f => f.name === 'clock_gettime');
    eq(cg.length, 1, 'T19a: clock_gettime 只创建 1 次');
    ok(!!(cg[0] && cg[0].opts), 'T19a: 创建时传了第 4 个参数（options 对象）');
    eq(cg[0] && cg[0].opts && cg[0].opts.scheduling, 'exclusive',
       "T19a: options.scheduling = 'exclusive'");
    const withSched = env.nativeFns
      .filter(f => f.opts && f.opts.scheduling !== undefined)
      .map(f => f.name);
    eq(JSON.stringify(withSched), JSON.stringify(['clock_gettime']),
       'T19a: 只有 clock_gettime 改了调度，socket/connect/sendto/fcntl/close 保持默认');
    eq(st.clockSched, 'exclusive', 'T19a: stats().clockSched = exclusive');
    eq(st.clockExclusive, true, 'T19a: stats().clockExclusive = true');
    const ready = env.sends.filter(m => m.t === 'ready')[0];
    eq(ready && ready.clock_sched, 'exclusive', "T19a: ready 上报 clock_sched = 'exclusive'");
  }

  /* ---- T19b：源码层独占性（防止选项被删掉或被搬到别的函数上） ---- */
  {
    const occ = (CODE.match(/scheduling\s*:\s*'exclusive'/g) || []).length;
    eq(occ, 1, "T19b: 可执行代码里 'exclusive' 调度只出现 1 处");
    const at = SRC.indexOf("scheduling: 'exclusive'");
    const ctx = SRC.slice(Math.max(0, at - 400), at);
    ok(/clock_gettime/.test(ctx), 'T19b: 该处在 clock_gettime 构造上下文里');
    ok(/new NativeFunction\(g\('clock_gettime'\)/.test(ctx),
       'T19b: 该处是 clock_gettime 的 NativeFunction 调用参数');
    for (const fn of ['socket', 'connect', 'sendto', 'fcntl', 'close']) {
      const m = CODE.match(new RegExp("new NativeFunction\\(g\\('" + fn + "'\\)[^\\n]*"));
      ok(!!m, 'T19b: ' + fn + ' 绑定存在');
      ok(!!m && m[0].indexOf('scheduling') === -1, 'T19b: ' + fn + ' 未改调度方式');
    }
    /* 失败路径必须是"停止 + 报告"，不能是"退回 cooperative" */
    ok(/clock-exclusive-unsupported/.test(SRC), 'T19b: 有 clock-exclusive-unsupported 停止标记');
    ok(!/scheduling\s*:\s*'cooperative'/.test(CODE), 'T19b: 没有显式退回 cooperative 的写法');
  }

  /* ---- T19c：回调内真实调用链审计（不是看名字猜） ---- */
  {
    const { env, exports } = mount({ tid: 19873 });
    env.nativeTrace.length = 0;
    env.lockEvents.length = 0;
    feed(env, makePcm(), 5120, 19873);
    const tr = env.nativeTrace.slice();
    eq(tr.length, 1, 'T19c: 一次 Hook 回调里只有 1 次 NativeFunction 调用');
    eq(tr[0] && tr[0].name, 'clock_gettime', 'T19c: 该调用就是 clock_gettime');
    eq(tr[0] && tr[0].sched, 'exclusive', 'T19c: 它是 exclusive 调度');
    eq(tr[0] && tr[0].holder, 19873, 'T19c: 调用时脚本锁在本线程手里');
    eq(env.lockEvents.length, 0, 'T19c: 回调内没有发生任何一次放锁');
    eq(env.lockEvents.filter(e => e.ev === 'release').length, 0, 'T19c: release 事件 = 0');
    const st = exports.stats();
    eq(st.produced, 1, 'T19c: 帧正常入环');
    eq(st.hookEx, 0, 'T19c: 没有异常逃逸');
  }

  /* ---- T19d：两个 TID 的 Hook 在 clock_gettime 窗口重叠（exclusive 全收） ---- */
  {
    const N = 6;
    const { env, exports } = mount({ tid: 19873 });
    eq(exports.stats().hookReentry, 0, 'T19d: 起始 hookReentry = 0');
    runConcurrentBurst(env, N);
    let st = exports.stats();
    eq(st.enabled, true, 'T19d: 仍 enabled');
    eq(st.frames, N, 'T19d: frames = ' + N + '（' + N + ' 次进入都过了闸门）');
    eq(st.produced, N, 'T19d: produced = ' + N + '（一帧都没丢）');
    eq(st.hookReentry, 0, 'T19d: hookReentry = 0（另一个 TID 没被误判成重入）');
    eq(st.hookEx, 0, 'T19d: hookEx = 0');
    eq(st.clockDrop, 0, 'T19d: clockDrop = 0');
    eq(st.ringDrop, 0, 'T19d: ringDrop = 0');
    eq(st.tidCount, 2, 'T19d: 两个生产者线程都被统计到');
    eq(env.lockContended, N - 1, 'T19d: ' + (N - 1) + ' 个线程真的在等锁');
    eq(env.pumped, N - 1, 'T19d: 它们都在 A 退出回调后才被放行');
    eq(env.lockEvents.filter(e => e.ev === 'release' && e.name === 'clock_gettime').length, 0,
       'T19d: clock_gettime 窗口内从未放锁');
    ok(st.pendingEq, 'T19d: pendingEq 不变式成立');

    tick(env); tick(env);                       /* DRAIN_BURST = 8，一次就够，两次更稳 */
    st = exports.stats();
    eq(st.sent, N, 'T19d: ' + N + ' 帧全部发出');
    eq(env.frames.length, N, 'T19d: mock 收到 ' + N + ' 个数据报');
    let seqOk = 0, payOk = 0;
    for (let k = 0; k < env.frames.length; k++) {
      const f = env.frames[k];
      if (f.buf.readUInt32LE(8) === k + 1) seqOk++;
      if (f.buf.subarray(40, 40 + 1280).equals(lane0At(k))) payOk++;
    }
    eq(seqOk, N, 'T19d: seq 连续 1..' + N + '（无跳号/无重复）');
    eq(payOk, N, 'T19d: 每帧载荷逐字节等于各自源帧（无覆盖、无交错）');
    eq(st.capSeq, N, 'T19d: 采集序号恰好 ' + N + ' 个（每帧只入环一次）');
  }

  /* ---- T19e：负对照 —— 运行时忽略 scheduling（全部 cooperative），同一个窗口就丢帧 ---- */
  {
    const N = 6;
    const { env, exports } = mount({ tid: 19873, cooperativeOverride: true });
    runConcurrentBurst(env, N);
    const st = exports.stats();
    eq(st.frames, 1, 'T19e 负对照: 只有 A 的帧进入主体（其余被当成重入）');
    eq(st.produced, 1, 'T19e 负对照: produced = 1，丢了 ' + (N - 1) + ' 帧');
    eq(st.hookReentry, N - 1, 'T19e 负对照: hookReentry = ' + (N - 1) + '（正是被误判的重入）');
    ok(env.lockEvents.some(e => e.ev === 'release' && e.name === 'clock_gettime'),
       'T19e 负对照: cooperative 下 clock_gettime 确实放了锁');
    ok(st.pendingEq, 'T19e 负对照: 不变式仍成立（丢帧被如实记账）');
  }

  /* ---- T19f：运行时拒绝 scheduling 选项 -> 必须停止并报告，不得静默降级 ---- */
  {
    const { env, exports } = mount({ rejectScheduling: true });
    const st = exports.stats();
    eq(st.enabled, false, 'T19f: enabled = false（直接停）');
    eq(st.clockSched, 'unsupported', "T19f: clockSched = 'unsupported'");
    ok(/clock-exclusive-unsupported/.test(String(st.why)),
       'T19f: why 明确写出 clock-exclusive-unsupported');
    eq(env.hooks.length, 0, 'T19f: 没有安装 Hook（不会带着默认调度继续跑）');
    eq(env.intervalCalls, 0, 'T19f: 没有创建定时器');
    eq(st.lifecycle.stopped, true, 'T19f: teardown 已执行，资源回滚');
    eq(st.fd, -1, 'T19f: 没有 fd 泄漏');
  }
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
testHookReentry();
testClockExclusive();
testStopIdempotent();
testInitRollback();
testDryRun();
testHookPurity();

console.log(`\n=== ${pass} passed, ${fail} failed ===`);
if (fail) { console.log(failures.map(f => '  - ' + f).join('\n')); process.exit(1); }
