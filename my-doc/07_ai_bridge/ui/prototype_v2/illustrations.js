/* =============================================================================
 * illustrations.js -- 技能中心插画（T9-UI-01-V2）
 *
 * 绘本式扁平插画风，与角色同一笔触：圆角形状 + #3A4A6B 描边 + 柔和渐变底。
 * 每张插画 800x600 视图（导出 PNG 800x600，技能卡片按比例缩放）。
 * 唯一事实来源：原型内嵌渲染 + shoot2.ps1 导出 PNG。
 * 每张插画用独立渐变 id（ilbg_<uid>），保证同页多张插画不互相覆盖。
 *
 * 注意：本文件必须用 UTF-8 编辑器（write/edit 工具或 VS Code）维护，
 * 不要用 PowerShell 5.1 的 Get-Content/Set-Content 做字符串替换（会毁掉中文与结构）。
 * ========================================================================== */

const IL_STROKE = '#3A4A6B';

function ilBase(bg1, bg2, uid) {
  const g = 'ilbg_' + (uid || 'x');
  return `<defs>
    <linearGradient id="${g}" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0" stop-color="${bg1}"/><stop offset="1" stop-color="${bg2}"/>
    </linearGradient>
  </defs>
  <rect x="0" y="0" width="800" height="600" rx="48" fill="url(#${g})"/>`;
}

const sparkle = (x, y, s, c) => `
  <path d="M ${x} ${y - s} q ${s * 0.22} ${s * 0.78} ${s} ${s} q ${-s * 0.78} ${s * 0.22} ${-s} ${s}
           q ${-s * 0.22} ${-s * 0.78} ${-s} ${-s} q ${s * 0.78} ${-s * 0.22} ${s} ${-s} z"
        fill="${c || '#FFD166'}"/>`;

/* ------------------------------------------------------------------ 闹钟 */
function ilAlarm() {
  const s = `stroke="${IL_STROKE}" stroke-width="7" stroke-linecap="round" fill="none"`;
  return `<svg width="800" height="600" viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg">
  ${ilBase('#FFF0D2', '#FFD9A0', 'alarm')}
  ${sparkle(660, 120, 26)} ${sparkle(120, 470, 18, '#FF9F43')} ${sparkle(700, 430, 14, '#FFFFFF')}

  <circle cx="278" cy="176" r="26" fill="#FF7B54" stroke="${IL_STROKE}" stroke-width="7"/>
  <circle cx="522" cy="176" r="26" fill="#FF7B54" stroke="${IL_STROKE}" stroke-width="7"/>
  <line x1="300" y1="196" x2="340" y2="222" ${s}/>
  <line x1="500" y1="196" x2="460" y2="222" ${s}/>

  <circle cx="400" cy="330" r="180" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
  <circle cx="400" cy="330" r="150" fill="#FFF7EC"/>

  ${[0, 90, 180, 270].map(a => `<line x1="400" y1="196" x2="400" y2="216"
      transform="rotate(${a} 400 330)" ${s} opacity="0.55"/>`).join('')}

  <line x1="400" y1="330" x2="400" y2="228" ${s} stroke-width="10"/>
  <line x1="400" y1="330" x2="472" y2="372" ${s} stroke-width="10"/>
  <circle cx="400" cy="330" r="16" fill="${IL_STROKE}"/>

  <circle cx="330" cy="286" r="20" fill="#2A3550"/>
  <circle cx="336" cy="278" r="7" fill="#FFF"/>
  <circle cx="470" cy="286" r="20" fill="#2A3550"/>
  <circle cx="476" cy="278" r="7" fill="#FFF"/>
  <path d="M 356 336 q 20 18 44 0" stroke="#2A3550" stroke-width="7" fill="none" stroke-linecap="round"/>
  <circle cx="306" cy="322" r="14" fill="#FFB7C9" opacity="0.9"/>
  <circle cx="494" cy="322" r="14" fill="#FFB7C9" opacity="0.9"/>

  <line x1="300" y1="492" x2="272" y2="524" ${s} stroke-width="10"/>
  <line x1="500" y1="492" x2="528" y2="524" ${s} stroke-width="10"/>

  <g opacity="0.9">
    <ellipse cx="128" cy="150" rx="56" ry="30" fill="#FFFFFF"/>
    <ellipse cx="172" cy="138" rx="44" ry="26" fill="#FFFFFF"/>
    <circle cx="676" cy="500" r="44" fill="#FFD166" stroke="${IL_STROKE}" stroke-width="7"/>
    <g stroke="${IL_STROKE}" stroke-width="6" stroke-linecap="round">
      <line x1="676" y1="436" x2="676" y2="416"/><line x1="676" y1="564" x2="676" y2="584"/>
      <line x1="612" y1="500" x2="592" y2="500"/><line x1="740" y1="500" x2="760" y2="500"/>
    </g>
  </g>
</svg>`;
}

