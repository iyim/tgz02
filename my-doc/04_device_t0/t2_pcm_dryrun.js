'use strict';
/*
 * t2_pcm_dryrun.js -- T2：Hook 内同步复制 lane0 + 预分配环形缓冲 + DRY_RUN 消费
 *
 * 本轮只做 DRY_RUN：**不建 socket、不发 PCM、不打包 40 B 头**。
 * 环形缓冲里存的是"本来要放进协议载荷"的那 1280 字节，消费端对它算 FNV-1a，
 * 与 tgz2_frame.h / pcm_bridge_draft.js 用的是同一算法（Math.imul），T3 可直接复用。
 *
 * ── 并发模型（必读）──────────────────────────────────────────────
 * Frida 的 V8 运行时对**同一个脚本**只有一个 JS 执行权（内部 JS 锁）：
 *   - Interceptor 回调在执行到 hook 的线程上被调用，但必须先拿到 JS 锁；
 *   - setInterval 回调同样要拿 JS 锁。
 * 因此两者**不会真正并发执行**：不存在两个 JS 回调同时改 idxTail/idxHead。
 * 但代价是**延迟耦合**：消费端占用 JS 锁时，hook 回调要等，等于把消费开销
 * 加到音频线程的延迟上。T1 已经实测到这一点（hook 内做重统计把 25 fps 拖到 10 fps）。
 * 所以：hook 内只做拷贝，统计全部放消费端；并用 inHook/inDrain 计数器实测"是否发生重入"。
 *
 * 本轮不宣称"整个运行时永远无并发"：只声明"本脚本的两个回调被 JS 锁串行化"，
 * 并用 reentry 计数做运行时验证。
 */

var MOD = 'libsmartbox.so';
var SYM = '_ZN14AGSpeechEngine4feedEjPKvi';
var OFF = 0xd455c;
var EXPECT_HEX = 'f0482de910b08de208d04de20370a0e1';

/* 与 tgz2_frame.h / pcm_bridge_draft.js 保持一致 */
var FRAME_IN = 5120;      /* 原始帧字节数 */
var STRIDE   = 8;         /* 4 路 int16 交错 */
var SPF      = 640;       /* 每路样本数 */
var FRAME_OUT = 1280;     /* lane0: 640 * int16 */
var RING_CAP = 64;
var FNV_BASIS = 2166136261;
/* COPY_MODE: 'strided' = dst[i]=src[i*4] 逐样本拷贝（规格字面）；
 *            'blockcopy' = 一次 Memory.copy 复制 5120 B 整帧，lane0 抽取移到消费端 */
var COPY_MODE = 'strided';
var SLOT_BYTES = FRAME_OUT;
var TICK_MS = 20;

var base = null, target = null, listener = null, tickTimer = null, repTimer = null, stopTimer = null;
var running = false, stopped = false, aborted = false;
var t0 = 0;
var RUN_MS = 30000;
var PHASES = null;

/* ---- 预分配：环 + 每槽元数据 + 采样数组（全部在 start 前完成） ---- */
var ring = null;                 /* RING_CAP * FRAME_OUT 字节 */
var slotSeq = null;              /* Float64Array(RING_CAP) 每槽序号（生产端写） */
var slotTsNs = null;             /* Float64Array(RING_CAP) 每槽入环时刻 (ns) */
var hookCostUs = null;           /* Float64Array(2048) hook 拷贝耗时采样环 */
var latUs = null;                /* Float64Array(4096) 消费延迟采样环 */
var tsMem = null;                /* struct timespec (8 B) */

var idxHead = 0, idxTail = 0;
var seqNext = 0;
var calls = 0, lenBad = 0, nullPtr = 0, ringDrop = 0, produced = 0;
var hookEx = 0, drainEx = 0, readErr = 0, crcErr = 0, lenErr = 0;
var consumed = 0, seqGap = 0, reentryHook = 0, reentryDrain = 0;
var depthMax = 0;
var inHook = false, inDrain = false;
var hookCostN = 0, hookCostW = 0, latN = 0, latW = 0;
var lastSeq = -1;
var crcRefChecked = false;
var laneSelfChecked = false;
var tids = {};

