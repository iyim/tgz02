'use strict';
/*
 * t0_probe2.js -- T0 第二轮只读量化探测（不写内存、不调原函数）
 *
 * 目标：为"5120 字节 / 40 ms / 4 通道"三个假设取量化证据，并确认缓冲区复用情况。
 *
 * 每帧只做：
 *   - 记录 data 指针（去重，判断是否固定缓冲区）
 *   - 记录调用间隔（算帧率）
 *   - 对前 N 帧统计 4 个通道的 min/max/mean（按 8 字节一组，4 x int16 交错）
 *   - 对前 64 字节做 FNV-1a，判断相邻帧内容确实在变（不是常量缓冲）
 */

var MOD = 'libsmartbox.so';
var OFF = 0xd455c;
var RUN_MS = 30000;
var DUMP_MS = 5000;
var STAT_FRAMES = 60;      /* 只对前 60 帧做通道统计，控制开销 */

var base, target, listener, dumpTimer, stopTimer, stopped = false;
var calls = 0, tids = {}, lens = {}, ptrs = {}, ptrOrder = [];
var prevT = 0, dMin = 0, dMax = 0, dSum = 0, dCount = 0;
var hashes = {}, hashDup = 0;
var statN = 0;
var chMin = [0, 0, 0, 0], chMax = [0, 0, 0, 0], chSum = [0, 0, 0, 0], chNZ = [0, 0, 0, 0];
var t0 = Date.now();

function fnv(bytes, n) {
  var h = 2166136261;
  for (var i = 0; i < n; i++) h = Math.imul(h ^ bytes[i], 16777619) >>> 0;
  return h;
}

function dump(tag) {
  var sec = ((Date.now() - t0) / 1000).toFixed(1);
  var rate = calls > 0 ? (calls / ((Date.now() - t0) / 1000)) : 0;
  console.log('[' + tag + ' ' + sec + 's] calls=' + calls +
              ' rate=' + rate.toFixed(2) + '/s' +
              ' threads=' + Object.keys(tids).length +
              ' lens=' + JSON.stringify(lens) +
              ' distinctPtrs=' + Object.keys(ptrs).length +
              ' interval(ms) min=' + dMin + ' avg=' + (dCount ? (dSum / dCount).toFixed(2) : 0) +
              ' max=' + dMax + ' hashDup=' + hashDup);
}

function finish(reason) {
  if (stopped) return;
  stopped = true;
  try { dump('FINAL'); } catch (e) { }
  if (statN > 0) {
    console.log('[CH] frames=' + statN + ' (640 groups x 4ch int16)');
    for (var c = 0; c < 4; c++) {
      var mean = statN > 0 ? (chSum[c] / (statN * 640)) : 0;
      console.log('[CH] ch' + c + ' min=' + chMin[c] + ' max=' + chMax[c] +
                  ' mean=' + mean.toFixed(2) + ' nonzero=' +
                  (chNZ[c] / (statN * 640) * 100).toFixed(1) + '%');
    }
  }
  if (ptrOrder.length) console.log('[PTR] data ptrs seen: ' + ptrOrder.join(', '));
  if (listener && typeof listener.detach === 'function') {
    try { listener.detach(); console.log('[i] listener detached'); } catch (e) { }
  }
  listener = null;
  if (dumpTimer !== null) { try { clearInterval(dumpTimer); } catch (e) { } dumpTimer = null; }
  if (stopTimer !== null) { try { clearTimeout(stopTimer); } catch (e) { } stopTimer = null; }
  console.log('[i] probe2 finished (' + reason + ')');
}

function main() {
  base = Module.findBaseAddress(MOD);
  if (base === null) { console.log('[!] no module'); return finish('no-module'); }
  target = base.add(OFF);
  console.log('[i] base=' + base + ' target=' + target);

  listener = Interceptor.attach(target, {
    onEnter: function (args) {
      if (stopped) return;
      try {
        var tid = Process.getCurrentThreadId();
        tids[tid] = (tids[tid] || 0) + 1;
        calls++;
        var len = args[3].toInt32();
        lens[len] = (lens[len] || 0) + 1;

        var p = args[2];
        if (p.isNull()) return;
        var ps = p.toString();
        if (!ptrs[ps]) { ptrs[ps] = 1; if (ptrOrder.length < 8) ptrOrder.push(ps); }

        var now = Date.now();
        if (prevT) {
          var d = now - prevT;
          if (!dMin || d < dMin) dMin = d;
          if (d > dMax) dMax = d;
          dSum += d; dCount++;
        }
        prevT = now;

        if (len !== 5120) return;

        /* 前 64 字节 FNV：判断内容是否在变化 */
        var head = p.readByteArray(64);
        var h = fnv(new Uint8Array(head), 64);
        if (hashes[h]) hashDup++; else hashes[h] = 1;

        if (statN < STAT_FRAMES) {
          var buf = p.readByteArray(5120);
          var i16 = new Int16Array(buf);
          for (var i = 0; i < 640; i++) {
            for (var c = 0; c < 4; c++) {
              var v = i16[i * 4 + c];
              if (statN === 0) { chMin[c] = v; chMax[c] = v; }
              else { if (v < chMin[c]) chMin[c] = v; if (v > chMax[c]) chMax[c] = v; }
              chSum[c] += v;
              if (v !== 0) chNZ[c]++;
            }
          }
          statN++;
        }
      } catch (e) { }
    }
  });

  console.log('[i] read-only hook installed, watching ' + (RUN_MS / 1000) + 's');
  dumpTimer = setInterval(function () { if (!stopped) dump('RUN'); }, DUMP_MS);
  stopTimer = setTimeout(function () { finish('timeout'); }, RUN_MS);
}

main();
