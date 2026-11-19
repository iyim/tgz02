'use strict';
/*
 * thread_probe.js -- 只读线程探针：验证 AGSpeechEngine::feed 是不是"单生产者"
 *
 * 目的：SPSC（无锁单生产者/单消费者）环的前提是**只有一个线程**调用 feed。
 *
 * 重要限定（修订 5）：本探针**只能观测一个时间窗口**。
 * 即使 30 秒窗口内只看到一个 tid，也**不能**据此宣布"SPSC 前提成立"——
 * 只能说"观察窗口内仅发现 1 个 feed 调用线程，尚不能证明长期单生产者"。
 * 真正的证明需要覆盖"静默 / 唤醒 / 识别会话 / 播放"等全部状态。
 *
 * 状态：**未在 TG-Z02 上运行**（本轮禁止）。属于 hook 操作，需按 03_pcm_bridge_final_review.md 的流程单独审核后执行。
 *
 * 硬约束：
 *   - 不读 PCM：完全不碰 args[2] 指向的内存，只读 args[3] 的整数
 *   - 不做 IPC：不建 socket、不写文件、不用 send()；只 console.log
 *   - 不改参数/返回值/寄存器/栈
 *   - 只统计：线程 ID、每线程调用次数、总调用数、长度直方图
 *   - 30 秒后 **必须自动 detach**，不留 Hook、不留定时器（本轮补充要求）
 *
 * 用法：
 *   frida -H 127.0.0.1:27042 -n com.alibaba.ailabs.genie.smartapp:core -l thread_probe.js
 */

var RUN_MS      = 30000;
var DUMP_MS     = 5000;
var F_OFF       = 0xd455c;
var SYM         = '_ZN14AGSpeechEngine4feedEjPKvi';
var SIG_BYTES   = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
                   0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];

var T0 = Date.now();
var total = 0;
var tids = {};          /* tid -> count */
var lens = {};          /* len -> count */
var firstSeen = {};     /* tid -> ms */
var lastSeen = {};      /* tid -> ms */
var exCount = 0;
var stopped = false;

/* 需要显式回收的三样东西：listener / interval / timeout */
var listener = null;
var dumpTimer = null;
var stopTimer = null;

function dump(tag) {
  var t = ((Date.now() - T0) / 1000).toFixed(1);
  var ids = Object.keys(tids);
  var lines = [];
  for (var i = 0; i < ids.length; i++) {
    var k = ids[i];
    lines.push('    tid=' + k + ' calls=' + tids[k] +
               ' first=' + firstSeen[k] + 'ms last=' + lastSeen[k] + 'ms');
  }
  console.log('[' + tag + ' ' + t + 's] total=' + total +
              ' threads=' + ids.length +
              ' lenses=' + JSON.stringify(lens) +
              ' exceptions=' + exCount);
  if (lines.length) console.log(lines.join('\n'));
}

function verdict() {
  var n = Object.keys(tids).length;
  if (n > 1) {
    console.log('[!!] 观察窗口内发现多个 feed 调用线程 -> SPSC 前提不成立，必须改 MPSC（或每线程独立环）');
  } else if (n === 1) {
    console.log('[??] 观察窗口内仅发现 1 个 feed 调用线程；尚不能证明长期单生产者，SPSC 前提仍需谨慎验证');
  } else {
    console.log('[..] 观察窗口内没有观测到任何 feed 调用：hook 没装上或该时段无音频');
  }
}

/* 唯一的收尾路径：打印 FINAL -> 摘掉 hook -> 清掉定时器 */
function finish(reason) {
  if (stopped) return;
  stopped = true;

  dump('FINAL');
  verdict();

  if (listener !== null) {
    try { listener.detach(); console.log('[i] Interceptor listener detached'); }
    catch (e) { console.log('[!] detach failed: ' + e); }
    listener = null;
  } else {
    console.log('[i] 没有安装 listener，无需 detach');
  }

  if (dumpTimer !== null) { try { clearInterval(dumpTimer); } catch (e) { } dumpTimer = null; }
  if (stopTimer !== null) { try { clearTimeout(stopTimer); } catch (e) { } stopTimer = null; }

  console.log('[i] probe stopped (' + reason + '), timers cleared, hook released');
}

/* ---- 三级闸门：符号 -> 偏移 -> 机器码。任一不符都不装 hook，也不留定时器 ---- */
function install() {
  var base = Module.findBaseAddress('libsmartbox.so');
  if (base === null) { console.log('[!] libsmartbox.so 未加载：进程不对？'); return finish('no-module'); }

  var feed = Module.findExportByName('libsmartbox.so', SYM);
  if (feed === null) { console.log('[!] 符号缺失: ' + SYM); return finish('no-symbol'); }

  var off = feed.sub(base).toInt32();
  if (off !== F_OFF) {
    console.log('[!] 偏移不符 期望=0x' + F_OFF.toString(16) + ' 实际=0x' + off.toString(16));
    return finish('offset-mismatch');
  }

  var pro = new Uint8Array(feed.readByteArray(16));
  for (var i = 0; i < 16; i++) {
    if (pro[i] !== SIG_BYTES[i]) { console.log('[!] 机器码签名不符 @' + i); return finish('sig-mismatch'); }
  }

  try {
    listener = Interceptor.attach(feed, {
      onEnter: function (args) {
        if (stopped) return;
        try {
          var tid = Process.getCurrentThreadId();
          var now = Date.now() - T0;
          if (!tids[tid]) firstSeen[tid] = now;
          tids[tid] = (tids[tid] || 0) + 1;
          lastSeen[tid] = now;
          total++;
          var n = args[3].toInt32();        /* 只读整数，不碰内存 */
          lens[n] = (lens[n] || 0) + 1;
        } catch (e) { exCount++; }
      }
    });
  } catch (e) {
    console.log('[!] attach 失败: ' + e);
    listener = null;
    return finish('attach-failed');
  }

  console.log('[i] probe installed @0x' + off.toString(16) + ' (' + feed + ')');
  console.log('[i] 只统计线程与长度，不读 PCM、不做 IPC；' + (RUN_MS / 1000) + ' 秒后自动 detach');

  dumpTimer = setInterval(function () { if (!stopped) dump('RUN'); }, DUMP_MS);
  stopTimer = setTimeout(function () { finish('timeout'); }, RUN_MS);
}

install();