/* ------------------------------------------------------------------ 日程 */
function ilCalendar() {
  const s = `stroke="${IL_STROKE}" stroke-width="7" stroke-linecap="round" fill="none"`;
  return `<svg width="800" height="600" viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg">
  ${ilBase('#DDEBFF', '#AFCFFF', 'cal')}
  ${sparkle(672, 130, 24, '#FFB7C9')} ${sparkle(130, 460, 18, '#FFFFFF')} ${sparkle(710, 470, 14)}

  <rect x="180" y="130" width="440" height="380" rx="44" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
  <rect x="180" y="130" width="440" height="110" rx="44" fill="#5FA8FF"/>
  <rect x="180" y="196" width="440" height="44" fill="#5FA8FF"/>
  <rect x="180" y="236" width="440" height="10" fill="#3A4A6B" opacity="0.12"/>

  <rect x="268" y="104" width="18" height="56" rx="9" fill="#FFD166" stroke="${IL_STROKE}" stroke-width="6"/>
  <rect x="514" y="104" width="18" height="56" rx="9" fill="#FFD166" stroke="${IL_STROKE}" stroke-width="6"/>

  <rect x="330" y="180" width="140" height="30" rx="15" fill="#FFFFFF" opacity="0.85"/>
  ${[0,1,2,3].map(r => [0,1,2,3].map(c =>
    `<rect x="${228 + c * 94}" y="${286 + r * 68}" width="66" height="46" rx="14"
       fill="#F0F5FF"/>`).join('')).join('')}

  <rect x="228" y="286" width="160" height="46" rx="14" fill="#FFD166"/>
  <rect x="322" y="354" width="132" height="46" rx="14" fill="#7ECBFF"/>
  <rect x="228" y="422" width="98" height="46" rx="14" fill="#FFB7C9"/>

  <circle cx="512" cy="309" r="40" fill="none" stroke="#FF5D5D" stroke-width="8"/>

  <g transform="rotate(24 640 420)">
    <rect x="600" y="330" width="34" height="150" rx="8" fill="#FFB020" stroke="${IL_STROKE}" stroke-width="7"/>
    <path d="M 600 480 h 34 l -17 42 z" fill="#FFE1B3" stroke="${IL_STROKE}" stroke-width="7"/>
    <rect x="600" y="306" width="34" height="26" rx="8" fill="#FF7BAC" stroke="${IL_STROKE}" stroke-width="7"/>
  </g>

  <line x1="96" y1="180" x2="96" y2="300" ${s} stroke-width="9"/>
  <path d="M 96 180 h 84 l -24 34 24 34 h -84 z" fill="#FF5D5D" stroke="${IL_STROKE}" stroke-width="7"/>
</svg>`;
}

