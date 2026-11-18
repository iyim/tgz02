'use strict';
/*
 * pcm_bridge_draft.js -- 方案 A 草稿（真机短时验证用 · 修订 3）
 *
 * 状态：**仍未在 TG-Z02 上运行过**。本轮只做静态与 PC 侧校验，
 *       没有在设备上执行 hook、thread_probe 或 bridge。
 *
 * 修订 3 相对修订 2（见 03_pcm_bridge_final_review.md）：
 *   F1 FNV-1a 改用 Math.imul（32 位乘法精度），与 tgz2_frame.h 逐字节一致；
 *      该函数放在 FNV-BEGIN/END 标记之间，供 crc_crosscheck 直接抽取测试
 *   F2 资源清理改为「强引用对象 + Script.bindWeak」+「rpc.exports.stop()」，
 *      不再用没有强引用的 {} 作触发器
 *   F3 sendto 只用于 connected dgram：地址传 NULL/0，返回值按 ssize_t 处理
 *   F4 timespec 读取加校验（nsec<1e9），时钟失败计数
 *   F5 socket 生命周期收敛到 fdOwner 单一所有者，杜绝重复 close / 泄漏
 *   F6 DRY_RUN 明确不建 socket、不 sendto、不 connect
 *   F7 新增单生产者运行时守卫：出现第二个 tid 立即禁用旁路（SPSC 前提未验证）
 *   F8 hook 内异常计数自身也包 try，绝不让异常穿出 onEnter
 *
 * 用法：
 *   frida -H 127.0.0.1:27042 -n com.alibaba.ailabs.genie.smartapp:core -l pcm_bridge_draft.js
 *   python: script.exports_sync.stop()   # 卸载前显式释放 fd
 */

/* ============ 配置 ============ */
var DRY_RUN       = false;         // true = 只统计，不建 socket 不发送
var SOCK_ABSTRACT = true;          // 抽象命名空间优先
var SOCK_PATH     = 'tgz2_pcm';
var MAX_AGE_MS    = 500;           // 过期帧丢弃
var RETRY_MS      = 500;
var DRAIN_BURST   = 8;
var TICK_MS       = 20;
var RING_CAP      = 64;
var FRAME_IN      = 5120;
var STRIDE        = 8;
var SPF           = 640;
var FRAME_OUT     = 1280;
var HDR_LEN       = 40;
var MSG_LEN       = HDR_LEN + FRAME_OUT;
var MAGIC         = 0x325A4754;
var VER           = 2;
var F_OFF         = 0xd455c;
var SYM           = '_ZN14AGSpeechEngine4feedEjPKvi';
var SIG_BYTES     = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
                     0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];

var AF_UNIX = 1, SOCK_DGRAM = 2;
var F_GETFL = 3, F_SETFL = 4, O_NONBLOCK = 0x800;   /* arm32: 0o4000 */
var CLOCK_MONOTONIC = 1;
var EAGAIN = 11, ENOBUFS = 105, EPIPE = 32, ECONNRESET = 104,
    ENOTCONN = 107, ECONNREFUSED = 111;

/* ============ FNV-1a（与 tgz2_frame.h 的 tgz2_fnv1a 等价） ============
 * C 侧:      h ^= p[i]; h *= 16777619u;        // uint32 回绕
 * JS 侧:     Math.imul(h ^ byte, 16777619) >>> 0
 * 普通 * 在 JS 里是 double，h*16777619 会超过 2^53 丢精度 —— 必须用 imul。
 * 这两行被 crc_crosscheck/crc_test.js 用标记抽取，测试的就是这里。
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

/* ============ 统计 ============ */
var st = {
  enabled: false, why: 'init', epoch: 0, seq: 0, fd: -1, nextTry: 0,
  frames: 0, sent: 0, stale: 0, ringDrop: 0, lenBad: 0,
  readFail: 0, hookEx: 0, sendDrop: 0, sendErr: 0, clockFail: 0,
  connectFail: 0, reconnects: 0, sessions: 0, disables: 0,
  depthMax: 0, producerTid: 0, wantsClose: false, tids: {}
};

