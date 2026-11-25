/* =============================================================================
 * app2.js -- TG-Z02 儿童友好型交互原型（T9-UI-01-V2）
 *
 * 真正可操作：导航、主题切换、语音状态轮播、技能启停、模型配置增删改默认与测试、
 * 记忆分类/编辑/删除/确认，全部是可点击的真实交互（本地模拟数据，不碰设备）。
 *
 *   app2.html?s=home&mode=kid        单页（shoot2.ps1 用，无 proto 条）
 *   app2.html?proto=1                带原型控制条（人工交互评审用）
 *   index2.html                      总览
 * ========================================================================== */

/* --------------------------------------------------------------- 数据模拟 */

const P = {
  mode: 'kid',                    // kid | calm
  screen: 'home',                 // home | skills | memory | settings | about
  homeState: 'standby',           // 九状态
  autoplay: null,

  skills: {
    alarm:    { name: '闹钟', enabled: true,  used: 3, state: 'on' },
    calendar: { name: '日程', enabled: true,  used: 2, state: 'on' },
    music:    { name: '音乐', enabled: false, used: 0, state: 'unavailable' },
    weather:  { name: '天气', enabled: false, used: 0, state: 'planned' },
    device:   { name: '设备控制', enabled: false, used: 0, state: 'planned' }
  },

  models: [
    { id: 'doubao-main', vendor: '豆包', model: 'ep-2024-stub', base: 'https://ark.cn-beijing.volces.com/api/v3',
      key: 'sk-7c1e0b93-4a2f', def: true,  test: null },
    { id: 'qwen-native', vendor: '通义千问', model: 'qwen-plus', base: 'https://dashscope.aliyuncs.com/api/v1',
      key: 'sk-3a9f2c7e', def: false, test: null },
    { id: 'openai-proxy', vendor: 'OpenAI 兼容', model: 'gpt-4o-mini', base: 'http://127.0.0.1:8799/openai/v1',
      key: 'good-openai', def: false, test: null }
  ],
  activeModel: 'doubao-main',

  memFilter: '全部',
  memories: [
    { tag: '偏好', text: '我不喝咖啡，改喝无糖茶', meta: '两次提及 · 待确认', st: '待确认' },
    { tag: '偏好', text: '早上 7 点起床，晚上 11 点前睡觉', meta: '已生效 22 天', st: '已启用' },
    { tag: '关系', text: '女儿小名「糖糖」，今年 6 岁', meta: '已生效 17 天', st: '已启用' },
    { tag: '事实', text: '在杭州工作，通勤用地铁', meta: '已生效 15 天', st: '已启用' },
    { tag: '偏好', text: '回答尽量短，不要念长段落', meta: '已生效 26 天', st: '已启用' }
  ]
};

/* 演示数据标注：设置/模型/记忆页必须明示（验收要求 6） */
const DEMO_TAG = '演示数据 · 非设备实况';

/* 首页九状态 → 角色状态 / 文案（停止是终态：无任何恢复操作） */
const HOME = {
  standby:  { ch: 'idle',      pill: ['待唤醒', 'c-idle'], meta: '唤醒词「天猫精灵」',
              greet: '你好呀！我是布丁', sub: '说一声「天猫精灵」，我就醒啦',
              quick: true, turn: null },
  wake:     { ch: 'awake',     pill: ['已唤醒', 'c-acc'], meta: '唤醒词命中',
              greet: '我在呢！', sub: '正在准备听你说话…', quick: false, turn: null },
  listening:{ ch: 'listening', pill: ['在听你说', 'c-lst'], meta: '说完稍等一下，我会自动收音',
              greet: '我在听…', sub: '请慢慢说，不着急', quick: false,
              turn: { who: '你在说', q: '今天下午…', stop: 'finish' } },
  asr:      { ch: 'thinking',  pill: ['听懂了', 'c-acc'], meta: '正在把话传给大脑',
              greet: '我听懂啦', sub: '正在整理你的话…', quick: false,
              turn: { who: '你说的话', q: '今天下午三点提醒我开会' } },
  thinking: { ch: 'thinking',  pill: ['想一想', 'c-warn'], meta: '布丁在想答案',
              greet: '让我想想…', sub: '动动脑筋，马上就好', quick: false,
              turn: { who: '你的问题', q: '今天下午三点提醒我开会', cancel: true } },
  speaking: { ch: 'speaking',  pill: ['正在说', 'c-ok'], meta: '布丁正在回答你',
              greet: '我来告诉你', sub: '说「停止」可以打断我哦', quick: false,
              turn: { who: '布丁说', q: '今天下午三点提醒我开会',
                      a: '好呀！已经记下来啦：今天 15:00 开会，会提前十分钟提醒你。', stop: true } },
  stopped:  { ch: 'sleep',     pill: ['已停止', 'c-idle'], meta: '播报已经停止，不会再响',
              greet: '好的，停下来了', sub: '想继续的话，再喊一声「天猫精灵」吧',
              quick: false,
              turn: { who: '刚才说到', q: '今天下午三点提醒我开会…（已停止，不再播报）' } },
  cont:     { ch: 'happy',      pill: ['接着聊', 'c-acc'], meta: '8 秒内直接说话就行',
              greet: '我们继续聊！', sub: '不用再喊唤醒词，直接说吧', quick: false,
              turn: { who: '上一轮', q: '那明天呢？',
                      a: '明天上午十点也有一场评审，需要我一并提醒吗？' } },
  error:    { ch: 'error',      pill: ['遇到问题', 'c-err'], meta: '网络不太顺畅，稍后再试',
              greet: '呜…网络断了一下', sub: '不是你的问题，稍等一下再试好吗', quick: false,
              turn: { who: '刚才的问题', q: '今天下午三点提醒我开会',
                      err: '回答失败：网络没有响应（已重试 2 次）', retry: true } }
};