/* ---- libc 时钟 ---- */
var clockGettime = null;

function bindLibc() {
  try {
    var p = Module.getExportByName('libc.so', 'clock_gettime');
    clockGettime = new NativeFunction(p, 'int', ['int', 'pointer']);
    tsMem = Memory.alloc(8);
  } catch (e) {
    clockGettime = null;
  }
}

/* CLOCK_MONOTONIC=1；返回 ns，失败返回 0（调用方必须判 0） */
function nowNs() {
  if (clockGettime === null) return 0;
  if (clockGettime(1, tsMem) !== 0) return 0;
  var s = tsMem.readS32();
  var n = tsMem.add(4).readS32();
  if (s < 0 || n < 0 || n >= 1000000000) return 0;
  return s * 1000000000 + n;
}

function hex16(p) {
  var u = new Uint8Array(p.readByteArray(16)), s = '';
  for (var i = 0; i < 16; i++) s += (u[i] < 16 ? '0' : '') + u[i].toString(16);
  return s;
}

/* ---- 百分位 ---- */
function pct(arr, n, q) {
  if (!n) return 0;
  var a = new Array(n);
  for (var i = 0; i < n; i++) a[i] = arr[i];
  a.sort(function (x, y) { return x - y; });
  var k = Math.floor((n - 1) * q);
  return a[k];
}

function fmt(v, d) { return v.toFixed(d === undefined ? 2 : d); }

/* ---- 统计输出 ---- */
function report(tag) {
  var hn = hookCostN, ln = latN;
  var hP50 = pct(hookCostUs, hn, 0.50), hP95 = pct(hookCostUs, hn, 0.95),
      hP99 = pct(hookCostUs, hn, 0.99), hMax = pct(hookCostUs, hn, 1.0);
  var lP50 = pct(latUs, ln, 0.50), lP95 = pct(latUs, ln, 0.95),
      lP99 = pct(latUs, ln, 0.99), lMax = pct(latUs, ln, 1.0);
  var el = (Date.now() - t0) / 1000;

  console.log('[' + tag + ' ' + fmt(el, 1) + 's] produced=' + produced + ' consumed=' + consumed +
              ' ringDrop=' + ringDrop + ' depthMax=' + depthMax +
              ' crcErr=' + crcErr + ' readErr=' + readErr + ' lenErr=' + lenErr +
              ' seqGap=' + seqGap + ' hookEx=' + hookEx + ' drainEx=' + drainEx +
              ' reentry=' + reentryHook + '/' + reentryDrain);
  console.log('[' + tag + '] hook  copies: n=' + hn + ' P50=' + fmt(hP50, 1) + 'us P95=' +
              fmt(hP95, 1) + 'us P99=' + fmt(hP99, 1) + 'us max=' + fmt(hMax, 1) + 'us');
  console.log('[' + tag + '] drain latency: n=' + ln + ' P50=' + fmt(lP50, 1) + 'us P95=' +
              fmt(lP95, 1) + 'us P99=' + fmt(lP99, 1) + 'us max=' + fmt(lMax, 1) + 'us');
  console.log('[' + tag + '] rate=' + fmt(produced / (el || 1), 2) + '/s calls=' + calls +
              ' lenBad=' + lenBad + ' nullPtr=' + nullPtr + ' threads=' + Object.keys(tids).length);
}

