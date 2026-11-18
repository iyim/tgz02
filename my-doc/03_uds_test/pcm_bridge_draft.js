'use strict';
/*
 * pcm_bridge_draft.js -- 方案 A 草稿（真机短时验证用）
 *
 * 状态：**未在设备上运行过**。第二阶段只验证了 feed 偏移与 PCM 参数，
 *       这个脚本的 socket 部分只在本机的 C/JS 等价实现上验证过语义。
 *
 * 设计约束（必须保持）：
 *   - onEnter 里只做 readByteArray + 抽 ch0 + 入环，绝不 send/sleep/connect
 *   - 抽帧与发送都在 setInterval 回调里（Frida 自己的线程，不是音频线程）
 *   - 任何一步失败就整体静默失效，原厂链路零影响
 *
 * 用法：
 *   frida -H 127.0.0.1:27042 -n com.alibaba.ailabs.genie.smartapp:core \
 *          -l pcm_bridge_draft.js --runtime=v8
 *   参数：SOCK_PATH / DRY_RUN / EXPECT_OFF / SIG
 */

/* ---------------- 配置 ---------------- */
var SOCK_PATH = '/data/local/tmp/tgz2_pcm.sock';
var DRY_RUN   = false;          /* true = 只统计不发送（对应设计文档 §7 闸 4） */
var F_OFF     = 0xd455c;        /* 本固件 libsmartbox.so 的 AGSpeechEngine::feed */
var SYM       = '_ZN14AGSpeechEngine4feedEjPKvi';
var SIG = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
           0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];

var FRAME_IN   = 5120;          /* 16k * 0.04 * 4ch * 2B */
var STRIDE     = 8;             /* 4ch * 2B */
var FRAME_OUT  = 1280;          /* 640 samples * 2B = ch0 */
var RING_CAP   = 64;
var RING_BYTES = RING_CAP * FRAME_OUT;
var HDR_LEN    = 40;
var MAGIC      = 0x325A4754;

/* ---------------- 统计 ---------------- */
var S = {
  framesIn: 0, framesOut: 0, lenBad: 0,
  ringDrop: 0, sendOk: 0, sendDrop: 0, sendErr: 0,
  seq: 0, depthMax: 0, enabled: true, disabledWhy: null,
  sockFd: -1, threads: {}
};

/* ---------------- 1) 定位并校验 feed ---------------- */
var base = Module.findBaseAddress('libsmartbox.so');
if (base === null) {
  send({ t: 'fatal', msg: 'libsmartbox.so 未加载（是否在 :core 里？）' });
  S.enabled = false; S.disabledWhy = 'no-module';
}

var feed = null;
if (S.enabled) {
  feed = Module.findExportByName('libsmartbox.so', SYM);
  if (feed === null) {
    S.enabled = false; S.disabledWhy = 'no-symbol';
    send({ t: 'fatal', msg: '符号缺失: ' + SYM });
  } else {
    var off = feed.sub(base).toInt32();
    if (off !== F_OFF) {
      S.enabled = false; S.disabledWhy = 'offset:' + off.toString(16);
      send({ t: 'fatal', msg: '偏移不符 期望=' + F_OFF.toString(16) + ' 实际=' + off.toString(16) });
    }
  }
}

if (S.enabled) {
  var pro = new Uint8Array(feed.readByteArray(16));
  for (var i = 0; i < 16; i++) {
    if (pro[i] !== SIG[i]) {
      S.enabled = false; S.disabledWhy = 'sig@' + i;
      send({ t: 'fatal', msg: '机器码签名不符 @' + i });
      break;
    }
  }
}

/* ---------------- 2) 建档：环形缓冲 + socket ---------------- */
var ringMem = null, ridx = { head: 0, tail: 0 };
var libc = {};

function initLibc() {
  var g = function (n) { return Module.getExportByName('libc.so', n); };
  libc.socket  = new NativeFunction(g('socket'),  'int',  ['int', 'int', 'int']);
  libc.connect = new NativeFunction(g('connect'), 'int',  ['int', 'pointer', 'int']);
  libc.sendto  = new NativeFunction(g('sendto'),  'long', ['int', 'pointer', 'ulong', 'int', 'pointer', 'int']);
  libc.fcntl   = new NativeFunction(g('fcntl'),   'int',  ['int', 'int', 'int']);
  libc.close   = new NativeFunction(g('close'),   'int',  ['int']);
  libc.memcpy  = new NativeFunction(g('memcpy'),  'pointer', ['pointer', 'pointer', 'ulong']);
}

function openUds() {
  /* AF_UNIX = 1, SOCK_DGRAM = 2；dgram 有帧边界、满了返回 ENOBUFS，最省事 */
  var fd = libc.socket(1, 2, 0);
  if (fd < 0) { S.disabledWhy = 'socket()'; S.enabled = false; return -1; }
  var sa = Memory.alloc(110);
  sa.writeU16(1);                       /* sun_family，小端 */
  sa.add(2).writeUtf8String(SOCK_PATH);
  /* arm32: O_NONBLOCK = 0o4000 = 0x800, F_SETFL = 4 */
  if (libc.fcntl(fd, 4, 0x800) < 0) { /* 非阻塞设不上就干脆不用 */ }
  var r = libc.connect(fd, sa, 110);
  if (r < 0) {
    /* 助手进程没起来：不算致命，发送线程会重试 */
    send({ t: 'warn', msg: 'connect 失败（助手未启动？），稍后重试' });
  }
  S.sockFd = fd;
  return fd;
}

