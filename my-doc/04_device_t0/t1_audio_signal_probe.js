'use strict';
/*
 * t1_audio_signal_probe.js -- T1 真机音频信号验证（只读）
 *
 * 目的：
 *   1. 用真实声音刺激（设备自身扬声器播放语音 / 1 kHz 测试音）确认 r2 缓冲里的信号随之变化
 *   2. **用数据判定**通道布局，而不是预设 4 通道
 *
 * 铁律：
 *   1. Hook 前 4 项地址校验，任一项不符立即终止，不 attach。
 *   2. 每次回调立即 readByteArray() 复制当前帧；不把原始指针留给别处用。
 *   3. 不改内存/寄存器、不调用原函数、不发数据、不落盘原始音频。
 *   4. 异常不吞：hookEx / readFail / dumpErr 全部计数并在结束时输出。
 *
 * 样本数算法（按实际字节数推）：
 *   5120 B / 2 = 2560 个 int16
 *   1 lane -> 2560 / 2 lanes -> 1280 / 4 lanes -> 640 / 8 lanes -> 320
 *
 * 结构判别手段：
 *   - 相邻样本相等计数 eq[k]：i16[i] == i16[i+k]（k=1..8）
 *     若真实布局是 (A,B,C,C) 重复，则 eq[1] 约为 25%，而 eq[4] 接近 0（A、B 各不相同）
 *   - 每 lane 的 1 kHz Goertzel 幅度：按 lane 假定 16 kHz 采样
 *     布局错时，lane 内混入别的通道样本，1 kHz 分量会被打散
 */

var MOD = 'libsmartbox.so';
var SYM = '_ZN14AGSpeechEngine4feedEjPKvi';
var OFF = 0xd455c;
var EXPECT_HEX = 'f0482de910b08de208d04de20370a0e1';

var TOTAL_MS = 45000;
var TICK_MS = 1000;
var LAYOUTS = [1, 2, 4];
var PHASES = [
  { n: 'QUIET1', to: 10000 },
  { n: 'SPEAK', to: 20000 },
  { n: 'TONE', to: 30000 },
  { n: 'QUIET2', to: 40000 },
  { n: 'WRAP', to: 45000 }
];

var base = null, target = null, listener = null, hb = null, stopT = null;
var stopped = false;
var t0 = 0;

var calls = 0, tids = {}, lens = {}, ptrs = {}, hookEx = 0, readFail = 0, nullPtr = 0, dumpErr = 0;
var curPhase = -1;

function newAcc() {
  var acc = { frames: 0, L: {}, eq: [] };
  for (var k = 0; k <= 8; k++) acc.eq.push(0);
  acc.eqN = 0;
  return acc;
}

function laneAcc(L) {
  var lanes = [], i;
  for (i = 0; i < L; i++) {
    lanes.push({ n: 0, min: 0, max: 0, sum: 0, sumSq: 0, nz: 0, rmsSum: 0, rmsMax: 0, gkSum: 0, gkMax: 0, gkN: 0 });
  }
  var pairs = [];
  for (i = 0; i < L; i++) {
    for (var j = i + 1; j < L; j++) {
      pairs.push({ a: i, b: j, n: 0, sx: 0, sy: 0, sxx: 0, syy: 0, sxy: 0 });
    }
  }
  return { lanes: lanes, pairs: pairs };
}

function accFor(acc, L) {
  if (!acc.L[L]) acc.L[L] = laneAcc(L);
  return acc.L[L];
}

var PH = [];
for (var pi = 0; pi < PHASES.length; pi++) PH.push(newAcc());

/* 单 lane 的 1 kHz Goertzel 幅度（假定该 lane 采样率 16 kHz） */
function goertzelAmp(i16, off, stride, n, f, sr) {
  var k = Math.round(n * f / sr);
  if (k <= 0 || k >= n / 2) return 0;
  var w = 2 * Math.PI * k / n;
  var c = 2 * Math.cos(w);
  var s0 = 0, s1 = 0, s2 = 0;
  for (var i = 0; i < n; i++) {
    var v = i16[off + i * stride];
    s0 = v + c * s1 - s2;
    s2 = s1;
    s1 = s0;
  }
  var p = s1 * s1 + s2 * s2 - c * s1 * s2;
  return p > 0 ? (2 * Math.sqrt(p) / n) : 0;
}

