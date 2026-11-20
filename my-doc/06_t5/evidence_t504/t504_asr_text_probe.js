'use strict';
/*
 * t504_asr_text_probe.js -- T5-04 原厂云端 ASR 文字只读探针
 *
 * 用途：从 TG-Z02 原厂语音链路中只读获取云端 ASR 返回的中文识别文字，
 *       并区分中间结果(partial) / 最终结果(final) / 空结果(empty) / 读失败(error)。
 *
 * 加载方式（宿主）：
 *   frida -U -p <pid:com.alibaba.ailabs.genie.smartapp:core> -l t504_asr_text_probe.js
 *   或 python: session.create_script(open('t504_asr_text_probe.js').read())
 *
 * 只读约束（任务书 §5.1 / §9）：
 *   - 只 Hook 已通过静态分析 + 真机验证的函数，全部位于 libsmartbox.so
 *   - 只读参数与内存；不写内存、不改寄存器、不改返回值
 *   - 不调用原厂函数、不阻断原厂回调、不发网络请求、不修改任何文件
 *   - 不记录 Token / Cookie / 账号 / 鉴权凭证；只输出识别文本与会话标识
 *
 * 已验证 Hook 点（模块基址 + 偏移在每次加载时校验，不符即拒绝 Hook）：
 *   H1 AliAiLabs::AGUI::SessionManager::onStream(int sid, char const* text,
 *                                               u_char isFinished, u_char isOffline, u_char needNlp)
 *        offset 0x11353c   —— 主钩子：sessionId + 文本 + isFinished(实测 0=partial,1=final)
 *   H2 AliAiLabs::AGUI::PerformanceData::setTextTime(int sid, char const* text, long long t, u_char)
 *        offset 0x137dbc   —— 旁证：原厂用它打印 "asr first text" / "asrResult last text"
 *                             （第 4 参在该 ARM32 ABI 下未落到可判定槽位，故不用于分类，仅记录原始栈字）
 *   H3 AGVadStateMachine::handleAsrResult(std::string const& text)
 *        offset 0xde9e4    —— 语音引擎侧 dirty 文本（未去唤醒词）
 *   H4 CloudASRManager::handleCloudASRResult(char const* asrLogId, std::string const& text)
 *        offset 0xd9e30    —— 服务器 asrLogId + 文本
 *
 * std::string 布局（本机实测；与 AGSpeechEngine::onListenResult 反汇编一致）：
 *   (byte0 & 1) == 0 : short, len = byte0>>1, data = p+1
 *   (byte0 & 1) == 1 : long , len = u32[p+4], data = u32[p+8]
 */

var MODULE = 'libsmartbox.so';
var MAX_HITS = 4000;
var MAX_TEXT = 512;

var seq = 0;
var counters = { hits: 0, hook_errors: 0, read_errors: 0, final: 0, partial: 0 };
var lastFinalBySession = {};
var currentSession = 0;

var HOOKS = [
  {
    id: 'H1', fn: 'SessionManager::onStream', kind: 'stream', primary: true,
    sym: '_ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh', off: 0x11353c
  },
  {
    id: 'H2', fn: 'PerformanceData::setTextTime', kind: 'settexttime', primary: false,
    sym: '_ZN9AliAiLabs4AGUI15PerformanceData11setTextTimeEiPKcxh', off: 0x137dbc
  },
  {
    id: 'H3', fn: 'AGVadStateMachine::handleAsrResult', kind: 'stdstring', primary: false,
    sym: '_ZN17AGVadStateMachine15handleAsrResultERKNSt6__ndk112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE', off: 0xde9e4
  },
  {
    id: 'H4', fn: 'CloudASRManager::handleCloudASRResult', kind: 'logid_stdstring', primary: false,
    sym: '_ZN15CloudASRManager20handleCloudASRResultEPKcRKNSt6__ndk112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE', off: 0xd9e30
  }
];

function nowIso() { return new Date().toISOString(); }

function readCString(p) {
  if (p.isNull()) return '';
  return p.readUtf8String().slice(0, MAX_TEXT);
}

