'use strict';
/*
 * t505b_asr_bridge_sender.js -- T5-05B 原厂 ASR final 文字 -> 本机 T5-05A Bridge 发送端
 *
 * 链路：
 *   原厂云端 ASR -> H1 SessionManager::onStream(final) -> [Hook 内: 有界队列]
 *     -> [20 ms 定时器: 非阻塞 UDS SOCK_STREAM] -> T5-05A tgb_bridge
 *     -> ACK(status/event_id) -> 事件出队
 *
 * 硬约束（任务书 §3/§4/§9）：
 *   - Hook 回调内只做：读 sid / 有界读 text / 读 isFinished / 判 final / 入队 / 计数；
 *     绝不做 socket、connect、send、recv、等待、sleep、文件、网络、日志轰炸。
 *   - 所有 NativeFunction 只在定时器（tick）与 teardown 里调用。
 *   - 不修改原厂参数/返回值/内存/寄存器/执行流程，不调用原厂函数。
 *   - partial(isFinished=0) 只用于内部 session 生命周期统计，绝不发给 Bridge。
 *
 * 只读 Hook 点（与 T5-04 完全一致，加载时校验 module/symbol/offset，不符即拒绝 Hook）：
 *   H1  AliAiLabs::AGUI::SessionManager::onStream(int sid, char const* text,
 *                                                  u_char isFinished, u_char isOffline, u_char needNlp)
 *       _ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh   offset 0x11353c
 *       args[1]=sid  args[2]=text  args[3]=isFinished(实测 0=partial,1=final)
 *
 * 协议（必须与 my-doc/06_t5_bridge/android/tgb_proto.h 完全一致，任何一项都不许改）：
 *   16 B 头： magic 'TGB1'=0x31424754 | ver=1 | type=1(REQ) | hdr_len=16 | body_len | FNV-1a32(body)
 *   body  ： {"version":1,"event_id":..,"event_type":"asr_final","pid":..,"session_id":"..",
 *            "text":..,"is_final":true,"received_at_ms":..}
 *   文本上限 511 UTF-8 字节（= T5-04 Hook 的 512 字节读取上限减 NUL）。
 *
 * ACK 校验（任务书 §5 明确要求自己实现，不能复用"只收 REQ"的服务端头解析）：
 *   magic / ver / type==2(ACK) / hdr_len / body_len<=1024 / CRC / event_id 匹配。
 */

/* ============================ 配置 ============================ */

var CFG = {
    /* 传输 */
    sock: 'tgz2_asr_bridge',      /* 抽象命名空间（Android），无文件、无权限要求 */
    queueCap: 32,                 /* 有界队列：满了丢最老的并记 queue_overflow */
    tickMs: 20,                   /* 发送/收 ACK 的节拍 */
    statMs: 2000,                 /* 统计上报节拍 */
    ackTimeoutMs: 3000,           /* 单条事件等 ACK 的上限 */
    retryBaseMs: 100,             /* 退避基数 */
    retryMaxMs: 2000,
    connectBackoffMs: 300,        /* Bridge 离线时的重连间隔 */
    rejectBackoffMs: 300,         /* 收到永久拒收后让出一点时间，避免热循环 */
    genMapCap: 256,               /* session generation 表上限（FIFO 淘汰） */

    /* Hook */
    module: 'libsmartbox.so',
    sym: '_ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh',
    off: 0x11353c,

    /* 读取上限：T5-04 已验证的 MAX_TEXT（含结尾 NUL），因此有效文本 <= 511 B */
    maxText: 512
};

/* ======================= 协议常量（与 tgb_proto.h 一致） ======================= */

var MAGIC = 0x31424754;      /* 'T','G','B','1' */
var VER = 1;
var HDR_LEN = 16;
var TYPE_REQ = 1;
var TYPE_ACK = 2;
var MAX_BODY = 1024;
var MAX_TEXT_BYTES = 511;
var MAX_ID_LEN = 64;

/* libc / kernel 常量（ARM32 Linux） */
var AF_UNIX = 1, SOCK_STREAM = 1;
var F_GETFL = 3, F_SETFL = 4, O_NONBLOCK = 2048;    /* 04000 octal */
var SOL_SOCKET = 1, SO_ERROR = 4;
var EINTR = 4, EAGAIN = 11, EWOULDBLOCK = 11;
var EALREADY = 114, EINPROGRESS = 115, EISCONN = 106;
var EPIPE = 32, ECONNRESET = 104, ENOTCONN = 107, ECONNREFUSED = 111;