function feedLayout(st, L, i16, doGoertzel) {
  var lanes = st.lanes, pairs = st.pairs;
  var groups = (i16.length / L) | 0;
  var vals = [], k, g, v;
  for (k = 0; k < L; k++) vals.push(0);

  for (g = 0; g < groups; g++) {
    var off = g * L;
    for (k = 0; k < L; k++) {
      v = i16[off + k];
      vals[k] = v;
      var la = lanes[k];
      if (la.n === 0) { la.min = v; la.max = v; }
      else { if (v < la.min) la.min = v; if (v > la.max) la.max = v; }
      la.sum += v; la.sumSq += v * v; la.n++;
      if (v !== 0) la.nz++;
    }
    for (var p = 0; p < pairs.length; p++) {
      var pr = pairs[p], x = vals[pr.a], y = vals[pr.b];
      pr.n++; pr.sx += x; pr.sy += y; pr.sxx += x * x; pr.syy += y * y; pr.sxy += x * y;
    }
  }

  for (k = 0; k < lanes.length; k++) {
    var l = lanes[k];
    if (!l.n) continue;
    var mean = l.sum / l.n;
    var ms2 = l.sumSq / l.n - mean * mean;
    var rms = ms2 > 0 ? Math.sqrt(ms2) : 0;
    l.rmsSum += rms;
    if (rms > l.rmsMax) l.rmsMax = rms;

    if (doGoertzel) {
      var amp = goertzelAmp(i16, k, L, groups, 1000, 16000);
      l.gkSum += amp;
      l.gkN++;
      if (amp > l.gkMax) l.gkMax = amp;
    }
  }
}

function corr(pr) {
  if (!pr.n) return 0;
  var num = pr.n * pr.sxy - pr.sx * pr.sy;
  var da = pr.n * pr.sxx - pr.sx * pr.sx;
  var db = pr.n * pr.syy - pr.sy * pr.sy;
  if (da <= 0 || db <= 0) return 0;
  return num / Math.sqrt(da * db);
}

function fmt(v, d) { return v.toFixed(d === undefined ? 2 : d); }
function db(ref, v) { return (ref > 1e-9 && v > 1e-9) ? (20 * Math.log(v / ref) / Math.LN10) : -99; }

function dumpPhase(idx, elapsedMs) {
  var acc = PH[idx], name = PHASES[idx].n, nf = acc.frames || 0;
  console.log('===== [PHASE ' + name + '] end at ' + fmt(elapsedMs / 1000, 1) + 's frames=' + nf + ' =====');
  if (!nf) { console.log('  (no frames)'); return; }

  for (var li = 0; li < LAYOUTS.length; li++) {
    var L = LAYOUTS[li], st = acc.L[L];
    if (!st) { console.log('  [' + L + 'ch] no data'); continue; }
    console.log('  [' + L + 'ch] samplesPerLane=' + (2560 / L) + '  (1kHz Goertzel assumed lane rate 16kHz)');
    var ref1k = (st.lanes[0] && st.lanes[0].gkN) ? st.lanes[0].gkSum / st.lanes[0].gkN : 0;
    for (var k = 0; k < st.lanes.length; k++) {
      var l = st.lanes[k];
      if (!l.n) { console.log('    lane' + k + ': no data'); continue; }
      var mean = l.sum / l.n;
      var ms2 = l.sumSq / l.n - mean * mean;
      var rms = ms2 > 0 ? Math.sqrt(ms2) : 0;
      var amp = l.gkN ? (l.gkSum / l.gkN) : 0;
      console.log('    lane' + k +
        ' min=' + l.min + ' max=' + l.max + ' p2p=' + (l.max - l.min) +
        ' mean=' + fmt(mean) + ' rms_dc=' + fmt(rms) +
        ' rms_frm_avg=' + fmt(l.rmsSum / nf) + ' rms_frm_max=' + fmt(l.rmsMax) +
        ' amp1k=' + fmt(amp, 1) + ' amp1k_dB=' + fmt(db(ref1k, amp), 1) +
        ' nz=' + fmt(l.nz / l.n * 100, 1) + '%');
    }
    if (st.pairs.length) {
      var s = '    corr:';
      for (var q = 0; q < st.pairs.length; q++) {
        s += ' l' + st.pairs[q].a + '-l' + st.pairs[q].b + '=' + fmt(corr(st.pairs[q]), 3);
      }
      console.log(s);
    }
  }

  var e = '  [STRUCT] equal-sample ratio:';
  for (var kk = 1; kk <= 8; kk++) e += ' eq' + kk + '=' + fmt(acc.eq[kk] / acc.eqN * 100, 2) + '%';
  console.log(e);
}

function phaseIndex(ms) {
  for (var i = 0; i < PHASES.length; i++) if (ms < PHASES[i].to) return i;
  return PHASES.length - 1;
}

function finish(reason) {
  if (stopped) return;
  stopped = true;
  var ms = Date.now() - t0;
  if (curPhase >= 0) { try { dumpPhase(curPhase, ms); } catch (e) { dumpErr++; console.log('[!] dumpPhase: ' + e); } }

  var ids = Object.keys(tids);
  console.log('===== [SUMMARY] reason=' + reason + ' elapsed=' + fmt(ms / 1000, 1) + 's calls=' + calls +
              ' threads=' + ids.length + ' distinctPtrs=' + Object.keys(ptrs).length +
              ' lens=' + JSON.stringify(lens) + ' nullPtr=' + nullPtr +
              ' readFail=' + readFail + ' hookEx=' + hookEx + ' dumpErr=' + dumpErr + ' =====');
  if (ids.length) console.log('  tids: ' + ids.join(','));
  var pl = Object.keys(ptrs);
  if (pl.length) console.log('  ptrs: ' + pl.join(', '));

  if (listener && typeof listener.detach === 'function') {
    try { listener.detach(); console.log('[i] listener detached'); } catch (e) { console.log('[!] detach: ' + e); }
  }
  listener = null;
  if (hb !== null) { try { clearInterval(hb); } catch (e) { } hb = null; }
  if (stopT !== null) { try { clearTimeout(stopT); } catch (e) { } stopT = null; }
  console.log('[i] probe finished');
}

