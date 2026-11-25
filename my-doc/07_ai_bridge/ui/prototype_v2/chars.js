/* =============================================================================
 * chars.js -- TG-Z02 原创智能伙伴「布丁 PUDDIN」(T9-UI-01-V2)
 *
 * 原创角色：圆滚滚的桌面小机器人。造型要素（全部几何绘制，无第三方素材）：
 *   · 果冻感圆方身体（蓝→紫的柔和渐变）
 *   · 大椭圆脸部面板 + 大眼睛 + 腮红
 *   · 头顶一根天线，天线球随状态发光/变色
 *   · 短手短脚；手臂角度随状态变化
 *
 * 本文件是角色的唯一事实来源：
 *   · 原型 app2.js 通过 char(state) 内嵌渲染
 *   · shoot2.ps1 通过 ?asset=char 导出 PNG（assets_v2/character/）
 *   · APK 落地按 ASSETS.md 的目录使用导出的 PNG
 *
 * states: idle awake listening thinking speaking happy confused sleep error
 * ========================================================================== */

/* 品牌色（角色本体） */
const C_BODY1 = '#5FA8FF';   // 身体渐变顶部
const C_BODY2 = '#7E6BFF';   // 身体渐变底部
const C_FACE  = '#F4F8FF';   // 脸部面板
const C_DARK  = '#2A3550';   // 眼睛/线条
const C_BLUSH = '#FFB7C9';   // 腮红
const C_BELLY = '#FFFFFF';
const C_STAR  = '#FFD166';   // 天线球 / 点缀

/* 单个眼睛：r=虹膜半径, py=瞳孔纵向偏移, closed=眯眼 */
function eye(cx, cy, r, py, closed, big) {
  if (closed) {
    return `<path d="M ${cx - r} ${cy + 1} q ${r} ${r * 0.9} ${r * 2} 0" fill="none"
      stroke="${C_DARK}" stroke-width="5" stroke-linecap="round"/>`;
  }
  const pr = big ? r * 0.62 : r * 0.55;
  return `<g>
    <circle cx="${cx}" cy="${cy}" r="${r}" fill="#FFFFFF" stroke="${C_DARK}" stroke-width="3.5"/>
    <circle cx="${cx}" cy="${cy + py}" r="${pr}" fill="${C_DARK}"/>
    <circle cx="${cx + pr * 0.4}" cy="${cy + py - pr * 0.45}" r="${pr * 0.34}" fill="#FFFFFF"/>
  </g>`;
}

/* 嘴型：smile / open / oo / flat / sad / wave(说话) */
function mouth(kind, cx, cy) {
  const s = `stroke="${C_DARK}" stroke-width="5" stroke-linecap="round" fill="none"`;
  switch (kind) {
    case 'smile': return `<path d="M ${cx - 22} ${cy} q 22 20 44 0" ${s}/>`;
    case 'grin':  return `<path d="M ${cx - 26} ${cy - 4} q 26 30 52 0 q -26 12 -52 0"
      fill="${C_DARK}" opacity="0.9"/>`;
    case 'open':  return `<ellipse cx="${cx}" cy="${cy + 6}" rx="14" ry="17" fill="${C_DARK}"/>
      <ellipse cx="${cx}" cy="${cy + 12}" rx="8" ry="7" fill="#FF8BA0"/>`;
    case 'oo':    return `<circle cx="${cx}" cy="${cy + 6}" r="9" fill="none" ${s}/>`;
    case 'flat':  return `<line x1="${cx - 16}" y1="${cy + 5}" x2="${cx + 16}" y2="${cy + 5}" ${s}/>`;
    case 'sad':   return `<path d="M ${cx - 18} ${cy + 8} q 18 -14 36 0" ${s}/>`;
    case 'wave':  return `<path d="M ${cx - 20} ${cy + 2} q 10 14 20 0 q 10 -14 20 0" ${s}/>`;
  }
  return '';
}