const HOME_STATES = Object.keys(HOME);
const STATE_NAMES = { standby:'待机', wake:'唤醒', listening:'聆听', asr:'识别',
                      thinking:'思考', speaking:'播报', stopped:'停止', cont:'连续', error:'异常' };

/* ------------------------------------------------------------------- 组件 */

function statePill(cls, txt) {
  return `<span class="state-pill ${cls}"><span class="dot"></span>${txt}</span>`;
}

function toggle(on, act) {
  return `<div class="toggle${on ? ' on' : ''}" data-act="${act}"></div>`;
}

function chip(txt, on, act) {
  return `<span class="chip${on ? ' on' : ''}" data-act="${act}">${txt}</span>`;
}

/* 底部导航条（两个主题共用结构） */
function navbar() {
  const items = [
    ['home', '首页'], ['skills', '技能'], ['memory', '记忆'], ['settings', '设置'], ['about', '关于']
  ];
  return `<div class="navbar">${items.map(([id, name]) => `
    <div class="nav-it${P.screen === id ? ' on' : ''}" data-act="nav:${id}">
      <div class="n-ic">${navIcon(id)}</div><div>${name}</div>
    </div>`).join('')}</div>`;
}

function navIcon(id) {
  const st = `fill="none" stroke="currentColor" stroke-width="2.6" stroke-linecap="round" stroke-linejoin="round"`;
  const map = {
    home:    `<polyline points="4,12 12,5 20,12"/><polyline points="6.5,11 6.5,20 17.5,20 17.5,11"/>`,
    skills:  `<rect x="4" y="4" width="6.6" height="6.6" rx="2"/><rect x="13.4" y="4" width="6.6" height="6.6" rx="2"/>
              <rect x="4" y="13.4" width="6.6" height="6.6" rx="2"/><rect x="13.4" y="13.4" width="6.6" height="6.6" rx="2"/>`,
    memory:  `<rect x="4" y="5" width="16" height="14" rx="3"/><line x1="8" y1="9.5" x2="16" y2="9.5"/>
              <line x1="8" y1="13" x2="13" y2="13"/><line x1="8" y1="16" x2="11" y2="16"/>`,
    settings:`<line x1="4" y1="7.5" x2="20" y2="7.5"/><circle cx="9.5" cy="7.5" r="2.3"/>
              <line x1="4" y1="12" x2="20" y2="12"/><circle cx="14.5" cy="12" r="2.3"/>
              <line x1="4" y1="16.5" x2="20" y2="16.5"/><circle cx="11" cy="16.5" r="2.3"/>`,
    about:   `<circle cx="12" cy="12" r="8.4"/><line x1="12" y1="11.2" x2="12" y2="16.4"/><circle cx="12" cy="8" r="1" fill="currentColor"/>`
  };
  return `<svg width="26" height="26" viewBox="0 0 24 24" ${st.replace('fill="none" ', '')}>${map[id]}</svg>`;
}

/* ------------------------------------------------------------------- 首页 */

