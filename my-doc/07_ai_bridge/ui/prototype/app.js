/* =============================================================================
 * app.js -- T9-UI-01 prototype screens.
 *
 * One renderer, one design system, 23 screens at the real canvas size (1024x600).
 * Every block below is named after the component that will implement it
 * (see UI_IMPLEMENTATION_MAP.md for the Java recipe of each name).
 *
 *   app.html?s=home.standby     one screen, bare (used by shoot.ps1)
 *   index.html                  all screens on one page (review)
 *
 * Encoding note: this file is UTF-8 without BOM and must only be edited with an
 * editor that writes UTF-8 (the write/edit tool, or VS Code). PowerShell 5.1
 * Get-Content/Set-Content round-trips mangle it.
 * ========================================================================== */

const MODEL = '豆包 · doubao-main';

const NAV = [
  { id: 'home',     label: '首页',     icon: 'home' },
  { id: 'skills',   label: '技能中心', icon: 'skills', badge: '5' },
  { id: 'memory',   label: '记忆中心', icon: 'memory', badge: '12' },
  { id: 'settings', label: '设置',     icon: 'settings' },
  { id: 'about',    label: '关于',     icon: 'info' }
];

/* ------------------------------------------------------------------ shell */

function rail(opt) {
  const o = opt || {};
  const items = NAV.map(n => {
    const on = o.active === n.id ? ' on' : '';
    const badge = n.badge ? `<span class="badge">${n.badge}</span>` : '';
    const sub = (on && o.sub) ? `<div class="nav-sub">${o.sub.map(s =>
      `<div class="nav-item${s.on ? ' on' : ''}">${s.label}</div>`).join('')}</div>` : '';
    return `<div class="nav-item${on}">${icon(n.icon, 18)}<span>${n.label}</span>${badge}</div>${sub}`;
  }).join('');

  const off = o.online === false ? ' off' : '';
  const stateTxt = o.online === false ? '后台服务未连接' : '后台服务 · 运行中';

  return `<div class="rail${o.mini ? ' mini' : ''}${o.brand ? ' brand' : ''}">
    <div class="rail-brand">
      <div class="rail-mark">T9</div>
      <div class="rail-txt">
        <div class="rail-name">TG-Z02</div>
        <div class="rail-sub">智能语音助手</div>
      </div>
    </div>
    <div class="rail-group">${items}</div>
    <div class="rail-foot">
      <div class="rail-status${off}"><span class="dot"></span><span class="rail-txt">${stateTxt}</span></div>
      <div class="rail-model rail-txt">模型：${o.model || MODEL}</div>
    </div>
  </div>`;
}

function hdr(opt) {
  const o = opt || {};
  let left = '';
  if (o.crumb) {
    left = `<div class="crumb"><span>${o.crumb[0]}</span><span class="sep">/</span><b>${o.crumb[1]}</b></div>`;
  } else {
    left = `<div class="hdr-title">${o.title || ''}</div>`;
    if (o.sub) left += `<div class="hdr-sub">${o.sub}</div>`;
  }
  const acts = (o.actions || []).map(a =>
    a.icon
      ? `<div class="icon-btn ${a.line ? 'line' : ''}">${icon(a.icon, 18)}</div>`
      : `<div class="btn ${a.kind || 'ghost'}">${a.label}</div>`).join('');
  return `<div class="hdr">${left}<div class="hdr-actions">${acts}</div></div>`;
}

function pill(text, tone) {
  return `<span class="pill ${tone || ''}"><span class="dot"></span>${text}</span>`;
}

function row(k, v, extra) {
  return `<div class="row"><div class="k">${k}</div><div class="v">${v}</div>${extra ? `<div class="a">${extra}</div>` : ''}</div>`;
}

/* a settings row always ends with a chevron; the value (if any) sits before it */
function setrow(ic, title, desc, right) {
  return `<div class="setrow">
    <div class="si">${icon(ic, 16)}</div>
    <div><div class="st">${title}</div>${desc ? `<div class="sd">${desc}</div>` : ''}</div>
    <div class="sv"></div>${right || ''}<div class="chev">${icon('chevR', 16)}</div>
  </div>`;
}

function toggle(on) { return `<div class="toggle${on ? ' on' : ''}"></div>`; }

/* --------------------------------------------------------------- home orb */

function wave(heights, small) {
  return `<div class="wave${small ? ' small' : ''}">${heights.map(h => `<i style="height:${h}px"></i>`).join('')}</div>`;
}

function orb(state, inner) {
  return `<div class="orb-wrap" data-s="${state}">
    <div class="orb-halo"></div>
    <div class="orb-ring outer"></div>
    <div class="orb-ring"></div>
    <div class="orb-core">${inner}</div>
  </div>`;
}

/* --------------------------------------------------------------- screens  */

const S = {};

/* ---- home: nine voice states ------------------------------------------- */

