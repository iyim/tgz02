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
  opts = opts || {};
  const sig = [0xf0, 0x48, 0x2d, 0xe9, 0x10, 0xb0, 0x8d, 0xe2,
               0x08, 0xd0, 0x4d, 0xe2, 0x03, 0x70, 0xa0, 0xe1];
  if (opts.badSig) sig[3] = 0x00;

  const env = {
    logs: [], hooks: [], intervals: [], timeouts: [],
    cleared: { interval: 0, timeout: 0 },
    detach: 0, tid: 4242,
    attachThrows: !!opts.attachThrows,
    intervalCalls: 0, timeoutCalls: 0
  };

  const feed = {
    sub: () => ({ toInt32: () => (opts.badOffset ? 0xdead : 0xd455c) }),
    readByteArray: () => {
      if (opts.throwReadSig) throw new Error('read failed (injected)');
      return Buffer.from(sig);
    },
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
        if (opts.invalidListener === 'null') return null;
        if (opts.invalidListener === 'empty') return {};
        env.hooks.push(cbs);
        return { detach() { env.detach++; } };
      }
    },
    console: { log: (s) => env.logs.push(String(s)) },
    setInterval: (fn) => {
      env.intervalCalls++;
      if (opts.throwInterval === env.intervalCalls) throw new Error('interval fail (injected)');
      if (opts.nullInterval === env.intervalCalls) return null;
      env.intervals.push(fn);
      return env.intervals.length;
    },
    setTimeout: (fn) => {
      env.timeoutCalls++;
      if (opts.throwTimeout) throw new Error('timeout fail (injected)');
      if (opts.nullTimeout) return null;
      env.timeouts.push(fn);
      return env.timeouts.length;
    },
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

/* ---- P5：初始化失败路径（都不得残留 hook / 定时器） ---- */
function checkNoResidue(env, label) {
  eq(env.hooks.length, 0, `${label}: Hook 数量 = 0`);
  eq(env.intervals.length, 0, `${label}: 没有创建 interval`);
  eq(env.timeouts.length, 0, `${label}: 没有创建 timeout`);
  eq(env.detach, 0, `${label}: 没有可 detach 的 listener`);
  ok(env.logs.some(l => /probe stopped/.test(l)), `${label}: 走了统一 finish()`);
  eq((env.logs.filter(l => /probe stopped/.test(l))).length, 1, `${label}: finish 只执行一次`);
}

console.log('\n[P5.1] 机器码读取抛异常');
{
  const env = load(makeEnv({ throwReadSig: true }));
  ok(env.logs.some(l => /机器码读取失败/.test(l)), 'P5.1: 打印读取失败');
  ok(env.logs.some(l => /probe stopped \(sig-read-failed\)/.test(l)), 'P5.1: reason = sig-read-failed');
  checkNoResidue(env, 'P5.1');
}

console.log('\n[P5.2] attach 返回 null');
{
  const env = load(makeEnv({ invalidListener: 'null' }));
  ok(env.logs.some(l => /attach 返回无效 listener/.test(l)), 'P5.2: 打印无效 listener');
  ok(env.logs.some(l => /probe stopped \(invalid-listener\)/.test(l)), 'P5.2: reason = invalid-listener');
  checkNoResidue(env, 'P5.2');
}

console.log('\n[P5.3] attach 返回没有 detach 方法的对象');
{
  const env = load(makeEnv({ invalidListener: 'empty' }));
  ok(env.logs.some(l => /probe stopped \(invalid-listener\)/.test(l)), 'P5.3: reason = invalid-listener');
  checkNoResidue(env, 'P5.3');
}

console.log('\n[P5.4] setInterval 抛异常');
{
  const env = load(makeEnv({ throwInterval: 1 }));
  eq(env.detach, 1, 'P5.4: listener 已 detach 1 次');
  eq(env.cleared.interval, 0, 'P5.4: 没有 interval 需要清理');
  eq(env.cleared.timeout, 0, 'P5.4: 没有 timeout 需要清理');
  ok(env.logs.some(l => /probe stopped \(timer-setup-failed\)/.test(l)), 'P5.4: reason = timer-setup-failed');
}

console.log('\n[P5.5] setInterval 返回 null');
{
  const env = load(makeEnv({ nullInterval: 1 }));
  eq(env.detach, 1, 'P5.5: listener 已 detach 1 次');
  eq(env.timeouts.length, 0, 'P5.5: 没有创建 timeout');
  eq(env.cleared.timeout, 0, 'P5.5: 没有 timeout 需要清理');
  eq(env.cleared.interval, 0, 'P5.5: 没有残留 interval 需要清理');
  ok(env.logs.some(l => /probe stopped \(timer-setup-failed\)/.test(l)), 'P5.5: reason = timer-setup-failed');
}

console.log('\n[P5.6] setTimeout 抛异常');
{
  const env = load(makeEnv({ throwTimeout: true }));
  eq(env.detach, 1, 'P5.6: listener 已 detach 1 次');
  eq(env.cleared.interval, 1, 'P5.6: 已创建的 interval 被清理 1 次');
  eq(env.cleared.timeout, 0, 'P5.6: 没有 timeout 需要清理');
  ok(env.logs.some(l => /probe stopped \(timer-setup-failed\)/.test(l)), 'P5.6: reason = timer-setup-failed');
}

console.log('\n[P5.7] setTimeout 返回 null');
{
  const env = load(makeEnv({ nullTimeout: true }));
  eq(env.detach, 1, 'P5.7: listener 已 detach 1 次');
  eq(env.cleared.interval, 1, 'P5.7: 已创建的 interval 被清理 1 次');
  eq(env.cleared.timeout, 0, 'P5.7: 没有残留 timeout 需要清理');
  ok(env.logs.some(l => /probe stopped \(timer-setup-failed\)/.test(l)), 'P5.7: reason = timer-setup-failed');
}

console.log('\n[P5.8] 重复触发 finish：幂等');
{
  const env = load(makeEnv({}));
  eq(env.timeouts.length, 1, 'P5.8: 正常路径有 1 个 timeout');
  env.timeouts[0]();
  env.timeouts[0]();
  env.timeouts[0]();
  eq(env.detach, 1, 'P5.8: detach 不重复');
  eq(env.cleared.interval, 1, 'P5.8: clearInterval 不重复');
  eq(env.cleared.timeout, 1, 'P5.8: clearTimeout 不重复');
  eq((env.logs.filter(l => /probe stopped/.test(l))).length, 1, 'P5.8: probe stopped 只打印一次');

  /* 失败路径同样幂等：拿 timer-setup-failed 的环境再触发一次已完成状态 */
  const env2 = load(makeEnv({ throwTimeout: true }));
  eq((env2.logs.filter(l => /probe stopped/.test(l))).length, 1, 'P5.8: 失败路径 finish 也只执行一次');
  eq(env2.detach, 1, 'P5.8: 失败路径 detach 只 1 次');
}

console.log(`\n=== ${pass} passed, ${fail} failed ===`);
if (fail) { console.log(failures.map(f => '  - ' + f).join('\n')); process.exit(1); }
