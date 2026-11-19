'use strict';
/*
 * pcm_bridge_draft.js -- T3：原厂进程内 PCM -> AF_UNIX SOCK_DGRAM 旁路（修订 6）
 *
 * 链路：
 *   smartapp:core / AGSpeechEngine::feed (libsmartbox.so +0xd455c)
 *     -> Frida onEnter：整帧 Memory.copy(5120) 入预分配环槽（只做这一件事）
 *     -> 消费定时器（20 ms，每次最多 8 帧）：lane0 抽取 -> FNV-1a -> 40 B 头 -> sendto
 *     -> 独立 Android 接收进程（dgram_server --abstract tgz2_pcm --capture FILE）
 *
 * 修订 6 相对修订 5：
 *   R1 环改为"整帧"语义：每槽 5120 B 原始 4 路交错数据，环总 64*5120=327680 B；
 *      lane0 抽取、CRC、头组装、sendto 全部移出 Hook，只在消费端做
 *   R2 Hook 内禁止 socket / sendto / CRC / lane0 抽取 / RMS / 日志 / 循环抽样 / 动态分配
 *   R3 帧头严格对齐 tgz2_frame.h v2（40 B，offset 20 = epoch，真实 PCM 不置 SYNTHETIC）
 *   R4 发送失败语义分级：EAGAIN/EWOULDBLOCK/ENOBUFS -> sendDrop；对端消失 -> 关 socket
 *      记 reconnects 并等下一 tick 重连；其他 -> sendErr + errno；绝不重试当前帧
 *   R5 过期帧 MAX_AGE_MS=500：过期即丢（stale），ts<=0 的帧一律不发送（clockDrop）
 *   R6 没有接收端时丢帧记 noPeerDrop，与 ringDrop / stale / sendDrop 分开统计
 *   R7 统计口径扩展 + rpc.exports.stats() / rpc.exports.stop()
 *   R8 单生产者守卫保留：出现第二个生产线程 -> 立即禁用旁路并记录原因（不按 SPSC 硬写环）
 *
 * 保留自 T2 的已验证部分：
 *   - Hook 地址四项校验（模块加载 / 符号存在 / 偏移 0xd455c / 前 16 字节机器码）
 *   - 参数位置 args[2]=PCM 指针、args[3]=输入长度，长度必须等于 5120
 *   - Hook 内一次 Memory.copy(dst, src, 5120) 的整帧复制方式
 *   - arm32 struct timespec { int32 tv_sec; int32 tv_nsec; } 的读取（tv_nsec 在 +4）
 *   - FNV-1a 用 Math.imul（普通 * 会丢 32 位乘法精度）
 *   - 生命周期：强引用对象 + Script.bindWeak、teardown 幂等、先关数据闸门再清理
 *
 * 并发模型（与 T2 相同）：Frida V8 对同一脚本只有一份 JS 执行权，
 * Interceptor 回调与定时器回调不会真正并发；仍保留 reentry 守卫以便在真机上验证这一点。
 *
 * 用法：
 *   frida -H 127.0.0.1:27042 -n com.alibaba.ailabs.genie.smartapp:core -l pcm_bridge_draft.js
 *   python: script.exports_sync.stats() / script.exports_sync.stop()
 *   DRY_RUN=true 时只统计：不 socket()、不 connect()、不 sendto()
 */

/* ============ 配置 ============ */
var DRY_RUN        = false;         /* true = 只统计，不建 socket 不发送 */
var SOCK_ABSTRACT  = true;          /* 抽象命名空间（不需要文件系统权限） */
var SOCK_PATH      = 'tgz2_pcm';
var MAX_AGE_MS     = 500;           /* 超过 500 ms 的帧不再发送（旧语音没有价值） */
var RETRY_MS       = 500;           /* socket 重连最小间隔 */
var DRAIN_BURST    = 8;             /* 每个消费 tick 最多处理 8 帧 */
var TICK_MS        = 20;
var STAT_MS        = 5000;
var RING_CAP       = 64;            /* 64 * 40 ms = 2.56 s 上限 */
var FRAME_IN       = 5120;          /* 原厂输入帧：4 路 int16 交错，640 样本/路 */
var LANE_STRIDE    = 4;             /* int16 索引步长：lane0 = in16[q*4]，等价字节偏移 q*8 */
var SPF            = 640;           /* 每帧每路样本数 */
var FRAME_OUT      = 1280;          /* 单声道 int16 载荷字节数 */
var HDR_LEN        = 40;
var MSG_LEN        = HDR_LEN + FRAME_OUT;   /* 1320 */
var MAGIC          = 0x325A4754;
var VER            = 2;
var FLAG_SYNTHETIC = 0x01;
var FLAG_SPEECH    = 0x02;
var RATE           = 16000;
var CH             = 1;
var BITS           = 16;

