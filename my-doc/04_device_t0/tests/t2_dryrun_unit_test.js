#!/usr/bin/env node
'use strict';
/*
 * t2_dryrun_unit_test.js -- T2 脚本的本地逻辑测试（不连设备、不启动 Frida）
 *
 * 做法：把 my-doc/04_device_t0/t2_pcm_dryrun.js **原样**载入一套假 Frida 环境
 * （Module / Memory / Interceptor / NativeFunction / Process / setInterval / console），
 * 用假的 5120 字节源帧驱动真实的 onEnter，再用真实的 drain/finish 收尾。
 *
 * 覆盖：
 *   S1 正常：produced=consumed -> NO-AUTO-FAIL
 *   S2 结尾留 1 帧未消费：final drain 后 produced=consumed -> 正常
 *   S3 final drain 中途异常：pending>0 且 drainEx>0 -> AUTO-FAIL(pending-frames + drain-exception)
 *   S4 lenBad -> AUTO-FAIL(input-length)
 *   S5 nullPtr -> AUTO-FAIL(null-ptr)
 *   S6 reentry 计数规则（用文件内 VERDICT 段抽取的纯函数验证）
 *   S7 lane0 自检不一致 -> AUTO-FAIL(lane0-selfcheck)
 *   S8 finish 幂等：连续两次 stop() 不重复消费、不重复报告
 *   S9 verdictFromCounters 全部 13 条规则逐条验证
 *
 * 运行：node tests/t2_dryrun_unit_test.js
 */

const fs = require('fs');
const path = require('path');

const JS_PATH = path.join(__dirname, '..', 't2_pcm_dryrun.js');
const SRC = fs.readFileSync(JS_PATH, 'utf8');

let pass = 0, fail = 0;
const failures = [];
function ok(cond, name, detail) {
  if (cond) { pass++; console.log('  ok   ' + name); }
  else { fail++; failures.push(name + (detail ? ' :: ' + detail : '')); console.log('  FAIL ' + name + (detail ? ' :: ' + detail : '')); }
}
function eq(a, b, name) { ok(a === b, name, 'got=' + a + ' want=' + b); }

/* ---------------- 假内存 ---------------- */
const SPACE_SIZE = 4 * 1024 * 1024;
const spaceBuf = Buffer.alloc(SPACE_SIZE);
let allocTop = 0x1000;

class Ptr {
  constructor(off, value) { this.off = off; this.value = value === undefined ? 0 : value; this.isNullPtr = false; }
  add(n) { return new Ptr(this.off + n, this.value); }
  sub(o) { return { toInt32: () => 0xd455c }; }
  toInt32() { return this.value | 0; }
  isNull() { return this.isNullPtr; }
  readS16() {
    if (env.poisonReadS16 > 0) { env.poisonReadS16--; return 0x7fff; }
    return spaceBuf.readInt16LE(this.off);
  }
  writeS16(v) { spaceBuf.writeInt16LE(v | 0, this.off); }
  writeS32(v) { spaceBuf.writeInt32LE(v | 0, this.off); }
  readS32() { return spaceBuf.readInt32LE(this.off); }
  readByteArray(n) {
    const out = Buffer.alloc(n);
    spaceBuf.copy(out, 0, this.off, this.off + n);
    return out.buffer.slice(out.byteOffset, out.byteOffset + out.byteLength);   // ArrayBuffer，与 Frida 一致
  }
  toString() { return '0x' + this.off.toString(16); }
}

const env = {
  logs: [], hook: null, detached: 0,
  intervals: [], timeouts: [], clearedIntervals: 0, clearedTimeouts: 0,
  clockCalls: 0, throwClock: false, poisonReadS16: 0, poisonSelfCheck: false
};

