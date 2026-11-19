'use strict';
/*
 * t2_pcm_dryrun.js -- T2：Hook 内 blockcopy 同步复制 + 预分配环形缓冲 + DRY_RUN 消费
 *
 * 正式模式只有 blockcopy：
 *   hook 内一次 Memory.copy(dst, src, 5120) 把整帧搬到环槽；
 *   消费端再做 lane0 抽取（out[i] = in[i*4]，640 个 int16 = 1280 字节）。
 * 另有 countonly 模式，只用于把 "Frida Interceptor 固有开销" 与 "我们的拷贝+消费"
 * 分开测量，不产生任何 PCM。
 *
 * 本轮仍是 DRY_RUN：**不建 socket、不发 PCM、不打包 40 B 头**。
 * 环里存的是整帧原始数据；1280 字节 lane0 载荷由消费端产出，
 * 其 FNV-1a 与 tgz2_frame.h / pcm_bridge_draft.js 同一算法（Math.imul）。
 * T3 的接收端会按实际帧头 CRC 对收到的载荷做完整性校验——本轮不声称做到那一步。
 *
 * ── 并发模型 ─────────────────────────────────────────────────────
 * Frida 的 V8 运行时对同一脚本只有一份 JS 执行权（内部 JS 锁）：
 * Interceptor 回调虽在命中 hook 的线程上被调用，但必须先取得这把锁；
 * setInterval 回调同样要取锁。因此两者不会真正并发执行，JS 状态无需原子操作；
 * 代价是延迟耦合：消费端持锁时 hook 要排队，排队时间**不计入**下文 hook 耗时统计
 * （时间戳是在拿到锁之后、拷贝之前取的）。
 * 运行时用 inHook/inDrain 守卫验证：应恒为 0/0。
 */

var MOD = 'libsmartbox.so';
var SYM = '_ZN14AGSpeechEngine4feedEjPKvi';
var OFF = 0xd455c;
var EXPECT_HEX = 'f0482de910b08de208d04de20370a0e1';

/* 与 tgz2_frame.h / pcm_bridge_draft.js 保持一致 */
var FRAME_IN   = 5120;    /* 原始帧字节数 */
var STRIDE     = 8;       /* 4 路 int16 交错 */
var SPF        = 640;     /* lane0 样本数 */
var FRAME_OUT  = 1280;    /* lane0 输出: 640 * int16 */
var RING_CAP   = 64;
var FNV_BASIS  = 2166136261;
var TICK_MS    = 20;

var COPY_MODE = 'blockcopy';      /* 'blockcopy' | 'countonly' */
var SLOT_BYTES = FRAME_IN;        /* 正式模式恒为 5120 */

var base = null, target = null, listener = null;
var tickTimer = null, repTimer = null, stopTimer = null;
var running = false, stopped = false, aborted = false;
var t0 = 0, RUN_MS = 30000, PHASES = null;

/* ---- 预分配 ---- */
var ring = null;                 /* RING_CAP * SLOT_BYTES */
var slotSeq = null;              /* Float64Array(RING_CAP) */
var slotTsNs = null;             /* Float64Array(RING_CAP) */
var hookCostUs = null;           /* Float64Array(2048) */
var latUs = null;                /* Float64Array(4096) */
var tsMem = null;

var idxHead = 0, idxTail = 0, seqNext = 0;
var calls = 0, lenBad = 0, nullPtr = 0, ringDrop = 0, produced = 0;
var hookEx = 0, drainEx = 0, readErr = 0, lenErr = 0;
var consumed = 0, seqGap = 0, reentryHook = 0, reentryDrain = 0;
var laneCheckErr = 0, laneCheckDone = false, laneCheckMism = -1;
var depthMax = 0;
var inHook = false, inDrain = false;
var hookCostN = 0, hookCostW = 0, latN = 0, latW = 0;
var lastSeq = -1;
var tids = {};

/* CRC：算法交叉验证（一次性）与"逐帧计算"分开记录，避免把一次校验说成全帧完整性验证 */
var crcAlgorithmChecked = false;
var crcAlgorithmOk = false;
var crcAlgorithmSample = '';
var crcFrames = 0;               /* 逐帧算过 FNV 的帧数 */
var crcSum = 0;                  /* 逐帧 FNV 的低 32 位累加，仅用于观察波动 */

/* 载荷统计（消费端） */
var payloadRmsSum = 0, payloadRmsMax = 0, payloadP2pMax = 0;
var payloadMin = 0, payloadMax = 0;

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

