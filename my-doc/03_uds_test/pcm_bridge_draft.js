'use strict';
/*
 * pcm_bridge_draft.js -- 方案 A 草稿（真机短时验证用 · 修订 2）
 *
 * 状态：**仍未在 TG-Z02 上运行过**。PC 侧传输语义由 03_uds_test 的 C 原型验证；
 *       本文件只回答"hook 内怎么做才安全"，按 03_pcm_bridge_review.md 的 9 条逐条修。
 *
 * 修订 2 改动（编号与 review 文档一致）：
 *   R1 非阻塞设置失败 ⇒ close(fd) + 永久禁用旁路，绝不使用可能阻塞的 socket
 *   R2 连接失败不泄漏 fd：失败即 close，下轮从 -1 重建
 *   R3 建立/断开/重连/关闭四态完整，脚本卸载时释放 fd
 *   R4 FNV-1a 真算（逐样本累加），不再写 0
 *   R5 时间戳 clock_gettime(CLOCK_MONOTONIC)，不用 Date.now()
 *   R6 头/载荷缓冲区全部预分配，hook 内零 Memory.alloc
 *   R7 PCM 抽取 readS16/writeS16 直入环形槽，**不创建任何 Uint8Array / ArrayBuffer**
 *   R8 读取失败 / hook 异常 / 发送异常 / socket 失败 分开计数
 *   R9 一切异常都吞在 try/catch 里，绝不触碰 r0~r3、返回值与栈
 *
 * 用法：
 *   frida -H 127.0.0.1:27042 -n com.alibaba.ailabs.genie.smartapp:core -l pcm_bridge_draft.js
 */

/* ============ 配置 ============ */
var DRY_RUN       = false;         // true = 只统计不发送（设计文档 §7 闸 4）
var SOCK_ABSTRACT = true;          // 抽象命名空间优先：不落盘、无 SELinux 文件标签问题
var SOCK_PATH     = 'tgz2_pcm';    // 抽象名；SOCK_ABSTRACT=false 时当文件路径
var MAX_AGE_MS    = 500;           // 过期帧丢弃，绝不把 0.5 s 前的语音送给 ASR
var RETRY_MS      = 500;           // 重连间隔
var DRAIN_BURST   = 8;             // 每 tick 最多发几帧
var TICK_MS       = 20;
var RING_CAP      = 64;
var FRAME_IN      = 5120;          // 16k * 0.04s * 4ch * 2B
var STRIDE        = 8;             // 4ch * 2B
var SPF           = 640;           // 每通道每帧样本数
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

/* ============ 统计 ============ */
var st = {
  enabled: false, why: 'init', epoch: 0, seq: 0, sockFd: -1, nextTry: 0,
  frames: 0, sent: 0, stale: 0, ringDrop: 0, lenBad: 0,
  readFail: 0, hookEx: 0, sendDrop: 0, sendErr: 0,
  connectFail: 0, reconnects: 0, sessions: 0, disables: 0,
  depthMax: 0, tids: {}
};

function report(o) { try { send(o); } catch (e) { } }
function errno() { try { return libc.errno ? libc.errno().readS32() : 0; } catch (e) { return 0; } }

/* ============ 1) 三级闸门定位 feed ============ */
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

/* ============ 2) libc + 单调时钟（R5） ============ */
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

var tsMem = Memory.alloc(8);                 /* arm32 timespec: sec@0, nsec@4 */
function nowUs() {
  try {
    if (libc.clock_gettime(CLOCK_MONOTONIC, tsMem) !== 0) return 0;
    var s = tsMem.readS32(), n = tsMem.readS32();
    return s * 1000000 + ((n / 1000) | 0);
  } catch (e) { return 0; }
}

/* ============ 3) 预分配：环里直接放"完整消息"（头+载荷）(R6/R7) ============ */
var ring = Memory.alloc(RING_CAP * MSG_LEN);
var crcArr = new Int32Array(RING_CAP);
var tsArr = new Float64Array(RING_CAP);
var idx = { head: 0, tail: 0 };