function makeEnv() {
  const base = 0x1000;                       // 模块基址（假）
  const target = base + 0xd455c;
  const sig = Buffer.from('f0482de910b08de208d04de20370a0e1', 'hex');
  sig.copy(spaceBuf, target);

  return {
    Module: {
      findBaseAddress: () => new Ptr(base),
      findExportByName: () => new Ptr(target, 0),
      getExportByName: (m, name) => ({ __name: name })
    },
    Memory: {
      alloc(n) { const p = new Ptr(allocTop, 0); allocTop += ((n + 15) & ~15); return p; },
      copy(dst, src, n) { spaceBuf.copy(spaceBuf, dst.off, src.off, src.off + n); }
    },
    Interceptor: {
      attach(addr, cbs) { env.hook = cbs; return { detach() { env.detached++; } }; }
    },
    NativeFunction: function () {
      return function (clk, tsPtr) {
        env.clockCalls++;
        if (env.throwClock) throw new Error('injected clock failure');
        const ns = 1000000000 + env.clockCalls * 40000000;
        tsPtr.writeS32(Math.floor(ns / 1e9));
        tsPtr.add(4).writeS32(ns % 1e9);
        return 0;
      };
    },
    Process: { getCurrentThreadId: () => 4242 },
    setInterval: (fn) => { env.intervals.push(fn); return env.intervals.length; },
    clearInterval: () => { env.clearedIntervals++; },
    setTimeout: (fn) => { env.timeouts.push(fn); return env.timeouts.length; },
    clearTimeout: () => { env.clearedTimeouts++; },
    console: { log: (s) => env.logs.push(String(s)) }
  };
}

/* 载入被测脚本（原样执行） */
function load() {
  env.logs = []; env.hook = null; env.detached = 0;
  env.intervals = []; env.timeouts = []; env.clearedIntervals = 0; env.clearedTimeouts = 0;
  env.clockCalls = 0; env.throwClock = false; env.poisonReadS16 = 0;
  allocTop = 0x1000 + 0xd455c + 0x100;
  const o = makeEnv();
  const fn = new Function('Module', 'Memory', 'Interceptor', 'NativeFunction', 'Process',
                          'setInterval', 'clearInterval', 'setTimeout', 'clearTimeout', 'console', SRC);
  fn(o.Module, o.Memory, o.Interceptor, o.NativeFunction, o.Process,
     o.setInterval, o.clearInterval, o.setTimeout, o.clearTimeout, o.console);
  return fn;
}

/* 造一帧 4 通道交错数据（lane0 有可辨识的锯齿） */
function makeFrameBuffer(seed) {
  const off = allocTop; allocTop += 5120 + 16;
  for (let i = 0; i < 640; i++) {
    const v = (i + seed) % 300 - 150;
    spaceBuf.writeInt16LE(v, off + i * 8);              // lane0
    spaceBuf.writeInt16LE(-v, off + i * 8 + 2);         // lane1
    spaceBuf.writeInt16LE(-72, off + i * 8 + 4);        // lane2
    spaceBuf.writeInt16LE(-72, off + i * 8 + 6);        // lane3
  }
  return off;
}

function feed(n, opts) {
  opts = opts || {};
  let produced = 0;
  for (let k = 0; k < n; k++) {
    const srcOff = makeFrameBuffer(k);
    const src = new Ptr(srcOff);
    if (opts.nullPtr) src.isNullPtr = true;
    const lenPtr = new Ptr(0, opts.badLen ? 4096 : 5120);
    if (!env.hook) throw new Error('hook not installed');
    env.hook.onEnter([new Ptr(0, 0x90000000), new Ptr(0, 1), src, lenPtr]);
    produced++;
  }
  return produced;
}

function tick() { if (env.intervals[0]) env.intervals[0](); }
function lastLine(re) { for (let i = env.logs.length - 1; i >= 0; i--) if (re.test(env.logs[i])) return env.logs[i]; return ''; }

/* ---------------- 用真脚本跑场景 ---------------- */
function scenario(name, fn) { console.log('\n[' + name + ']'); fn(); }

function startScript(ms) {
  const loader = load();
  const mod = loader;                       // 只为保持引用
  const rpc = envLogsRpc();
  rpc.exports.setMode('blockcopy');
  const started = rpc.exports.start(ms || 1000);
  ok(started === true, 'start() 返回 true（地址校验通过）');
  return rpc;
}

/* 载入后把 rpc 暴露出来：脚本里 rpc.exports 是全局对象，需要单独注入 */
let injectedRpc = null;
function envLogsRpc() { return injectedRpc; }

/* 重新实现 load：注入 rpc 全局 */
function loadWithRpc() {
  env.logs = []; env.hook = null; env.detached = 0;
  env.intervals = []; env.timeouts = []; env.clearedIntervals = 0; env.clearedTimeouts = 0;
  env.clockCalls = 0; env.throwClock = false; env.poisonReadS16 = 0;
  allocTop = 0x1000 + 0xd455c + 0x100;
  const o = makeEnv();
  const rpc = { exports: null };
  const fn = new Function('Module', 'Memory', 'Interceptor', 'NativeFunction', 'Process',
                          'setInterval', 'clearInterval', 'setTimeout', 'clearTimeout', 'console', 'rpc', SRC);
  fn(o.Module, o.Memory, o.Interceptor, o.NativeFunction, o.Process,
     o.setInterval, o.clearInterval, o.setTimeout, o.clearTimeout, o.console, rpc);
  injectedRpc = rpc;
  return rpc;
}