function pct(arr, n, q) {
  if (!n) return 0;
  var a = new Array(n);
  for (var i = 0; i < n; i++) a[i] = arr[i];
  a.sort(function (x, y) { return x - y; });
  return a[Math.floor((n - 1) * q)];
}

function fmt(v, d) { return v.toFixed(d === undefined ? 2 : d); }

function report(tag) {
  var hn = hookCostN, ln = latN;
  var el = (Date.now() - t0) / 1000;
  console.log('[' + tag + ' ' + fmt(el, 1) + 's] mode=' + COPY_MODE + ' produced=' + produced +
              ' consumed=' + consumed + ' pending=' + ((idxTail - idxHead) | 0) +
              ' ringDrop=' + ringDrop + ' depthMax=' + depthMax +
              ' seqGap=' + seqGap + ' readErr=' + readErr + ' lenErr=' + lenErr +
              ' lenBad=' + lenBad + ' nullPtr=' + nullPtr +
              ' hookEx=' + hookEx + ' drainEx=' + drainEx + ' reentry=' + reentryHook + '/' + reentryDrain +
              ' laneCheckErr=' + laneCheckErr);
  console.log('[' + tag + '] hook copy: n=' + hn + ' P50=' + fmt(pct(hookCostUs, hn, 0.50), 1) +
              'us P95=' + fmt(pct(hookCostUs, hn, 0.95), 1) + 'us P99=' + fmt(pct(hookCostUs, hn, 0.99), 1) +
              'us max=' + fmt(pct(hookCostUs, hn, 1.0), 1) + 'us (excludes JS-lock queueing)');
  console.log('[' + tag + '] drain latency: n=' + ln + ' P50=' + fmt(pct(latUs, ln, 0.50), 1) +
              'us P95=' + fmt(pct(latUs, ln, 0.95), 1) + 'us P99=' + fmt(pct(latUs, ln, 0.99), 1) +
              'us max=' + fmt(pct(latUs, ln, 1.0), 1) + 'us');
  console.log('[' + tag + '] crc: frames=' + crcFrames + ' algorithm_check=' +
              (crcAlgorithmChecked ? (crcAlgorithmOk ? 'ok' : 'MISMATCH') : 'not-run') +
              ' sum32=0x' + (crcSum >>> 0).toString(16) +
              ' (per-frame FNV computed; no independent per-frame expectation in DRY_RUN)');
  console.log('[' + tag + '] payload: rms_avg=' + fmt(payloadRmsSum / (crcFrames || 1), 1) +
              ' rms_max=' + fmt(payloadRmsMax, 1) + ' p2p_max=' + fmt(payloadP2pMax, 0) +
              ' min=' + payloadMin + ' max=' + payloadMax);
  console.log('[' + tag + '] rate=' + fmt(produced / (el || 1), 2) + '/s calls=' + calls +
              ' lenBad=' + lenBad + ' nullPtr=' + nullPtr + ' threads=' + Object.keys(tids).length);
}

/* 只做"自动失败"判定；不自动判 PASS（是否通过由审查方根据日志决定） */
/* VERDICT-BEGIN -- 纯函数，供单测直接抽取比对（不依赖 Frida 环境） */
function verdictFromCounters(c) {
  var fail = [];
  if (c.aborted) fail.push('address-check');
  if (c.laneCheckMism === -1) fail.push('lane0-selfcheck-not-run');
  if (c.laneCheckErr > 0) fail.push('lane0-selfcheck');
  if (c.crcChecked && !c.crcOk) fail.push('crc-algorithm');
  if (c.lenErr > 0) fail.push('payload-length');
  if (c.lenBad > 0) fail.push('input-length');
  if (c.nullPtr > 0) fail.push('null-ptr');
  if (c.readErr > 0) fail.push('read');
  if (c.hookEx > 0) fail.push('hook-exception');
  if (c.drainEx > 0) fail.push('drain-exception');
  if (c.seqGap > 0) fail.push('seq-gap');
  if (c.ringDrop > 0) fail.push('ring-drop');
  if (c.reentryHook > 0) fail.push('reentry-hook');
  if (c.reentryDrain > 0) fail.push('reentry-drain');
  if (c.produced !== c.consumed) fail.push('pending-frames');
  return fail.length ? ('AUTO-FAIL:' + fail.join(',')) : 'NO-AUTO-FAIL(review required)';
}
/* VERDICT-END */