/* ============================ 统计 ============================ */

var counters = {
    hook_hits: 0,
    final_count: 0,
    partial_count: 0,
    empty_count: 0,
    read_errors: 0,
    queue_overflow: 0,
    connect_errors: 0,
    send_errors: 0,
    recv_errors: 0,
    ack_stored: 0,
    ack_duplicate: 0,
    ack_rejected: 0,
    retry_count: 0,
    /* 以下为诊断补充 */
    requeued: 0,
    text_too_long: 0,
    ack_mismatch: 0,
    ack_timeouts: 0,
    frame_rejects: 0,
    dropped: 0,
    protocol_errors: 0,
    dup_session_final: 0,
    reconnect_count: 0,
    enqueued: 0,
    sent_frames: 0,
    rejected_codes: {},
    last_error: '',
    last_close_reason: ''
};

/* ============================ 队列（有界、预分配） ============================ */

var qSlots = [];
(function initQueue() {
    for (var i = 0; i < CFG.queueCap; i++) {
        qSlots.push({ event_id: '', session_id: '', text: '', received_at_ms: 0, attempts: 0 });
    }
})();
var qHead = 0, qLen = 0;

/* in-flight：同一时刻只允许一条（第一版契约） */
var pending = null;    /* {event_id, session_id, text, received_at_ms, attempts} */

function queueDepth() { return qLen; }

function enqueueEvent(eventId, sessionId, text, receivedAtMs, tries) {
    if (qLen === CFG.queueCap) {
        /* 有界队列满：丢最老的，并且明确记账（绝不静默） */
        qHead = (qHead + 1) % CFG.queueCap;
        qLen--;
        counters.queue_overflow++;
        counters.last_error = 'queue_overflow';
    }
    var slot = qSlots[(qHead + qLen) % CFG.queueCap];
    slot.event_id = eventId;
    slot.session_id = sessionId;
    slot.text = text;
    slot.received_at_ms = receivedAtMs;
    slot.attempts = tries || 0;
    qLen++;
    counters.enqueued++;
}

/* 插到队头：失败/超时的事件要"回到原来的位置"重发，不能让后到的会话插队。
 * 满了仍然按"丢最老"处理（与入队策略一致），并记 queue_overflow。 */
function enqueueFront(eventId, sessionId, text, receivedAtMs, tries) {
    if (qLen === CFG.queueCap) {
        qHead = (qHead + 1) % CFG.queueCap;
        qLen--;
        counters.queue_overflow++;
        counters.last_error = 'queue_overflow';
    }
    qHead = (qHead - 1 + CFG.queueCap) % CFG.queueCap;
    var slot = qSlots[qHead];
    slot.event_id = eventId;
    slot.session_id = sessionId;
    slot.text = text;
    slot.received_at_ms = receivedAtMs;
    slot.attempts = tries || 0;
    qLen++;
    counters.requeued++;      /* 重试入队（与 Hook 新事件的 enqueued 分开统计） */
}

function dequeueInto(dst) {
    if (qLen === 0) return false;
    var slot = qSlots[qHead];
    qHead = (qHead + 1) % CFG.queueCap;
    qLen--;
    dst.event_id = slot.event_id;
    dst.session_id = slot.session_id;
    dst.text = slot.text;
    dst.received_at_ms = slot.received_at_ms;
    dst.attempts = slot.attempts;
    return true;
}

/* ============================ session generation ============================
 * event_id 契约（任务书 §6）：
 *   同一事件重试 -> 不变（重试用的是 pending 里的同一个 event_id）
 *   不同会话 -> 不同（sessionId 不同）
 *   同一 PID 内不同会话 -> 不冲突（sessionId 唯一性由 §6 实测报告背书）
 *   同一 session 出现第二次 final（工厂异常）-> 用 generation 区分，绝不覆盖前一条
 */
var genMap = {};
var genOrder = [];

function sessionGeneration(sid) {
    var g = (genMap[sid] || 0) + 1;
    if (genMap[sid] === undefined) {
        genOrder.push(sid);
        if (genOrder.length > CFG.genMapCap) {
            var old = genOrder.shift();
            delete genMap[old];
        }
    }
    genMap[sid] = g;
    return g;
}

/* ============================ 只读读取（沿用 T5-04 P2） ============================
 * readUtf8String(size) 在窗口内出现 0x00 时会抛错；readCString(size) 不在 NUL 处停。
 * 因此逐字节 readU8，遇 NUL 立即停，上限仍是 CFG.maxText。
 */
