'use strict';
/*
 * bindweak_probe.js -- 只在**电脑本机**进程里验证 Script.bindWeak 的 GC 语义。
 * 不 attach 任何目标、不装 Interceptor、不碰 TG-Z02。
 *
 * 目的：验证「用没有强引用的 {} 作为 bindWeak 的 target」会不会在脚本还在跑的时候
 * 就被 GC 回收并触发回调（也就是修订 2 里那个会误关 fd 的隐患）。
 */
var earlyA = 0;           // 临时对象（无强引用）被回收的次数
var earlyB = 0;           // 强引用对象被回收的次数（不该发生）
var KEEPER = { alive: true };

for (var i = 0; i < 64; i++) {
  (function () {
    var tmp = { i: i };
    Script.bindWeak(tmp, function () { earlyA++; });
    Script.bindWeak(KEEPER, function () { earlyB++; });
    tmp = null;
  })();
}

var junk = [];
var n = 0;
setInterval(function () {
  for (var k = 0; k < 20000; k++) junk.push({ a: k, s: 'x' + k });
  if (junk.length > 300000) junk = [];
  n++;
  if (n % 10 === 0) {
    send({ t: 'stat', n: n, earlyA: earlyA, earlyB: earlyB, heapMB: (junk.length * 40 / 1048576).toFixed(1) });
  }
}, 50);

send({ t: 'ready' });