const HOME = {
  standby: {
    pill: ['待唤醒', ''], meta: '唤醒词「天猫精灵」',
    title: '有什么可以帮你？', sub: '说一声「天猫精灵」唤醒我',
    orb: orb('standby', `<span class="orb-icon">${icon('mic', 32)}</span>`),
    turn: `<div class="turn" style="flex-direction:row;align-items:center;gap:10px">
      <span class="faint">${icon('mic', 15)}</span>
      <span class="t-sm faint">还没有对话 · 唤醒后说一句，问题和回答会显示在这里</span></div>`
  },
  wake: {
    pill: ['已唤醒', 'acc'], meta: '刚刚 · 唤醒词命中',
    title: '我在', sub: '准备麦克风…',
    orb: orb('wake', wave([10, 20, 30, 20, 10])),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">对话</span></div>
      <div class="t-sm faint">正在打开麦克风，请直接说出你的问题。</div></div>`
  },
  listening: {
    pill: ['正在聆听', 'lst'], meta: '麦克风开启 · 停顿 1.2 秒自动结束',
    title: '我在听…', sub: '说完稍等一下，我会自动结束收音',
    orb: orb('listening', wave([12, 26, 34, 22, 14])),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">你在说</span>
      <span class="tag">识别中</span><span style="margin-left:auto" class="btn quiet">结束收音</span></div>
      <div class="turn-q">今天下午<span class="faint">…</span></div></div>`
  },
  asr: {
    pill: ['识别结果', 'acc'], meta: '第 3 轮 · 置信度 0.93',
    title: '识别完成', sub: '正在提交给模型…',
    orb: orb('asr', wave([8, 14, 20, 14, 8], true)),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">你说的</span>
      <span class="tag acc">ASR 完成</span></div>
      <div class="turn-q">今天下午三点提醒我开会</div></div>`
  },
  thinking: {
    pill: ['思考中', 'warn'], meta: '第 3 轮 · 已发送给 豆包',
    title: '我在想…', sub: '豆包 · doubao-main · 已等待 0.6 秒',
    orb: orb('thinking', `<span class="orb-icon">${icon('more', 28)}</span>`),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">你说的</span>
      <span style="margin-left:auto" class="btn quiet">取消</span></div>
      <div class="turn-q">今天下午三点提醒我开会</div>
      <div class="t-sm faint">正在生成回答…</div></div>`
  },
  speaking: {
    pill: ['正在播报', 'ok'], meta: '第 3 轮 · 原厂 TTS',
    title: '正在回答', sub: '说「停止」或点右下角可以打断',
    orb: orb('speaking', wave([8, 18, 28, 34, 24, 12])),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">助手</span>
      <span class="tag ok">播报中</span>
      <span style="margin-left:auto" class="btn">${icon('stop', 14)}停止播报</span></div>
      <div class="turn-q dim">今天下午三点提醒我开会</div>
      <div class="turn-a">好的，已经为你记下：今天 15:00 开会，到时会提前十分钟提醒你。</div></div>`
  },
  stopped: {
    pill: ['已停止', ''], meta: '停止目标是本轮播报 · 不会重播',
    title: '已停止播报', sub: '说「天猫精灵」可以继续',
    orb: orb('stopped', `<span class="orb-icon">${icon('stop', 28)}</span>`),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">助手</span>
      <span class="tag warn">已停止</span>
      <span style="margin-left:auto" class="btn primary">继续说完</span></div>
      <div class="turn-q dim">今天下午三点提醒我开会</div>
      <div class="turn-a dim">好的，已经为你记下：今天 15:00 开会，到时会提前十分钟…</div></div>`
  },
  cont: {
    pill: ['连续对话', 'acc'], meta: '第 4 轮 · 8 秒内可直接说话',
    title: '继续聊', sub: '不用再说唤醒词 · 倒数 8 秒',
    orb: orb('cont', `<div class="orb-arc"></div><span class="orb-caption">8s</span>
      <span class="orb-icon">${icon('mic', 28)}</span>`),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">上一轮</span>
      <span class="tag acc">连续对话</span></div>
      <div class="turn-q dim">那明天呢？</div>
      <div class="turn-a">明天上午十点也有一场评审，需要我一并提醒吗？</div></div>`
  },
  error: {
    pill: ['连接中断', 'err'], meta: '已自动重试 2 次 · 12 秒前',
    title: '网络好像断了', sub: '后台服务还在，是模型接口没有响应',
    orb: orb('error', `<span class="orb-icon">${icon('info', 30)}</span>`),
    turn: `<div class="turn"><div class="turn-head"><span class="lbl">上一轮</span>
      <span class="tag warn">失败</span>
      <span style="margin-left:auto" class="btn">重试</span></div>
      <div class="turn-q dim">今天下午三点提醒我开会</div>
      <div class="t-sm err">回答失败：模型接口没有响应（已自动重试 2 次）</div>
      <div class="t-faint" style="margin-top:2px">详细错误码见「关于 → 诊断」</div></div>`
  }
};

function homeBody(st) {
  const s = HOME[st];
  let orbBlock = '';
  if (s.orb) {
    orbBlock = `<div class="orb-block">${s.orb}
      <div class="state-title">${s.title}</div>
      <div class="state-sub">${s.sub}</div></div>`;
  } else {
    orbBlock = `<div class="orb-block" style="opacity:0;height:0"></div>`;
  }
  const quick = ['standby', 'wake', 'listening', 'thinking', 'speaking', 'stopped'].includes(st)
    ? `<div class="quick">
        <div class="tile"><div class="t-ic">${icon('alarm', 17)}</div>
          <div><div class="t-n">闹钟</div><div class="t-s">2 个已启用</div></div></div>
        <div class="tile"><div class="t-ic">${icon('calendar', 17)}</div>
          <div><div class="t-n">日程</div><div class="t-s">今天 1 项</div></div></div>
        <div class="tile"><div class="t-ic">${icon('music', 17)}</div>
          <div><div class="t-n">音乐</div><div class="t-s faint">待接入</div></div></div>
        <div class="tile more"><div class="t-ic">${icon('plus', 16)}</div>
          <div><div class="t-n">全部技能</div><div class="t-s">5 个</div></div></div>
      </div>` : '';

  return `<div class="statusline">
      ${pill(s.pill[0], s.pill[1])}<span class="meta">${s.meta}</span>
      <div class="right"><span class="tag acc">${MODEL}</span></div>
    </div>
    ${orbBlock}
    ${quick}
    ${s.turn}`;
}

Object.keys(HOME).forEach(k => {
  S['home.' + k] = () => `<div class="screen">
    ${rail({ active: 'home', brand: true })}
    <div class="main">${hdr({ title: '语音助手', sub: '语音设备 · 已就绪' })}
      <div class="body">${homeBody(k)}</div></div></div>`;
});

/* light theme + collapsed rail (adaptation evidence) */
S['home.light'] = () => `<div class="screen theme-light">
  ${rail({ active: 'home', brand: true })}
  <div class="main">${hdr({ title: '语音助手', sub: '浅色主题 · 同一套 token' })}
    <div class="body">${homeBody('standby')}</div></div></div>`;

S['home.mini'] = () => `<div class="screen">
  ${rail({ active: 'home', brand: true, mini: true })}
  <div class="main">${hdr({ title: '语音助手', sub: '窄宽度：导航收成图标条' })}
    <div class="body">${homeBody('speaking')}</div></div></div>`;

/* ---- skills ------------------------------------------------------------ */

S['skills'] = () => `<div class="screen">
  ${rail({ active: 'skills', brand: true })}
  <div class="main">
    ${hdr({ title: '技能中心', sub: '5 个技能 · 2 个已启用', actions: [
      { icon: 'search' }, { label: '管理', kind: 'ghost' }] })}
    <div class="body scroll">
      <div class="section-label">已启用</div>
      <div class="grid c2">
        <div class="skill">
          <div class="skill-head"><div class="skill-ic acc">${icon('alarm', 19)}</div>
            <div><div class="skill-name">闹钟</div><div class="t-faint">2 个已启用 · 语音可控制</div></div>
            <div style="margin-left:auto">${pill('已启用', 'ok')}</div></div>
          <div class="skill-desc">说「明天七点叫我起床」就能建闹钟；到点由系统时钟触发，不依赖网络。</div>
          <div class="skill-foot"><span class="btn ghost">打开</span><span class="btn text">设置</span>
            <span style="margin-left:auto" class="t-faint">最近使用 今天 07:00</span></div>
        </div>
        <div class="skill">
          <div class="skill-head"><div class="skill-ic acc">${icon('calendar', 19)}</div>
            <div><div class="skill-name">日程</div><div class="t-faint">今天 1 项 · 语音可查询</div></div>
            <div style="margin-left:auto">${pill('已启用', 'ok')}</div></div>
          <div class="skill-desc">查看日程、新建提醒；与记忆中心共享「我在哪、我关心什么」这类长期信息。</div>
          <div class="skill-foot"><span class="btn ghost">打开</span><span class="btn text">设置</span>
            <span style="margin-left:auto" class="t-faint">最近使用 今天 09:12</span></div>
        </div>
      </div>

      <div class="section-label">可添加</div>
      <div class="grid c3">
        <div class="skill sm">
          <div class="skill-head"><div class="skill-ic off">${icon('music', 17)}</div>
            <div><div class="skill-name">音乐</div><div class="t-faint">待接入</div></div></div>
          <div class="skill-desc">播放、暂停、下一首；曲库权限在设置里配置。</div>
        </div>
        <div class="skill sm">
          <div class="skill-head"><div class="skill-ic off">${icon('weather', 17)}</div>
            <div><div class="skill-name">天气</div><div class="t-faint">待接入</div></div></div>
          <div class="skill-desc">查询当前天气与未来预报。</div>
        </div>
        <div class="skill sm">
          <div class="skill-head"><div class="skill-ic off">${icon('chip', 17)}</div>
            <div><div class="skill-name">设备控制</div><div class="t-faint">规划中</div></div></div>
          <div class="skill-desc">音量、亮度、蓝牙等本机能力。</div>
        </div>
      </div>

      <div class="banner acc">${icon('info', 15)}
        <span>技能中心是唯一的扩展入口：新增技能只提供自己的页面和配置，不改主导航。</span>
        <span class="act btn text">扩展规范</span></div>
    </div>
  </div></div>`;

/* ---- three sample skills ---------------------------------------------- */

function skillShell(crumb, header, body, foot) {
  const sub = [{ label: '闹钟', on: crumb[1] === '闹钟' },
               { label: '日程', on: crumb[1] === '日程' },
               { label: '音乐', on: crumb[1] === '音乐' },
               { label: '全部技能' }];
  return `<div class="screen">
    ${rail({ active: 'skills', brand: true, sub })}
    <div class="main">${header}<div class="body">${body}</div>${foot || ''}</div></div>`;
}

S['skill.alarm'] = () => skillShell(['技能中心', '闹钟'],
  hdr({ crumb: ['技能中心', '闹钟'], actions: [{ icon: 'plus', line: true }, { label: '技能设置', kind: 'ghost' }] }),
  `<div class="cols">
    <div class="col grow">
      <div class="card tight" style="display:flex;align-items:center;gap:10px">
        ${pill('已启用', 'ok')}
        <span class="t-sm dim">语音可用：说「明天七点叫我起床」</span>
        <span style="margin-left:auto">${toggle(true)}</span>
      </div>
      <div class="card" style="padding:0;display:flex;flex-direction:column;flex:1 1 auto;overflow:hidden">
        <div class="item">
          <div class="alarm-time">07:00</div>
          <div class="grow"><div class="t1">工作日</div><div class="t2">周一 至 周五 · 贪睡 5 分钟</div></div>
          <div class="end">${toggle(true)}</div>
        </div>
        <div class="item">
          <div class="alarm-time">08:30</div>
          <div class="grow"><div class="t1">周六</div><div class="t2">仅周六 · 贪睡 10 分钟</div></div>
          <div class="end">${toggle(true)}</div>
        </div>
        <div class="item">
          <div class="alarm-time off">09:00</div>
          <div class="grow"><div class="t1 dim">周日</div><div class="t2">仅周日 · 已关闭</div></div>
          <div class="end">${toggle(false)}</div>
        </div>
        <div class="item">
          <div class="alarm-time off">12:20</div>
          <div class="grow"><div class="t1 dim">一次提醒</div><div class="t2">2026-11-25 · 已失效</div></div>
          <div class="end">${toggle(false)}</div>
        </div>
      </div>
    </div>
    <div class="col fixed">
      <div class="card">
        <div class="card-head"><span class="title">技能设置</span></div>
        ${row('默认铃声', '清晨')}
        ${row('音量', '70%')}
        ${row('贪睡', '5 分钟')}
        ${row('语音控制', toggle(true))}
      </div>
      <div class="card quiet" style="border-style:dashed">
        <div class="t-cap" style="line-height:1.6">
          闹钟由本机时钟触发。设备关机或技能被停用时，闹钟不会响。
        </div>
      </div>
    </div>
  </div>`,
  `<div class="foot"><span class="hint">4 个闹钟 · 2 个已启用</span>
    <span style="margin-left:auto" class="btn primary">${icon('plus', 14)}新增闹钟</span></div>`);

S['skill.calendar'] = () => skillShell(['技能中心', '日程'],
  hdr({ crumb: ['技能中心', '日程'], actions: [{ icon: 'plus', line: true }, { label: '本月', kind: 'ghost' }] }),
  `<div class="cols">
    <div class="col grow">
      <div class="card" style="flex:1 1 auto;display:flex;flex-direction:column;gap:8px">
        <div class="card-head"><span class="title">2026 年 11 月</span>
          <div class="more chips"><span class="chip">${icon('chevL', 14)}</span><span class="chip">${icon('chevR', 14)}</span></div></div>
        <div style="display:grid;grid-template-columns:repeat(7,1fr);gap:6px;font-size:12px;color:var(--text-3);text-align:center">
          <div>一</div><div>二</div><div>三</div><div>四</div><div>五</div><div>六</div><div>日</div>
        </div>
        <div style="display:grid;grid-template-columns:repeat(7,1fr);gap:6px;flex:1 1 auto">
          ${[22, 23, 24].map(d => `<div class="dcell away">${d}</div>`).join('')}
          ${[25, 26, 27, 28, 29].map(d => `<div class="dcell${d === 25 ? ' today' : ''}">${d}${d === 25 || d === 27 ? '<i></i>' : ''}</div>`).join('')}
          ${[30, 1, 2, 3, 4, 5].map(d => `<div class="dcell">${d}</div>`).join('')}
          ${[6, 7, 8, 9, 10, 11, 12].map(d => `<div class="dcell">${d}</div>`).join('')}
          ${[13, 14, 15, 16, 17, 18, 19].map(d => `<div class="dcell">${d}</div>`).join('')}
        </div>
      </div>
    </div>
    <div class="col fixed" style="flex-basis:300px">
      <div class="card" style="padding:0">
        <div class="card-head" style="padding:14px 16px 0 16px"><span class="title">今天 · 11 月 25 日</span></div>
        <div class="item" style="margin-top:10px">
          <div class="lead" style="font-family:var(--font-mono);font-size:13px;color:var(--accent)">15:00</div>
          <div class="grow"><div class="t1">项目评审</div><div class="t2">会议室 A · 提前 10 分钟提醒</div></div>
        </div>
        <div class="item">
          <div class="lead" style="font-family:var(--font-mono);font-size:13px;color:var(--text-3)">19:30</div>
          <div class="grow"><div class="t1">健身</div><div class="t2">重复：每周一、三</div></div>
        </div>
      </div>
      <div class="card">
        <div class="t-sm dim" style="line-height:1.6">
          日程与记忆中心联动：确认过的长期信息（例如「周三晚上固定开会」）会被日程建议引用，但不会自动创建事件。
        </div>
      </div>
    </div>
  </div>`,
  `<div class="foot"><span class="hint">本周 3 项 · 今天 2 项</span>
    <span style="margin-left:auto" class="btn primary">${icon('plus', 14)}新建日程</span></div>`);

S['skill.music'] = () => skillShell(['技能中心', '音乐'],
  hdr({ crumb: ['技能中心', '音乐'], actions: [{ label: '接入设置', kind: 'ghost' }] }),
  `<div class="cols">
    <div class="col grow">
      <div class="card" style="display:flex;gap:16px">
        <div class="cover">${icon('music', 34)}</div>
        <div style="flex:1 1 auto;display:flex;flex-direction:column;min-width:0">
          <div class="t-faint">正在播放 · 第 3 首</div>
          <div class="t-h1" style="margin-top:6px">夜航</div>
          <div class="t-sm dim" style="margin-top:2px">未接入曲库 · 示例数据</div>
          <div class="progress"><i style="width:38%"></i></div>
          <div style="display:flex;justify-content:space-between" class="t-faint">
            <span class="mono">01:12</span><span class="mono">03:08</span></div>
          <div style="display:flex;align-items:center;gap:12px;margin-top:14px">
            <span class="icon-btn line">${icon('chevL', 18)}</span>
            <span class="icon-btn line" style="width:44px;height:44px;border-radius:50%">${icon('play', 20)}</span>
            <span class="icon-btn line">${icon('chevR', 18)}</span>
            <span style="margin-left:auto" class="pill">${icon('volume', 14)} 音量 40%</span>
          </div>
        </div>
      </div>
      <div class="banner">${icon('info', 15)}
        <span>技能未接入：页面骨架与导航已就绪，接入曲库后即成为可用技能。</span>
        <span class="act btn text">接入说明</span></div>
      <div class="card" style="padding:0;flex:1 1 auto">
        <div class="card-head" style="padding:12px 16px 4px 16px"><span class="title">最近播放</span>
          <span class="more t-faint">本机记录</span></div>
        <div class="item"><div class="lead mono faint">10:22</div><div class="grow"><div class="t1">清晨</div>
          <div class="t2">每日推荐</div></div><div class="end t-faint">03:41</div></div>
        <div class="item"><div class="lead mono faint">昨天</div><div class="grow"><div class="t1">归途</div>
          <div class="t2">收藏</div></div><div class="end t-faint">04:05</div></div>
      </div>
    </div>
    <div class="col fixed" style="flex-basis:280px">
      <div class="card" style="padding:0">
        <div class="card-head" style="padding:14px 16px 8px 16px"><span class="title">播放列表</span>
          <span class="more t-faint">32 首</span></div>
        <div class="item"><div class="lead mono faint">01</div><div class="grow"><div class="t1">夜航</div></div></div>
        <div class="item hl"><div class="lead mono accent">02</div><div class="grow"><div class="t1">雨落</div>
          <div class="t2">播放中</div></div></div>
        <div class="item"><div class="lead mono faint">03</div><div class="grow"><div class="t1">清晨</div></div></div>
        <div class="item"><div class="lead mono faint">04</div><div class="grow"><div class="t1">归途</div></div></div>
      </div>
    </div>
  </div>`,
  `<div class="foot"><span class="hint">语音控制：说「下一首」「音量大一点」</span>
    <span style="margin-left:auto" class="btn ghost">收藏</span></div>`);

/* ---- memory ----------------------------------------------------------- */

S['memory'] = () => `<div class="screen">
  ${rail({ active: 'memory', brand: true })}
  <div class="main">
    ${hdr({ title: '记忆中心', sub: '12 条已启用 · 1 条待确认', actions: [
      { label: '清空', kind: 'ghost' }, { icon: 'plus', line: true }] })}
    <div class="body scroll">
      <div class="chips">
        <span class="chip on">全部 12</span><span class="chip">偏好 6</span>
        <span class="chip">事实 3</span><span class="chip">关系 2</span><span class="chip">设备 1</span>
        <span style="margin-left:auto" class="chip">${icon('search', 13)} 搜索记忆</span>
      </div>
      <div class="banner">${icon('info', 15)}
        <span>新学到 1 条：<b>「我不喝咖啡，改喝无糖茶」</b> — 需要你确认后才会长期生效。</span>
        <span class="act"><span class="btn text">确认</span><span class="btn quiet">忽略</span></span></div>
      <div class="card" style="padding:0">
        ${[
          ['偏好', 'acc', '我不喝咖啡，改喝无糖茶', '来源：10 月 12 日对话 · 两次提及', '待确认'],
          ['偏好', 'acc', '早上 7 点起床，晚上 11 点前睡觉', '来源：11 月 3 日对话 · 已生效 22 天', '已启用'],
          ['关系', '', '女儿小名「糖糖」，今年 6 岁', '来源：11 月 8 日对话 · 已生效 17 天', '已启用'],
          ['事实', '', '在杭州工作，通勤用地铁', '来源：11 月 10 日对话 · 已生效 15 天', '已启用'],
          ['偏好', 'acc', '回答尽量短，不要念长段落', '来源：10 月 30 日对话 · 已生效 26 天', '已启用']
        ].map(([tag, tone, text, meta, st]) => `
          <div class="item">
            <div class="lead"><span class="tag ${tone}">${tag}</span></div>
            <div class="grow"><div class="t1">${text}</div><div class="t2">${meta}</div></div>
            <div class="end">
              <span class="tag ${st === '待确认' ? 'warn' : 'ok'}">${st}</span>
              <span class="icon-btn">${icon('edit', 16)}</span>
              <span class="icon-btn">${icon('trash', 16)}</span>
            </div>
          </div>`).join('')}
      </div>
    </div>
  </div></div>`;

/* ---- settings --------------------------------------------------------- */

const settingsShell = (header, body, foot) => `<div class="screen">
  ${rail({ active: 'settings', brand: true })}
  <div class="main">${header}<div class="body scroll">${body}</div>${foot || ''}</div></div>`;

S['settings'] = () => settingsShell(
  hdr({ title: '设置', sub: '只放配置，不放交互' }),
  `<div class="card" style="padding:0">
    ${setrow('chip', '大模型配置', '豆包 · doubao-main · 4 套配置 · 最近调用 23 次', `<div class="sv">已连接</div>`)}
    ${setrow('mic', '语音', '唤醒词、连续对话、播报音量与语速', `<div class="sv">唤醒 · 连续对话</div>`)}
    ${setrow('palette', '外观', '主题：深色 · 字号：标准', `<div class="sv">深色</div>`)}
    ${setrow('settings', '系统', '开机自启、后台服务、存储与日志', '')}
  </div>
  <div class="card" style="padding:0">
    ${setrow('info', '诊断与状态', '后台服务、模型调用、事件队列的实时数字', '')}
    ${setrow('trash', '清除本机数据', '对话记录、记忆与配置分别清除', '')}
  </div>
  <div class="card quiet" style="border-style:dashed">
    <div class="t-cap" style="line-height:1.7">
      边界：设置负责「配置」，记忆中心负责「长期数据」，技能中心负责「能力」。首页只负责交互与状态，
      不出现任何配置项。
    </div>
  </div>`);

S['settings.models'] = () => settingsShell(
  hdr({ crumb: ['设置', '大模型配置'], actions: [{ icon: 'plus', line: true }] }),
  `<div class="card">
    <div class="card-head"><span class="title">当前生效</span>
      <span class="tag ok">热加载 4 次</span>
      <span class="more btn">${icon('check', 14)}测试连接</span></div>
    <div style="display:flex;align-items:center;gap:12px">
      <div style="font-size:20px;font-weight:700">豆包 · doubao-main</div>
      <span class="tag acc">默认</span>
      <span class="t-faint">Endpoint ep-2024-stub</span>
    </div>
    <div class="t-sm faint mono" style="margin-top:6px">https://ark.cn-beijing.volces.com/api/v3</div>
    <div style="display:flex;gap:18px;margin-top:10px" class="t-sm dim">
      <span>成功 <b class="ok">21</b></span><span>失败 <b class="err">2</b></span>
      <span>超时 <b>0</b></span><span>最近 HTTP <b>200</b></span><span>耗时 <b>643 ms</b></span>
    </div>
  </div>
  <div class="section-label">已保存的配置 · 显示 3 / 共 4（上限 8）</div>
  <div class="card" style="padding:0">
    ${[
      ['doubao-main', '豆包 · ep-2024-stub', 'https://ark.cn-beijing.volces.com/api/v3', 'Endpoint', 'sk-7c1e0b93-4a2f-4d10-9e77-2b6c8f5d1a44', true],
      ['qwen-native', '通义千问 · qwen-plus', 'https://dashscope.aliyuncs.com/api/v1', '原生报文', 'sk-3a9f2c7e1b5d4086a1e7f2c9b4d8e6f1', false],
      ['qwen-compat', '通义千问 · qwen-max', 'https://dashscope.aliyuncs.com/compatible-mode/v1', '兼容模式', 'sk-3a9f2c7e1b5d4086a1e7f2c9b4d8e6f1', false]
    ].map(([id, head, base, mode, key, def]) => `
      <div class="item" style="align-items:flex-start;padding:12px 16px">
        <div class="grow">
          <div style="display:flex;align-items:center;gap:8px">
            <span class="t1" style="font-weight:700">${id}</span>
            <span class="t2" style="margin:0">${head}</span>
            ${def ? '<span class="tag ok">默认</span>' : ''}
            <span class="tag">${mode}</span>
          </div>
          <div class="t2 mono" style="margin-top:4px">${base}</div>
          <div class="t2 mono" style="margin-top:2px">API Key：${key} <span class="faint">（明文，可查看与修改）</span></div>
        </div>
        <div class="end" style="padding-top:2px">
          <span class="btn text">测试</span><span class="btn text">编辑</span><span class="btn danger">删除</span>
        </div>
      </div>`).join('')}
  </div>`,
  `<div class="foot"><span class="hint">改动保存后立即生效，不需要重启后台服务</span>
    <span style="margin-left:auto" class="btn primary">${icon('plus', 14)}新增配置</span></div>`);

S['settings.voice'] = () => settingsShell(
  hdr({ crumb: ['设置', '语音'], actions: [{ label: '试听', kind: 'ghost' }] }),
  `<div class="card" style="padding:0">
    ${setrow('mic', '语音唤醒', '唤醒词「天猫精灵」· 原厂唤醒引擎，未改动', toggle(true))}
    ${setrow('more', '连续对话', '一轮结束后 8 秒内可直接说下一句', toggle(true))}
    ${setrow('volume', '播报音量', '与原厂 TTS 共用同一音量通道', `<div class="sv">70%</div>`)}
    ${setrow('music', '播报语速', '仅影响新开始的播报', `<div class="sv">1.0x</div>`)}
  </div>
  <div class="card" style="padding:0">
    ${setrow('stop', '允许打断', '说话时自动打断当前播报', toggle(true))}
    ${setrow('info', '回声抑制', '避免把自己的播报当成用户说话', toggle(true))}
  </div>
  <div class="card quiet" style="border-style:dashed">
    <div class="t-cap" style="line-height:1.7">
      这一页只改参数，不改变底层链路：唤醒、ASR、TTS 仍走原厂能力，执行器与守护进程不受影响。
    </div>
  </div>`);

S['settings.appearance'] = () => settingsShell(
  hdr({ crumb: ['设置', '外观'] }),
  `<div class="card" style="padding:0">
    <div class="setrow"><div class="si">${icon('palette', 16)}</div>
      <div><div class="st">主题</div><div class="sd">深色为默认；浅色是同一套 token 的替换</div></div>
      <div class="sv"></div>
      <div class="seg"><span class="on">深色</span><span>浅色</span><span>跟随系统</span></div></div>
    <div class="setrow"><div class="si">${icon('edit', 16)}</div>
      <div><div class="st">字号</div><div class="sd">影响正文与列表，不影响标题层级</div></div>
      <div class="sv"></div>
      <div class="seg"><span class="on">标准</span><span>大</span></div></div>
    <div class="setrow"><div class="si">${icon('home', 16)}</div>
      <div><div class="st">导航样式</div><div class="sd">设备屏幕 1024×600，默认展开文字</div></div>
      <div class="sv"></div>
      <div class="seg"><span class="on">图标+文字</span><span>仅图标</span></div></div>
    <div class="setrow"><div class="si">${icon('play', 16)}</div>
      <div><div class="st">首页动效</div><div class="sd">语音光环呼吸与波形；关闭后只保留静态状态</div></div>
      <div class="sv"></div>${toggle(true)}</div>
  </div>
  <div class="card">
    <div class="card-head"><span class="title">预览</span><span class="more t-faint">1024 × 600 · mdpi</span></div>
    <div style="display:flex;gap:10px">
      <div style="flex:1;height:64px;border-radius:10px;background:#0B0E13;border:1px solid #212934;display:flex;align-items:center;justify-content:center" class="t-sm dim">深色</div>
      <div style="flex:1;height:64px;border-radius:10px;background:#F4F6FA;border:1px solid #DCE3ED;display:flex;align-items:center;justify-content:center;color:#586475" class="t-sm">浅色</div>
    </div>
  </div>`);

S['settings.system'] = () => settingsShell(
  hdr({ crumb: ['设置', '系统'] }),
  `<div class="card" style="padding:0">
    ${setrow('chip', '开机自启', '后台服务随系统启动，语音随时可用', toggle(true))}
    ${setrow('info', '后台服务', '运行中 · pid 8123 · 已运行 4 小时 12 分', '')}
    ${setrow('memory', '存储占用', '对话记录 1.8 MB · 记忆 42 KB · 配置 6 KB', '')}
    ${setrow('trash', '清除本机数据', '对话记录、记忆、模型配置可分别清除', `<div class="sv">选择一个</div>`)}
  </div>
  <div class="card" style="padding:0">
    ${setrow('edit', '日志级别', '写入 /data/local/tmp 供排查使用', `<div class="sv">信息</div>`)}
    ${setrow('search', '导出诊断', '打包状态快照与最近 200 条日志', `<div class="btn ghost">导出</div>`)}
  </div>
  <div class="banner">${icon('info', 15)}
    <span>卸载或清除数据会一并删除模型配置与记忆。清除前会二次确认。</span></div>`);

/* ---- about ------------------------------------------------------------ */

S['about'] = () => `<div class="screen">
  ${rail({ active: 'about', brand: true })}
  <div class="main">${hdr({ title: '关于', sub: '版本、运行状态、诊断' })}
    <div class="body scroll">
      <div class="card" style="display:flex;align-items:center;gap:14px">
        <div class="rail-mark" style="width:44px;height:44px;border-radius:13px;font-size:15px">T9</div>
        <div>
          <div class="t-h1">TG-Z02 语音助手</div>
          <div class="t-sm faint" style="margin-top:2px">应用 v1.2.0 · 设备 AILABS_S1L · Android 8.1（API 27）</div>
        </div>
        <div style="margin-left:auto">${pill('运行正常', 'ok')}</div>
      </div>
      <div class="card" style="padding:0">
        ${row('唤醒 / ASR', '原厂能力 · 未改动')}
        ${row('对话模型', '豆包 · doubao-main · ep-2024-stub')}
        ${row('语音播报', '原厂 TTS · 执行器 8c79c506')}
        ${row('后台服务', 'pid 8123 · 已运行 4 小时 12 分')}
        ${row('最近调用', '成功 21 / 失败 2 / 超时 0 · 最近 643 ms')}
      </div>
      <div class="card" style="padding:0">
        ${setrow('info', '更新日志', '最近三次改动的摘要', '')}
        ${setrow('edit', '开源与许可', '第三方组件清单', '')}
      </div>
    </div>
  </div></div>`;

/* ---- extension template (the spec page) -------------------------------- */

S['spec.skill'] = () => `<div class="screen">
  ${rail({ active: 'skills', brand: true, sub: [{ label: '闹钟', on: true }, { label: '日程' }, { label: '音乐' }, { label: '全部技能' }] })}
  <div class="main">
    ${hdr({ crumb: ['技能中心', '某个技能'], actions: [{ icon: 'plus', line: true }, { label: '技能设置', kind: 'ghost' }] })}
    <div class="body">
      <div class="guide-wrap">
        <div class="zone" style="flex:0 0 auto">
          <span class="zn">1</span>
          <div class="zone-lbl">技能头部 · 名称 / 图标 / 启用状态 / 语音可用性</div>
        </div>
        <div class="zone" style="flex:1 1 auto">
          <span class="zn">2</span>
          <div class="zone-lbl">主操作区 · 该技能最重要的一个对象（列表 / 日历 / 播放器）</div>
          <div class="skeleton">
            <i style="width:100%"></i><i style="width:82%"></i><i style="width:64%"></i>
          </div>
        </div>
        <div style="display:flex;gap:12px;flex:0 0 auto">
          <div class="zone" style="flex:1 1 auto">
            <span class="zn">3</span>
            <div class="zone-lbl">技能设置区 · 只属于本技能的参数</div>
          </div>
          <div class="zone" style="flex:1 1 auto">
            <span class="zn">4</span>
            <div class="zone-lbl">状态与提示 · 未接入 / 受限 / 错误要在这里说清</div>
          </div>
        </div>
      </div>
      <div class="card quiet" style="border-style:dashed">
        <div class="t-sm dim" style="line-height:1.8">
          <b class="accent">5</b> 底部操作条：本技能的主操作（新增 / 新建 / 接入）固定放在右下角，与其它技能位置一致。<br>
          <b class="accent">6</b> 头部左侧永远是「技能中心 / 技能名」面包屑，返回上一级只回技能中心，不改主导航。
        </div>
      </div>
    </div>
    <div class="foot"><span class="hint">5 个区域，任何技能都必须照着摆</span>
      <span style="margin-left:auto" class="btn primary">${icon('plus', 14)}主操作</span></div>
  </div></div>`;

/* ------------------------------------------------------------------ mount */

function render(id) {
  const fn = S[id];
  if (!fn) return `<div style="color:#fff;padding:40px;font:14px sans-serif">unknown screen: ${id}</div>`;
  return fn();
}

const SCREEN_IDS = Object.keys(S);

if (typeof window !== 'undefined' && document.getElementById('app')) {
  const q = new URLSearchParams(location.search);
  const id = q.get('s') || 'home.standby';
  document.getElementById('app').innerHTML = render(id);
  document.title = 'TG-Z02 · ' + id;
}
