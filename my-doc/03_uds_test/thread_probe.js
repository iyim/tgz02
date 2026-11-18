'use strict';
/*
 * thread_probe.js -- 只读线程探针：验证 AGSpeechEngine::feed 是不是"单生产者"
 *
 * 目的：SPSC（无锁单生产者/单消费者）环的前提是**只有一个线程**调用 feed。
 *       第二阶段只证明了"数据从 AG-audio_record 线程流出来"，没有统计过调用线程数量。
 *       本探针专治这一条。
 *
 * 状态：**未在 TG-Z02 上运行**。属于 hook 操作，需按 03_pcm_bridge_review.md 的流程单独审核后执行。
 *
 * 硬约束（逐条对应 review 文档 §2）：
 *   - 不读 PCM：不碰 args[2] 指向的内存，只读 args[3] 的整数值（用于识别非法长度）
 *   - 不做 IPC：不建 socket、不写文件、不用 send()；只 console.log 聚合结果
 *   - 不改任何参数/返回值/寄存器/栈
 *   - 只统计：线程 ID、每线程调用次数、总调用数、长度直方图
 *   - 运行 ≤30 秒（由外部 killer 控制；脚本自身也在 30 秒后停止统计）
 *
 * 用法：
 *   frida -H 127.0.0.1:27042 -n com.alibaba.ailabs.genie.smartapp:core -l thread_probe.js
 *   超时自停：脚本内 30 s 后打印 FINAL 并只保留一个空转 interval（便于人工 Ctrl+C）
 */

var RUN_MS   = 30000;
var F_OFF    = 0xd455c;
var SYM      = '_ZN14AGSpeechEngine4feedEjPKvi';
var SIG_BYTES = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
                 0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];

var T0 = Date.now();
var total = 0;
var tids = {};          /* tid -> count */
var lens = {};          /* len -> count */
var firstSeen = {};     /* tid -> ms */
var lastSeen = {};      /* tid -> ms */
var exCount = 0;
var stopped = false;

/* ---- 三级闸门：符号 → 偏移 → 机器码 ---- */
var base = Module.findBaseAddress('libsmartbox.so');
if (base === null) {
  console.log('[!] libsmartbox.so 未加载：进程不对？');
} else {
  var feed = Module.findExportByName('libsmartbox.so', SYM);
  if (feed === null) {
    console.log('[!] 符号缺失: ' + SYM);
  } else {
    var off = feed.sub(base).toInt32();
    if (off !== F_OFF) {
      console.log('[!] 偏移不符 期望=0x' + F_OFF.toString(16) + ' 实际=0x' + off.toString(16));
    } else {
      var pro = new Uint8Array(feed.readByteArray(16));
      var ok = true;
      for (var i = 0; i < 16; i++) { if (pro[i] !== SIG_BYTES[i]) { ok = false; break; } }
      if (!ok) {
        console.log('[!] 机器码签名不符，拒绝安装探针');
      } else {
        Interceptor.attach(feed, {
          onEnter: function (args) {
            if (stopped) return;
            try {
              var tid = Process.getCurrentThreadId();
              var now = Date.now() - T0;
              if (!tids[tid]) { firstSeen[tid] = now; }
              tids[tid] = (tids[tid] || 0) + 1;
              lastSeen[tid] = now;
              total++;
              var n = args[3].toInt32();          /* 只读整数，不读内存 */
              lens[n] = (lens[n] || 0) + 1;
            } catch (e) { exCount++; }
          }
        });
        console.log('[i] probe installed @0x' + off.toString(16) + ' (' + feed + ')');
        console.log('[i] 只统计线程与长度，不读 PCM、不做 IPC；' + (RUN_MS / 1000) + ' 秒后自停');
      }
    }
  }
}

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
              ' lens=' + JSON.stringify(lens) +
              ' exceptions=' + exCount);
  if (lines.length) console.log(lines.join('\n'));
  if (ids.length > 1) {
    console.log('[!!] 检出多个生产者线程 -> SPSC 前提不成立，必须改 MPSC');
  } else if (ids.length === 1) {
    console.log('[ok] 只有 1 个生产者线程 -> SPSC 前提成立');
  }
}

setInterval(function () { if (!stopped) dump('RUN'); }, 5000);

setTimeout(function () {
  stopped = true;
  dump('FINAL');
  console.log('[i] 探针已停止统计（脚本仍在，可 Ctrl+C 退出）');
}, RUN_MS);