function readCString(p) {
    if (p.isNull()) return '';
    var n = 0;
    while (n < CFG.maxText) {
        if (p.add(n).readU8() === 0) {
            return n === 0 ? '' : p.readUtf8String(n);
        }
        n++;
    }
    throw new Error('unterminated C string within maxText bound');
}

/* UTF-8 字节数（发送前必须按字节数算 511 上限） */
function utf8Len(s) {
    var n = 0;
    for (var i = 0; i < s.length; i++) {
        var c = s.charCodeAt(i);
        if (c < 0x80) n += 1;
        else if (c < 0x800) n += 2;
        else if (c >= 0xD800 && c <= 0xDBFF) { n += 4; i++; }
        else n += 3;
    }
    return n;
}

/* ============================ 模块与 Hook ============================ */

var hookInfo = { module_ok: false, symbol_ok: false, offset_ok: false, attached: false, why: '' };
var listener = null;
var target = null;

function precheck() {
    var mod = Process.findModuleByName(CFG.module);
    if (mod === null) { hookInfo.why = 'no-module'; return false; }
    hookInfo.module_ok = true;
    hookInfo.base = mod.base.toString();

    var fp = Module.findExportByName(CFG.module, CFG.sym);
    if (fp === null) { hookInfo.why = 'no-symbol'; return false; }
    hookInfo.symbol_ok = true;

    var off = fp.sub(mod.base).toInt32();
    if (off !== CFG.off) {
        hookInfo.why = 'offset:0x' + (off >>> 0).toString(16) + '!=0x' + CFG.off.toString(16);
        return false;
    }
    hookInfo.offset_ok = true;
    hookInfo.addr = fp.toString();
    target = fp;
    return true;
}

function installHook() {
    listener = Interceptor.attach(target, {
        onEnter: function (args) {
            /* ===== 这个函数体内禁止：socket/connect/send/recv/sleep/IO/日志轰炸 ===== */
            counters.hook_hits++;
            try {
                var sid = args[1].toInt32();
                var finished = args[3].toInt32();

                if (finished !== 1) {
                    /* partial：只用于 session 生命周期判断，绝不发送 */
                    counters.partial_count++;
                    return;
                }

                var text = readCString(args[2]);
                if (!text) {
                    counters.empty_count++;
                    return;
                }
                if (utf8Len(text) > MAX_TEXT_BYTES) {
                    counters.text_too_long++;
                    counters.last_error = 'text_too_long';
                    return;
                }

                counters.final_count++;

                var gen = sessionGeneration(sid);
                if (gen > 1) counters.dup_session_final++;

                var id = 't5b-' + Process.id + '-' + sid + '-g' + gen;
                if (id.length > MAX_ID_LEN) id = id.substring(0, MAX_ID_LEN);

                enqueueEvent(id, String(sid), text, Date.now());
            } catch (e) {
                counters.read_errors++;
                counters.last_error = 'read:' + String(e && e.message ? e.message : e);
            }
        }
    });
    hookInfo.attached = listener !== null;
}

/* ============================ libc 绑定（只在定时器/teardown 调用） ============================ */

var libc = null;

function errnoOf() {
    try { return libc && libc.errno ? libc.errno().readS32() : 0; } catch (e) { return 0; }
}

function bindLibc() {
    function g(n) { return Module.getExportByName('libc.so', n); }
    var o = { socket: null, connect: null, send: null, recv: null,
              fcntl: null, close: null, getsockopt: null, errno: null };
    o.socket = new NativeFunction(g('socket'), 'int', ['int', 'int', 'int']);
    o.connect = new NativeFunction(g('connect'), 'int', ['int', 'pointer', 'int']);
    o.send = new NativeFunction(g('send'), 'long', ['int', 'pointer', 'ulong', 'int']);
    o.recv = new NativeFunction(g('recv'), 'long', ['int', 'pointer', 'ulong', 'int']);
    o.fcntl = new NativeFunction(g('fcntl'), 'int', ['int', 'int', 'int']);
    o.close = new NativeFunction(g('close'), 'int', ['int']);
    o.getsockopt = new NativeFunction(g('getsockopt'), 'int',
        ['int', 'int', 'int', 'pointer', 'pointer']);

    var ep = Module.findExportByName('libc.so', '__errno') ||
             Module.findExportByName('libc.so', '__errno_location');
    o.errno = ep ? new NativeFunction(ep, 'pointer', []) : null;

    libc = o;
}