/* ============ 生命周期对象（F2：必须有强引用） ============
 * libF: Script.bindWeak(target, cb) 的语义是「target 被 GC 时，或脚本即将卸载时」
 * 调用 cb。若传 {}（无强引用），V8 随时可以回收它 -> cb 可能在运行中提前触发，
 * 也就是把正在用的 fd 关掉。所以这里持有一个不可回收的对象。
 */
var LIFECYCLE = { alive: true, fds: [] };

function report(o) { try { send(o); } catch (e) { } }
function errnoOf() {
  try { return libc && libc.errno ? libc.errno().readS32() : 0; } catch (e) { return 0; }
}

/* ============ 1) 三级闸门 ============ */
var base = Module.findBaseAddress('libsmartbox.so');
var feed = null;
if (base === null) {
  st.why = 'no-module';
} else {
  feed = Module.findExportByName('libsmartbox.so', SYM);
  if (feed === null) {
    st.why = 'no-symbol';
  } else {
    var off = feed.sub(base).toInt32();
    if (off !== F_OFF) {
      st.why = 'offset:' + off.toString(16);
      feed = null;
    } else {
      var sigOk = true;
      try {
        var pro = new Uint8Array(feed.readByteArray(16));
        for (var i = 0; i < 16; i++) {
          if (pro[i] !== SIG_BYTES[i]) { sigOk = false; st.why = 'sig@' + i; break; }
        }
      } catch (e) { sigOk = false; st.why = 'sig-read'; }
      if (!sigOk) feed = null;
    }
  }
}
st.enabled = (feed !== null);

/* ============ 2) libc 绑定（F4：类型按 arm32 ABI 声明） ============
 * arm32: int=4, long=4, size_t/ssize_t=4, socklen_t=4, void*=4
 * timespec = { int32 tv_sec; int32 tv_nsec; } = 8 字节
 */