function readStdString(addr) {
  var b0 = addr.readU8(), len, data;
  if (b0 & 1) { len = addr.add(4).readU32(); data = addr.add(8).readPointer(); }
  else { len = b0 >> 1; data = addr.add(1); }
  if (len > 8192) throw new Error('suspicious length ' + len);
  if (data.isNull()) throw new Error('null data pointer');
  return { text: len ? data.readUtf8String(len).slice(0, MAX_TEXT) : '', len: len };
}

function classify(text, isFinal, sessionId, hasFlag) {
  if (text === undefined || text === null) return 'error';
  if (text.length === 0) return 'empty';
  if (hasFlag) return isFinal === 1 ? 'final' : (lastFinalBySession[sessionId] ? 'post_final' : 'partial');
  return lastFinalBySession[sessionId] ? 'post_final' : 'partial';
}

function countType(t) {
  if (t === 'final') counters.final++;
  else if (t === 'partial') counters.partial++;
}

function emit(rec) {
  if (counters.hits >= MAX_HITS) return;
  counters.hits++;
  if (rec.result_type) countType(rec.result_type);
  send(rec);
}

var mod = Process.getModuleByName(MODULE);
send({
  t: 'module', module: MODULE, base: mod.base.toString(), size: mod.size, path: mod.path,
  pid: Process.id, arch: Process.arch, pointer_size: Process.pointerSize
});

for (var i = 0; i < HOOKS.length; i++) {
  (function (h) {
    var fp = Module.findExportByName(MODULE, h.sym);
    if (fp === null) {
      counters.hook_errors++;
      send({ t: 'hook_error', hook: h.id, fn: h.fn, msg: 'export not found in ' + MODULE });
      return;
    }
    var off = fp.sub(mod.base).toInt32();
    var match = off === h.off;
    send({
      t: 'hook', hook: h.id, fn: h.fn, module: MODULE, addr: fp.toString(),
      offset: '0x' + off.toString(16), expect: '0x' + h.off.toString(16),
      offset_match: match, attached: match ? true : false
    });
    if (!match) {
      /* 偏移不符（设备文件与静态分析版本不一致）时不 Hook，避免拦错函数 */
      counters.hook_errors++;
      return;
    }
    Interceptor.attach(fp, {
      onEnter: function (args) {
        var rec = {
          t: 'asr', hook: h.id, fn: h.fn, seq: ++seq, ts: nowIso(),
          pid: Process.id, tid: Process.getCurrentThreadId(),
          module: MODULE, offset: '0x' + off.toString(16)
        };
        try {
          if (h.kind === 'stream') {
            var sid = args[1].toInt32();
            rec.session_id = sid;
            rec.text = readCString(args[2]);
            rec.text_length = rec.text.length;
            rec.is_finished = args[3].toInt32();
            currentSession = sid;
            rec.result_type = classify(rec.text, rec.is_finished, sid, true);
            if (rec.result_type === 'final') lastFinalBySession[sid] = true;
          } else if (h.kind === 'settexttime') {
            var sid2 = args[1].toInt32();
            rec.session_id = sid2;
            rec.text = readCString(args[2]);
            rec.text_length = rec.text.length;
            rec.arg4_raw = this.context.sp.readU32();   /* 原始栈字，不参与分类 */
            rec.result_type = classify(rec.text, 0, sid2, false);
          } else if (h.kind === 'stdstring') {
            var s = readStdString(args[1]);
            rec.session_id = currentSession;
            rec.text = s.text; rec.text_length = s.len;
            rec.result_type = classify(rec.text, 0, currentSession, false);
          } else if (h.kind === 'logid_stdstring') {
            rec.asr_log_id = readCString(args[1]);
            var s2 = readStdString(args[2]);
            rec.session_id = currentSession;
            rec.text = s2.text; rec.text_length = s2.len;
            rec.result_type = classify(rec.text, 0, currentSession, false);
          }
        } catch (e) {
          counters.read_errors++;
          rec.result_type = 'error';
          rec.error = String(e);
        }
        emit(rec);
      }
    });
  })(HOOKS[i]);
}

send({ t: 'ready', hooks: HOOKS.length, counters: counters, ts: nowIso() });

rpc.exports = {
  stats: function () {
    return { hits: counters.hits, hook_errors: counters.hook_errors,
             read_errors: counters.read_errors, final: counters.final,
             partial: counters.partial, sessions: Object.keys(lastFinalBySession).length };
  }
};