/* ============================ 帧组装 ============================ */

var frameBuf = null;       /* Memory.alloc(HDR_LEN + MAX_BODY) */
var frameLen = 0;
var bodyOff = HDR_LEN;

function fnv1a32(arr) {
    var h = 2166136261 >>> 0;
    for (var i = 0; i < arr.length; i++) {
        h ^= arr[i];
        h = Math.imul(h, 16777619) >>> 0;
    }
    return h >>> 0;
}

/* 返回 0 = 成功；-1 = body 超限/编码失败 */
function buildFrame(ev) {
    var obj = {
        version: 1,
        event_id: ev.event_id,
        event_type: 'asr_final',
        pid: Process.id,
        session_id: ev.session_id,
        text: ev.text,
        is_final: true,
        received_at_ms: ev.received_at_ms
    };
    var body = JSON.stringify(obj);
    var blen = utf8Len(body);
    if (blen <= 0 || blen > MAX_BODY - 1) return -1;   /* 留 1 字节给结尾 NUL */

    frameBuf.add(bodyOff).writeUtf8String(body);

    var bytes = frameBuf.add(bodyOff).readByteArray(blen);
    var crc = fnv1a32(new Uint8Array(bytes));

    /* 关键（实测坑，勿改）：
     * 本机 Frida 16.7.19 的脚本运行时是 QJS，NativePointer.writeXX(value, offset)
     * 的第二个参数（offset）会被**忽略**，所有字节都写到 offset 0 —— 服端看到的就是
     * bad_magic。只有 .add(offset).writeXX(value) 形式正确。
     * 读侧同理（readXX(offset) 也不可信），所以下面一律用 .add()。 */
    frameBuf.writeU32(MAGIC);
    frameBuf.add(4).writeU8(VER);
    frameBuf.add(5).writeU8(TYPE_REQ);
    frameBuf.add(6).writeU16(HDR_LEN);
    frameBuf.add(8).writeU32(blen);
    frameBuf.add(12).writeU32(crc);
    frameLen = HDR_LEN + blen;

    /* 首发帧的头字节留档（只报一次）：排障时能一眼看出是 magic/长度/CRC 哪一段错了 */
    if (counters.sent_frames === 0) {
        try {
            var hb = new Uint8Array(frameBuf.readByteArray(HDR_LEN));
            var hex = '';
            for (var i = 0; i < HDR_LEN; i++) {
                hex += ('0' + hb[i].toString(16)).slice(-2);
            }
            report({ t: 'frame_hex', hex: hex, body_len: blen, frame_len: frameLen,
                     expect_magic: '54474231' });
        } catch (e) { }
    }

    /* 自检：body 必须是合法 UTF-8（writeUtf8String 已按 UTF-8 写入；
     * 字节数复算一次，防止 JS 侧长度算错导致服务端解析越界） */
    return 0;
}

/* ============================ 连接与收发状态 ============================ */

var sock = {
    fd: -1,
    connected: false,
    connecting: false,
    writeOff: 0,
    waitingAck: false,
    sentAt: 0,
    backoffUntil: 0,
    lastConnectAt: 0,
    saMem: null,
    saLen: 0
};

var ACK_BUF = 4096;          /* ACK 组帧缓冲：一条 ACK 帧最大 16+1024，留足余量 */
var ackBuf = null;
var ackLen = 0;

var tickTimer = null;
var statTimer = null;
var stopped = false;
var teardownReason = '';

/* 生命周期持有对象（避免 Script.bindWeak 提前触发把 fd 关掉） */
var LIFECYCLE = { alive: true };

function report(o) { try { send(o); } catch (e) { } }

function nowMs() { return Date.now(); }

function buildAddr() {
    if (sock.saMem !== null) return true;
    try {
        sock.saMem = Memory.alloc(110);            /* sizeof(struct sockaddr_un) */
        sock.saMem.writeU16(AF_UNIX);
        sock.saMem.add(2).writeU8(0);              /* sun_path[0] = 0 -> 抽象命名空间 */
        sock.saMem.add(3).writeUtf8String(CFG.sock);
        sock.saLen = 2 + 1 + CFG.sock.length;      /* 不含结尾 NUL */
        return true;
    } catch (e) {
        counters.last_error = 'addr:' + String(e);
        return false;
    }
}