function finish(reason) {
  if (stopped) return;
  stopped = true;
  running = false;

  if (tickTimer !== null) { try { clearInterval(tickTimer); } catch (e) { } tickTimer = null; }
  if (repTimer !== null) { try { clearInterval(repTimer); } catch (e) { } repTimer = null; }
  if (stopTimer !== null) { try { clearTimeout(stopTimer); } catch (e) { } stopTimer = null; }
  if (listener && typeof listener.detach === 'function') {
    try { listener.detach(); console.log('[i] listener detached'); } catch (e) { console.log('[!] detach: ' + e); }
  }
  listener = null;

  try { report('FINAL'); } catch (e) { console.log('[!] report: ' + e); }
  console.log('===== [END] reason=' + reason + ' aborted=' + aborted +
              ' crcRefChecked=' + crcRefChecked + ' =====');
}

/* ---- DRY_RUN 消费端 ---- */
function fnvBytes(u8) {
  var h = FNV_BASIS >>> 0;
  for (var i = 0; i < u8.length; i++) h = Math.imul(h ^ u8[i], 16777619) >>> 0;
  return h;
}

/* 一次性：用 BigInt 精确参考实现交叉验证 Math.imul 版本（仅第一帧，之后不再做） */
function fnvExact(u8) {
  var h = 2166136261n;
  for (var i = 0; i < u8.length; i++) {
    h ^= BigInt(u8[i]);
    h = (h * 16777619n) & 0xffffffffn;
  }
  return Number(h);
}

function drain() {
  if (inDrain) { reentryDrain++; return; }
  inDrain = true;
  try {
    while (idxHead !== idxTail) {
      var slot = idxHead % RING_CAP;
      var off = slot * SLOT_BYTES;

      if (COPY_MODE === 'countonly') {
        idxHead++; consumed++;
        if (lastSeq >= 0 && slotSeq[slot] !== lastSeq + 1) seqGap++;
        lastSeq = slotSeq[slot];
        continue;
      }

      var bytes;
      try { bytes = ring.add(off).readByteArray(SLOT_BYTES); }
      catch (e) { readErr++; idxHead++; continue; }
      if (bytes === null || bytes.byteLength !== SLOT_BYTES) { lenErr++; idxHead++; continue; }

      if (COPY_MODE === 'blockcopy') {
        /* 从整帧里抽 lane0：out[i] = in[i*4]（int16） */
        var in16 = new Int16Array(bytes);
        var lane = new Int16Array(SPF);
        for (var q = 0; q < SPF; q++) lane[q] = in16[q * 4];
        laneView = lane;
        bytes = lane.buffer;
      }
      if (bytes.byteLength !== FRAME_OUT) { lenErr++; idxHead++; continue; }

      /* 一次性自检：抽取结果必须等于对同一 slot 逐样本 strided 读取 */
      if (!laneSelfChecked) {
        laneSelfChecked = true;
        var slotBase = ring.add(off);
        var mism = 0;
        for (var z = 0; z < SPF; z++) {
          if (laneView[z] !== slotBase.add(z * STRIDE).readS16()) mism++;
        }
        console.log('[i] lane0 self-check (extracted vs strided read of same slot): mismatches=' +
                    mism + ' / ' + SPF);
      }

      var u8 = new Uint8Array(bytes);
      var crc = fnvBytes(u8);
      if (!crcRefChecked) {
        crcRefChecked = true;
        var ref = fnvExact(u8);
        console.log('[i] CRC cross-check: imul=0x' + crc.toString(16) + ' exact=0x' + ref.toString(16) +
                    ' match=' + (crc === ref));
        if (crc !== ref) crcErr++;
      }

      /* 载荷统计（消费端做，不在 hook 内） */
      var i16 = new Int16Array(bytes);
      var min = i16[0], max = i16[0], sum = 0, sumSq = 0;
      for (var i = 0; i < i16.length; i++) {
        var v = i16[i];
        if (v < min) min = v;
        if (v > max) max = v;
        sum += v; sumSq += v * v;
      }
      var mean = sum / i16.length;
      var ms2 = sumSq / i16.length - mean * mean;
      var rms = ms2 > 0 ? Math.sqrt(ms2) : 0;
      payloadRmsSum += rms; if (rms > payloadRmsMax) payloadRmsMax = rms;
      payloadP2pMax = Math.max(payloadP2pMax, max - min);

      /* 序号连续性 */
      var s = slotSeq[slot];
      if (lastSeq >= 0 && s !== lastSeq + 1) seqGap++;
      lastSeq = s;

      /* 消费延迟 */
      var now = nowNs();
      var ts = slotTsNs[slot];
      if (now !== 0 && ts !== 0 && now > ts) {
        latUs[latW] = (now - ts) / 1000;
        latW = (latW + 1) % latUs.length;
        if (latN < latUs.length) latN++;
      }

      idxHead++;
      consumed++;
    }
  } catch (e) { drainEx++; }
  inDrain = false;
}