/* ------------------------------------------------------------------ 音乐 */
function ilMusic() {
  const s = `stroke="${IL_STROKE}" stroke-width="7" stroke-linecap="round" fill="none"`;
  return `<svg width="800" height="600" viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg">
  ${ilBase('#EADCFF', '#BFA6FF', 'music')}
  ${sparkle(660, 140, 26)} ${sparkle(120, 150, 18, '#FFFFFF')} ${sparkle(150, 460, 16)}

  <g>
    <ellipse cx="330" cy="420" rx="74" ry="58" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
    <rect x="392" y="180" width="22" height="240" rx="11" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
    <path d="M 403 180 q 90 -18 130 -12 l 0 44 q -60 -12 -130 8 z" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
    <circle cx="306" cy="404" r="16" fill="#2A3550"/><circle cx="312" cy="396" r="6" fill="#FFF"/>
    <circle cx="366" cy="404" r="16" fill="#2A3550"/><circle cx="372" cy="396" r="6" fill="#FFF"/>
    <path d="M 316 444 q 22 20 44 0" stroke="#2A3550" stroke-width="7" fill="none" stroke-linecap="round"/>
    <circle cx="284" cy="434" r="12" fill="#FFB7C9"/><circle cx="392" cy="434" r="12" fill="#FFB7C9"/>
  </g>

  <path d="M 470 300 q 26 60 0 120" ${s} stroke-width="9"/>
  <path d="M 530 270 q 44 90 0 180" ${s} stroke-width="9" opacity="0.65"/>
  <path d="M 590 240 q 60 120 0 240" ${s} stroke-width="9" opacity="0.4"/>

  <g fill="#7E6BFF">
    <circle cx="180" cy="300" r="16"/><rect x="192" y="216" width="10" height="86" rx="5"/>
    <path d="M 202 216 q 34 -8 52 0 l 0 26 q -26 -10 -52 -2 z"/>
  </g>
  <g fill="#FF7BAC">
    <circle cx="620" cy="180" r="13"/><rect x="630" y="112" width="8" height="70" rx="4"/>
  </g>

  <g transform="translate(180 470)">
    ${[0,1,2,3,4,5,6].map(i => `<rect x="${i * 58}" y="0" width="52" height="110" rx="12"
        fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="7"/>`).join('')}
    ${[0,1,3,4,5].map(i => `<rect x="${44 + i * 58}" y="0" width="30" height="66" rx="8"
        fill="#2A3550"/>`).join('')}
  </g>
</svg>`;
}

/* ------------------------------------------------------------------ 天气（待接入占位） */
function ilWeather() {
  const s = `stroke="${IL_STROKE}" stroke-width="7" stroke-linecap="round" fill="none"`;
  return `<svg width="800" height="600" viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg">
  ${ilBase('#CFE9FF', '#9ECBEE', 'wea')}
  ${sparkle(660, 130, 22)}
  <g>
    <circle cx="330" cy="240" r="86" fill="#FFD166" stroke="${IL_STROKE}" stroke-width="8"/>
    <g stroke="${IL_STROKE}" stroke-width="7" stroke-linecap="round">
      <line x1="330" y1="128" x2="330" y2="96"/><line x1="330" y1="352" x2="330" y2="384"/>
      <line x1="218" y1="240" x2="186" y2="240"/><line x1="442" y1="240" x2="474" y2="240"/>
      <line x1="252" y1="162" x2="230" y2="140"/><line x1="408" y1="318" x2="430" y2="340"/>
      <line x1="408" y1="162" x2="430" y2="140"/><line x1="252" y1="318" x2="230" y2="340"/>
    </g>
    <ellipse cx="470" cy="380" rx="120" ry="62" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
    <ellipse cx="382" cy="366" rx="70" ry="48" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
    <ellipse cx="560" cy="366" rx="64" ry="44" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
    <line x1="420" y1="470" x2="404" y2="512" ${s} stroke-width="9"/>
    <line x1="490" y1="470" x2="474" y2="512" ${s} stroke-width="9"/>
    <line x1="560" y1="470" x2="544" y2="512" ${s} stroke-width="9" opacity="0.6"/>
  </g>
</svg>`;
}

