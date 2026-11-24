/* =============================================================================
 * icons.js -- the TG-Z02 icon set (T9-UI-01), as geometry, not as files.
 *
 * Why geometry: the app ships no res/ tree (javac + d8 + aapt2 on the manifest
 * only), so there is no drawable folder and no vector XML. Every icon is drawn
 * at runtime by Canvas with four primitives. Keeping the icon sheet as data means
 * the prototype below and Icons.java use the *same numbers* -- see
 * UI_DESIGN_SYSTEM.md section 7 for the Java recipe and the full table.
 *
 * primitives on a 24 x 24 grid, stroke 1.6, round caps and joins, no fill
 *   ['circle', cx, cy, r]        outline circle
 *   ['line',   x1, y1, x2, y2]   stroke
 *   ['rrect',  x, y, w, h, r]    outline rounded rectangle
 *   ['poly',   [x, y, ...]]      polyline
 *   ['dot',    cx, cy, r]        filled dot
 *   ['fillpoly', [x, y, ...]]    filled polygon (only play triangle)
 * ========================================================================== */

const ICONS = {
  home: [
    ['poly', [3.4, 10.8, 12, 3.6, 20.6, 10.8]],
    ['poly', [6.0, 9.8, 6.0, 20.2, 18.0, 20.2, 18.0, 9.8]],
    ['rrect', 9.8, 14.4, 4.4, 5.8, 1.2]
  ],
  skills: [
    ['rrect', 3.6, 3.6, 7.2, 7.2, 2.0],
    ['rrect', 13.2, 3.6, 7.2, 7.2, 2.0],
    ['rrect', 3.6, 13.2, 7.2, 7.2, 2.0],
    ['rrect', 13.2, 13.2, 7.2, 7.2, 2.0]
  ],
  memory: [
    ['rrect', 3.6, 5.4, 16.8, 13.2, 3.0],
    ['line', 7.6, 9.6, 16.4, 9.6],
    ['line', 7.6, 13.0, 13.6, 13.0],
    ['line', 7.6, 16.2, 11.0, 16.2]
  ],
  settings: [
    ['line', 3.6, 7.2, 20.4, 7.2],  ['circle', 9.2, 7.2, 2.3],
    ['line', 3.6, 12.0, 20.4, 12.0], ['circle', 15.2, 12.0, 2.3],
    ['line', 3.6, 16.8, 20.4, 16.8], ['circle', 11.0, 16.8, 2.3]
  ],
  info: [
    ['circle', 12, 12, 8.4],
    ['line', 12, 11.2, 12, 16.4],
    ['dot', 12, 7.9, 1.05]
  ],
  alarm: [
    ['circle', 12, 13.2, 7.1],
    ['line', 12, 13.2, 12, 9.3],
    ['line', 12, 13.2, 14.9, 14.6],
    ['line', 3.8, 5.9, 6.2, 3.9],
    ['line', 20.2, 5.9, 17.8, 3.9]
  ],
  calendar: [
    ['rrect', 3.4, 5.8, 17.2, 14.6, 2.6],
    ['line', 3.4, 10.4, 20.6, 10.4],
    ['line', 8.0, 3.6, 8.0, 7.2],
    ['line', 16.0, 3.6, 16.0, 7.2],
    ['dot', 8.2, 14.0, 1.1],
    ['line', 12.0, 14.0, 16.0, 14.0]
  ],
  music: [
    ['line', 9.4, 17.4, 9.4, 6.6],
    ['line', 9.4, 6.6, 19.0, 4.8],
    ['line', 19.0, 4.8, 19.0, 15.4],
    ['circle', 7.2, 17.4, 2.2],
    ['circle', 16.8, 15.4, 2.2]
  ],
  weather: [
    ['circle', 9.0, 8.6, 3.3],
    ['rrect', 6.2, 13.8, 11.6, 4.8, 2.4]
  ],
  mic: [
    ['rrect', 8.8, 3.4, 6.4, 10.4, 3.2],
    ['line', 12.0, 14.2, 12.0, 18.0],
    ['line', 8.8, 18.0, 15.2, 18.0],
    ['line', 6.0, 10.4, 6.0, 11.8],
    ['line', 18.0, 10.4, 18.0, 11.8]
  ],
  plus: [
    ['line', 12, 4.6, 12, 19.4],
    ['line', 4.6, 12, 19.4, 12]
  ],
  chevL: [['poly', [14.6, 5.6, 8.6, 12.0, 14.6, 18.4]]],
  chevR: [['poly', [9.4, 5.6, 15.4, 12.0, 9.4, 18.4]]],
  check: [['poly', [4.8, 12.6, 9.8, 17.4, 19.2, 6.8]]],
  stop: [['rrect', 6.6, 6.6, 10.8, 10.8, 2.4]],
  play: [['fillpoly', [8.6, 5.6, 18.4, 12.0, 8.6, 18.4]]],
  search: [
    ['circle', 10.8, 10.8, 6.6],
    ['line', 15.7, 15.7, 20.0, 20.0]
  ],
  more: [
    ['dot', 6.0, 12.0, 1.2],
    ['dot', 12.0, 12.0, 1.2],
    ['dot', 18.0, 12.0, 1.2]
  ],
  trash: [
    ['rrect', 5.4, 7.0, 13.2, 13.0, 2.0],
    ['line', 4.0, 7.0, 20.0, 7.0],
    ['line', 9.6, 4.4, 14.4, 4.4],
    ['line', 10.4, 10.6, 10.4, 16.4],
    ['line', 13.6, 10.6, 13.6, 16.4]
  ],
  edit: [
    ['line', 4.6, 19.4, 5.8, 14.8],
    ['line', 5.8, 14.8, 16.6, 4.0],
    ['line', 16.6, 4.0, 20.0, 7.4],
    ['line', 20.0, 7.4, 9.2, 18.2],
    ['line', 9.2, 18.2, 4.6, 19.4]
  ],
  volume: [
    ['poly', [4.4, 9.6, 8.2, 9.6, 12.6, 5.6, 12.6, 18.4, 8.2, 14.4, 4.4, 14.4]],
    ['line', 16.0, 9.8, 19.4, 12.0],
    ['line', 19.4, 12.0, 16.0, 14.2]
  ],
  chip: [
    ['rrect', 6.4, 6.4, 11.2, 11.2, 2.0],
    ['line', 9.6, 3.2, 9.6, 6.4],  ['line', 14.4, 3.2, 14.4, 6.4],
    ['line', 9.6, 17.6, 9.6, 20.8], ['line', 14.4, 17.6, 14.4, 20.8],
    ['line', 3.2, 9.6, 6.4, 9.6],  ['line', 3.2, 14.4, 6.4, 14.4],
    ['line', 17.6, 9.6, 20.8, 9.6], ['line', 17.6, 14.4, 20.8, 14.4]
  ],
  palette: [
    ['circle', 12, 12, 8.4],
    ['dot', 9.0, 9.0, 1.2],
    ['dot', 15.0, 9.4, 1.2],
    ['dot', 9.4, 15.0, 1.2]
  ]
};