function homeQuick() {
  /* 规则（UI_SKILL_EXTENSION §6）：只放已启用且最近使用过的技能，最多 3 个，末位固定全部技能 */
  const en = Object.entries(P.skills)
    .filter(([k, v]) => v.enabled && v.used > 0)
    .sort((a, b) => b[1].used - a[1].used)
    .slice(0, 3);
  const cards = en.map(([k, v]) => `
    <div class="qk ${k}" data-act="skill-open:${k}">
      <div class="qk-t">${v.name}</div>
      <div class="qk-s">${v.used} 次最近使用</div>
      <div class="qk-il">${illus(k, 128)}</div>
    </div>`);
  return `<div class="quick">
    ${cards.join('')}
    <div class="qk more" data-act="nav:skills">
      <div class="qk-t">全部技能</div><div class="qk-s">还有 3 个等着你</div>
      <div class="qk-il">${illus('device', 112)}</div>
    </div>
  </div>`;
}

function scrHome() {
  const s = HOME[P.homeState];
  const chState = s.ch;
  const turn = s.turn ? `<div class="turn">
      <div class="who">${s.turn.who}</div>
      <div class="q">${s.turn.q}</div>
      ${s.turn.a ? `<div class="a">${s.turn.a}</div>` : ''}
      ${s.turn.err ? `<div class="err">${s.turn.err}</div>` : ''}
      ${s.turn.stop ? `<div style="margin-top:10px"><span class="btn primary" data-act="home-stop">${iconStop()} 停止播报</span></div>` : ''}
      ${s.turn.stop === 'finish' ? `<div style="margin-top:10px"><span class="btn sm" data-act="home-finish">结束收音</span></div>` : ''}
      ${s.turn.cancel ? `<div style="margin-top:10px"><span class="btn sm" data-act="home-cancel">取消</span></div>` : ''}
      ${s.turn.retry ? `<div style="margin-top:10px"><span class="btn primary" data-act="home-retry">再试一次</span></div>` : ''}
    </div>` : '';

  return `<div class="home">
    <div class="h-status">
      ${statePill(s.pill[1], s.pill[0])}
      <span class="h-meta">${s.meta}</span>
      <div class="h-right"><span class="model-chip">${DEMO_TAG}&nbsp;·&nbsp;大脑：<b>豆包</b></span></div>
    </div>
    <div class="stage">
      <div class="stage-char"><div class="halo">${char(chState, 300)}</div></div>
      <div class="stage-copy">
        <div class="greet">${s.greet}</div>
        <div class="sub">${s.sub}</div>
        ${turn}
      </div>
    </div>
    ${s.quick ? homeQuick() : ''}
  </div>`;
}

function iconStop() {
  return `<svg width="16" height="16" viewBox="0 0 24 24"><rect x="6.6" y="6.6" width="10.8" height="10.8" rx="2.4"
    fill="none" stroke="currentColor" stroke-width="2.4"/></svg>`;
}

/* --------------------------------------------------------------- 技能中心 */

function scrSkills() {
  const on = Object.entries(P.skills).filter(([k, v]) => v.enabled);
  const off = Object.entries(P.skills).filter(([k, v]) => !v.enabled);
  const card = ([k, v]) => `
    <div class="sk-card${v.enabled ? '' : ' off'}" data-act="skill-open:${k}">
      <div class="il">${illus(k, 340)}${v.state !== 'on' ? `<span class="off-tag">${
        v.state === 'unavailable' ? '待接入' : '规划中'}</span>` : ''}
      </div>
      <div class="meta">
        <div class="t">${v.name}
          ${v.enabled ? '<span class="pill ok">已启用</span>' : '<span class="pill dim">未启用</span>'}
        </div>
        <div class="d">${k === 'alarm' ? '说「明天七点叫我起床」' :
          k === 'calendar' ? '问「今天有什么安排」' : '接入后即可使用'}</div>
      </div>
    </div>`;
  return `<div class="main">
    <div class="hdr"><div class="t">技能中心</div><div class="sub">点开一个技能试试</div>
      <div class="hdr-actions">${DEMO_TAG}</div></div>
    <div class="body scroll">
      ${on.length ? `<div class="sec">已在工作</div>
      <div class="sk-grid">${on.map(card).join('')}</div>` : ''}
      <div class="sec">${on.length ? '还没启用' : '全部技能'}</div>
      <div class="sk-grid">${off.map(card).join('')}</div>
    </div>
  </div>`;
}

/* --------------------------------------------------------------- 技能详情 */