var libc = null;
function bindLibc() {
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

var tsMem = Memory.alloc(8);
function nowUs() {
  try {
    if (libc.clock_gettime(CLOCK_MONOTONIC, tsMem) !== 0) { st.clockFail++; return 0; }
    var s = tsMem.readS32(), n = tsMem.readS32();
    if (s < 0 || n < 0 || n >= 1000000000) { st.clockFail++; return 0; }
    return s * 1000000 + ((n / 1000) | 0);
  } catch (e) { st.clockFail++; return 0; }
}

/* ============ 3) 预分配（零分配路径） ============ */
var ring = Memory.alloc(RING_CAP * MSG_LEN);
var crcArr = new Int32Array(RING_CAP);
var tsArr = new Float64Array(RING_CAP);
var idx = { head: 0, tail: 0 };

/* ============ 4) 地址与 socket（F3/F5） ============ */
var saMem = null, saLen = 0;

function buildAddr() {
  if (saMem !== null) return true;
  try {
    saMem = Memory.alloc(110);              /* sizeof(struct sockaddr_un) */
    saMem.writeU16(AF_UNIX);
    if (SOCK_ABSTRACT) {
      /* abstract: sun_path[0]=0 后接名字，长度 = 2 + 1 + strlen（不含结尾 NUL） */
      saMem.add(2).writeU8(0);
      saMem.add(3).writeUtf8String(SOCK_PATH);
      saLen = 3 + SOCK_PATH.length;
    } else {
      /* filesystem: sun_path 需要结尾 NUL，长度 = 2 + strlen + 1 */
      saMem.add(2).writeUtf8String(SOCK_PATH);
      saLen = 3 + SOCK_PATH.length;
    }
    return true;
  } catch (e) { st.why = 'addr'; return false; }
}

/* fd 只有一个所有者：st.fd。任何关闭都必须经过 closeSock()（F5） */
var fdOwner = { owned: false };
function closeSock() {
  if (!fdOwner.owned) return;
  var fd = st.fd;
  st.fd = -1;
  fdOwner.owned = false;
  if (fd >= 0) { try { libc.close(fd); } catch (e) { } }
}

function disable(why) {
  st.why = why;
  st.disables++;
  st.enabled = false;
  st.wantsClose = true;        /* 真正的 close 放到 tick 里做，hook 内不做 syscall */
}

function ensureSock(now) {
  if (DRY_RUN) return false;                 /* F6：DRY_RUN 绝不建 socket */
  if (fdOwner.owned) return true;
  if (now < st.nextTry) return false;
  st.nextTry = now + RETRY_MS * 1000;

  var fd = -1, connected = false;
  try {
    if (libc === null) bindLibc();
    if (!buildAddr()) return false;

    fd = libc.socket(AF_UNIX, SOCK_DGRAM, 0);
    if (fd < 0) { st.sendErr++; return false; }          /* 失败时没有 fd 需要关 */

    /* F1/非阻塞：设置 + 回读确认，任一失败就关掉并永久禁用 */
    if (libc.fcntl(fd, F_SETFL, O_NONBLOCK) < 0) {
      try { libc.close(fd); } catch (e) { }
      disable('nonblock-set-fail');
      return false;
    }
    var fl = libc.fcntl(fd, F_GETFL, 0);
    if (fl < 0 || (fl & O_NONBLOCK) === 0) {
      try { libc.close(fd); } catch (e) { }
      disable('nonblock-not-set');
      return false;
    }

    if (libc.connect(fd, saMem, saLen) < 0) {
      st.connectFail++;
      try { libc.close(fd); } catch (e) { }
      return false;
    }
    connected = true;

    st.fd = fd;
    fdOwner.owned = true;
    st.sessions++;
    return true;
  } catch (e) {
    st.sendErr++;
    if (fd >= 0 && !connected) { try { libc.close(fd); } catch (e2) { } }
    else if (fd >= 0 && connected) { st.fd = fd; fdOwner.owned = true; closeSock(); }
    return false;
  }
}

/* ============ 5) hook（F7/F8） ============ */
function installHook() {
  Interceptor.attach(feed, {
    onEnter: function (args) {
      if (!st.enabled) return;
      try {
        var tid = Process.getCurrentThreadId();

        /* F7：SPSC 前提未验证 -> 一旦出现第二个生产者立刻禁用，宁可停也不写坏数据 */
        if (st.producerTid === 0) st.producerTid = tid;
        else if (tid !== st.producerTid) { disable('multi-producer:' + tid); return; }

        st.tids[tid] = (st.tids[tid] || 0) + 1;

        var len = args[3].toInt32();
        if (len !== FRAME_IN) { st.lenBad++; return; }

        var depth = (idx.tail - idx.head) | 0;
        if (depth >= RING_CAP) { st.ringDrop++; return; }

        var src = args[2];
        if (src.isNull()) { st.readFail++; return; }

        var slotNo = idx.tail % RING_CAP;
        var dst = ring.add(slotNo * MSG_LEN + HDR_LEN);
        var h = FNV_BASIS >>> 0;
        for (var i = 0; i < SPF; i++) {
          var v = src.add(i * STRIDE).readS16();
          dst.add(i * 2).writeS16(v);
          h = fnv2(h, v);
        }
        crcArr[slotNo] = h | 0;
        tsArr[slotNo] = nowUs();
        idx.tail++;
        st.frames++;
        if (depth > st.depthMax) st.depthMax = depth;
      } catch (e) {
        try { st.hookEx++; } catch (e2) { }
      }
    }
  });
}

/* ============ 6) 发送 ============ */
function drain() {
  if (!st.enabled) return;
  var now = nowUs();

  if (!DRY_RUN && !ensureSock(now)) {
    while (idx.head < idx.tail) { idx.head++; st.stale++; }
    return;
  }

  var burst = DRAIN_BURST;
  while (burst-- > 0 && idx.head < idx.tail) {
    var slotNo = idx.head % RING_CAP;
    var slot = ring.add(slotNo * MSG_LEN);
    try {
      if (tsArr[slotNo] && now - tsArr[slotNo] > MAX_AGE_MS * 1000) {
        st.stale++; idx.head++; continue;
      }

      st.seq++;
      slot.writeU32(MAGIC);
      slot.add(4).writeU8(VER);
      slot.add(5).writeU8(0);
      slot.add(6).writeU16(HDR_LEN);
      slot.add(8).writeU32(st.seq);
      slot.add(12).writeU64(tsArr[slotNo] || 0);   /* < 2^53，double 精确 */
      slot.add(20).writeU32(st.epoch);
      slot.add(24).writeU32(16000);
      slot.add(28).writeU16(1);
      slot.add(30).writeU16(16);
      slot.add(32).writeU32(FRAME_OUT);
      slot.add(36).writeU32(crcArr[slotNo] >>> 0);

      if (DRY_RUN) {
        st.sent++;
      } else {
        /* connected dgram：目标地址传 NULL/0（F3） */
        var n = libc.sendto(st.fd, slot, MSG_LEN, 0, ptr(0), 0);
        if (n === MSG_LEN) {
          st.sent++;
        } else if (n < 0) {
          var e = errnoOf();
          if (e === EAGAIN || e === ENOBUFS) {
            st.sendDrop++;                       /* 缓冲满：丢，不重试 */
          } else {
            st.sendErr++;
            if (e === EPIPE || e === ECONNRESET || e === ENOTCONN || e === ECONNREFUSED) {
              closeSock();                       /* 对端没了：关掉，下轮重连 */
              st.reconnects++;
            }
          }
        } else {
          st.sendErr++;                          /* dgram 不应出现半包 */
        }
      }
      idx.head++;
    } catch (e) {
      st.sendErr++;
      idx.head++;
    }
  }
}

/* ============ 7) 启动 ============ */
if (st.enabled) {
  try {
    bindLibc();                                            /* 时钟需要，DRY_RUN 也绑 */
    st.epoch = ((nowUs() & 0xFFFFFFFF) ^ 0x5A5A5A5A) >>> 0;
    installHook();
    st.why = 'ok';
  } catch (e) {
    st.enabled = false;
    st.why = 'install';
  }
}

var tick = setInterval(function () {
  try {
    if (st.wantsClose) { st.wantsClose = false; closeSock(); }   /* 见 disable() */
    drain();
  } catch (e) { st.sendErr++; }
}, TICK_MS);
var stat = setInterval(function () {
  report({ t: 'stat', enabled: st.enabled, why: st.why, epoch: st.epoch, seq: st.seq,
           frames: st.frames, sent: st.sent, stale: st.stale, ringDrop: st.ringDrop,
           lenBad: st.lenBad, readFail: st.readFail, hookEx: st.hookEx,
           sendDrop: st.sendDrop, sendErr: st.sendErr, clockFail: st.clockFail,
           connectFail: st.connectFail, reconnects: st.reconnects,
           sessions: st.sessions, disables: st.disables, depthMax: st.depthMax,
           producerTid: st.producerTid, tids: st.tids, fd: st.fd, dry: DRY_RUN });
}, 5000);

/* ============ 8) 资源清理（F2） ============
 * 1) 首选：宿主在卸载前调用 rpc.exports.stop()（同步、确定）。
 * 2) 兜底：Script.bindWeak(LIFECYCLE, ...) —— LIFECYCLE 有强引用，不会被提前回收，
 *    文档语义是「target 被 GC 或脚本即将卸载」时回调，因此等价于 unload 钩子。
 * 3) 最后：目标进程退出时内核回收全部 fd（唯一真正"自动"的路径）。
 */
function teardown() {
  try { clearInterval(tick); } catch (e) { }
  try { clearInterval(stat); } catch (e) { }
  try { LIFECYCLE.alive = false; } catch (e) { }
  try { closeSock(); } catch (e) { }
}

rpc.exports = {
  stop: function () { teardown(); return { why: st.why, fd: st.fd }; },
  stats: function () {
    return { enabled: st.enabled, why: st.why, frames: st.frames, sent: st.sent,
             stale: st.stale, ringDrop: st.ringDrop, sendDrop: st.sendDrop,
             sendErr: st.sendErr, hookEx: st.hookEx, clockFail: st.clockFail,
             producerTid: st.producerTid, tids: st.tids, fd: st.fd };
  }
};

try { Script.bindWeak(LIFECYCLE, teardown); } catch (e) { }
LIFECYCLE.fds = [];      /* 只是让对象保持"有内容"，避免被优化掉 */

report({ t: 'ready', enabled: st.enabled, why: st.why, epoch: st.epoch, dry: DRY_RUN,
         feed: feed ? feed.toString() : null });