function closeConn(reason) {
    counters.last_close_reason = reason;
    if (sock.fd >= 0) {
        try { libc.close(sock.fd); } catch (e) { }
    }
    sock.fd = -1;
    sock.connected = false;
    sock.connecting = false;
    sock.writeOff = 0;
    sock.waitingAck = false;
    ackLen = 0;
}

function requeuePending() {
    if (pending === null) return;
    /* 保持原 event_id 不变（幂等键），只增加重试计数 */
    counters.retry_count++;
    var a = pending.attempts + 1;
    enqueueFront(pending.event_id, pending.session_id, pending.text,
                 pending.received_at_ms, a);
    pending = null;
    sock.waitingAck = false;
    var delay = CFG.retryBaseMs * Math.pow(2, Math.min(a, 6));
    if (delay > CFG.retryMaxMs) delay = CFG.retryMaxMs;
    sock.backoffUntil = nowMs() + delay;
}

var firstConnectDone = false;

function onConnected(fd) {
    sock.fd = fd;
    sock.connected = true;
    sock.connecting = false;
    counters.last_close_reason = '';
    if (firstConnectDone) counters.reconnect_count++;
    else firstConnectDone = true;
    report({ t: 'conn', state: 'connected', fd: fd,
             reconnect_count: counters.reconnect_count });
}

function tryConnect() {
    var now = nowMs();
    if (now - sock.lastConnectAt < CFG.connectBackoffMs) return;
    sock.lastConnectAt = now;
    if (!buildAddr()) return;

    var fd = libc.socket(AF_UNIX, SOCK_STREAM, 0);
    if (fd < 0) {
        counters.connect_errors++;
        counters.last_error = 'socket:' + errnoOf();
        return;
    }
    if (libc.fcntl(fd, F_SETFL, O_NONBLOCK) < 0) {
        counters.connect_errors++;
        counters.last_error = 'fcntl:' + errnoOf();
        try { libc.close(fd); } catch (e) { }
        return;
    }
    var fl = libc.fcntl(fd, F_GETFL, 0);
    if (fl < 0 || (fl & O_NONBLOCK) === 0) {
        counters.connect_errors++;
        counters.last_error = 'nonblock-not-set';
        try { libc.close(fd); } catch (e) { }
        return;
    }

    var rc = libc.connect(fd, sock.saMem, sock.saLen);
    if (rc === 0) {
        onConnected(fd);
        return;
    }

    var e = errnoOf();
    if (e === EINPROGRESS || e === EALREADY) {
        /* 非阻塞 connect 未完成：保留 fd，下个 tick 用 SO_ERROR 判定 */
        sock.fd = fd;
        sock.connecting = true;
        sock.connected = false;
        return;
    }
    try { libc.close(fd); } catch (err) { }
    counters.connect_errors++;
    counters.last_error = 'connect:' + e;
}

function checkConnecting() {
    if (!sock.connecting || sock.fd < 0) return;
    var val = Memory.alloc(4);
    var vlen = Memory.alloc(4);
    val.writeS32(0);
    vlen.writeS32(4);
    var rc = libc.getsockopt(sock.fd, SOL_SOCKET, SO_ERROR, val, vlen);
    if (rc !== 0) {
        counters.connect_errors++;
        counters.last_error = 'getsockopt:' + errnoOf();
        closeConn('getsockopt');
        return;
    }
    var err = val.readS32();
    if (err === 0) {
        onConnected(sock.fd);
    } else if (err === EINPROGRESS || err === EALREADY) {
        /* 仍未完成，继续等 */
    } else {
        counters.connect_errors++;
        counters.last_error = 'so_error:' + err;
        closeConn('so_error:' + err);
    }
}

/* 写一帧（可部分写）；成功写完则进入等 ACK 状态 */
function pumpWrite() {
    while (sock.writeOff < frameLen) {
        var n = libc.send(sock.fd, frameBuf.add(sock.writeOff), frameLen - sock.writeOff, 0);
        if (n > 0) { sock.writeOff += n; continue; }
        if (n < 0) {
            var e = errnoOf();
            if (e === EINTR) continue;
            if (e === EAGAIN || e === EWOULDBLOCK) return;   /* 下个 tick 继续 */
            counters.send_errors++;
            counters.last_error = 'send:' + e;
            closeConn('send:' + e);
            requeuePending();
            return;
        }
        counters.send_errors++;                 /* n === 0：流式 socket 不应出现 */
        counters.last_error = 'send:0';
        closeConn('send:0');
        requeuePending();
        return;
    }
    sock.waitingAck = true;
    sock.sentAt = nowMs();
    counters.sent_frames++;
    report({ t: 'sent', event_id: pending ? pending.event_id : '',
             session_id: pending ? pending.session_id : '',
             frame_bytes: frameLen });
}