function scrSkill(id) {
  const v = P.skills[id];
  const toggles = (id === 'alarm' || id === 'calendar');
  return `<div class="main">
    <div class="hdr">
      <span class="crumb" data-act="nav:skills">技能中心 /<b>${v.name}</b></span>
      <div class="hdr-actions">${toggles ? toggle(v.enabled, 'skill-toggle:' + id) : ''}</div>
    </div>
    <div class="body scroll">
      <div class="skill-hero">${illus(id === 'weather' || id === 'device' ? id : id, 640)}
        <div class="ht"><div class="a">${v.name}</div>
          <div class="b">${v.enabled ? '已启用 · 语音可用' : (v.state === 'unavailable' ? '待接入 · 页面先来啦' : '规划中')}</div></div>
      </div>
      ${id === 'alarm' ? alarmBody(v) : ''}
      ${id === 'calendar' ? calendarBody() : ''}
      ${id === 'music' ? musicBody() : ''}
      ${(id === 'weather' || id === 'device') ? `
        <div class="empty"><div>这个技能还在路上</div><div style="font-size:15px">做好之后会出现在这里</div></div>` : ''}
    </div>
    <div class="navbar" style="border:none;background:transparent">
      <div style="flex:1"></div>
      ${v.enabled && toggles ? `<span class="btn primary" style="margin-right:28px">＋ 新增</span>` : ''}
    </div>
  </div>`;
}

function alarmBody(v) {
  return `
  <div class="card t" style="display:flex;align-items:center;gap:12px">
    ${v.enabled ? '<span class="pill ok">语音可用</span>' : '<span class="pill dim">语音已停</span>'}
    <span style="font-size:16px">说「明天七点叫我起床」就能建闹钟</span>
  </div>
  <div class="card" style="padding:0">
    ${[['07:00', '起床（周一到周五）', true], ['08:30', '周六 · 睡个懒觉', true],
       ['09:00', '周日 · 已关闭', false], ['12:20', '一次提醒 · 已过期', false]]
      .map(([t, d, on]) => `
      <div class="item">
        <div class="alarm-time${on ? '' : ' off'}">${t}</div>
        <div class="grow"><div class="t1${on ? '' : '" style="color:var(--text-3)'}">${d}</div></div>
        <div class="end">${toggle(on)}</div>
      </div>`).join('')}
  </div>
  <div class="banner acc">${DEMO_TAG} · 布丁会在闹钟响的时候叫你起床</div>`;
}

function calendarBody() {
  return `
  <div class="cols">
    <div class="col grow"><div class="card" style="flex:1;display:flex;align-items:center;justify-content:center">
      ${illus('calendar', 420)}</div></div>
    <div class="col" style="flex:0 0 320px">
      <div class="card" style="padding:0">
        <div class="item"><div class="grow"><div class="t1">今天 · 11 月 25 日</div></div></div>
        <div class="item"><div class="grow"><div class="t1">15:00 项目评审</div>
          <div class="t2">会议室 A · 提前 10 分钟提醒</div></div></div>
        <div class="item"><div class="grow"><div class="t1">19:30 健身</div>
          <div class="t2">每周一、三</div></div></div>
      </div>
      <div class="banner acc">${DEMO_TAG}</div>
    </div>
  </div>`;
}

function musicBody() {
  return `
  <div class="card" style="flex:1;display:flex;align-items:center;justify-content:center;flex-direction:column;gap:10px">
    ${illus('music', 300)}
    <div style="font-size:18px;font-weight:700">音乐技能还没接入</div>
    <div style="font-size:15px;color:var(--text-2)">接入曲库之后，这里就是一个完整的播放器</div>
  </div>
  <div class="banner warn">页面骨架已就绪 · 接入后即成为可用技能</div>`;
}

/* --------------------------------------------------------------- 记忆中心 */

