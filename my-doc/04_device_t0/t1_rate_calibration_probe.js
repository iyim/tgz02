'use strict';
/*
 * t1_rate_calibration_probe.js -- 采样率两点校准（只读）
 *
 * 目的：用两个已知频率的测试音（1 kHz、500 Hz），在多频点 Goertzel 上定位能量峰，
 *       判断"每 lane 16 kHz"这个假设能否被数据支持。
 *
 * 逻辑：Goertzel 全程按"假设 lane 采样率 16 kHz"计算
 *       - 若假设成立：播 1 kHz 时能量应在 1000 Hz 点，播 500 Hz 时在 500 Hz 点
 *       - 若真实采样率是 8 kHz：播 1 kHz 的音在 16k 域会落到 2000 Hz 点
 *       - 若真实采样率是 48 kHz：播 1 kHz 的音在 16k 域会落到 333 Hz 附近
 *       所以"两个频率都落在对应点"才能支持 16 kHz。
 *
 * 只读；不改内存/寄存器，不调原函数，不落盘音频。
 */

var MOD = 'libsmartbox.so';
var SYM = '_ZN14AGSpeechEngine4feedEjPKvi';
var OFF = 0xd455c;
var EXPECT_HEX = 'f0482de910b08de208d04de20370a0e1';

var FREQS = [250, 333, 500, 1000, 2000, 3000];
var LANES_OF_INTEREST = [0, 2];       /* 4 通道布局里的 lane0（主）与 lane2（次） */
var TOTAL_MS = 25000;
var TICK_MS = 5000;
var PHASES = [
  { n: 'TONE1K', to: 10000 },          /* 播 1 kHz */
  { n: 'TONE500', to: 20000 },         /* 播 500 Hz */
  { n: 'WRAP', to: 25000 }
];

var base = null, target = null, listener = null, hb = null, stopT = null;
var stopped = false, t0 = 0, curPhase = -1;
var calls = 0, tids = {}, ptrs = {}, hookEx = 0, readFail = 0, nullPtr = 0, dumpErr = 0;

function newAcc() {
  var lanes = [];
  for (var i = 0; i < 4; i++) {
    var g = [];
    for (var f = 0; f < FREQS.length; f++) g.push({ sum: 0, max: 0 });
    lanes.push({ rms: 0, rmsMax: 0, gk: g, n: 0 });
  }
  return { frames: 0, lanes: lanes };
}
var PH = [];
for (var i = 0; i < PHASES.length; i++) PH.push(newAcc());

function goertzelAmp(i16, off, stride, n, f, sr) {
  var k = Math.round(n * f / sr);
  if (k <= 0 || k >= n / 2) return 0;
  var w = 2 * Math.PI * k / n, c = 2 * Math.cos(w);
  var s0 = 0, s1 = 0, s2 = 0;
  for (var i = 0; i < n; i++) {
    s0 = i16[off + i * stride] + c * s1 - s2;
    s2 = s1; s1 = s0;
  }
  var p = s1 * s1 + s2 * s2 - c * s1 * s2;
  return p > 0 ? (2 * Math.sqrt(p) / n) : 0;
}

function fmt(v, d) { return v.toFixed(d === undefined ? 2 : d); }
function phaseIndex(ms) { for (var i = 0; i < PHASES.length; i++) if (ms < PHASES[i].to) return i; return PHASES.length - 1; }

function dumpPhase(idx, ms) {
  var acc = PH[idx], nf = acc.frames || 0;
  console.log('===== [PHASE ' + PHASES[idx].n + '] end at ' + fmt(ms / 1000, 1) + 's frames=' + nf + ' =====');
  if (!nf) return;
  for (var li = 0; li < LANES_OF_INTEREST.length; li++) {
    var lane = LANES_OF_INTEREST[li], st = acc.lanes[lane];
    var s = '  lane' + lane + ' rms=' + fmt(st.rms / nf);
    for (var f = 0; f < FREQS.length; f++) {
      s += '  amp@' + FREQS[f] + 'Hz=' + fmt(st.gk[f].sum / nf, 1);
    }
    console.log(s);
  }
}