/* 附加层：声波 / 思考泡 / zzz / 汗滴 / 感叹号 / 音符 */
function extra(kind) {
  const st = `stroke="${C_DARK}" stroke-width="5" stroke-linecap="round" fill="none"`;
  const yel = `stroke="#FFB020" stroke-width="6" stroke-linecap="round" fill="none"`;
  switch (kind) {
    case 'waves': return `<g opacity="0.9">
      <path d="M 66 168 q -16 22 0 44" ${st}/>
      <path d="M 44 158 q -26 32 0 64" ${st} opacity="0.55"/></g>`;
    case 'think': return `<g>
      <circle cx="316" cy="118" r="10" fill="#FFFFFF" stroke="${C_DARK}" stroke-width="3.5"/>
      <circle cx="338" cy="94" r="14" fill="#FFFFFF" stroke="${C_DARK}" stroke-width="3.5"/>
      <circle cx="366" cy="66" r="20" fill="#FFFFFF" stroke="${C_DARK}" stroke-width="3.5"/>
      <circle cx="360" cy="60" r="6" fill="${C_STAR}"/>
      <circle cx="374" cy="72" r="4" fill="${C_BLUSH}"/></g>`;
    case 'zzz': return `<g fill="${C_DARK}" font-family="Arial" font-weight="bold">
      <text x="318" y="96" font-size="30">z</text>
      <text x="342" y="72" font-size="24">z</text>
      <text x="364" y="52" font-size="18">z</text></g>`;
    case 'sweat': return `<path d="M 330 96 q 12 20 0 32 q -12 -12 0 -32" fill="#7ECBFF" stroke="#4C8DFF" stroke-width="3"/>`;
    case 'alert': return `<g>
      <circle cx="340" cy="86" r="24" fill="#FF5D5D"/>
      <line x1="340" y1="74" x2="340" y2="90" stroke="#FFFFFF" stroke-width="6" stroke-linecap="round"/>
      <circle cx="340" cy="99" r="4" fill="#FFFFFF"/></g>`;
    case 'notes': return `<g fill="${C_DARK}">
      <circle cx="322" cy="128" r="9"/><rect x="328" y="96" width="5" height="32" rx="2"/>
      <circle cx="356" cy="112" r="9"/><rect x="362" y="80" width="5" height="32" rx="2"/>
      <path d="M 333 96 q 14 -10 29 -16" ${st}/></g>`;
    case 'spark': return `<g fill="${C_STAR}">
      <path d="M 330 76 l 6 14 14 6 -14 6 -6 14 -6 -14 -14 -6 14 -6 z"/>
      <path d="M 300 108 l 4 9 9 4 -9 4 -4 9 -4 -9 -9 -4 9 -4 z" opacity="0.8"/></g>`;
  }
  return '';
}

/* 手臂角度（度）：-20 = 举起来 */
const ARM = {
  idle: [-8, 8], awake: [-28, 28], listening: [-46, 10], thinking: [-10, -34],
  speaking: [-18, 18], happy: [-52, 52], confused: [4, 30], sleep: [0, 0], error: [-4, -4]
};

/* 状态表：眼/嘴/天线色/附加层/身体微倾 */
const STATES = {
  idle:      { eyeL: [0, 0], eyeR: [0, 0], mouth: 'smile', ball: C_STAR,  ex: null,      tilt: 0 },
  awake:     { eyeL: [0, 0, 0, 1], eyeR: [0, 0, 0, 1], mouth: 'oo', ball: '#FF9F43', ex: 'spark',  tilt: -3 },
  listening: { eyeL: [0, -4], eyeR: [0, 0], mouth: 'flat', ball: '#31D0B4', ex: 'waves',  tilt: -6 },
  thinking:  { eyeL: [0, -6], eyeR: [0, -6], mouth: 'flat', ball: '#FFB020', ex: 'think',  tilt: 4 },
  speaking:  { eyeL: [0, 0], eyeR: [0, 0], mouth: 'wave', ball: '#3ECF8E', ex: null,     tilt: 0 },
  happy:     { eyeL: [0, 0, 1], eyeR: [0, 0, 1], mouth: 'grin', ball: '#FF6B9A', ex: null,   tilt: 0 },
  confused:  { eyeL: [4, 0, 0, 0, 0, 1], eyeR: [0, 0], mouth: 'sad', ball: '#B08BFF', ex: null, tilt: -8 },
  sleep:     { eyeL: [0, 0, 1], eyeR: [0, 0, 1], mouth: 'flat', ball: '#8FA0BC', ex: 'zzz',   tilt: 0 },
  error:     { eyeL: [0, 4], eyeR: [0, 4], mouth: 'sad', ball: '#FF5D5D', ex: 'alert',  tilt: 0 }
};