function scrMemory() {
  const tags = ['全部', '偏好', '事实', '关系', '设备'];
  const list = P.memories.filter(m => P.memFilter === '全部' || m.tag === P.memFilter);
  const pend = P.memories.find(m => m.st === '待确认');
  return `<div class="main">
    <div class="hdr"><div class="t">记忆中心</div>
      <div class="sub">布丁记住的事，都由你管理</div>
      <div class="hdr-actions">${DEMO_TAG}</div></div>
    <div class="body scroll">
      <div style="display:flex;gap:10px;flex-wrap:wrap">
        ${tags.map(t => chip(t + (t === '全部' ? '' : ''), P.memFilter === t, 'mem-filter:' + t)).join('')}
      </div>
      ${pend ? `<div class="banner warn">${iconBulb()} 布丁新学到：<b>「${pend.text}」</b>
        <div class="act"><span class="btn sm primary" data-act="mem-confirm">记住它</span>
        <span class="btn sm" data-act="mem-ignore">先不记</span></div></div>` : ''}
      <div style="display:flex;flex-direction:column;gap:12px">
        ${list.map((m, i) => `
          <div class="mem-card">
            <div class="cat"><span class="pill ${m.tag === '偏好' ? 'acc' : 'dim'}">${m.tag}</span></div>
            <div class="txt"><div class="a">${m.text}</div><div class="b">${m.meta}</div></div>
            <div class="ops">
              <span class="pill ${m.st === '待确认' ? 'warn' : 'ok'}">${m.st}</span>
              <span class="btn sm text" data-act="mem-edit:${P.memories.indexOf(m)}">改</span>
              <span class="btn sm danger" data-act="mem-del:${P.memories.indexOf(m)}">删</span>
            </div>
          </div>`).join('') || '<div class="empty">这一类还没有记忆</div>'}
      </div>
    </div>
  </div>`;
}

function iconBulb() {
  return `<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
    stroke-width="2.4" stroke-linecap="round"><path d="M9 18h6M10 21h4"/>
    <path d="M12 3a6 6 0 0 0-4 10.5c.8.7 1.3 1.5 1.3 2.5h5.4c0-1 .5-1.8 1.3-2.5A6 6 0 0 0 12 3z"/></svg>`;
}

/* ------------------------------------------------------------------- 设置 */

function scrSettings() {
  const act = P.models.find(m => m.id === P.activeModel);
  return `<div class="main">
    <div class="hdr"><div class="t">设置</div><div class="sub">都是给爸爸妈妈看的</div></div>
    <div class="body scroll">
      <div class="sec">大脑（模型）</div>
      <div class="card" style="padding:0">
        <div class="setrow" data-act="nav:models">
          <div><div class="st">大模型配置</div>
            <div class="sd">${act ? act.vendor + ' · ' + act.model : '未配置'} · ${P.models.length} 套</div></div>
          <div class="sv">${DEMO_TAG}</div><div class="chev">›</div>
        </div>
        <div class="setrow"><div><div class="st">主题模式</div>
          <div class="sd">儿童友好 / 简洁，共用同一套功能</div></div>
          <div class="sv"></div>
          <div class="seg"><span class="${P.mode === 'kid' ? 'on' : ''}" data-act="mode:kid">儿童友好</span>
            <span class="${P.mode === 'calm' ? 'on' : ''}" data-act="mode:calm">简洁</span></div>
        </div>
      </div>
      <div class="sec">语音</div>
      <div class="card" style="padding:0">
        <div class="setrow"><div><div class="st">语音唤醒</div><div class="sd">唤醒词「天猫精灵」</div></div>
          ${toggle(true)}</div>
        <div class="setrow"><div><div class="st">连续对话</div><div class="sd">8 秒内可以接着说</div></div>
          ${toggle(true)}</div>
        <div class="setrow"><div><div class="st">播报音量</div><div class="sd">和布丁说话的声音一样大</div></div>
          <div class="sv">70%</div></div>
      </div>
      <div class="sec">设备</div>
      <div class="card" style="padding:0">
        <div class="setrow"><div><div class="st">开机自启</div><div class="sd">开机就能用</div></div>${toggle(true)}</div>
        <div class="setrow"><div><div class="st">后台服务</div><div class="sd">演示数据 · 运行中</div></div>
          <div class="sv">${DEMO_TAG}</div></div>
      </div>
    </div>
  </div>`;
}

/* --------------------------------------------------------------- 模型配置 */