if (S.enabled) {
  ringMem = Memory.alloc(RING_BYTES);
  if (!DRY_RUN) {
    try { initLibc(); openUds(); }
    catch (e) { S.enabled = false; S.disabledWhy = 'libc:' + e; }
  }
}

/* ---------------- 3) hook：只抽 ch0，绝不做别的事 ---------------- */
if (S.enabled) {
  Interceptor.attach(feed, {
    onEnter: function (args) {
      if (!S.enabled) return;
      var tid = Process.getCurrentThreadId();
      if (!S.threads[tid]) S.threads[tid] = 0;
      S.threads[tid]++;

      var data = args[2];
      var len = args[3].toInt32();
      if (len !== FRAME_IN) { S.lenBad++; return; }      /* 通道数变了就安全退出 */

      var src = data.readByteArray(FRAME_IN);            /* 一次拷贝，5119B 之外的活都在这里之外做 */
      if (src === null) return;
      var u8 = new Uint8Array(src);
      var depth = ridx.tail - ridx.head;
      if (depth >= RING_CAP) { S.ringDrop++; S.framesIn++; return; }

      var slot = ringMem.add((ridx.tail % RING_CAP) * FRAME_OUT);
      var out = new Uint8Array(FRAME_OUT);
      for (var i = 0, j = 0; i < FRAME_OUT; i += 2, j += STRIDE) {
        out[i] = u8[j];
        out[i + 1] = u8[j + 1];
      }
      slot.writeByteArray(out.buffer);
      ridx.tail++;
      S.framesIn++;
      if (depth > S.depthMax) S.depthMax = depth;
    }
  });
  send({ t: 'ready', base: base.toString(), feed: feed.toString(),
         off: feed.sub(base).toInt32().toString(16), dry: DRY_RUN, sock: SOCK_PATH });
}

/* ---------------- 4) 发送线程：Frida 自己的线程，不是音频线程 ---------------- */
var hdrMem = Memory.alloc(HDR_LEN);
var tsBase = Date.now();

function nowUs() { return (Date.now() - tsBase) * 1000; }   /* 粗略：JS 侧只有毫秒 */

function drain() {
  if (!S.enabled) return;
  if (S.sockFd < 0 && !DRY_RUN) { try { openUds(); } catch (e) { return; } }
  var budget = 8;                       /* 每次最多搬 8 帧，单次上限 320 ms 的数据量 */
  while (budget-- > 0 && ridx.head < ridx.tail) {
    var slot = ringMem.add((ridx.head % RING_CAP) * FRAME_OUT);
    S.seq++;
    /* 40B 头：手工小端 */
    hdrMem.writeU32(MAGIC);
    hdrMem.add(4).writeU8(1);
    hdrMem.add(5).writeU8(1);
    hdrMem.add(6).writeU16(HDR_LEN);
    hdrMem.add(8).writeU32(S.seq);
    hdrMem.add(12).writeU64(nowUs().valueOf());
    hdrMem.add(20).writeU32(S.seq);
    hdrMem.add(24).writeU32(16000);
    hdrMem.add(28).writeU16(1);
    hdrMem.add(30).writeU16(16);
    hdrMem.add(32).writeU32(FRAME_OUT);
    hdrMem.add(36).writeU32(0);          /* crc 留给助手进程按需校验 */

    if (!DRY_RUN && S.sockFd >= 0) {
      /* 两段写：这里简单起见把头和载荷拼一块，避免两次 syscall */
      var msg = Memory.alloc(HDR_LEN + FRAME_OUT);
      libc.memcpy(msg, hdrMem, HDR_LEN);
      libc.memcpy(msg.add(HDR_LEN), slot, FRAME_OUT);
      var n = libc.sendto(S.sockFd, msg, HDR_LEN + FRAME_OUT, 0, ptr(0), 0);
      if (n === HDR_LEN + FRAME_OUT) S.sendOk++;
      else if (n < 0) S.sendDrop++;
      else S.sendErr++;
    }
    ridx.head++;
    S.framesOut++;
  }
}

setInterval(drain, 20);

/* ---------------- 5) 状态上报：只上报，不落盘 ---------------- */
setInterval(function () {
  send({ t: 'stat', framesIn: S.framesIn, framesOut: S.framesOut, lenBad: S.lenBad,
         ringDrop: S.ringDrop, sendOk: S.sendOk, sendDrop: S.sendDrop, sendErr: S.sendErr,
         seq: S.seq, depthMax: S.depthMax, enabled: S.enabled, why: S.disabledWhy,
         threads: S.threads });
}, 5000);