var F_OFF          = 0xd455c;
var SYM            = '_ZN14AGSpeechEngine4feedEjPKvi';
var SIG_BYTES      = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
                      0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];

/* arm32 / Android 常量 */
var AF_UNIX = 1, SOCK_DGRAM = 2;
var F_GETFL = 3, F_SETFL = 4, O_NONBLOCK = 0x800;   /* arm32: 0o4000 */
var CLOCK_MONOTONIC = 1;
var EAGAIN = 11, EWOULDBLOCK = 11, ENOBUFS = 105, EPIPE = 32, ECONNRESET = 104,
    ENOTCONN = 107, ECONNREFUSED = 111;
var TWO32 = 4294967296;

/* ============ FNV-1a（与 tgz2_frame.h 的 tgz2_fnv1a 等价） ============
 * C 侧:      h ^= p[i]; h *= 16777619u;        // uint32 回绕
 * JS 侧:     Math.imul(h ^ byte, 16777619) >>> 0
 * 普通 * 在 JS 里是 double，h*16777619 会超过 2^53 丢精度 —— 必须用 imul。
 * crc_crosscheck/crc_test.js 按标记抽取这两个函数单独与 C 对拍。
 */
/* FNV-BEGIN */
function fnvStep(h, byte) {
  return Math.imul(h ^ byte, 16777619) >>> 0;
}
function fnv2(h, v) {
  h = fnvStep(h, v & 0xFF);
  h = fnvStep(h, (v >> 8) & 0xFF);
  return h;
}
/* FNV-END */
var FNV_BASIS = 2166136261;

/* 逐字节版本：消费端对 1280 B payload 求 CRC（与 tgz2_fnv1a(p, n) 同一算法） */
/* FNV-BYTES-BEGIN */
function fnvBytes(u8, off, len) {
  var h = FNV_BASIS >>> 0;
  var end = off + len;
  for (var i = off; i < end; i++) h = Math.imul(h ^ u8[i], 16777619) >>> 0;
  return h >>> 0;
}
/* FNV-BYTES-END */

/* ============ 统计 ============ */
/*
 * frames      Hook 回调进入主体（通过闸门）的次数
 * produced    成功整帧复制入环的帧数            frames - produced = lenBad + nullPtr + ringDrop + clockDrop
 * sent        成功 sendto 的帧数
 * stale       采集超过 MAX_AGE_MS 被丢弃
 * noPeerDrop  没有可用 socket（接收端未启动/重连失败）而丢弃
 * sendDrop    EAGAIN/EWOULDBLOCK/ENOBUFS/对端消失 造成的丢弃
 * sendErr     socket 错误（含 errno 记录）
 * clockFail   clock_gettime 失败次数；clockDrop 因时钟不可用丢帧；noClockTicks 消费 tick 无法取时钟
 * ringDrop    环满丢弃（Hook 侧）；depthMax 环最大深度
 */
var st = {
  enabled: false, why: 'init', epoch: 0, seq: 0, fd: -1, nextTry: 0,
  frames: 0, produced: 0, capSeq: 0,
  sent: 0, stale: 0, ringDrop: 0, noPeerDrop: 0, sendDrop: 0, sendErr: 0,
  lenBad: 0, nullPtr: 0, readFail: 0, hookEx: 0,
  clockFail: 0, clockDrop: 0, noClockTicks: 0,
  connectFail: 0, reconnects: 0, sessions: 0, disables: 0,
  depthMax: 0, producerTid: 0, producerCalls: 0, wantsClose: false,
  tidCalls: {}, tidCount: 0, otherTidCalls: 0,
  crcFrames: 0, reentryHook: 0, reentryDrain: 0, drainEx: 0,
  lastErrno: 0, nonblockVerified: false,
  hashSum: 0, hashN: 0
};