/* ================= 场景 1：正常 ================= */
scenario('S1 normal: produced == consumed', () => {
  const rpc = loadWithRpc();
  ok(rpc.exports.setMode('blockcopy') === true, 'setMode(blockcopy) 接受');
  ok(rpc.exports.start(1000) === true, 'start 成功');
  feed(5);
  tick();
  const st = rpc.exports.stats();
  eq(st.produced, 5, 'produced=5');
  eq(st.consumed, 5, 'tick 后 consumed=5');
  const res = rpc.exports.stop();
  const fin = lastLine(/\[FINAL /);
  ok(/produced=5 consumed=5 pending=0/.test(fin), 'FINAL 行含 produced/consumed/pending=0', fin);
  const end = lastLine(/\[END\]/);
  ok(/verdict=NO-AUTO-FAIL/.test(end), '判定 NO-AUTO-FAIL', end);
  eq(env.detached, 1, 'listener 已 detach 一次');
});

/* ================= 场景 2：结尾留 1 帧，final drain 排空 ================= */
scenario('S2 one pending frame drained by finish()', () => {
  const rpc = loadWithRpc();
  rpc.exports.setMode('blockcopy');
  rpc.exports.start(1000);
  feed(5);
  tick();                    // 消费 5 帧
  feed(1);                   // 再有 1 帧入环，不 tick
  const before = rpc.exports.stats();
  eq(before.produced, 6, 'produced=6');
  eq(before.consumed, 5, 'tick 后 consumed=5（还剩 1 帧）');
  rpc.exports.stop();        // finish 内 final drain
  const fin = lastLine(/\[FINAL /);
  ok(/produced=6 consumed=6 pending=0/.test(fin), 'final drain 后 produced=6 consumed=6 pending=0', fin);
  ok(/final drain: pending_before=1 pending_after=0/.test(lastLine(/final drain:/)), 'final drain 报告 pending 1->0');
  ok(/verdict=NO-AUTO-FAIL/.test(lastLine(/\[END\]/)), '判定 NO-AUTO-FAIL');
});

/* ================= 场景 3：final drain 中途异常 -> pending>0 ================= */
scenario('S3 pending remains after final drain -> AUTO-FAIL', () => {
  const rpc = loadWithRpc();
  rpc.exports.setMode('blockcopy');
  rpc.exports.start(1000);
  feed(3);                   // 不 tick，全部留在环里
  env.throwClock = true;     // 让 drain 里 nowNs() 抛异常，循环在 idxHead++ 之前中断
  rpc.exports.stop();
  const fin = lastLine(/\[FINAL /);
  ok(/pending=[1-9]/.test(fin), 'FINAL 显示仍有 pending', fin);
  const end = lastLine(/\[END\]/);
  ok(/AUTO-FAIL/.test(end), '判定 AUTO-FAIL', end);
  ok(/drain-exception/.test(end), 'AUTO-FAIL 含 drain-exception', end);
  ok(/pending-frames/.test(end), 'AUTO-FAIL 含 pending-frames', end);
});

/* ================= 场景 4：lenBad ================= */
scenario('S4 lenBad -> AUTO-FAIL(input-length)', () => {
  const rpc = loadWithRpc();
  rpc.exports.setMode('blockcopy');
  rpc.exports.start(1000);
  feed(1);
  feed(1, { badLen: true });     // len=4096
  tick();
  rpc.exports.stop();
  const end = lastLine(/\[END\]/);
  ok(/AUTO-FAIL/.test(end) && /input-length/.test(end), '判定含 input-length', end);
  const fin = lastLine(/\[FINAL /);
  ok(/lenBad=1/.test(fin), 'FINAL 记录 lenBad=1', fin);
});

/* ================= 场景 5：nullPtr ================= */
scenario('S5 nullPtr -> AUTO-FAIL(null-ptr)', () => {
  const rpc = loadWithRpc();
  rpc.exports.setMode('blockcopy');
  rpc.exports.start(1000);
  feed(1);
  feed(1, { nullPtr: true });
  tick();
  rpc.exports.stop();
  const end = lastLine(/\[END\]/);
  ok(/AUTO-FAIL/.test(end) && /null-ptr/.test(end), '判定含 null-ptr', end);
  ok(/nullPtr=1/.test(lastLine(/\[FINAL /)), 'FINAL 记录 nullPtr=1');
});

/* ================= 场景 7：lane0 自检不一致 ================= */
scenario('S7 lane0 self-check mismatch -> AUTO-FAIL(lane0-selfcheck)', () => {
  const rpc = loadWithRpc();
  rpc.exports.setMode('blockcopy');
  rpc.exports.start(1000);
  feed(1);
  env.poisonReadS16 = 3;         // 自检里 3 个样本读错
  tick();
  rpc.exports.stop();
  const end = lastLine(/\[END\]/);
  ok(/AUTO-FAIL/.test(end) && /lane0-selfcheck/.test(end), '判定含 lane0-selfcheck', end);
  ok(/lane0_selfcheck=FAIL/.test(end), 'END 行标注自检 FAIL', end);
});

/* ================= 场景 8：finish 幂等 ================= */
scenario('S8 finish() idempotent', () => {
  const rpc = loadWithRpc();
  rpc.exports.setMode('blockcopy');
  rpc.exports.start(1000);
  feed(3);
  tick();
  rpc.exports.stop();
  const consumed1 = rpc.exports.stats().consumed;
  const finals1 = env.logs.filter(l => /\[FINAL /.test(l)).length;
  const ends1 = env.logs.filter(l => /\[END\]/.test(l)).length;
  rpc.exports.stop();
  rpc.exports.stop();
  eq(env.logs.filter(l => /\[FINAL /.test(l)).length, finals1, 'FINAL 只输出一次');
  eq(env.logs.filter(l => /\[END\]/.test(l)).length, ends1, 'END 只输出一次');
  eq(rpc.exports.stats().consumed, consumed1, '重复 stop 不重复消费');
  eq(env.detached, 1, '重复 stop 不重复 detach');
});

/* ================= 场景 6/9：verdictFromCounters 纯函数逐条规则 ================= */
console.log('\n[S6/S9] verdictFromCounters rules');
{
  const m = SRC.match(/\/\* VERDICT-BEGIN[\s\S]*?\*\/([\s\S]*?)\/\* VERDICT-END \*\//);
  ok(!!m, 'VERDICT-BEGIN/END 标记存在');
  const vfc = new Function(m[1] + '\nreturn verdictFromCounters;')();

  const base = {
    aborted: false, laneCheckMism: 0, laneCheckErr: 0, crcChecked: true, crcOk: true,
    lenErr: 0, lenBad: 0, nullPtr: 0, readErr: 0, hookEx: 0, drainEx: 0,
    seqGap: 0, ringDrop: 0, reentryHook: 0, reentryDrain: 0, produced: 10, consumed: 10
  };
  const mk = (patch) => Object.assign({}, base, patch);

  eq(vfc(mk({})), 'NO-AUTO-FAIL(review required)', '全部干净 -> NO-AUTO-FAIL');
  const rules = [
    ['address-check', { aborted: true }],
    ['lane0-selfcheck-not-run', { laneCheckMism: -1 }],
    ['lane0-selfcheck', { laneCheckMism: 2, laneCheckErr: 2 }],
    ['crc-algorithm', { crcChecked: true, crcOk: false }],
    ['payload-length', { lenErr: 1 }],
    ['input-length', { lenBad: 1 }],
    ['null-ptr', { nullPtr: 1 }],
    ['read', { readErr: 1 }],
    ['hook-exception', { hookEx: 1 }],
    ['drain-exception', { drainEx: 1 }],
    ['seq-gap', { seqGap: 1 }],
    ['ring-drop', { ringDrop: 1 }],
    ['reentry-hook', { reentryHook: 1 }],
    ['reentry-drain', { reentryDrain: 1 }],
    ['pending-frames', { produced: 10, consumed: 9 }]
  ];
  for (const [tag, patch] of rules) {
    const v = vfc(mk(patch));
    ok(v.indexOf(tag) >= 0 && v.indexOf('AUTO-FAIL') === 0, '规则 ' + tag + ' 触发', v);
  }
  eq(vfc(mk({ crcChecked: false, crcOk: false })), 'NO-AUTO-FAIL(review required)',
     '未运行算法校验不算失败（但报告会显示 not-run）');
}

console.log('\n=== ' + pass + ' passed, ' + fail + ' failed ===');
if (fail) { console.log(failures.map(f => '  - ' + f).join('\n')); process.exit(1); }
