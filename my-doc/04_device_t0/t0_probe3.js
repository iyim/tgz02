'use strict';
/*
 * t0_probe3.js -- T0 第三轮：单帧样本级比对（只读，一次性）
 *
 * 目的：
 *   - ch0 与 ch1 是否内容相同（同一支麦克风复制到两个通道？）
 *   - ch2 / ch3 是否恒为常数（DC 静音填充？）
 *   - 记录一帧的前 32 个 int16 样本，供报告引用
 * 只读一帧，读完立即 detach。
 */

var MOD = 'libsmartbox.so';
var OFF = 0xd455c;
var done = false;
var listener = null;

function main() {
  var base = Module.findBaseAddress(MOD);
  if (base === null) { console.log('[!] no module'); return; }
  var target = base.add(OFF);
  console.log('[i] base=' + base + ' target=' + target);

  listener = Interceptor.attach(target, {
    onEnter: function (args) {
      if (done) return;
      var len = args[3].toInt32();
      var p = args[2];
      if (len !== 5120 || p.isNull()) { console.log('[!] bad first frame len=' + len); return; }
      done = true;

      var buf = p.readByteArray(5120);
      var s = new Int16Array(buf);
      var n = 640, i;

      var d01 = 0, d02 = 0, d23 = 0;
      for (i = 0; i < n; i++) {
        var c0 = s[i * 4], c1 = s[i * 4 + 1], c2 = s[i * 4 + 2], c3 = s[i * 4 + 3];
        if (c0 !== c1) d01++;
        if (c0 !== c2) d02++;
        if (c2 !== c3) d23++;
      }

      var head = [];
      for (i = 0; i < 32; i++) head.push(s[i]);

      console.log('[ONE] tid=' + Process.getCurrentThreadId() + ' data=' + p + ' len=' + len);
      console.log('[ONE] first 32 int16 (4ch interleaved): ' + head.join(','));
      console.log('[ONE] ch0!=ch1 samples = ' + d01 + '/' + n);
      console.log('[ONE] ch0!=ch2 samples = ' + d02 + '/' + n);
      console.log('[ONE] ch2!=ch3 samples = ' + d23 + '/' + n);
      console.log('[ONE] ch2 first=' + s[2] + ' ch3 first=' + s[3] +
                  ' last ch2=' + s[(n - 1) * 4 + 2] + ' ch3=' + s[(n - 1) * 4 + 3]);

      try { listener.detach(); console.log('[i] listener detached'); } catch (e) { }
      listener = null;
      console.log('[i] probe3 finished');
    }
  });
  console.log('[i] waiting for first frame ...');
}

main();