/* 元数据（与环槽一一对应，全部预分配） */
var ring = null;                    /* RING_CAP * FRAME_IN = 327680 B */
var slotCapSeq = null;              /* Float64Array(RING_CAP) 采集序号 */
var slotTsUs = null;                /* Float64Array(RING_CAP) 采集时刻（MONOTONIC 微秒） */
var msg = null;                     /* Memory.alloc(MSG_LEN) 待发帧（头 + 载荷） */
var payloadAB = null, payloadU8 = null, payloadI16 = null;
var latUs = null, latW = 0, latN = 0;

var idx = { head: 0, tail: 0 };
var inHook = false, inDrain = false;

/* ============ 生命周期对象（必须有强引用） ============
 * Script.bindWeak(target, cb) 在 target 被 GC 或脚本即将卸载时触发 cb。
 * 传 {} 作触发器时 V8 可以随时回收它，于是回调可能在运行中提前触发、把正在用的
 * fd 关掉。所以这里持有一个不可回收对象。
 */
var LIFECYCLE = { alive: true, fds: [] };

var hookListener = null;
var hookDetachAttempted = false;
var hookDetached = false;
var hookDetachError = null;

var tick = null;
var stat = null;
var teardownDone = false;

function report(o) { try { send(o); } catch (e) { } }
function errnoOf() {
  try { return libc && libc.errno ? libc.errno().readS32() : 0; } catch (e) { return 0; }
}

/* ============ 1) 四级地址校验（与 T2 完全一致） ============ */
var checkReport = { ck1_module: false, ck2_symbol: false, ck3_offset: false, ck4_sig: false };
var base = null, feed = null;
(function precheck() {
  base = Module.findBaseAddress('libsmartbox.so');
  if (base === null) { st.why = 'no-module'; return; }
  checkReport.ck1_module = true;

  feed = Module.findExportByName('libsmartbox.so', SYM);
  if (feed === null) { st.why = 'no-symbol'; return; }
  checkReport.ck2_symbol = true;

  var off = feed.sub(base).toInt32();
  if (off !== F_OFF) { st.why = 'offset:' + off.toString(16); feed = null; return; }
  checkReport.ck3_offset = true;

  var sigOk = true;
  try {
    var pro = new Uint8Array(feed.readByteArray(16));
    for (var si = 0; si < 16; si++) {
      if (pro[si] !== SIG_BYTES[si]) { sigOk = false; st.why = 'sig@' + si; break; }
    }
  } catch (e) { sigOk = false; st.why = 'sig-read'; }
  if (!sigOk) { feed = null; return; }
  checkReport.ck4_sig = true;
})();
st.enabled = (feed !== null);

/* ============ 2) libc 绑定（arm32 ABI：int=4, long=4, size_t/ssize_t=4） ============ */
var libc = null;
function bindLibc() {
  if (libc !== null) return;
  function g(n) { return Module.getExportByName('libc.so', n); }
  libc = {
    socket:   new NativeFunction(g('socket'),  'int',  ['int', 'int', 'int']),
    connect:  new NativeFunction(g('connect'), 'int',  ['int', 'pointer', 'int']),
    sendto:   new NativeFunction(g('sendto'),  'long', ['int', 'pointer', 'ulong', 'int', 'pointer', 'int']),
    fcntl:    new NativeFunction(g('fcntl'),   'int',  ['int', 'int', 'int']),
    close:    new NativeFunction(g('close'),   'int',  ['int']),
    clock_gettime: new NativeFunction(g('clock_gettime'), 'int', ['int', 'pointer'])
  };
  var ep = Module.findExportByName('libc.so', '__errno') ||
           Module.findExportByName('libc.so', '__errno_location');
  libc.errno = ep ? new NativeFunction(ep, 'pointer', []) : null;
}

var tsMem = null;

/* TS-BEGIN —— tests/bridge_unit_test.js 按标记抽取后单独测试
 *
 * arm32 struct timespec { int32 tv_sec; int32 tv_nsec; } 共 8 字节：
 *   tv_sec 在 +0，tv_nsec 在 +4。
 * 修订 3 曾写成 tsMem.readS32(), tsMem.readS32() —— 两次读同一地址，
 * 纳秒恒等于秒，时间戳直接错掉。必须第二处 add(4)。
 *
 * 返回 >=0：微秒；返回 -1：字段非法（负值或 nsec >= 1e9）。
 */
function decodeTimespec(buf) {
  var s = buf.readS32();
  var n = buf.add(4).readS32();
  if (s < 0 || n < 0 || n >= 1000000000) return -1;
  return s * 1000000 + ((n / 1000) | 0);
}
/* TS-END */

