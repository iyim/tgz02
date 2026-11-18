'use strict';
// tgz02_probe.js -- read-only PCM pipeline probe (frida 16.x, attach to :core)
// 原则：不改寄存器、不改返回值、不阻塞、不落盘，只做计数与长度统计。

const T0 = Date.now();
const S = { read: 0, readBytes: 0, rec: 0, recBytes: 0, lens: {}, recLens: {}, fmt: null };

function off(mod, delta) {
  const b = Module.findBaseAddress(mod);
  if (b === null) { console.log('[!] module not loaded: ' + mod); return null; }
  return b.add(delta);
}

// ---- 1) 采样率 / 声道 / 位深（OpenSL 建流时读取，最权威）----
const pFmt = off('libagaudio.so', 0x53f0);
if (pFmt) {
  Interceptor.attach(pFmt, {
    onEnter(args) { this.p = [args[1], args[2], args[3]]; },
    onLeave(ret) {
      try {
        const v = [this.p[0].readS32(), this.p[1].readS32(), this.p[2].readS32()];
        if (!S.fmt || S.fmt.join(',') !== v.join(',')) {
          S.fmt = v;
          console.log('[FMT] sampleRate=' + v[0] + ' channels=' + v[1] + ' bits=' + v[2]);
        }
      } catch (e) {}
    }
  });
}

// ---- 2) OpenSL 拉帧（每帧一次，读返回值=字节数）----
const pRead = off('libagaudio.so', 0x55e0);
if (pRead) {
  Interceptor.attach(pRead, {
    onLeave(ret) {
      const n = ret.toInt32();
      if (n > 0) {
        S.read++; S.readBytes += n;
        S.lens[n] = (S.lens[n] || 0) + 1;
      }
    }
  });
}

// ---- 3) PCM 回调入口（每帧一次）----
const pRec = off('libsmartbox.so', 0xea8c4);
if (pRec) {
  Interceptor.attach(pRec, {
    onEnter(args) {
      const n = args[2].toInt32();
      if (n > 0) {
        S.rec++; S.recBytes += n;
        S.recLens[n] = (S.recLens[n] || 0) + 1;
      }
    }
  });
}

console.log('[i] hooked fmt=' + (!!pFmt) + ' read=' + (!!pRead) + ' onRec=' + (!!pRec));

// ---- 每 2s 输出一次聚合（不逐帧打印）----
setInterval(function () {
  const t = ((Date.now() - T0) / 1000).toFixed(0);
  let f = S.fmt ? (S.fmt[0] + 'Hz/' + S.fmt[1] + 'ch/' + S.fmt[2] + 'bit') : 'unknown';
  console.log('[' + t + 's] ' + f +
    ' | read=' + S.read + ' (' + S.readBytes + 'B)' +
    ' | onRecordData=' + S.rec + ' (' + S.recBytes + 'B)' +
    ' | readLens=' + JSON.stringify(S.lens) +
    ' | recLens=' + JSON.stringify(S.recLens));
}, 2000);