function fnvStep(h, byte) { return ((h ^ byte) * 16777619) >>> 0; }

/* ============ 4) 地址与 socket 状态机（R1/R2/R3） ============ */
var saMem = null, saLen = 0;

function buildAddr() {
  if (saMem !== null) return true;
  try {
    saMem = Memory.alloc(110);
    saMem.writeU16(AF_UNIX);
    if (SOCK_ABSTRACT) {
      saMem.add(2).writeU8(0);
      saMem.add(3).writeUtf8String(SOCK_PATH);
      saLen = 3 + SOCK_PATH.length;
    } else {
      saMem.add(2).writeUtf8String(SOCK_PATH);
      saLen = 3 + SOCK_PATH.length;
    }
    return true;
  } catch (e) { st.why = 'addr'; return false; }
}

function closeSock() {
  if (st.sockFd >= 0) { try { libc.close(st.sockFd); } catch (e) { } }
  st.sockFd = -1;
}

function disable(why) {
  st.why = why;
  st.disables++;
  st.enabled = false;          /* 旁路整体失效，原厂 feed 不受影响 */
}

function ensureSock(now) {
  if (DRY_RUN) return false;
  if (st.sockFd >= 0) return true;
  if (now < st.nextTry) return false;
  st.nextTry = now + RETRY_MS * 1000;

  var fd = -1;
  try {
    if (libc === null) bindLibc();
    if (!buildAddr()) return false;

    fd = libc.socket(AF_UNIX, SOCK_DGRAM, 0);
    if (fd < 0) { st.sendErr++; return false; }

    /* R1：非阻塞必须成功，且回读确认；否则关掉 fd 并永久禁用 */
    if (libc.fcntl(fd, F_SETFL, O_NONBLOCK) < 0) {
      libc.close(fd); disable('nonblock-set-fail'); return false;
    }
    var fl = libc.fcntl(fd, F_GETFL, 0);
    if (fl < 0 || (fl & O_NONBLOCK) === 0) {
      libc.close(fd); disable('nonblock-not-set'); return false;
    }

    if (libc.connect(fd, saMem, saLen) < 0) {
      st.connectFail++;                 /* R2：失败即回收，绝不留下悬挂 fd */
      libc.close(fd);
      return false;
    }
    st.sockFd = fd;
    st.sessions++;
    return true;
  } catch (e) {
    st.sendErr++;
    try { if (fd >= 0) libc.close(fd); } catch (e2) { }
    return false;
  }
}

/* ============ 5) hook：拷贝 + 入环（R7/R9） ============ */
function installHook() {
  Interceptor.attach(feed, {
    onEnter: function (args) {
      if (!st.enabled) return;
      try {
        var tid = Process.getCurrentThreadId();
        st.tids[tid] = (st.tids[tid] || 0) + 1;

        var len = args[3].toInt32();
        if (len !== FRAME_IN) { st.lenBad++; return; }        /* 通道布局变了就安全退出 */

        var depth = (idx.tail - idx.head) | 0;
        if (depth >= RING_CAP) { st.ringDrop++; return; }     /* 环满：丢，不等 */

        var src = args[2];
        if (src.isNull()) { st.readFail++; return; }

        var slotNo = idx.tail % RING_CAP;
        var slot = ring.add(slotNo * MSG_LEN);
        var dst = slot.add(HDR_LEN);                          /* 载荷写在头后面 */
        var h = 2166136261 >>> 0;
        for (var i = 0; i < SPF; i++) {
          var v = src.add(i * STRIDE).readS16();              /* ch0 = 每 8 字节的头 2 字节 */
          dst.add(i * 2).writeS16(v);
          h = fnvStep(h, v & 0xFF);
          h = fnvStep(h, (v >> 8) & 0xFF);
        }
        crcArr[slotNo] = h | 0;
        tsArr[slotNo] = nowUs();
        idx.tail++;
        st.frames++;
        if (depth > st.depthMax) st.depthMax = depth;
      } catch (e) {
        st.hookEx++;                       /* R9：计数器吞异常，绝不让它穿出 hook */
      }
    }
  });
}