function nowUs() {
  try {
    if (libc === null) bindLibc();
    if (libc.clock_gettime(CLOCK_MONOTONIC, tsMem) !== 0) { st.clockFail++; return 0; }
    var us = decodeTimespec(tsMem);
    if (us < 0) { st.clockFail++; return 0; }
    return us;
  } catch (e) { st.clockFail++; return 0; }
}

/* ============ 3) 预分配（Hook 安装前全部完成，Hook 内零分配） ============ */
function prepare() {
  if (ring !== null) return true;
  tsMem = Memory.alloc(8);
  ring = Memory.alloc(RING_CAP * FRAME_IN);      /* 327680 B：64 槽 * 5120 B 整帧 */
  slotCapSeq = new Float64Array(RING_CAP);
  slotTsUs = new Float64Array(RING_CAP);
  msg = Memory.alloc(MSG_LEN);                   /* 1320 B：头 40 + 载荷 1280 */
  payloadAB = new ArrayBuffer(FRAME_OUT);
  payloadU8 = new Uint8Array(payloadAB);
  payloadI16 = new Int16Array(payloadAB);
  latUs = new Float64Array(2048);
  latW = 0;
  latN = 0;
  return true;
}

/* ============ 4) lane0 抽取（消费端，Hook 内禁止） ============ */
/* LANE-BEGIN */
/* in16 是整帧的 int16 视图（4 路交错），lane0 = in16[q*4]；
 * 等价于字节偏移 q*8（每路 int16，4 路一组 8 字节）。 */
function extractLane0(in16, out16, spf, stride) {
  for (var q = 0; q < spf; q++) out16[q] = in16[q * stride];
  return out16;
}
/* LANE-END */

/* ============ 5) TGZ2 v2 帧组装（消费端，Hook 内禁止） ============ */
/* FRAME-BEGIN */
function putU64(p, v) {
  var lo = v % TWO32;                 /* ts_us < 2^53，double 精确 */
  var hi = Math.floor(v / TWO32);
  p.writeU32(lo >>> 0);
  p.add(4).writeU32(hi >>> 0);
}
function buildFrame(m, seq, tsUs, epoch, flags, payload, crc) {
  m.writeU32(MAGIC >>> 0);
  m.add(4).writeU8(VER);
  m.add(5).writeU8(flags & 0xFF);
  m.add(6).writeU16(HDR_LEN);
  m.add(8).writeU32(seq >>> 0);
  putU64(m.add(12), tsUs);
  m.add(20).writeU32(epoch >>> 0);
  m.add(24).writeU32(RATE);
  m.add(28).writeU16(CH);
  m.add(30).writeU16(BITS);
  m.add(32).writeU32(FRAME_OUT);
  m.add(36).writeU32(crc >>> 0);
  m.add(HDR_LEN).writeByteArray(payload);
  return MSG_LEN;
}
/* FRAME-END */

/* ============ 6) socket（fd 唯一所有者 = st.fd） ============ */
var saMem = null, saLen = 0;

function buildAddr() {
  if (saMem !== null) return true;
  try {
    saMem = Memory.alloc(110);              /* sizeof(struct sockaddr_un) */
    saMem.writeU16(AF_UNIX);
    if (SOCK_ABSTRACT) {
      /* 抽象命名空间：sun_path[0]=0，名字从 sun_path[1] 开始 */
      saMem.add(2).writeU8(0);
      saMem.add(3).writeUtf8String(SOCK_PATH);
      saLen = 2 + 1 + SOCK_PATH.length;     /* 不含结尾 NUL */
    } else {
      saMem.add(2).writeUtf8String(SOCK_PATH);
      saLen = 2 + SOCK_PATH.length + 1;     /* 含结尾 NUL */
    }
    return true;
  } catch (e) { st.why = 'addr'; return false; }
}

var fdOwner = { owned: false };
function closeSock() {
  if (!fdOwner.owned) return;
  var fd = st.fd;
  st.fd = -1;
  fdOwner.owned = false;
  st.nonblockVerified = false;
  if (fd >= 0) { try { libc.close(fd); } catch (e) { } }
}

/* 只在消费 tick / teardown 里调用：Hook 内绝不调 socket/close */
function disable(why) {
  st.why = why;
  st.disables++;
  st.enabled = false;
  st.wantsClose = true;
}

