/*
 * t505b_p1_sendwatch.js -- T5-05B P1 验证用旁路观测脚本（不属于生产代码）
 *
 * 只观测，不改任何寄存器、不改返回值：
 *   onEnter: 记录 (fd, len, flags)，用来确认第 4 个参数是不是 MSG_NOSIGNAL(0x4000)
 *   onLeave: 记录 (ret, errno)，用来确认破裂连接上的 send() 返回 -1/EPIPE(32)
 */
'use strict';

var MAX_LOG = 64;
var logged = 0;
var rets = 0;
var total = 0;

var errnoFn = new NativeFunction(
    Module.getExportByName('libc.so', '__errno'), 'pointer', []);
var pendingFd = -1;
var pendingFlags = -1;
var pendingLen = -1;

function report(o) {
    send(o);
}

(function main() {
    var p = Module.findExportByName('libc.so', 'send');
    if (p === null) {
        report({ t: 'sendwatch', error: 'send symbol not found' });
        return;
    }

    report({ t: 'sendwatch', state: 'installed', addr: p.toString() });

    Interceptor.attach(p, {
        onEnter: function (args) {
            total++;
            pendingFd = args[0].toInt32();
            pendingLen = args[2].toInt32();
            pendingFlags = args[3].toInt32();
            if (logged >= MAX_LOG) return;
            logged++;
            report({ t: 'sendwatch', n: logged, fd: pendingFd, len: pendingLen,
                     flags: pendingFlags,
                     flags_hex: '0x' + (pendingFlags >>> 0).toString(16) });
        },
        onLeave: function (retval) {
            if (rets >= MAX_LOG) return;
            rets++;
            var e = 0;
            try { e = errnoFn().readS32(); } catch (err) { e = -1; }
            report({ t: 'sendret', n: rets, fd: pendingFd, len: pendingLen,
                     flags_hex: '0x' + (pendingFlags >>> 0).toString(16),
                     ret: retval.toInt32(), errno: e });
        }
    });
})();

rpc.exports = {
    stats: function () {
        return { total: total, logged: logged, rets: rets };
    }
};