function autoVerdict() {
  return verdictFromCounters({
    aborted: aborted,
    laneCheckMism: laneCheckMism,
    laneCheckErr: laneCheckErr,
    crcChecked: crcAlgorithmChecked,
    crcOk: crcAlgorithmOk,
    lenErr: lenErr,
    lenBad: lenBad,
    nullPtr: nullPtr,
    readErr: readErr,
    hookEx: hookEx,
    drainEx: drainEx,
    seqGap: seqGap,
    ringDrop: ringDrop,
    reentryHook: reentryHook,
    reentryDrain: reentryDrain,
    produced: produced,
    consumed: consumed
  });
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

  /* Hook 已 detach，不会再有新帧入环；把已入环但未消费的帧排空后再统计 */
  var pendingBefore = (idxTail - idxHead) | 0;
  try { drain(); } catch (e) { console.log('[!] final drain: ' + e); }
  var pendingAfter = (idxTail - idxHead) | 0;
  console.log('[i] final drain: pending_before=' + pendingBefore + ' pending_after=' + pendingAfter +
              ' consumed_total=' + consumed);

  try { report('FINAL'); } catch (e) { console.log('[!] report: ' + e); }
  var v;
  try { v = autoVerdict(); } catch (e) { v = 'verdict-error'; }
  console.log('===== [END] reason=' + reason + ' mode=' + COPY_MODE +
              ' produced=' + produced + ' consumed=' + consumed + ' pending=' + ((idxTail - idxHead) | 0) +
              ' lane0_selfcheck=' + (laneCheckDone ? (laneCheckErr === 0 ? 'ok(' + SPF + '/' + SPF + ')'
                                                    : 'FAIL(' + laneCheckErr + 'mismatch)') : 'not-run') +
              ' verdict=' + v + ' =====');
}

function fnvBytes(u8) {
  var h = FNV_BASIS >>> 0;
  for (var i = 0; i < u8.length; i++) h = Math.imul(h ^ u8[i], 16777619) >>> 0;
  return h;
}

function fnvExact(u8) {
  var h = 2166136261n;
  for (var i = 0; i < u8.length; i++) {
    h ^= BigInt(u8[i]);
    h = (h * 16777619n) & 0xffffffffn;
  }
  return Number(h);
}

/* ---- DRY_RUN 消费端 ---- */
function drain() {
  if (inDrain) { reentryDrain++; return; }
  inDrain = true;
  try {
    while (idxHead !== idxTail) {
      var slot = idxHead % RING_CAP;
      var off = slot * SLOT_BYTES;

      if (COPY_MODE === 'countonly') {
        idxHead++; consumed++;
        var cs = slotSeq[slot];
        if (lastSeq >= 0 && cs !== lastSeq + 1) seqGap++;
        lastSeq = cs;
        continue;
      }

      var frame;
      try { frame = ring.add(off).readByteArray(SLOT_BYTES); }
      catch (e) { readErr++; idxHead++; continue; }
      if (frame === null || frame.byteLength !== SLOT_BYTES) { lenErr++; idxHead++; continue; }

      /* lane0 抽取（消费端）：out[i] = in[i*4] */
      var in16 = new Int16Array(frame);
      var lane = new Int16Array(SPF);
      for (var q = 0; q < SPF; q++) lane[q] = in16[q * 4];

      /* 一次性自检：抽取结果必须与对同一 slot 逐样本 strided 读取一致 */
      if (!laneCheckDone) {
        laneCheckDone = true;
        var slotBase = ring.add(off);
        var mism = 0;
        for (var z = 0; z < SPF; z++) {
          if (lane[z] !== slotBase.add(z * STRIDE).readS16()) mism++;
        }
        laneCheckMism = mism;
        laneCheckErr = mism;
        console.log('[i] lane0 self-check: samples=' + SPF + ' mismatches=' + mism +
                    ' result=' + (mism === 0 ? 'ok' : 'FAIL'));
      }

      var bytes = lane.buffer;
      if (bytes.byteLength !== FRAME_OUT) { lenErr++; idxHead++; continue; }

      var u8 = new Uint8Array(bytes);
      var crc = fnvBytes(u8);
      crcFrames++;
      crcSum = (crcSum + crc) >>> 0;

      if (!crcAlgorithmChecked) {
        crcAlgorithmChecked = true;
        var ref = fnvExact(u8);
        crcAlgorithmOk = (crc === ref);
        crcAlgorithmSample = '0x' + crc.toString(16) + ' vs exact 0x' + ref.toString(16);
        console.log('[i] crc algorithm cross-check (first frame only): ' + crcAlgorithmSample +
                    ' match=' + crcAlgorithmOk);
      }

      /* 载荷统计 */
      var min = lane[0], max = lane[0], sum = 0, sumSq = 0;
      for (var i = 0; i < lane.length; i++) {
        var v = lane[i];
        if (v < min) min = v;
        if (v > max) max = v;
        sum += v; sumSq += v * v;
      }
      var mean = sum / lane.length;
      var ms2 = sumSq / lane.length - mean * mean;
      var rms = ms2 > 0 ? Math.sqrt(ms2) : 0;
      payloadRmsSum += rms;
      if (rms > payloadRmsMax) payloadRmsMax = rms;
      if (max - min > payloadP2pMax) payloadP2pMax = max - min;
      if (min < payloadMin) payloadMin = min;
      if (max > payloadMax) payloadMax = max;

      /* 序号 */
      var s = slotSeq[slot];
      if (lastSeq >= 0 && s !== lastSeq + 1) seqGap++;
      lastSeq = s;

      /* 消费延迟 */
      var now = nowNs(), ts = slotTsNs[slot];
      if (now !== 0 && ts !== 0 && now > ts) {
        latUs[latW] = (now - ts) / 1000;
        latW = (latW + 1) % latUs.length;
        if (latN < latUs.length) latN++;
      }

      idxHead++; consumed++;
    }
  } catch (e) { drainEx++; }
  inDrain = false;
}