function ensureSock(now) {
  if (DRY_RUN) return false;                 /* DRY_RUN 绝不建 socket */
  if (fdOwner.owned) return true;
  if (now < st.nextTry) return false;
  st.nextTry = now + RETRY_MS * 1000;

  var fd = -1, connected = false;
  try {
    if (libc === null) bindLibc();
    if (!buildAddr()) return false;

    fd = libc.socket(AF_UNIX, SOCK_DGRAM, 0);
    if (fd < 0) { st.sendErr++; st.lastErrno = errnoOf(); return false; }

    /* 非阻塞：设置 + 回读确认，任一失败就关掉并禁用（绝不带着阻塞 fd 发送） */
    if (libc.fcntl(fd, F_SETFL, O_NONBLOCK) < 0) {
      st.lastErrno = errnoOf();
      try { libc.close(fd); } catch (e) { }
      disable('nonblock-set-fail');
      return false;
    }
    var fl = libc.fcntl(fd, F_GETFL, 0);
    if (fl < 0 || (fl & O_NONBLOCK) === 0) {
      st.lastErrno = errnoOf();
      try { libc.close(fd); } catch (e) { }
      disable('nonblock-not-set');
      return false;
    }

    /* connected DGRAM：connect 之后 sendto 的目标地址传 NULL/0 */
    if (libc.connect(fd, saMem, saLen) < 0) {
      st.connectFail++;
      st.lastErrno = errnoOf();
      try { libc.close(fd); } catch (e) { }
      return false;
    }
    connected = true;

    st.fd = fd;
    fdOwner.owned = true;
    st.nonblockVerified = true;
    st.sessions++;
    return true;
  } catch (e) {
    st.sendErr++;
    if (fd >= 0 && !connected) { try { libc.close(fd); } catch (e2) { } }
    else if (fd >= 0 && connected) { st.fd = fd; fdOwner.owned = true; closeSock(); }
    return false;
  }
}

/* ============ 7) Hook（只做：闸门 + 整帧复制 + 序号/时间戳 + 推进 tail） ============
 * T3-08：接受多个原生生产者线程（TID 只做统计，不再触发 disable）。
 * 安全性依赖 Frida 单线程 JS 运行时 + inHook/inDrain 双保护，详见闸门 2 的注释。
 */
function installHook() {
  if (teardownDone || !LIFECYCLE.alive || !st.enabled) {
    throw new Error('lifecycle-not-active');
  }

  hookListener = Interceptor.attach(feed, {
    /* HOOK-BEGIN */
    onEnter: function (args) {
      /* 闸门 1：已 teardown / 生命周期结束 / 旁路已禁用 -> 立刻返回 */
      if (teardownDone || !LIFECYCLE.alive || !st.enabled) return;
      if (inHook) { st.reentryHook++; return; }
      inHook = true;
      try {
        /*
         * 闸门 2：多生产者（T3-08）。
         * 真机证明原厂音频管线会从**不同线程**调用 AGSpeechEngine::feed
         * （实测 TID 19873 与 14171 交替出现），所以"同一生产者线程"不能再当作硬条件。
         *
         * 为什么允许多个 TID 仍然安全：
         *   1) Frida 的 JS 运行时是单线程的：同一脚本的 Interceptor 回调互斥执行
         *      （进入回调时持有脚本锁），两个原生线程不可能同时停留在下面的 JS 代码里；
         *   2) 因此"复制整帧 -> 写 slotCapSeq/slotTsUs -> idx.tail++"这一串仍然是
         *      串行完成的，不会交错；消费端 tick 与它同样串行（另有 inDrain 保护）；
         *   3) 生产者只写 tail 与其槽位，消费者只读 tail、写 head 与其槽位，
         *      SPSC 的"不互相触碰对方槽位"前提继续成立。
         * 真正的重入（同一线程在回调内部再次调用 feed，JS 锁可重入）仍由 inHook 拦住。
         */
        var tid = Process.getCurrentThreadId();
        st.producerCalls++;
        if (st.producerTid === 0) st.producerTid = tid;      /* 首个线程：仅作诊断 */
        if (st.tidCalls[tid] === undefined) {
          st.tidCalls[tid] = 0;
          st.tidCount++;
        }
        st.tidCalls[tid]++;
        if (tid !== st.producerTid) st.otherTidCalls++;
        st.frames++;

        /* 闸门 3：参数位置与长度（T2 已验证：args[3] 必须等于 5120） */
        var len = args[3].toInt32();
        if (len !== FRAME_IN) { st.lenBad++; return; }

        /* 闸门 4：指针非空 */
        var src = args[2];
        if (src.isNull()) { st.nullPtr++; return; }

        /* 闸门 5：环有空位（满则丢，绝不覆盖未消费数据） */
        var depth = (idx.tail - idx.head) | 0;
        if (depth >= RING_CAP) { st.ringDrop++; return; }

        /* 闸门 6：时钟可用（失败则丢帧，绝不把 ts=0 当成采集时刻放进环） */
        var tS = nowUs();
        if (tS === 0) { st.clockDrop++; return; }

        var slotNo = idx.tail % RING_CAP;
        var dst = ring.add(slotNo * FRAME_IN);
        Memory.copy(dst, src, FRAME_IN);       /* 唯一的内存动作：整帧 5120 B */

        slotCapSeq[slotNo] = st.capSeq++;
        slotTsUs[slotNo] = tS;
        idx.tail++;
        st.produced++;
        if (depth + 1 > st.depthMax) st.depthMax = depth + 1;
      } catch (e) {
        try { st.hookEx++; } catch (e2) { }
      } finally {
        inHook = false;
      }
    }
    /* HOOK-END */
  });

  if (!hookListener || typeof hookListener.detach !== 'function') {
    hookListener = null;
    throw new Error('attach-returned-invalid-listener');
  }
}