function main() {
  console.log('[i] T1 audio signal probe; phases: 0-10 QUIET1 / 10-20 SPEAK / 20-30 TONE / 30-40 QUIET2 / 40-45 WRAP');

  base = Module.findBaseAddress(MOD);
  if (base === null) { console.log('[ABORT] check1 module not loaded: ' + MOD); return finish('abort'); }
  console.log('[v] check1 module loaded, base=' + base);

  var sym = Module.findExportByName(MOD, SYM);
  if (sym === null) { console.log('[ABORT] check2 export symbol missing: ' + SYM); return finish('abort'); }
  console.log('[v] check2 symbol found at ' + sym);

  var off = sym.sub(base).toInt32();
  if (off !== OFF) {
    console.log('[ABORT] check3 symbol offset 0x' + off.toString(16) + ' != 0x' + OFF.toString(16));
    return finish('abort');
  }
  console.log('[v] check3 symbol offset = 0x' + off.toString(16));

  target = base.add(OFF);
  var got = '';
  try {
    var u = new Uint8Array(target.readByteArray(16));
    for (var i = 0; i < u.length; i++) got += (u[i] < 16 ? '0' : '') + u[i].toString(16);
  } catch (e) {
    console.log('[ABORT] check4 cannot read target: ' + e);
    return finish('abort');
  }
  if (got !== EXPECT_HEX) {
    console.log('[ABORT] check4 runtime bytes ' + got + ' != ' + EXPECT_HEX);
    return finish('abort');
  }
  console.log('[v] check4 runtime[16] = ' + got + ' (matches expected)');
  console.log('[v] target runtime addr = ' + target);

  try {
    listener = Interceptor.attach(target, {
      onEnter: function (args) {
        if (stopped) return;
        try {
          var ms = Date.now() - t0;
          var pidx = phaseIndex(ms);
          if (pidx !== curPhase) {
            if (curPhase >= 0) { try { dumpPhase(curPhase, ms); } catch (e) { dumpErr++; console.log('[!] dumpPhase: ' + e); } }
            curPhase = pidx;
          }

          calls++;
          tids[Process.getCurrentThreadId()] = (tids[Process.getCurrentThreadId()] || 0) + 1;

          var len = args[3].toInt32();
          lens[len] = (lens[len] || 0) + 1;

          var p = args[2];
          if (p.isNull()) { nullPtr++; return; }
          var ps = p.toString();
          if (!ptrs[ps]) ptrs[ps] = 1;

          var buf;
          try { buf = p.readByteArray(len); }
          catch (e2) { readFail++; return; }
          if (len % 2 !== 0) return;
          var i16 = new Int16Array(buf);

          var acc = PH[pidx];
          acc.frames++;

          /* 结构判别：相邻/间隔相等计数（每帧取 2560 个样本窗口） */
          /* 结构判别很重（8 x 2560 次比较），每 20 帧做一次，避免拖慢录音线程 */
          if (calls % 20 === 1) {
            var k, n = i16.length;
            for (k = 1; k <= 8; k++) {
              var c = 0;
              for (var i = 0; i + k < n; i++) if (i16[i] === i16[i + k]) c++;
              acc.eq[k] += c;
              if (k === 8) acc.eqN += (n - k);
            }
          }

          for (var li = 0; li < LAYOUTS.length; li++) {
            var Lz = LAYOUTS[li];
            feedLayout(accFor(acc, Lz), Lz, i16, Lz === 4 && (calls % 2 === 0));
          }
        } catch (e) { hookEx++; }
      }
    });
  } catch (e) {
    console.log('[ABORT] attach failed: ' + e);
    return finish('abort');
  }

  t0 = Date.now();
  console.log('[i] hook installed, observing ' + (TOTAL_MS / 1000) + 's');

  hb = setInterval(function () {
    if (stopped) return;
    var ms = Date.now() - t0;
    console.log('[t ' + fmt(ms / 1000, 0) + 's] phase=' + PHASES[phaseIndex(ms)].n + ' calls=' + calls +
                ' threads=' + Object.keys(tids).length + ' ptrs=' + Object.keys(ptrs).length +
                ' readFail=' + readFail + ' hookEx=' + hookEx);
  }, TICK_MS);

  stopT = setTimeout(function () { finish('timeout'); }, TOTAL_MS);
}

main();