function scrModels() {
  const act = P.models.find(m => m.id === P.activeModel);
  return `<div class="main">
    <div class="hdr"><span class="crumb" data-act="nav:settings">设置 /<b>大模型配置</b></span>
      <div class="hdr-actions"><span class="btn primary sm" data-act="model-add">＋ 新增</span></div></div>
    <div class="body scroll">
      ${act ? `<div class="card">
        <div style="display:flex;align-items:center;gap:12px">
          <div style="font-size:22px;font-weight:700">现在用：${act.vendor} · ${act.id}</div>
          <span class="pill acc">默认</span><span class="sv" style="color:var(--text-3)">${DEMO_TAG}</span>
          <div style="margin-left:auto"><span class="btn primary sm" data-act="model-test:${act.id}">测试连接</span></div>
        </div>
        ${act.test ? `<div style="margin-top:10px">${testResult(act.test)}</div>` : ''}
      </div>` : '<div class="empty">还没有模型配置，点右上角新增</div>'}
      <div class="sec">保存的配置（上限 8 套）</div>
      <div style="display:flex;flex-direction:column;gap:12px">
        ${P.models.map(m => `
          <div class="card t">
            <div style="display:flex;align-items:center;gap:10px">
              <b style="font-size:18px">${m.id}</b>
              <span style="font-size:15px;color:var(--text-2)">${m.vendor} · ${m.model}</span>
              ${m.def ? '<span class="pill ok">默认</span>' : `<span class="btn sm text" data-act="model-def:${m.id}">设为默认</span>`}
              <div class="end" style="margin-left:auto">
                <span class="btn sm text" data-act="model-test:${m.id}">${m.test && m.test.running ? '测试中…' : '测试'}</span>
                <span class="btn sm text" data-act="model-edit:${m.id}">编辑</span>
                <span class="btn sm danger" data-act="model-del:${m.id}">删除</span>
              </div>
            </div>
            <div style="font-size:14px;color:var(--text-2);margin-top:6px;font-family:var(--font-mono)">${m.base}</div>
            <div style="font-size:14px;color:var(--text-2);margin-top:2px;font-family:var(--font-mono)">
              API Key：${m.key} <span style="color:var(--text-3)">（明文可改）</span></div>
            ${m.test ? `<div style="margin-top:8px">${testResult(m.test)}</div>` : ''}
          </div>`).join('')}
      </div>
    </div>
  </div>`;
}

function testResult(t) {
  if (t.running) return '<span class="pill warn">测试中…</span>';
  return t.ok
    ? `<span class="pill ok">连接成功 · ${t.ms} ms</span>`
    : `<span class="pill err">连接失败 · ${t.reason}</span>`;
}

/* --------------------------------------------------------------- 关于 */

function scrAbout() {
  return `<div class="main">
    <div class="hdr"><div class="t">关于</div><div class="sub">布丁的小档案</div></div>
    <div class="body scroll">
      <div class="card" style="display:flex;align-items:center;gap:18px">
        ${char('happy', 120)}
        <div>
          <div style="font-size:24px;font-weight:700">布丁 PUDDIN</div>
          <div style="font-size:16px;color:var(--text-2);margin-top:4px">
            TG-Z02 语音伙伴 · 应用 v1.2.0 · 设备 AILABS_S1L · Android 8.1</div>
          <div style="font-size:14px;color:var(--text-3);margin-top:4px">${DEMO_TAG}</div>
        </div>
        <div style="margin-left:auto"><span class="pill ok">一切正常</span></div>
      </div>
      <div class="card" style="padding:0">
        <div class="setrow"><div class="st">唤醒 / 听话</div><div class="sv">原厂能力 · 没有改动</div></div>
        <div class="setrow"><div class="st">大脑（模型）</div><div class="sv">豆包 · doubao-main</div></div>
        <div class="setrow"><div class="st">说话（播报）</div><div class="sv">原厂 TTS</div></div>
        <div class="setrow"><div class="st">开机时长</div><div class="sv">${DEMO_TAG}</div></div>
      </div>
      <div class="banner acc">布丁的九种表情都画在「技能中心」演示里，全部原创</div>
    </div>
  </div>`;
}

/* --------------------------------------------------------------- modal */

function openModal(html) {
  const layer = document.getElementById('modal');
  layer.innerHTML = `<div class="modal">${html}</div>`;
  layer.classList.add('open');
}
function closeModal() {
  const layer = document.getElementById('modal');
  layer.classList.remove('open');
  layer.innerHTML = '';
}

function modelForm(m) {
  const isNew = !m;
  m = m || { id: '', vendor: '豆包', model: '', base: 'https://', key: '', def: false };
  openModal(`
    <h3>${isNew ? '新增模型配置' : '编辑模型配置'}</h3>
    <div class="frow"><label>名称</label><input id="f-id" value="${m.id}" ${isNew ? '' : 'readonly'}
      style="${isNew ? '' : 'color:var(--text-3)'}" placeholder="例如 doubao-test"></div>
    <div class="frow"><label>厂商</label><select id="f-vendor">
      ${['豆包', '通义千问', 'OpenAI 兼容'].map(v => `<option ${m.vendor === v ? 'selected' : ''}>${v}</option>`).join('')}
    </select></div>
    <div class="frow"><label>模型</label><input id="f-model" value="${m.model}" placeholder="例如 ep-xxx / qwen-plus"></div>
    <div class="frow"><label>Base URL</label><input id="f-base" value="${m.base}"></div>
    <div class="frow"><label>API Key</label><input id="f-key" value="${m.key}">
      <span class="hint">明文保存</span></div>
    <div class="ferr" id="f-err"></div>
    <div class="mfoot">
      <span class="btn" data-act="modal-close">取消</span>
      <span class="btn primary" data-act="model-save:${isNew ? '' : m.id}">保存</span>
    </div>`);
}