/* ============ 8) 消费端（20 ms tick，每次最多 DRAIN_BURST 帧） ============ */
function toI16(ab) {
  if (ab === null || ab === undefined) return null;
  if (typeof ArrayBuffer !== 'undefined' && ab instanceof ArrayBuffer) return new Int16Array(ab);
  if (typeof ArrayBuffer !== 'undefined' && ArrayBuffer.isView(ab)) {
    return new Int16Array(ab.buffer, ab.byteOffset, ab.byteLength >> 1);
  }
  return null;
}

function drain() {
  if (teardownDone || !LIFECYCLE.alive) return;
  if (inDrain) { st.reentryDrain++; return; }
  inDrain = true;
  try {
    /* 禁用/对端消失后的 close 只在消费 tick 里做（Hook 内绝不 close） */
    if (st.wantsClose) { st.wantsClose = false; closeSock(); }
    if (!st.enabled) return;

    var now = nowUs();
    if (now === 0) { st.noClockTicks++; return; }   /* 无时钟：既不发送也不做 age 判断 */

    var burst = DRAIN_BURST;
    while (burst-- > 0 && idx.head !== idx.tail) {
      var slotNo = idx.head % RING_CAP;

      var tsUs = slotTsUs[slotNo];
      /* 时间戳为 0 / 非正：绝不当作正常数据发送 */
      if (!(tsUs > 0)) { st.clockDrop++; idx.head++; continue; }

      var age = now - tsUs;
      if (age > MAX_AGE_MS * 1000) { st.stale++; idx.head++; continue; }

      /* 没有 socket（接收端未启动 / 重连未成功）：丢本帧，绝不阻塞 */
      if (!DRY_RUN && !fdOwner.owned) {
        if (!ensureSock(now)) { st.noPeerDrop++; idx.head++; continue; }
      }

      var ab;
      try { ab = ring.add(slotNo * FRAME_IN).readByteArray(FRAME_IN); }
      catch (e) { st.readFail++; idx.head++; continue; }
      if (ab === null || ab.byteLength !== FRAME_IN) { st.readFail++; idx.head++; continue; }

      var in16 = toI16(ab);
      if (in16 === null) { st.readFail++; idx.head++; continue; }

      /* lane0 抽取 + CRC + 头组装：全部在消费端 */
      extractLane0(in16, payloadI16, SPF, LANE_STRIDE);
      var crc = fnvBytes(payloadU8, 0, FRAME_OUT);
      st.crcFrames++;
      st.hashSum = (st.hashSum + crc) >>> 0;
      st.hashN++;

      var seq = (st.seq = (st.seq + 1) >>> 0);
      buildFrame(msg, seq, tsUs, st.epoch, 0, payloadU8, crc);   /* flags=0：真实 PCM */

      if (DRY_RUN) {
        st.sent++;
      } else {
        var n = libc.sendto(st.fd, msg, MSG_LEN, 0, ptr(0), 0);
        if (n === MSG_LEN) {
          st.sent++;
          latUs[latW] = age;
          latW = (latW + 1) % latUs.length;
          if (latN < latUs.length) latN++;
        } else if (n < 0) {
          var e = errnoOf();
          st.lastErrno = e;
          if (e === EAGAIN || e === EWOULDBLOCK || e === ENOBUFS) {
            st.sendDrop++;                       /* 缓冲满：丢本帧，不重试 */
          } else if (e === EPIPE || e === ECONNRESET || e === ENOTCONN || e === ECONNREFUSED) {
            st.sendDrop++;                       /* 本帧没送到 */
            st.reconnects++;
            closeSock();                         /* 对端没了：关掉，下一个 tick 重连 */
          } else {
            st.sendErr++;                        /* 其他错误：计数，丢本帧 */
          }
        } else {
          st.sendErr++;                          /* dgram 不应出现半包 */
        }
      }
      idx.head++;
    }
  } catch (e) {
    st.drainEx++;
  } finally {
    inDrain = false;
  }
}

