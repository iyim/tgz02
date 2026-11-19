'use strict';
/*
 * t0_probe.js -- TG-Z02 T0 前置验证：只读探测 libsmartbox.so + 0xd455c
 *
 * 只做三件事，全部只读：
 *   1. 确认模块已加载、打印基址、用导出符号交叉验证 0xd455c
 *   2. 比对运行时前 16 字节与磁盘文件字节（判断是否有运行时改写/解密）
 *   3. Interceptor.attach 只读观察：线程 ID、r0..r3、数据指针可读性、长度分布
 *
 * 不做：改寄存器、改内存、调用原函数、建 socket、读写文件、发 PCM。
 * 到点（RUN_MS）自动 detach 并清理定时器。
 */

var MOD       = 'libsmartbox.so';
var SYM       = '_ZN14AGSpeechEngine4feedEjPKvi';
var OFF       = 0xd455c;
var EXPECT_HEX = 'f048 2de9 10b0 8de2 08d0 4de2 0370 a0e1'.replace(/ /g, '');
var RUN_MS    = 30000;
var DUMP_MS   = 5000;
var SAMPLE    = 64;          /* 只采前 64 字节，绝不整块复制 */

var base = null, target = null, sym = null;
var listener = null, dumpTimer = null, stopTimer = null, stopped = false;

var calls = 0, tids = {}, lens = {}, readFail = 0, nullPtr = 0, hookEx = 0;
var firstDone = false;
var t0 = Date.now();

function hex(bytes) {
  var u = new Uint8Array(bytes), s = '';
  for (var i = 0; i < u.length; i++) s += (u[i] < 16 ? '0' : '') + u[i].toString(16);
  return s;
}

function dump(tag) {
  var sec = ((Date.now() - t0) / 1000).toFixed(1);
  var ids = Object.keys(tids);
  var lines = [];
  for (var i = 0; i < ids.length; i++) lines.push('      tid=' + ids[i] + ' calls=' + tids[ids[i]]);
  console.log('[' + tag + ' ' + sec + 's] calls=' + calls + ' threads=' + ids.length +
              ' lens=' + JSON.stringify(lens) + ' nullPtr=' + nullPtr +
              ' readFail=' + readFail + ' hookEx=' + hookEx);
  if (lines.length) console.log(lines.join('\n'));
}

function finish(reason) {
  if (stopped) return;
  stopped = true;
  try { dump('FINAL'); } catch (e) { }
  if (listener && typeof listener.detach === 'function') {
    try { listener.detach(); console.log('[i] listener detached'); } catch (e) { console.log('[!] detach: ' + e); }
  }
  listener = null;
  if (dumpTimer !== null) { try { clearInterval(dumpTimer); } catch (e) { } dumpTimer = null; }
  if (stopTimer !== null) { try { clearTimeout(stopTimer); } catch (e) { } stopTimer = null; }
  console.log('[i] probe finished (' + reason + ')');
}

function main() {
  base = Module.findBaseAddress(MOD);
  if (base === null) { console.log('[!] module not loaded'); return finish('no-module'); }
  console.log('[i] ' + MOD + ' base = ' + base + '  (0x' + base.toString(16) + ')');

  sym = Module.findExportByName(MOD, SYM);
  if (sym === null) {
    console.log('[!] export symbol missing: ' + SYM);
    return finish('no-symbol');
  }
  var symOff = sym.sub(base).toInt32();
  console.log('[i] dlsym(' + SYM + ') = ' + sym);
  console.log('[i] symbol offset = 0x' + symOff.toString(16) +
              '  vs target 0x' + OFF.toString(16) + ' match = ' + (symOff === OFF));

  target = base.add(OFF);
  console.log('[i] target runtime addr = ' + target);

  /* 运行时前 16 字节 vs 磁盘文件字节 */
  var gotHex = '';
  try {
    gotHex = hex(target.readByteArray(16));
    console.log('[i] runtime[16] = ' + gotHex);
    console.log('[i] diskfile[16] = ' + EXPECT_HEX);
    console.log('[i] bytes identical = ' + (gotHex === EXPECT_HEX));
  } catch (e) {
    console.log('[!] read target failed: ' + e);
    return finish('read-failed');
  }

  try {
    var ins = Instruction.parse(target);
    console.log('[i] first insn: ' + ins.mnemonic + ' ' + ins.opStr);
    var nxt = Instruction.parse(ins.next);
    console.log('[i] second insn: ' + nxt.mnemonic + ' ' + nxt.opStr);
  } catch (e) { console.log('[!] disasm failed: ' + e); }

  /* 只读 hook */
  try {
    listener = Interceptor.attach(target, {
      onEnter: function (args) {
        if (stopped) return;
        try {
          var tid = Process.getCurrentThreadId();
          tids[tid] = (tids[tid] || 0) + 1;
          calls++;
          var len = args[3].toInt32();
          lens[len] = (lens[len] || 0) + 1;
          if (args[2].isNull()) { nullPtr++; return; }

          if (!firstDone) {
            firstDone = true;
            var s = '';
            try {
              s = hex(args[2].readByteArray(SAMPLE));
            } catch (e) {
              readFail++;
              s = '<unreadable: ' + e + '>';
            }
            console.log('[FIRST] tid=' + tid +
                        ' r0(this)=' + args[0] + ' r1=' + args[1] +
                        ' r2(data)=' + args[2] + ' r3(len)=' + len);
            console.log('[FIRST] data[0..' + SAMPLE + ') = ' + s);
          }
        } catch (e) { hookEx++; }
      }
    });
  } catch (e) {
    console.log('[!] attach failed: ' + e);
    return finish('attach-failed');
  }

  console.log('[i] read-only hook installed, watching ' + (RUN_MS / 1000) + 's');
  dumpTimer = setInterval(function () { if (!stopped) dump('RUN'); }, DUMP_MS);
  stopTimer = setTimeout(function () { finish('timeout'); }, RUN_MS);
}

main();