function memForm(i) {
  const m = P.memories[i];
  openModal(`
    <h3>编辑记忆</h3>
    <div class="frow align-top"><label>内容</label><textarea id="f-txt">${m.text}</textarea></div>
    <div class="frow"><label>分类</label><select id="f-tag">
      ${['偏好', '事实', '关系', '设备'].map(t => `<option ${m.tag === t ? 'selected' : ''}>${t}</option>`).join('')}
    </select></div>
    <div class="mfoot">
      <span class="btn" data-act="modal-close">取消</span>
      <span class="btn primary" data-act="mem-save:${i}">保存</span>
    </div>`);
}

function confirmDel(text, act) {
  openModal(`
    <h3>确定要删除吗？</h3>
    <div style="font-size:16px;color:var(--text-2);margin-bottom:6px">「${text}」删除后找不回来。</div>
    <div class="mfoot">
      <span class="btn" data-act="modal-close">先留着</span>
      <span class="btn primary" style="background:var(--err)" data-act="${act}">删除</span>
    </div>`);
}

/* --------------------------------------------------------------- proto bar */

function protoBar() {
  return `<div class="proto-bar">
    <span class="lbl">PROTO</span>
    ${['kid', 'calm'].map(m => `<span class="pb ${P.mode === m ? 'on' : ''}" data-act="mode:${m}">${m === 'kid' ? '儿童模式' : '简洁模式'}</span>`).join('')}
    <span class="sp"></span>
    <span class="lbl">HOME</span>
    ${HOME_STATES.map(s => `<span class="pb ${P.screen === 'home' && P.homeState === s ? 'on' : ''}"
      data-act="home-state:${s}">${STATE_NAMES[s]}</span>`).join('')}
    <span class="pb ${P.autoplay ? 'on warn' : ''}" data-act="autoplay">▶轮播</span>
    <span class="sp"></span>
    <span class="lbl">PAGE</span>
    ${['skills', 'memory', 'settings', 'models', 'about'].map(p =>
      `<span class="pb ${P.screen === p ? 'on' : ''}" data-act="nav:${p}">${
        { skills: '技能', memory: '记忆', settings: '设置', models: '模型', about: '关于' }[p]}</span>`).join('')}
  </div>`;
}

/* --------------------------------------------------------------- render */

function render() {
  const root = document.getElementById('app');
  let html;
  switch (P.screen) {
    case 'home':     html = scrHome(); break;
    case 'skills':   html = scrSkills(); break;
    case 'memory':   html = scrMemory(); break;
    case 'settings': html = scrSettings(); break;
    case 'models':   html = scrModels(); break;
    case 'about':    html = scrAbout(); break;
    default:
      html = P.screen.startsWith('skill.') ? scrSkill(P.screen.slice(6)) : scrHome();
  }
  root.innerHTML = `
    <div class="screen${P.mode === 'calm' ? ' theme-calm' : ''}">
      ${html}
      ${navbar()}
      <div class="modal-layer" id="modal"></div>
      ${window.__proto ? protoBar() : ''}
    </div>`;
}

function go(screen) {
  stopAutoplay();
  P.screen = screen;
  render();
}

function stopAutoplay() {
  if (P.autoplay) { clearInterval(P.autoplay); P.autoplay = null; }
}

/* --------------------------------------------------------------- actions */

function setHomeState(s) {
  P.homeState = s; P.screen = 'home'; render();
}

function startAutoplay() {
  stopAutoplay();
  let i = HOME_STATES.indexOf(P.homeState);
  P.screen = 'home';
  P.autoplay = setInterval(() => {
    i = (i + 1) % HOME_STATES.length;
    P.homeState = HOME_STATES[i];
    render();
  }, 1600);
}

function simulateTest(m) {
  m.test = { running: true };
  render();
  setTimeout(() => {
    const bad = /bad|invalid|127\.0\.0\.1:1\b/.test(m.base + m.key);
    m.test = bad
      ? { ok: false, reason: 'HTTP 401 · 密钥不对（演示）' }
      : { ok: true, ms: 380 + Math.floor(Math.random() * 400) };
    if (P.screen === 'models') render();
  }, 900);
}