/* ============ 9) 统计输出 ============ */
function pending() { return (idx.tail - idx.head) | 0; }

function tidsObj() {
  var o = {};
  for (var k in st.tidCalls) {
    if (Object.prototype.hasOwnProperty.call(st.tidCalls, k)) o[k] = st.tidCalls[k];
  }
  if (st.producerTid !== 0) o.firstTid = st.producerTid;
  return o;
}

function latPct(q) {
  /* 只对最近 latN 个样本做近似分位数，纯诊断用途 */
  var n = latN;
  if (!n) return 0;
  var a = [];
  for (var i = 0; i < n; i++) a.push(latUs[i]);
  a.sort(function (x, y) { return x - y; });
  return a[Math.floor((n - 1) * q)];
}

function statLine(tag) {
  return '[' + tag + '] epoch=0x' + (st.epoch >>> 0).toString(16) +
         ' frames=' + st.frames + ' produced=' + st.produced + ' sent=' + st.sent +
         ' pending=' + pending() + ' ringDrop=' + st.ringDrop + ' stale=' + st.stale +
         ' noPeerDrop=' + st.noPeerDrop + ' sendDrop=' + st.sendDrop + ' sendErr=' + st.sendErr +
         ' depthMax=' + st.depthMax + ' crcFrames=' + st.crcFrames +
         ' clockFail=' + st.clockFail + ' clockDrop=' + st.clockDrop +
         ' hookEx=' + st.hookEx + ' drainEx=' + st.drainEx +
         ' reentry=' + st.reentryHook + '/' + st.reentryDrain +
         ' sessions=' + st.sessions + ' reconnects=' + st.reconnects +
         ' connectFail=' + st.connectFail + ' fd=' + st.fd +
         ' tid=' + st.producerTid + ' tids=' + st.tidCount + ' otherTid=' + st.otherTidCalls +
         ' nb=' + st.nonblockVerified + ' lastErrno=' + st.lastErrno;
}

function startTimers() {
  tick = setInterval(function () {
    if (teardownDone || !LIFECYCLE.alive) return;
    try { drain(); } catch (e) { st.drainEx++; }
  }, TICK_MS);

  stat = setInterval(function () {
    if (teardownDone || !LIFECYCLE.alive) return;
    try { report({ t: 'stat', line: statLine('STAT'), stats: summary() }); } catch (e) { }
  }, STAT_MS);

  if (tick === null || tick === undefined || stat === null || stat === undefined) {
    throw new Error('setInterval-returned-null');
  }
}

/* ============ 10) 安装 ============ */
function install() {
  if (teardownDone || !LIFECYCLE.alive) throw new Error('lifecycle-not-active');
  if (!st.enabled) throw new Error('precheck:' + st.why);

  bindLibc();
  prepare();                 /* 环 / 槽元数据 / 待发帧 / 载荷视图，全部在 attach 之前 */

  /* epoch：脚本每次启动都换（接收端据此识别"发送端重启"） */
  var boot = nowUs();
  if (boot === 0) { boot = Date.now() & 0xFFFFFFFF; }      /* 时钟不可用时退化为墙钟 */
  st.epoch = ((boot & 0xFFFFFFFF) ^ 0x5A5A5A5A) >>> 0;

  installHook();
  st.why = 'ok';
  startTimers();

  report({
    t: 'ready', enabled: st.enabled, epoch: st.epoch, dry: DRY_RUN,
    ring_cap: RING_CAP, ring_slot_bytes: FRAME_IN, ring_total_bytes: RING_CAP * FRAME_IN,
    msg_bytes: MSG_LEN, hdr_bytes: HDR_LEN, payload_bytes: FRAME_OUT,
    lane0_samples: SPF, lane_stride_bytes: LANE_STRIDE * 2,
    sock: (SOCK_ABSTRACT ? 'abstract:' : 'file:') + SOCK_PATH,
    max_age_ms: MAX_AGE_MS, tick_ms: TICK_MS, burst: DRAIN_BURST
  });
  console.log('[v] installed epoch=0x' + (st.epoch >>> 0).toString(16) +
              ' ring=' + (RING_CAP * FRAME_IN) + 'B msg=' + MSG_LEN + 'B dry=' + DRY_RUN);
}