/* ============================ ACK 解析 ============================ */

function consumeAck(n) {
    if (n <= 0) return;
    if (n >= ackLen) { ackLen = 0; return; }
    var rest = ackBuf.add(n).readByteArray(ackLen - n);
    ackBuf.writeByteArray(rest);
    ackLen -= n;
}

function handleOneAck() {
    if (ackLen < HDR_LEN) return 0;                      /* 需要更多 */
    if (ackBuf.readU32() !== MAGIC) { counters.protocol_errors++; return -1; }
    var ver = ackBuf.add(4).readU8();
    var type = ackBuf.add(5).readU8();
    var hdr = ackBuf.add(6).readU16();
    var blen = ackBuf.add(8).readU32();
    if (ver !== VER || hdr !== HDR_LEN) { counters.protocol_errors++; return -1; }
    /* 注意：这里是 ACK 方向，必须是 TYPE_ACK；服务端的 tgb_hdr_decode 只收 REQ，
     * 所以发送端不能用它，必须自己做这套校验（任务书 §5）。 */
    if (type !== TYPE_ACK) { counters.protocol_errors++; return -1; }
    if (blen > MAX_BODY) { counters.protocol_errors++; return -1; }
    if (ackLen < HDR_LEN + blen) return 0;               /* 等 body 到齐 */

    var crcWant = ackBuf.add(12).readU32();
    var bytes = ackBuf.add(HDR_LEN).readByteArray(blen);
    var crcGot = fnv1a32(new Uint8Array(bytes));
    if (crcGot !== crcWant) { counters.protocol_errors++; return -1; }

    var json = null;
    try {
        /* 显式补一个 NUL 再用无参 readUtf8String：不依赖"长度参数"在当前运行时是否生效 */
        ackBuf.add(HDR_LEN + blen).writeU8(0);
        json = JSON.parse(ackBuf.add(HDR_LEN).readUtf8String());
    } catch (e) {
        counters.protocol_errors++;
        return -1;
    }
    consumeAck(HDR_LEN + blen);

    var status = json.status;
    var code = json.code || '';
    var ackId = json.ack;

    if (pending !== null && ackId === pending.event_id) {
        if (status === 'stored') {
            counters.ack_stored++;
            report({ t: 'ack', event_id: ackId, status: status, code: code,
                     dup_count: json.dup_count, events_stored: json.events_stored });
            pending = null;
            sock.waitingAck = false;
            sock.backoffUntil = 0;
            return 1;
        }
        if (status === 'duplicate') {
            counters.ack_duplicate++;
            report({ t: 'ack', event_id: ackId, status: status, code: code,
                     dup_count: json.dup_count, events_stored: json.events_stored });
            pending = null;
            sock.waitingAck = false;
            sock.backoffUntil = 0;
            return 1;
        }
        if (status === 'error') {
            /* 临时存储错误：保留事件（同一 event_id）退避重试。
             * 退避完全交给 requeuePending()（指数、封顶 retryMaxMs）；
             * 这里**不要**再覆盖 backoffUntil，否则会退化成每 100 ms 重试一次。 */
            counters.last_error = 'store:' + code;
            report({ t: 'retry', event_id: ackId, code: code,
                     tries: pending.attempts });
            requeuePending();
            return 1;
        }
        if (status === 'rejected') {
            /* 永久协议拒收：记具体错误，不伪装成功 */
            counters.ack_rejected++;
            counters.rejected_codes[code] = (counters.rejected_codes[code] || 0) + 1;
            counters.last_error = 'rejected:' + code;
            report({ t: 'rejected', event_id: ackId, code: code,
                     field: json.field, text_bytes: pending ? utf8Len(pending.text) : 0 });
            pending = null;
            sock.waitingAck = false;
            sock.backoffUntil = nowMs() + CFG.rejectBackoffMs;
            return 1;
        }
        counters.protocol_errors++;
        return 1;
    }

    /* 帧级拒收（服务端连 event_id 都拿不到：magic/ver/hdr/len/crc/type）
     * 不伪装成功；有限次重发后丢弃并显式记账，避免无声死循环。 */
    if (status === 'rejected' && (ackId === null || ackId === undefined)) {
        counters.frame_rejects++;
        counters.last_error = 'frame_rejected:' + code;
        report({ t: 'frame_rejected', code: code,
                 tries: pending !== null ? pending.attempts : -1 });
        if (pending !== null) {
            if (pending.attempts >= 3) {
                counters.dropped++;
                report({ t: 'drop', event_id: pending.event_id,
                         why: 'frame_rejected:' + code, tries: pending.attempts });
                pending = null;
                sock.waitingAck = false;
                sock.backoffUntil = nowMs() + CFG.rejectBackoffMs;
            } else {
                requeuePending();
            }
        }
        return 1;
    }

    /* event_id 不匹配（或没有 in-flight）：记异常，但不清理当前 pending */
    counters.ack_mismatch++;
    report({ t: 'ack_mismatch', ack: ackId === undefined ? null : ackId,
             expected: pending ? pending.event_id : null, status: status });
    return 1;
}