/* 语音链路状态 → 角色状态 的映射（首页九状态使用） */
const HOME_STATE = {
  standby: 'idle', wake: 'awake', listening: 'listening', asr: 'thinking',
  thinking: 'thinking', speaking: 'speaking', stopped: 'sleep',
  cont: 'happy', error: 'error'
};

/**
 * 输出角色 SVG。size = 渲染边长（正方形画布 400x400 视图）。
 * 每个状态由 眼睛 + 嘴 + 天线球颜色 + 附加层 + 手臂角度 + 身体倾角 决定。
 */
function char(state, size) {
  const s = STATES[state] || STATES.idle;
  const [la, ra] = ARM[state] || ARM.idle;
  const tilt = s.tilt || 0;
  const eyeR2 = s.eyeR || [0, 0];
  const L = s.eyeL;

  const arm = (x, ang) => `
    <g transform="rotate(${ang} ${x} 250)">
      <rect x="${x - 16}" y="238" width="32" height="74" rx="16" fill="url(#gBody)" stroke="#4A5880" stroke-width="3"/>
    </g>`;

  return `<svg width="${size}" height="${size}" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg">
  <defs>
    <linearGradient id="gBody" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0" stop-color="${C_BODY1}"/><stop offset="1" stop-color="${C_BODY2}"/>
    </linearGradient>
    <radialGradient id="gGlow">
      <stop offset="0" stop-color="${s.ball}" stop-opacity="0.85"/>
      <stop offset="1" stop-color="${s.ball}" stop-opacity="0"/>
    </radialGradient>
  </defs>

  <g transform="rotate(${tilt} 200 260)">
    <!-- 地面阴影 -->
    <ellipse cx="200" cy="356" rx="110" ry="18" fill="#2A3550" opacity="0.10"/>

    <!-- 天线 -->
    <line x1="200" y1="92" x2="200" y2="46" stroke="#4A5880" stroke-width="7" stroke-linecap="round"/>
    <circle cx="200" cy="34" r="34" fill="url(#gGlow)"/>
    <circle cx="200" cy="34" r="14" fill="${s.ball}" stroke="#4A5880" stroke-width="3.5"/>

    <!-- 手臂（画在身体后面） -->
    ${arm(58, ra)} ${arm(342, la)}

    <!-- 脚 -->
    <ellipse cx="150" cy="344" rx="34" ry="15" fill="#4A5880"/>
    <ellipse cx="250" cy="344" rx="34" ry="15" fill="#4A5880"/>

    <!-- 身体 -->
    <rect x="76" y="88" width="248" height="252" rx="112" fill="url(#gBody)" stroke="#4A5880" stroke-width="4"/>

    <!-- 肚皮面板 -->
    <rect x="126" y="212" width="148" height="96" rx="34" fill="${C_BELLY}" opacity="0.92"/>
    <circle cx="152" cy="240" r="6" fill="${C_STAR}"/>
    <circle cx="248" cy="240" r="6" fill="${C_BLUSH}"/>
    <rect x="146" y="262" width="108" height="12" rx="6" fill="#E3EAF6"/>
    <rect x="164" y="282" width="72" height="10" rx="5" fill="#EDF1F9"/>

    <!-- 脸部面板 -->
    <rect x="106" y="112" width="188" height="112" rx="52" fill="${C_FACE}"/>
    ${eye(152, 158, 26, (L[1] || 0), L[2] === 1, L[5] === 1)}
    ${eye(248, 158, 26, (eyeR2[1] || 0), eyeR2[2] === 1, eyeR2[5] === 1)}
    <circle cx="124" cy="192" r="13" fill="${C_BLUSH}" opacity="0.85"/>
    <circle cx="276" cy="192" r="13" fill="${C_BLUSH}" opacity="0.85"/>
    ${mouth(s.mouth, 200, 186)}
  </g>

  ${s.ex ? extra(s.ex) : ''}
</svg>`;
}