/* ============ 11) 清理（幂等；Hook 内不做这些） ============ */
function teardownStatus() {
  return {
    stopped: teardownDone,
    hookDetachAttempted: hookDetachAttempted,
    hookDetached: hookDetached,
    hookDetachError: hookDetachError,
    tickActive: tick !== null && tick !== undefined,
    statActive: stat !== null && stat !== undefined,
    fd: st.fd,
    enabled: st.enabled,
    why: st.why
  };
}

function teardown() {
  if (teardownDone) return teardownStatus();          /* 幂等 */
  teardownDone = true;

  /* 1) 先关数据闸门：在飞的 hook 回调立刻返回 */
  LIFECYCLE.alive = false;
  st.enabled = false;

  /* 2) 清定时器 */
  if (tick !== null && tick !== undefined) { try { clearInterval(tick); } catch (e) { } tick = null; }
  if (stat !== null && stat !== undefined) { try { clearInterval(stat); } catch (e) { } stat = null; }

  /* 3) detach 最多一次 */
  if (hookListener !== null && hookListener !== undefined && !hookDetachAttempted) {
    hookDetachAttempted = true;
    try { hookListener.detach(); hookDetached = true; }
    catch (e) { hookDetachError = String(e && e.message ? e.message : e); }
  }

  /* 4) 关 socket */
  try { closeSock(); } catch (e) { }

  return teardownStatus();
}

/* ============ 12) 对外接口 ============ */
function summary() {
  return {
    enabled: st.enabled, why: st.why, epoch: st.epoch, seq: st.seq, capSeq: st.capSeq,
    frames: st.frames, produced: st.produced, sent: st.sent,
    stale: st.stale, ringDrop: st.ringDrop, noPeerDrop: st.noPeerDrop,
    sendDrop: st.sendDrop, sendErr: st.sendErr, lastErrno: st.lastErrno,
    lenBad: st.lenBad, nullPtr: st.nullPtr, readFail: st.readFail,
    hookEx: st.hookEx, hookReentry: st.reentryHook, drainReentry: st.reentryDrain,
    drainEx: st.drainEx, clockFail: st.clockFail, clockDrop: st.clockDrop,
    noClockTicks: st.noClockTicks, connectFail: st.connectFail,
    reconnects: st.reconnects, sessions: st.sessions, disables: st.disables,
    depthMax: st.depthMax, pending: pending(), producerTid: st.producerTid,
    tidCount: st.tidCount, otherTidCalls: st.otherTidCalls,
    tids: tidsObj(), fd: st.fd, nonblockVerified: st.nonblockVerified,
    crcFrames: st.crcFrames, hashSum: st.hashSum, dry: DRY_RUN,
    latP50_us: latPct(0.50), latP99_us: latPct(0.99),
    pendingEq: (st.frames - st.produced) === (st.lenBad + st.nullPtr + st.ringDrop + st.clockDrop)
  };
}

rpc.exports = {
  stats: function () {
    var s = summary();
    s.lifecycle = teardownStatus();
    s.checks = checkReport;
    return s;
  },
  stop: function () { return teardown(); },
  start: function () { install(); return summary(); }
};

try { Script.bindWeak(LIFECYCLE, teardown); } catch (e) { }
LIFECYCLE.fds = [];      /* 让对象保持"有内容"，避免被优化掉 */

/* ============ 13) 启动 ============ */
if (st.enabled) {
  try {
    install();
  } catch (e) {
    st.enabled = false;
    st.why = 'install:' + String(e && e.message ? e.message : e);
    teardown();          /* 中途失败：已创建的定时器/监听器/fd 全部回滚 */
  }
} else {
  report({ t: 'precheck-failed', why: st.why, checks: checkReport });
  console.log('[!] precheck failed: ' + st.why);
}
