#!/usr/bin/env node
/*
 * crc_test.js -- JS side of the FNV-1a cross-check.
 *
 * It does NOT re-implement the hash: it extracts the FNV block out of
 * pcm_bridge_draft.js (between the FNV-BEGIN / FNV-END markers) and evaluates
 * exactly that source. So what gets tested is what ships.
 *
 * usage:
 *   node crc_test.js [cases.bin]           # uses Math.imul  (shipped code)
 *   node crc_test.js --naive [cases.bin]   # plain *  -> demonstrates precision loss
 *
 * output: idx \t len \t crc_hex \t name     (same format as crc_c)
 */
'use strict';
const fs = require('fs');
const path = require('path');

const args = process.argv.slice(2);
const naive = args.includes('--naive');
const casePath = args.filter(a => !a.startsWith('--'))[0] ||
  path.join(__dirname, 'cases.bin');
const bridgePath = path.join(__dirname, '..', 'pcm_bridge_draft.js');

/* ---- 1) 从发布文件里抽取 FNV 代码 ---- */
const src = fs.readFileSync(bridgePath, 'utf8');
const m = src.match(/\/\* FNV-BEGIN \*\/([\s\S]*?)\/\* FNV-END \*\//);
if (!m) {
  console.error('FATAL: FNV markers not found in ' + bridgePath);
  process.exit(2);
}
const fnvSrc = m[1];
let impl = new Function(fnvSrc + '\nreturn { fnvStep: fnvStep, fnv2: fnv2 };')();
if (naive) {
  /* 反面对照：把 Math.imul 换成普通乘法（这就是修订 2 的写法） */
  const naiveSrc = fnvSrc
    .replace('Math.imul(h ^ byte, 16777619) >>> 0', '((h ^ byte) * 16777619) >>> 0');
  if (naiveSrc === fnvSrc) {
    console.error('FATAL: could not build naive variant');
    process.exit(2);
  }
  impl = new Function(naiveSrc + '\nreturn { fnvStep: fnvStep, fnv2: fnv2 };')();
}

const FNV_BASIS = 2166136261;

function fnvBuffer(buf) {
  let h = FNV_BASIS >>> 0;
  let i = 0;
  for (; i + 1 < buf.length; i += 2) {
    const v = ((buf[i] | (buf[i + 1] << 8)) << 16) >> 16;   /* int16 LE */
    h = impl.fnv2(h, v);
  }
  if (i < buf.length) h = impl.fnvStep(h, buf[i]);
  return h >>> 0;
}

/* ---- 2) 读 cases.bin ---- */
const blob = fs.readFileSync(casePath);
if (blob.toString('latin1', 0, 8) !== 'TGZ2CRC1') {
  console.error('FATAL: bad magic in ' + casePath);
  process.exit(2);
}
let off = 8;
const count = blob.readUInt32LE(off); off += 4;
console.log(`JS side: ${naive ? 'NAIVE *' : 'Math.imul'} (extracted from ${path.basename(bridgePath)}), cases = ${count}`);

for (let i = 0; i < count; i++) {
  const nlen = blob.readUInt8(off); off += 1;
  const name = blob.toString('ascii', off, off + nlen); off += nlen;
  const dlen = blob.readUInt32LE(off); off += 4;
  const data = blob.subarray(off, off + dlen); off += dlen;
  const crc = fnvBuffer(data);
  console.log(`${i}\t${dlen}\t${crc.toString(16).padStart(8, '0')}\t${name}`);
}