function finish(reason) {
  if (stopped) return;
  stopped = true;
  var ms = Date.now() - t0;
  if (curPhase >= 0) { try { dumpPhase(curPhase, ms); } catch (e) { dumpErr++; console.log('[!] dump: ' + e); } }
  console.log('===== [SUMMARY] reason=' + reason + ' elapsed=' + fmt(ms / 1000, 1) + 's calls=' + calls +
              ' threads=' + Object.keys(tids).length + ' ptrs=' + Object.keys(ptrs).length +
              ' nullPtr=' + nullPtr + ' readFail=' + readFail + ' hookEx=' + hookEx + ' dumpErr=' + dumpErr + ' =====');
  if (listener && typeof listener.detach === 'function') {
    try { listener.detach(); console.log('[i] listener detached'); } catch (e) { }
  }
  listener = null;
  if (hb !== null) { try { clearInterval(hb); } catch (e) { } hb = null; }
  if (stopT !== null) { try { clearTimeout(stopT); } catch (e) { } stopT = null; }
  console.log('[i] calibration probe finished');
}

function main() {
  console.log('[i] rate calibration: 0-10s tone 1kHz, 10-20s tone 500Hz, 20-25s wrap');
  console.log('[i] Goertzel bins (assumed lane rate 16kHz): ' + FREQS.join(', ') + ' Hz');

  base = Module.findBaseAddress(MOD);
  if (!base) { console.log('[ABORT] no module'); return finish('abort'); }
  var sym = Module.findExportByName(MOD, SYM);
  if (!sym) { console.log('[ABORT] no symbol'); return finish('abort'); }
  if (sym.sub(base).toInt32() !== OFF) { console.log('[ABORT] offset mismatch'); return finish('abort'); }
  target = base.add(OFF);
  var got = '';
  try {
    var u = new Uint8Array(target.readByteArray(16));
    for (var i = 0; i < u.length; i++) got += (u[i] < 16 ? '0' : '') + u[i].toString(16);
  } catch (e) { console.log('[ABORT] read failed: ' + e); return finish('abort'); }
  if (got !== EXPECT_HEX) { console.log('[ABORT] bytes ' + got); return finish('abort'); }
  console.log('[v] address checks passed; target=' + target);

  listener = Interceptor.attach(target, {
    onEnter: function (args) {
      if (stopped) return;
      try {
        var ms = Date.now() - t0, pidx = phaseIndex(ms);
        if (pidx !== curPhase) {
          if (curPhase >= 0) { try { dumpPhase(curPhase, ms); } catch (e) { dumpErr++; } }
          curPhase = pidx;
        }
        calls++;
        tids[Process.getCurrentThreadId()] = 1;

        var len = args[3].toInt32();
        var p = args[2];
        if (p.isNull()) { nullPtr++; return; }
        if (len !== 5120) return;
        ptrs[p.toString()] = 1;

        var buf;
        try { buf = p.readByteArray(len); } catch (e2) { readFail++; return; }
        var i16 = new Int16Array(buf);
        var acc = PH[pidx];
        acc.frames++;

        /* 每 4 帧算一次频谱，控制开销 */
        var doSpec = (calls % 4 === 0);
        for (var li = 0; li < LANES_OF_INTEREST.length; li++) {
          var lane = LANES_OF_INTEREST[li], st = acc.lanes[lane];
          var per = (i16.length / 4) | 0;

          /* 该 lane 的 RMS */
          var sum = 0, sumSq = 0;
          for (var j = 0; j < per; j++) { var v = i16[j * 4 + lane]; sum += v; sumSq += v * v; }
          var mean = sum / per, ms2 = sumSq / per - mean * mean;
          var rms = ms2 > 0 ? Math.sqrt(ms2) : 0;
          st.rms += rms;
          if (rms > st.rmsMax) st.rmsMax = rms;

          if (doSpec) {
            for (var f = 0; f < FREQS.length; f++) {
              var a = goertzelAmp(i16, lane, 4, per, FREQS[f], 16000);
              if (calls % 16 === 0) { st.gk[f].sum += a; st.gk[f].max = Math.max(st.gk[f].max, a); }
            }
          }
        }
      } catch (e) { hookEx++; }
    }
  });

  t0 = Date.now();
  console.log('[i] hook installed, ' + (TOTAL_MS / 1000) + 's');
  hb = setInterval(function () {
    if (stopped) return;
    var ms = Date.now() - t0;
    console.log('[t ' + fmt(ms / 1000, 0) + 's] phase=' + PHASES[phaseIndex(ms)].n + ' calls=' + calls);
  }, TICK_MS);
  stopT = setTimeout(function () { finish('timeout'); }, TOTAL_MS);
}

main();