/* ============ 6) 发送线程 ============ */
function drain() {
  if (!st.enabled) return;
  var now = nowUs();

  /* DRY_RUN 下不建 socket，但仍然消费环形缓冲并计数（用于闸 4 的"只统计"验证） */
  if (!DRY_RUN && !ensureSock(now)) {
    /* 没连上：环里的帧按过期处理，恢复后不倾泻旧语音 */
    while (idx.head < idx.tail) { idx.head++; st.stale++; }
    return;
  }

  var burst = DRAIN_BURST;
  while (burst-- > 0 && idx.head < idx.tail) {
    var slotNo = idx.head % RING_CAP;
    var slot = ring.add(slotNo * MSG_LEN);
    try {
      if (now - tsArr[slotNo] > MAX_AGE_MS * 1000) { st.stale++; idx.head++; continue; }

      st.seq++;
      slot.writeU32(MAGIC);
      slot.add(4).writeU8(VER);
      slot.add(5).writeU8(0);
      slot.add(6).writeU16(HDR_LEN);
      slot.add(8).writeU32(st.seq);
      slot.add(12).writeU64(tsArr[slotNo]);
      slot.add(20).writeU32(st.epoch);
      slot.add(24).writeU32(16000);
      slot.add(28).writeU16(1);
      slot.add(30).writeU16(16);
      slot.add(32).writeU32(FRAME_OUT);
      slot.add(36).writeU32(crcArr[slotNo] >>> 0);

      if (DRY_RUN) {
        st.sent++;
      } else {
        var n = libc.sendto(st.sockFd, slot, MSG_LEN, 0, ptr(0), 0);
        if (n === MSG_LEN) {
          st.sent++;
        } else if (n < 0) {
          var e = errno();
          if (e === EAGAIN || e === ENOBUFS) {
            st.sendDrop++;                     /* 缓冲满：丢，不重试 */
          } else {
            st.sendErr++;
            if (e === EPIPE || e === ECONNRESET || e === ENOTCONN || e === ECONNREFUSED) {
              closeSock();                     /* 对端没了：关掉，下轮重连 */
              st.reconnects++;
            }
          }
        } else {
          st.sendErr++;                        /* dgram 不该出现半包 */
        }
      }
      idx.head++;
    } catch (e) {
      st.sendErr++;
      idx.head++;                              /* 跳过坏帧，绝不卡死 */
    }
  }
}

/* ============ 7) 启动 ============ */
if (st.enabled) {
  try {
    bindLibc();                                   /* 时钟要用，DRY_RUN 也要绑 */
    st.epoch = ((nowUs() & 0xFFFFFFFF) ^ 0x5A5A5A5A) >>> 0;   /* 实例标识，供接收端识别重启 */
    installHook();
    st.why = 'ok';
  } catch (e) {
    st.enabled = false;
    st.why = 'install';
  }
}

var tick = setInterval(function () { try { drain(); } catch (e) { st.sendErr++; } }, TICK_MS);

var stat = setInterval(function () {
  report({ t: 'stat', enabled: st.enabled, why: st.why, epoch: st.epoch, seq: st.seq,
           frames: st.frames, sent: st.sent, stale: st.stale, ringDrop: st.ringDrop,
           lenBad: st.lenBad, readFail: st.readFail, hookEx: st.hookEx,
           sendDrop: st.sendDrop, sendErr: st.sendErr, connectFail: st.connectFail,
           reconnects: st.reconnects, sessions: st.sessions, disables: st.disables,
           depthMax: st.depthMax, tids: st.tids, sock: st.sockFd });
}, 5000);

try {
  Script.bindWeak({}, function () {          /* R3：卸载时释放 */
    try { clearInterval(tick); clearInterval(stat); } catch (e) { }
    try { closeSock(); } catch (e) { }
  });
} catch (e) { }

report({ t: 'ready', enabled: st.enabled, why: st.why, epoch: st.epoch, dry: DRY_RUN,
         feed: feed ? feed.toString() : null });