/* render one icon as inline SVG (prototype only; the device draws with Canvas) */
function icon(name, size, cls) {
  const spec = ICONS[name] || [];
  const w = 1.6;
  let body = '';
  for (const p of spec) {
    if (p[0] === 'circle') {
      body += `<circle cx="${p[1]}" cy="${p[2]}" r="${p[3]}" fill="none" stroke="currentColor" stroke-width="${w}"/>`;
    } else if (p[0] === 'dot') {
      body += `<circle cx="${p[1]}" cy="${p[2]}" r="${p[3]}" fill="currentColor"/>`;
    } else if (p[0] === 'line') {
      body += `<line x1="${p[1]}" y1="${p[2]}" x2="${p[3]}" y2="${p[4]}" stroke="currentColor" stroke-width="${w}" stroke-linecap="round"/>`;
    } else if (p[0] === 'rrect') {
      body += `<rect x="${p[1]}" y="${p[2]}" width="${p[3]}" height="${p[4]}" rx="${p[5]}" ry="${p[5]}" fill="none" stroke="currentColor" stroke-width="${w}"/>`;
    } else if (p[0] === 'poly') {
      const a = p[1];
      let pts = '';
      for (let i = 0; i < a.length; i += 2) pts += `${a[i]},${a[i + 1]} `;
      body += `<polyline points="${pts.trim()}" fill="none" stroke="currentColor" stroke-width="${w}" stroke-linecap="round" stroke-linejoin="round"/>`;
    } else if (p[0] === 'fillpoly') {
      const a = p[1];
      let pts = '';
      for (let i = 0; i < a.length; i += 2) pts += `${a[i]},${a[i + 1]} `;
      body += `<polygon points="${pts.trim()}" fill="currentColor" stroke="none"/>`;
    }
  }
  return `<svg class="ic ${cls || ''}" width="${size || 18}" height="${size || 18}" viewBox="0 0 24 24" aria-hidden="true">${body}</svg>`;
}