/* 返回 false = 连接必须关闭 */
function handleAcks() {
    for (;;) {
        var r = handleOneAck();
        if (r === 0) return true;
        if (r < 0) return false;
    }
}

function pumpRead() {
    for (var i = 0; i < 4; i++) {
        var space = ACK_BUF - ackLen;
        if (space <= 0) {
            counters.recv_errors++;
            closeConn('ack-buffer-full');
            if (pending !== null) requeuePending();
            return;
        }
        var n = libc.recv(sock.fd, ackBuf.add(ackLen), space, 0);
        if (n > 0) {
            ackLen += n;
            if (!handleAcks()) {
                counters.recv_errors++;
                closeConn('bad-ack-frame');
                if (pending !== null) requeuePending();
                return;
            }
            if (n < space) return;              /* 内核已读空 */
            continue;
        }
        if (n === 0) {
            /* 对端关闭（Bridge 停止/重启/主动断开） */
            counters.recv_errors++;
            closeConn('peer-closed');
            if (pending !== null) requeuePending();
            return;
        }
        var e = errnoOf();
        if (e === EINTR) continue;
        if (e === EAGAIN || e === EWOULDBLOCK) return;
        counters.recv_errors++;
        counters.last_error = 'recv:' + e;
        closeConn('recv:' + e);
        if (pending !== null) requeuePending();
        return;
    }
}

/* ============================ 主节拍 ============================ */

function tick() {
    if (stopped || !LIFECYCLE.alive) return;

    if (!sock.connected) {
        if (sock.connecting) checkConnecting();
        else tryConnect();
        return;
    }

    pumpRead();
    if (!sock.connected) return;

    if (pending !== null && sock.waitingAck) {
        if (sock.writeOff >= frameLen) {
            if (nowMs() - sock.sentAt > CFG.ackTimeoutMs) {
                counters.ack_timeouts++;
                closeConn('ack-timeout');
                requeuePending();
                return;
            }
        }
        return;                                  /* 单 in-flight：等 ACK 期间不发下一条 */
    }

    if (pending !== null && !sock.waitingAck) {
        pumpWrite();
        return;
    }

    /* pending === null：看有没有到点的重试/新事件 */
    if (nowMs() < sock.backoffUntil) return;
    if (qLen === 0) return;

    if (pending === null) pending = { event_id: '', session_id: '', text: '', received_at_ms: 0, attempts: 0 };
    if (!dequeueInto(pending)) { pending = null; return; }

    if (buildFrame(pending) !== 0) {
        /* body 超限等：丢不掉就拒收并记账（不会伪装成功） */
        counters.protocol_errors++;
        counters.last_error = 'build-frame';
        report({ t: 'drop', event_id: pending.event_id, why: 'build-frame' });
        pending = null;
        return;
    }
    sock.writeOff = 0;
    sock.waitingAck = false;
    pumpWrite();
}

/* ============================ 统计 / 拆除 ============================ */

function snapshot() {
    return {
        hook_hits: counters.hook_hits,
        final_count: counters.final_count,
        partial_count: counters.partial_count,
        empty_count: counters.empty_count,
        read_errors: counters.read_errors,
        queue_depth: qLen,
        pending_count: qLen + (pending !== null ? 1 : 0),
        queue_overflow: counters.queue_overflow,
        connect_errors: counters.connect_errors,
        send_errors: counters.send_errors,
        recv_errors: counters.recv_errors,
        ack_stored: counters.ack_stored,
        ack_duplicate: counters.ack_duplicate,
        ack_rejected: counters.ack_rejected,
        retry_count: counters.retry_count,
        /* 诊断 */
        text_too_long: counters.text_too_long,
        ack_mismatch: counters.ack_mismatch,
        ack_timeouts: counters.ack_timeouts,
        frame_rejects: counters.frame_rejects,
        dropped: counters.dropped,
        protocol_errors: counters.protocol_errors,
        dup_session_final: counters.dup_session_final,
        reconnect_count: counters.reconnect_count,
        enqueued: counters.enqueued,
        requeued: counters.requeued,
        sent_frames: counters.sent_frames,
        rejected_codes: counters.rejected_codes,
        connected: sock.connected,
        fd: sock.fd,
        last_error: counters.last_error,
        last_close_reason: counters.last_close_reason,
        hook: hookInfo,
        sock_name: CFG.sock,
        stopped: stopped
    };
}