/* ------------------------------------------------------------------ 设备控制（规划中占位） */
function ilDevice() {
  const s = `stroke="${IL_STROKE}" stroke-width="8" stroke-linecap="round"`;
  return `<svg width="800" height="600" viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg">
  ${ilBase('#E4E9F2', '#BFC8D9', 'dev')}
  <rect x="300" y="150" width="200" height="200" rx="40" fill="#FFFFFF"
        stroke="${IL_STROKE}" stroke-width="8"/>
  ${[0,1,2].map(r => [0,1].map(c =>
    `<circle cx="${352 + c * 96}" cy="${212 + r * 44}" r="14" fill="#D6DEEA"/>`).join('')).join('')}
  ${[-1,1].map(dx => `<line x1="${400 + dx * 150}" y1="190" x2="${400 + dx * 190}" y2="190"
      ${s}/>`).join('')}
  ${[-1,1].map(dx => `<line x1="${400 + dx * 150}" y1="250" x2="${400 + dx * 190}" y2="250"
      ${s}/>`).join('')}
  ${[-1,1].map(dx => `<line x1="${400 + dx * 150}" y1="310" x2="${400 + dx * 190}" y2="310"
      ${s}/>`).join('')}
</svg>`;
}

/* ------------------------------------------------------------------ 记忆中心头图 */
function ilMemory() {
  const s = `stroke="${IL_STROKE}" stroke-width="7" stroke-linecap="round" fill="none"`;
  return `<svg width="800" height="600" viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg">
  ${ilBase('#FFE4EC', '#FFC2D4', 'mem')}
  ${sparkle(660, 140, 24, '#FFFFFF')} ${sparkle(140, 160, 18)}
  <rect x="240" y="220" width="320" height="220" rx="40" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
  <rect x="240" y="220" width="320" height="70" rx="40" fill="#FF8FB0"/>
  <rect x="240" y="254" width="320" height="36" fill="#FF8FB0"/>
  <rect x="368" y="176" width="64" height="52" rx="12" fill="#FFD166" stroke="${IL_STROKE}" stroke-width="7"/>
  <circle cx="212" cy="180" r="40" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="7"/>
  <circle cx="164" cy="238" r="18" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="6"/>
  <path d="M 196 172 q 14 -10 30 -4" ${s}/>
  ${sparkle(560, 210, 16, '#7E6BFF')}
  <path d="M 590 400 l 12 26 28 4 -20 20 5 28 -25 -13 -25 13 5 -28 -20 -20 28 -4 z"
        fill="#FFD166" stroke="${IL_STROKE}" stroke-width="6"/>
</svg>`;
}

/* ------------------------------------------------------------------ 设置头图 */
function ilSettings() {
  const s = `stroke="${IL_STROKE}" stroke-width="8" stroke-linecap="round" fill="none"`;
  return `<svg width="800" height="600" viewBox="0 0 800 600" xmlns="http://www.w3.org/2000/svg">
  ${ilBase('#DFF3E4', '#AFE3C0', 'set')}
  ${sparkle(670, 140, 22, '#FFFFFF')} ${sparkle(140, 470, 16)}
  <circle cx="400" cy="300" r="130" fill="#FFFFFF" stroke="${IL_STROKE}" stroke-width="8"/>
  ${[0, 45, 90, 135, 180, 225, 270, 315].map(a => `
    <g transform="rotate(${a} 400 300)">
      <rect x="386" y="140" width="28" height="46" rx="14" fill="#35C46A" stroke="${IL_STROKE}" stroke-width="7"/>
    </g>`).join('')}
  <circle cx="400" cy="300" r="52" fill="#DFF3E4" stroke="${IL_STROKE}" stroke-width="8"/>
  <circle cx="400" cy="300" r="18" fill="#35C46A"/>
  ${[0, 1, 2].map(i => `<line x1="${560 + i * 46}" y1="${420 + i * 8}" x2="${700 + i * 40}" y2="${420 + i * 8}" ${s} opacity="${0.8 - i * 0.2}"/>`).join('')}
</svg>`;
}

const ILLUS = {
  alarm: ilAlarm, calendar: ilCalendar, music: ilMusic,
  weather: ilWeather, device: ilDevice, memory: ilMemory, settings: ilSettings
};

/* 渲染一张插画；w 给定时按 800:600 缩放 */
function illus(name, w) {
  const fn = ILLUS[name];
  if (!fn) return '';
  const svg = fn();
  if (!w) return svg;
  return svg.replace('<svg width="800" height="600"', `<svg width="${w}" height="${Math.round(w * 600 / 800)}"`);
}