function handle(act, arg) {
  switch (act) {
    case 'nav':         go(arg); break;
    case 'mode':        P.mode = arg; render(); break;
    case 'home-state':  setHomeState(arg); break;
    case 'autoplay':    P.autoplay ? (stopAutoplay(), render()) : (startAutoplay(), render()); break;
    case 'skill-open':  P.skills[arg] && P.skills[arg].used++; go('skill.' + arg); break;
    case 'skill-toggle':
      P.skills[arg].enabled = !P.skills[arg].enabled; render(); break;
    case 'home-stop':   setHomeState('stopped'); break;      /* 终态：无恢复操作 */
    case 'home-finish': setHomeState('asr'); break;
    case 'home-cancel': setHomeState('standby'); break;
    case 'home-retry':
      setHomeState('thinking');
      setTimeout(() => { if (P.homeState === 'thinking') setHomeState('speaking'); }, 1100);
      break;
    case 'model-add':    modelForm(null); break;
    case 'model-edit':   modelForm(P.models.find(m => m.id === arg)); break;
    case 'model-del': {
      const m = P.models.find(x => x.id === arg);
      confirmDel(m.id, 'model-del-go:' + arg); break;
    }
    case 'model-del-go': {
      P.models = P.models.filter(m => m.id !== arg);
      if (P.activeModel === arg) P.activeModel = P.models[0] ? P.models[0].id : '';
      closeModal(); render(); break;
    }
    case 'model-def': {
      P.models.forEach(m => m.def = (m.id === arg));
      P.activeModel = arg; render(); break;
    }
    case 'model-test':   simulateTest(P.models.find(m => m.id === arg)); break;
    case 'model-save': {
      const id = document.getElementById('f-id').value.trim();
      if (!id || !/^[\w-]+$/.test(id)) {
        document.getElementById('f-err').textContent = '名称要用英文/数字/短横线'; break;
      }
      const dup = P.models.find(m => m.id === id && m.id !== arg);
      if (dup) { document.getElementById('f-err').textContent = '这个名字已经有了'; break; }
      const m = {
        id, vendor: document.getElementById('f-vendor').value,
        model: document.getElementById('f-model').value.trim() || 'demo-model',
        base: document.getElementById('f-base').value.trim(),
        key: document.getElementById('f-key').value.trim(), def: false, test: null
      };
      if (arg) {
        const old = P.models.find(x => x.id === arg);
        Object.assign(old, m, { def: old.def, test: old.test });
      } else {
        if (P.models.length >= 8) { document.getElementById('f-err').textContent = '最多 8 套'; break; }
        P.models.push(m);
      }
      closeModal(); render(); break;
    }
    case 'mem-filter':  P.memFilter = arg; render(); break;
    case 'mem-edit':    memForm(+arg); break;
    case 'mem-save': {
      P.memories[+arg].text = document.getElementById('f-txt').value.trim() || P.memories[+arg].text;
      P.memories[+arg].tag = document.getElementById('f-tag').value;
      closeModal(); render(); break;
    }
    case 'mem-del': {
      const m = P.memories[+arg];
      confirmDel(m.text, 'mem-del-go:' + arg); break;
    }
    case 'mem-del-go':  P.memories.splice(+arg, 1); closeModal(); render(); break;
    case 'mem-confirm': {
      const m = P.memories.find(x => x.st === '待确认');
      if (m) { m.st = '已启用'; m.meta = '刚刚确认 · 已生效'; }
      render(); break;
    }
    case 'mem-ignore': {
      const i = P.memories.findIndex(x => x.st === '待确认');
      if (i >= 0) P.memories.splice(i, 1);
      render(); break;
    }
    case 'modal-close': closeModal(); break;
  }
}

/* --------------------------------------------------------------- mount */

document.addEventListener('click', e => {
  const t = e.target.closest('[data-act]');
  if (!t) return;
  const [act, arg] = t.dataset.act.split(':');
  handle(act, arg);
});

window.addEventListener('keydown', e => {
  if (e.key === 'Escape') closeModal();
});

(function boot() {
  const q = new URLSearchParams(location.search);
  window.__proto = q.get('proto') === '1';
  const s = q.get('s') || 'home';
  const m = q.get('mode');
  if (m) P.mode = m;
  if (s.startsWith('skill.')) { P.screen = s; }
  else P.screen = s;
  if (q.get('state')) { P.screen = 'home'; P.homeState = q.get('state'); }
  render();
  document.title = 'TG-Z02 V2 · ' + P.screen;
})();
