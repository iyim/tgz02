#!/usr/bin/env node
/*
 * probe_detach_test.js -- thread_probe.js 的"停止后不留 Hook"验证。
 *
 * 把 thread_probe.js 原样加载到假 Frida 环境里，检查四件事：
 *   P1 正常路径：30 秒到点 -> 打印 FINAL -> detach() 被调用 -> interval/timeout 全部清掉
 *   P2 重复触发不重复 detach（stopped 守卫）
 *   P3 安装失败（模块缺失 / 签名不符 / attach 抛异常）-> 不创建任何定时器，也不残留 Hook
 *   P4 Hook 期间的统计仍然正确（tid、次数、长度直方图）
 *
 * 纯本机 node 执行，不连设备、不连 frida-server、不 attach 任何进程。
 *
 *   node probe_detach_test.js
 */
'use strict';
const fs = require('fs');
const path = require('path');

const PROBE = path.join(__dirname, '..', 'thread_probe.js');
const SRC = fs.readFileSync(PROBE, 'utf8');

let pass = 0, fail = 0;
const failures = [];
function ok(c, name, d) {
  if (c) { pass++; console.log(`  ok   ${name}`); }
  else { fail++; failures.push(name + (d ? ' :: ' + d : '')); console.log(`  FAIL ${name}${d ? ' :: ' + d : ''}`); }
}
function eq(a, b, name) { ok(a === b, name, `got=${a} want=${b}`); }

/* ---- 假环境 ---- */
function makeEnv(opts) {
  const sig = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
               0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];
  if (opts.badSig) sig[3] = 0x00;

  const env = {
    logs: [], hooks: [], intervals: [], timeouts: [],
    cleared: { interval: 0, timeout: 0 },
    detach: 0, tid: 4242, attachThrows: !!opts.attachThrows
  };

  const feed = {
    sub: () => ({ toInt32: () => (opts.badOffset ? 0xdead : 0xd455c) }),
    readByteArray: () => Buffer.from(sig),
    toString: () => '0xfakefeed'
  };

  env.obj = {
    Module: {
      findBaseAddress: () => (opts.noModule ? null : {}),
      findExportByName: () => (opts.noSymbol ? null : feed)
    },
    Process: { getCurrentThreadId: () => env.tid },
    Interceptor: {
      attach(addr, cbs) {
        if (env.attachThrows) throw new Error('boom');
        env.hooks.push(cbs);
        return { detach() { env.detach++; } };
      }
    },
    console: { log: (s) => env.logs.push(String(s)) },
    setInterval: (fn) => { env.intervals.push(fn); return env.intervals.length; },
    setTimeout: (fn) => { env.timeouts.push(fn); return env.timeouts.length; },
    clearInterval: () => { env.cleared.interval++; },
    clearTimeout: () => { env.cleared.timeout++; }
  };
  return env;
}

function load(env) {
  const o = env.obj;
  const fn = new Function('Module', 'Process', 'Interceptor', 'console',
                          'setInterval', 'setTimeout', 'clearInterval', 'clearTimeout', SRC);
  fn(o.Module, o.Process, o.Interceptor, o.console,
     o.setInterval, o.setTimeout, o.clearInterval, o.clearTimeout);
  return env;
}

/* ---- P1 / P2 ---- */
console.log('[P1] 正常安装 -> 到点 FINAL -> detach + 清定时器');
{
  const env = load(makeEnv({}));
  eq(env.hooks.length, 1, '安装后 Hook 数量 = 1');
  eq(env.intervals.length, 1, '有 1 个统计 interval');
  eq(env.timeouts.length, 1, '有 1 个停止 timeout');

  /* 模拟两次 feed 调用 */
  const args = [{}, {}, {}, { toInt32: () => 5120 }];
  env.hooks[0].onEnter(args);
  env.tid = 4242;
  env.hooks[0].onEnter(args);
  ok(env.logs.some(l => /total=2/.test(l)) === false, '此时还没到 dump 时机（5 s 一次）');

  /* 到点：调用 timeout 回调 */
  env.timeouts[0]();
  eq(env.detach, 1, 'detach() 被调用 1 次');
  const finalLogs = env.logs.filter(l => /FINAL/.test(l));
  ok(finalLogs.length === 1, '打印了 1 次 FINAL');
  ok(env.logs.some(l => /total=2/.test(l)), 'FINAL 里 total=2');
  ok(env.logs.some(l => /观察窗口内仅发现 1 个 feed 调用线程/.test(l)), 'FINAL 只声明"窗口内 1 个线程"');
  ok(env.logs.some(l => /尚不能证明长期单生产者/.test(l)), 'FINAL 明确表示不能据此证明 SPSC 前提');
  eq(env.cleared.interval, 1, 'clearInterval 调用 1 次');
  eq(env.cleared.timeout, 1, 'clearTimeout 调用 1 次');

  /* P2：再触发一次不许重复 detach */
  env.timeouts[0]();
  eq(env.detach, 1, '重复触发不再 detach（stopped 守卫）');
  eq(env.cleared.interval, 1, '重复触发不再 clearInterval');

  /* 停止后 hook 回调也不应再计数 */
  const before = env.logs.length;
  env.hooks[0].onEnter(args);
  eq(env.logs.length, before, '停止后 onEnter 直接返回，不产生输出');
}

/* ---- P3 ---- */
console.log('\n[P3] 安装失败：不得残留 Hook，也不得留下定时器');
const failCases = [
  ['模块未加载', { noModule: true }],
  ['符号缺失', { noSymbol: true }],
  ['偏移不符', { badOffset: true }],
  ['机器码签名不符', { badSig: true }],
  ['attach 抛异常', { attachThrows: true }]
];
for (const [label, opt] of failCases) {
  const env = load(makeEnv(opt));
  eq(env.hooks.length, 0, `${label}: Hook 数量 = 0`);
  eq(env.intervals.length, 0, `${label}: 没有 interval`);
  eq(env.timeouts.length, 0, `${label}: 没有 timeout`);
  eq(env.detach, 0, `${label}: 没有可 detach 的 listener`);
  ok(env.logs.some(l => /probe stopped/.test(l)), `${label}: 打印了停止原因`);
}

/* ---- P4 ---- */
console.log('\n[P4] 统计口径：多线程 / 长度直方图');
{
  const env = load(makeEnv({}));
  const a = [{}, {}, {}, { toInt32: () => 5120 }];
  const b = [{}, {}, {}, { toInt32: () => 320 }];
  env.hooks[0].onEnter(a);
  env.hooks[0].onEnter(a);
  env.tid = 7777;
  env.hooks[0].onEnter(b);
  env.timeouts[0]();
  ok(env.logs.some(l => /threads=2/.test(l)), 'threads=2');
  ok(env.logs.some(l => /"5120":2/.test(l)), '长度直方图 5120 -> 2');
  ok(env.logs.some(l => /"320":1/.test(l)), '长度直方图 320 -> 1');
  ok(env.logs.some(l => /观察窗口内发现多个 feed 调用线程/.test(l)), '多线程时给出 MPSC 警告');
  eq(env.detach, 1, '多线程场景同样会 detach');
}

console.log(`\n=== ${pass} passed, ${fail} failed ===`);
if (fail) { console.log(failures.map(f => '  - ' + f).join('\n')); process.exit(1); }