var payloadRmsSum = 0, payloadRmsMax = 0, payloadP2pMax = 0;
var laneView = null;                     /* blockcopy 模式下的 lane0 视图 */
function bytes16Get(arr, idx) { return arr[idx]; }

/* ---- 安装 ---- */
function install(runMs) {
  console.log('[i] T2 PCM DRY_RUN: copy lane0 in hook, ring in native memory, no socket');

  base = Module.findBaseAddress(MOD);
  if (base === null) { console.log('[ABORT] check1: ' + MOD + ' not loaded'); aborted = true; return false; }
  console.log('[v] check1 module loaded, base=' + base);

  var sym = Module.findExportByName(MOD, SYM);
  if (sym === null) { console.log('[ABORT] check2: export symbol missing'); aborted = true; return false; }
  console.log('[v] check2 symbol=' + sym);

  var off = sym.sub(base).toInt32();
  if (off !== OFF) { console.log('[ABORT] check3: offset 0x' + off.toString(16) + ' != 0x' + OFF.toString(16)); aborted = true; return false; }
  console.log('[v] check3 offset=0x' + off.toString(16));

  target = base.add(OFF);
  var got;
  try { got = hex16(target); } catch (e) { console.log('[ABORT] check4: read failed ' + e); aborted = true; return false; }
  if (got !== EXPECT_HEX) { console.log('[ABORT] check4: bytes ' + got); aborted = true; return false; }
  console.log('[v] check4 runtime[16]=' + got);

  bindLibc();
  if (clockGettime === null) { console.log('[ABORT] clock_gettime unavailable (timing would be meaningless)'); aborted = true; return false; }
  console.log('[v] clock_gettime bound, monotonic available');

  /* 预分配（在 attach 之前完成，hook 内不再分配任何缓冲区） */
  ring = Memory.alloc(RING_CAP * SLOT_BYTES);
  slotSeq = new Float64Array(RING_CAP);
  slotTsNs = new Float64Array(RING_CAP);
  hookCostUs = new Float64Array(2048);
  latUs = new Float64Array(4096);
  console.log('[v] mode=' + COPY_MODE + ' slot=' + SLOT_BYTES + 'B ring=' + (RING_CAP * SLOT_BYTES) + 'B metacost=' +
              (RING_CAP * 16) + 'B costRing=2048 latRing=4096');

  try {
    listener = Interceptor.attach(target, {
      onEnter: function (args) {
        if (!running) return;
        if (inHook) { reentryHook++; return; }
        inHook = true;
        try {
          calls++;
          tids[Process.getCurrentThreadId()] = 1;

          var len = args[3].toInt32();
          if (len !== FRAME_IN) { lenBad++; return; }

          var src = args[2];
          if (src.isNull()) { nullPtr++; return; }

          var depth = (idxTail - idxHead) | 0;
          if (depth >= RING_CAP) { ringDrop++; return; }

          var slot = idxTail % RING_CAP;
          var dst = ring.add(slot * SLOT_BYTES);

          if (COPY_MODE === 'countonly') {
            /* 只计数：用于测量 Interceptor + JS 回调入口的固有开销 */
            slotSeq[slot] = seqNext++;
            slotTsNs[slot] = 0;
            idxTail++;
            produced++;
            if (depth + 1 > depthMax) depthMax = depth + 1;
            return;
          }

          var tS = nowNs();
          if (COPY_MODE === 'blockcopy') {
            /* 一次原生 memcpy 整帧；lane0 抽取在消费端完成 */
            Memory.copy(dst, src, FRAME_IN);
          } else {
            /* 规格字面：dst[i] = src[i*4]（int16） */
            var sp = src, dp = dst;
            for (var i = 0; i < SPF; i++) {
              dp.writeS16(sp.readS16());
              sp = sp.add(STRIDE);
              dp = dp.add(2);
            }
          }
          var tE = nowNs();

          slotSeq[slot] = seqNext++;
          slotTsNs[slot] = tE;
          idxTail++;
          produced++;
          if (depth + 1 > depthMax) depthMax = depth + 1;

          if (tS !== 0 && tE >= tS) {
            hookCostUs[hookCostW] = (tE - tS) / 1000;
            hookCostW = (hookCostW + 1) % hookCostUs.length;
            if (hookCostN < hookCostUs.length) hookCostN++;
          }
        } catch (e) {
          hookEx++;
        } finally {
          inHook = false;
        }
      }
    });
  } catch (e) {
    console.log('[ABORT] attach failed: ' + e);
    aborted = true;
    return false;
  }
  if (!listener || typeof listener.detach !== 'function') {
    console.log('[ABORT] attach returned invalid listener');
    listener = null;
    aborted = true;
    return false;
  }
  console.log('[v] hook installed at ' + target);

  RUN_MS = runMs || 30000;
  PHASES = (RUN_MS > 45000)
    ? [{ n: 'QUIET', to: 10000 }, { n: 'SPEECH', to: 20000 }, { n: 'TONE', to: 30000 }, { n: 'STEADY', to: RUN_MS }]
    : [{ n: 'QUIET', to: 10000 }, { n: 'SPEECH', to: 20000 }, { n: 'TONE', to: RUN_MS }];

  t0 = Date.now();
  running = true;
  console.log('[i] observing ' + (RUN_MS / 1000) + 's; phases: ' +
              PHASES.map(function (p) { return p.n + '->' + (p.to / 1000) + 's'; }).join(' '));

  tickTimer = setInterval(function () {
    if (!running) return;
    try { drain(); } catch (e) { drainEx++; }
  }, TICK_MS);

  repTimer = setInterval(function () {
    if (!running) return;
    try { report('RUN'); } catch (e) { }
  }, 5000);

  stopTimer = setTimeout(function () { finish('timeout'); }, RUN_MS);
  return true;
}

rpc.exports = {
  setMode: function (m, stride) {
    if (m !== 'strided' && m !== 'blockcopy' && m !== 'countonly') return false;
    COPY_MODE = m;
    SLOT_BYTES = (m === 'blockcopy') ? FRAME_IN : FRAME_OUT;
    if (m === 'countonly') SLOT_BYTES = FRAME_OUT;
    return true;
  },
  start: function (ms) { return install(ms); },
  stop: function () { finish('rpc'); return { aborted: aborted, produced: produced, consumed: consumed, ringDrop: ringDrop, crcErr: crcErr }; },
  stats: function () {
    return { produced: produced, consumed: consumed, ringDrop: ringDrop, depthMax: depthMax,
             crcErr: crcErr, readErr: readErr, lenErr: lenErr, seqGap: seqGap,
             hookEx: hookEx, drainEx: drainEx, reentry: [reentryHook, reentryDrain],
             calls: calls, lenBad: lenBad, nullPtr: nullPtr, hookCostN: hookCostN, latN: latN };
  }
};

console.log('[i] script loaded (address checks + attach happen in start())');