/* ---- 安装 ---- */
function install(runMs) {
  console.log('[i] T2 PCM DRY_RUN (blockcopy: one Memory.copy of the whole frame in the hook)');

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
  if (clockGettime === null) { console.log('[ABORT] clock_gettime unavailable'); aborted = true; return false; }
  console.log('[v] clock_gettime bound');

  /* 预分配 */
  ring = Memory.alloc(RING_CAP * SLOT_BYTES);
  slotSeq = new Float64Array(RING_CAP);
  slotTsNs = new Float64Array(RING_CAP);
  hookCostUs = new Float64Array(2048);
  latUs = new Float64Array(4096);

  console.log('[v] copy_mode=' + COPY_MODE);
  console.log('[v] input_frame_bytes=' + FRAME_IN);
  console.log('[v] ring_slot_bytes=' + SLOT_BYTES + ' ring_total_bytes=' + (RING_CAP * SLOT_BYTES) + ' ring_cap=' + RING_CAP);
  console.log('[v] output_payload_bytes=' + FRAME_OUT);
  console.log('[v] lane0_samples=' + SPF + ' lane0_stride_bytes=' + STRIDE);
  console.log('[v] meta_bytes=' + (RING_CAP * 16) + ' cost_ring=2048 lat_ring=4096');

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
            slotSeq[slot] = seqNext++;
            slotTsNs[slot] = 0;
            idxTail++;
            produced++;
            if (depth + 1 > depthMax) depthMax = depth + 1;
            return;
          }

          var tS = nowNs();
          Memory.copy(dst, src, FRAME_IN);      /* 同步复制整帧，5120 B */
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
  setMode: function (m) {
    if (m === 'blockcopy' || m === 'countonly') {
      COPY_MODE = m;
      SLOT_BYTES = FRAME_IN;
      return true;
    }
    return false;      /* strided 等一律拒绝：不是正式模式 */
  },
  start: function (ms) { return install(ms); },
  stop: function () {
    finish('rpc');
    return { aborted: aborted, produced: produced, consumed: consumed, ringDrop: ringDrop,
             laneCheckErr: laneCheckErr, crcAlgorithmOk: crcAlgorithmOk, seqGap: seqGap };
  },
  stats: function () {
    return { mode: COPY_MODE, produced: produced, consumed: consumed, ringDrop: ringDrop,
             depthMax: depthMax, seqGap: seqGap, readErr: readErr, lenErr: lenErr,
             hookEx: hookEx, drainEx: drainEx, reentry: [reentryHook, reentryDrain],
             calls: calls, lenBad: lenBad, nullPtr: nullPtr,
             laneCheckMism: laneCheckMism, crcAlgorithmOk: crcAlgorithmOk,
             crcFrames: crcFrames, hookCostN: hookCostN, latN: latN };
  }
};

console.log('[i] script loaded (address checks + attach happen in start())');