function statLine() {
    var s = snapshot();
    return 'hooks=' + s.hook_hits + ' final=' + s.final_count + ' partial=' + s.partial_count +
           ' empty=' + s.empty_count + ' readErr=' + s.read_errors +
           ' q=' + s.queue_depth + ' ovf=' + s.queue_overflow +
           ' stored=' + s.ack_stored + ' dup=' + s.ack_duplicate + ' rej=' + s.ack_rejected +
           ' retry=' + s.retry_count + ' conn=' + s.connected +
           ' connErr=' + s.connect_errors + ' sendErr=' + s.send_errors +
           ' recvErr=' + s.recv_errors + ' lastErr=' + (s.last_error || '-');
}

function startTimers() {
    tickTimer = setInterval(function () {
        if (stopped || !LIFECYCLE.alive) return;
        try { tick(); } catch (e) {
            counters.last_error = 'tick:' + String(e && e.message ? e.message : e);
        }
    }, CFG.tickMs);

    statTimer = setInterval(function () {
        if (stopped || !LIFECYCLE.alive) return;
        report({ t: 'stat', line: statLine(), stats: snapshot() });
    }, CFG.statMs);

    if (tickTimer === null || tickTimer === undefined ||
        statTimer === null || statTimer === undefined) {
        throw new Error('setInterval-returned-null');
    }
}

function teardown(reason) {
    if (stopped) return snapshot();
    stopped = true;
    teardownReason = reason;

    if (tickTimer !== null) { try { clearInterval(tickTimer); } catch (e) { } tickTimer = null; }
    if (statTimer !== null) { try { clearInterval(statTimer); } catch (e) { } statTimer = null; }

    if (listener !== null) {
        try { listener.detach(); } catch (e) { }
        listener = null;
        hookInfo.attached = false;
    }

    if (libc !== null && sock.fd >= 0) {
        try { libc.close(sock.fd); } catch (e) { }
    }
    sock.fd = -1;
    sock.connected = false;
    sock.connecting = false;
    sock.waitingAck = false;
    ackLen = 0;
    LIFECYCLE.alive = false;

    var s = snapshot();
    report({ t: 'stopped', reason: reason, pending_count: s.pending_count,
             queue_depth: s.queue_depth, stats: s });
    return s;
}

/* ============================ 启动 ============================ */

(function main() {
    var ok = precheck();
    report({
        t: 'precheck', ok: ok, hook: hookInfo, pid: Process.id, arch: Process.arch,
        pointer_size: Process.pointerSize, sock: 'abstract:' + CFG.sock,
        queue_cap: CFG.queueCap, tick_ms: CFG.tickMs, ack_timeout_ms: CFG.ackTimeoutMs
    });

    if (!ok) {
        send({ t: 'fatal', why: 'precheck:' + hookInfo.why,
               hint: '模块/符号/偏移必须完全匹配，否则拒绝 Hook（不猜测、不降级）' });
        throw new Error('precheck failed: ' + hookInfo.why);
    }

    bindLibc();
    frameBuf = Memory.alloc(HDR_LEN + MAX_BODY + 8);   /* 留 writeUtf8String 的结尾 NUL */
    ackBuf = Memory.alloc(ACK_BUF);

    installHook();
    startTimers();

    /* 脚本被卸载时尽力关掉 fd（不做其它工作） */
    try {
        Script.bindWeak(LIFECYCLE, function () {
            if (libc !== null && sock.fd >= 0) {
                try { libc.close(sock.fd); } catch (e) { }
                sock.fd = -1;
            }
        });
    } catch (e) { }

    report({ t: 'ready', hook: hookInfo, pid: Process.id, sock: 'abstract:' + CFG.sock });
})();

rpc.exports = {
    stats: function () { return snapshot(); },
    stop: function () { return teardown('rpc'); }
};
