'use strict';
// tgz02_probe.js -- read-only PCM pipeline probe (frida 16.x, attach to :core)
// 原则：不改寄存器、不改返回值、不阻塞、不落盘，只做计数与长度统计。
//
// 2026-11 修订（见 03_script_audit.md §3）：
//   第二阶段已证 0xea8c4 是从不被调用的兄弟 thunk，真实来路是 0xea8f4。
//   所以这里三处一起数：
//     feed  @0xd455c  ← 权威入口（两条 thunk 都汇合到这里）
//     thunk @0xea8f4  ← 对照，应约等于 feed 的调用次数
//     guard @0xea8c4  ← 守卫，期望恒为 0；不为 0 说明固件结构变了
//   偏移一个都没改，只是把计数补全。

const T0 = Date.now();
const S = {
  read: 0, readBytes: 0, lens: {},
  feed: 0, feedBytes: 0, feedLens: {},
  thunk: 0, guard: 0,
  fmt: null, err: null
};

function mod(name) { return Module.findBaseAddress(name); }

function hookAt(modName, off, label, lenIdx) {
  const b = mod(modName);
  if (b === null) { console.log('[!] module not loaded: ' + modName); return null; }
  const p = b.add(off);
  Interceptor.attach(p, {
    onEnter(args) {
      if (label === 'feed') {
        S.feed++;
        const n = args[lenIdx].toInt32();
        S.feedBytes += n;
        S.feedLens[n] = (S.feedLens[n] || 0) + 1;
      } else if (label === 'thunk') {
        S.thunk++;
      } else {
        S.guard++;
      }
    }
  });
  return p;
}

// ---- 1) 采样率 / 声道 / 位深（OpenSL 建流时读取，最权威）----
const bAg = mod('libagaudio.so');
if (bAg) {
  Interceptor.attach(bAg.add(0x53f0), {
    onEnter(args) { this.p = [args[1], args[2], args[3]]; },
    onLeave() {
      try {
        const v = [this.p[0].readS32(), this.p[1].readS32(), this.p[2].readS32()];
        if (!S.fmt || S.fmt.join(',') !== v.join(',')) {
          S.fmt = v;
          console.log('[FMT] sampleRate=' + v[0] + ' channels=' + v[1] + ' bits=' + v[2]);
        }
      } catch (e) { S.err = 'fmt:' + e; }
    }
  });
} else {
  console.log('[!] libagaudio.so not loaded');
}

// ---- 2) OpenSL 拉帧（每帧一次，读返回值=字节数）----
if (bAg) {
  Interceptor.attach(bAg.add(0x55e0), {
    onLeave(ret) {
      const n = ret.toInt32();
      if (n > 0) { S.read++; S.readBytes += n; S.lens[n] = (S.lens[n] || 0) + 1; }
    }
  });
}

// ---- 3) 符号对账：偏移不符就明确报错，别静默全 0 ----
const bSb = mod('libsmartbox.so');
let feedSym = null;
if (bSb) {
  feedSym = Module.findExportByName('libsmartbox.so', '_ZN14AGSpeechEngine4feedEjPKvi');
  if (feedSym === null) {
    console.log('[!] feed symbol missing -> 该固件不是预期版本，探针不装');
  } else {
    const off = feedSym.sub(bSb).toInt32();
    console.log('[i] feed symbol @0x' + off.toString(16) + ' (expected 0xd455c)' +
                (off === 0xd455c ? '' : '  <== MISMATCH'));
  }
} else {
  console.log('[!] libsmartbox.so not loaded');
}

// ---- 4) 三处计数 ----
const pFeed  = bSb ? hookAt('libsmartbox.so', 0xd455c, 'feed', 3) : null;
const pThunk = bSb ? hookAt('libsmartbox.so', 0xea8f4, 'thunk', 3) : null;
const pGuard = bSb ? hookAt('libsmartbox.so', 0xea8c4, 'guard', 3) : null;

console.log('[i] hooked fmt=' + !!bAg + ' read=' + !!bAg +
            ' feed=' + !!pFeed + ' thunk=' + !!pThunk + ' guard=' + !!pGuard);

// ---- 5) 每 2s 输出一次聚合（不逐帧打印）----
setInterval(function () {
  const t = ((Date.now() - T0) / 1000).toFixed(0);
  let f = S.fmt ? (S.fmt[0] + 'Hz/' + S.fmt[1] + 'ch/' + S.fmt[2] + 'bit') : 'unknown';
  console.log('[' + t + 's] ' + f +
    ' | read=' + S.read + ' (' + S.readBytes + 'B)' +
    ' | feed=' + S.feed + ' (' + S.feedBytes + 'B)' +
    ' | thunk=' + S.thunk + ' | guard=' + S.guard +
    ' | feedLens=' + JSON.stringify(S.feedLens) +
    (S.err ? ' | err=' + S.err : ''));
}, 2000);
