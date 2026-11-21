# t6_01_p1_r1_device.ps1 -- T6-01-P1-R1 真机增量验收
#
#   powershell -File t6_01_p1_r1_device.ps1 [-Rounds 20] [-Stim s01]
#
# 只测本轮改动，不重跑 T2-T5：
#   P0 前置：设备/root/原厂 core/桥接端；部署最新构建并逐字节核对 sha256；
#      若目标进程已映射 libtg_hook.so 则重启 app，保证是干净进程，并清空 logcat
#   P1 首次安装：断言暂停了其它线程、补丁窗口干净、hooked=1、sender=1，
#      并直接读 /proc/<pid>/mem 确认入口 8 字节变成 ldr pc,[pc,#-4] + stub 地址
#   P2 卸载：exit 0、hooked=0、入口 8 字节恢复成原厂 E92D4FF0 E28DB01C、
#      发送线程没有退出（thread up 计数不变）、--check 报 hooked=0 且 exit 0
#   P3 同进程重装：exit 0、hooked=1、logcat 出现 sender thread reused、
#      发送线程没有重复创建、入口再次变成跳转
#   P4 N 轮 卸载/安装：每轮断言两个退出码、hooked 状态、入口字节、TracerPid、PID
#   P5 故障注入：abort-after-pause(21) / pause-fail:3(19) / pc-readfail(19,EPERM)
#      / pc-readfail:5(19,EIO)，每个场景断言线程已恢复、补丁没被写
#   P6 轮次之后重装并跑真实语音：事件进桥接端（证明重装后的 Hook 真在工作）
#   P7 最终卸载 + 原厂链路：不再产生 t6- 事件、原厂 ASR/NLU/TTS 日志正常
param(
    [string]$Dev = "192.168.1.9:5555",
    [int]$Rounds = 20,
    [string]$Stim = "s01",
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t6_01_p1_r1.log"
)

$ErrorActionPreference = 'Continue'
$adb = 'D:\GreenSoft\platform-tools\adb.exe'
$repo = 'D:\tgz02\OS\system\my-doc\07_ai_bridge'
$devDir = '/data/local/tmp/t6'
$EV = '/data/local/tmp/t5_bridge/work/events.jsonl'
$stimDir = 'D:\tgz02\OS\_analysis\t506d\stim2'
$playScript = 'D:\tgz02\OS\_analysis\t502_play.ps1'

$script:Fails = 0
$script:Passes = 0
$script:Transport = 0
$script:LogPath = $Log
# 每次运行都写全新日志：绝不把上一次的结果混进来
Set-Content -Path $Log -Value '' -Encoding utf8

function Adb([string[]]$argv) { & $adb -s $Dev @argv 2>&1 }
function Sh([string]$c) { (Adb @('shell', $c)) -join "`n" }
function Dev1([string]$c) { ((Sh $c) -replace "`r", "").Trim() }
function Su([string]$c) { Dev1 ("su -c " + [char]34 + $c + [char]34) }
function Rec([string]$t) { $t | Out-File -FilePath $script:LogPath -Encoding utf8 -Append }
function Note([string]$t) { Rec ("  " + $t); Write-Host ("  " + $t) }

function Assert([bool]$cond, [string]$what) {
    if ($cond) {
        $script:Passes++
        Rec ("  ASSERT OK   : " + $what)
        Write-Host ("  ASSERT OK   : " + $what)
    } else {
        $script:Fails++
        Rec ("  ASSERT FAIL : " + $what)
        Write-Host ("  ASSERT FAIL : " + $what)
    }
}

function Step([string]$t) {
    Rec ""
    Rec ("===== " + $t + " :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " =====")
    Write-Host ""
    Write-Host ("===== " + $t + " =====")
}

function CorePid() {
    for ($i = 0; $i -lt 3; $i++) {
        $v = Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core"
        if ($v -match '^\d+$') { return $v }
        Start-Sleep -Milliseconds 150
    }
    return ""
}

function Threads([string]$p) {
    for ($i = 0; $i -lt 3; $i++) {
        $v = Su ("ls /proc/" + $p + "/task | wc -l")
        if ($v -match '^\d+$') { return [int]$v }
        Start-Sleep -Milliseconds 150
    }
    return -1
}

function Tracer([string]$p) { Su ("grep -m1 TracerPid /proc/" + $p + "/status") }

function Lines([string]$f) {
    $v = Su ("wc -l < " + $f)
    if ($v -match '^\d+$') { return [int]$v }
    return 0
}

# 直接读目标进程入口 8 字节（两个 32 位小端字）。这是“补丁到底在不在”的唯一直接证据，
# 不依赖 Hook Agent 自己报的 hooked 标志。
function EntryWords([string]$target, [string]$addrHex) {
    if ($addrHex -notmatch '^[0-9a-fA-F]{8}$') { return "" }
    $off = [Convert]::ToUInt32($addrHex, 16)
    $v = Su ("dd if=/proc/" + $target + "/mem bs=1 skip=" + $off + " count=8 2>/dev/null | od -An -tx4")
    return (($v -replace '\s+', ' ').Trim()).ToLower()
}

function SenderLine([string]$pattern) {
    $v = Su ("logcat -d | grep -c '" + $pattern + "'")
    if ($v -match '^\d+$') { return [int]$v }
    return -1
}

# su -c 只跑“一条命令”：包装脚本负责回显 EXIT=<rc>
# 参数不能叫 $pid（PowerShell 只读自动变量）
function Inject([string]$target, [string]$extra) {
    $cmd = "$devDir/run_inject.sh --so $devDir/libtg_hook.so --pid $target"
    if ($extra -ne '') { $cmd = $cmd + " " + $extra }
    $out = Su $cmd
    Rec ("> " + $cmd)
    Rec $out
    return $out
}

function InjectExit([string]$out) {
    if ($out -match 'EXIT=(\d+)') { return [int]$Matches[1] }
    return -1
}

# 注入链路的准备阶段（远程 mmap / 符号解析 / 写路径 / dlopen）偶尔会一次性失败，
# 返回 14..17；这些失败都发生在任何补丁写入之前，状态没有变化。
# 只对这几个退出码重试一次，并在日志里明确记下“发生过一次传输重试”，绝不重试 19/20/21。
function InjectRetry([string]$target, [string]$extra, [string]$label) {
    $out = ''
    $rc = -1
    for ($k = 0; $k -lt 2; $k++) {
        $out = Inject $target $extra
        $rc = InjectExit $out
        if ($k -eq 0 -and ($rc -eq 14 -or $rc -eq 15 -or $rc -eq 16 -or $rc -eq 17)) {
            $script:Transport++
            Note ($label + ": transport failure exit=" + $rc + " (before any patch write); retrying once")
            Start-Sleep -Milliseconds 500
        } else {
            break
        }
    }
    return @{ Out = $out; Rc = $rc }
}

function PlayOne([string]$name) {
    $base = $name.Trim()
    $wk = Join-Path $stimDir ($base + '_wake.wav')
    $cm = Join-Path $stimDir ($base + '_cmd.wav')
    $parts = @()
    if ((Test-Path $wk) -and (Test-Path $cm)) {
        $parts += "${wk}:3000"
        $parts += "${cm}:3000"
    } else {
        $parts += (Join-Path $stimDir ($base + '.wav')) + ':3000'
    }
    Adb @('shell', 'input keyevent KEYCODE_WAKEUP') | Out-Null
    Start-Sleep -Milliseconds 800
    & powershell.exe -NoProfile -STA -File $playScript -Plan ($parts -join ',') -Volume '1.0' `
        -LogFile 'D:\tgz02\OS\_analysis\t6\r1_play.log' | Out-Null
    Note ("played " + $name)
}

function WaitEvent([int]$from, [int]$timeoutSec) {
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    while ((Get-Date) -lt $deadline) {
        Start-Sleep -Seconds 3
        $n = Lines $EV
        if ($n -gt $from) { return $n }
    }
    return (Lines $EV)
}

# 部署到 /data/local/tmp 再以 root 拷进 $devDir（目录是 root:root 0755，shell 写不进去），
# 最后回读 sha256：测试必须跑本次构建，而不是设备上遗留的旧二进制
function Deploy([string]$localPath, [string]$devName) {
    $stage = "/data/local/tmp/" + $devName + ".stage"
    & $adb -s $Dev push $localPath $stage 2>&1 | Out-Null
    $null = Su ("cp " + $stage + " " + $devDir + "/" + $devName)
    $null = Su ("chmod 0755 " + $devDir + "/" + $devName)
    $null = Su ("rm -f " + $stage)
    return (Su ("sha256sum " + $devDir + "/" + $devName))
}

Rec ("################ T6-01-P1-R1 device verification :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " ################")

# ------------------------------------------------------------------ P0
Step "P0 preflight, deploy the fresh build, verify the binary on the device"
$devs = (& $adb devices 2>&1) -join "`n"
Rec ("adb devices:`n" + $devs)
Assert ($devs -match ([regex]::Escape($Dev) + '\s+device')) "device is online"

$id = Su "id"
Note ("id: " + $id)
Assert ($id -match 'uid=0') "su gives uid=0"

$core = CorePid
Note ("core pid: " + $core)
Assert ($core -match '^\d+$') "factory core is running"

$bridge = Dev1 "pidof tgb_bridge"
Note ("bridge pid: " + $bridge)
Assert ($bridge -match '^\d+$') "T5-05A bridge is running"

$localInj = (Get-FileHash (Join-Path $repo 'android\out\tg_injector') -Algorithm SHA256).Hash.ToLower()
$localSo = (Get-FileHash (Join-Path $repo 'android\out\libtg_hook.so') -Algorithm SHA256).Hash.ToLower()
Note ("local tg_injector sha256: " + $localInj)
Note ("local libtg_hook.so sha256: " + $localSo)

$devInj = Deploy (Join-Path $repo 'android\out\tg_injector') 'tg_injector'
$devSo = Deploy (Join-Path $repo 'android\out\libtg_hook.so') 'libtg_hook.so'
Note ("device tg_injector: " + $devInj)
Note ("device libtg_hook.so: " + $devSo)
Assert ($devInj -match $localInj) "device tg_injector is byte-identical to the fresh build"
Assert ($devSo -match $localSo) "device libtg_hook.so is byte-identical to the fresh build"

$wrap = Deploy (Join-Path $repo 'android\t6_01_p1\run_inject.sh') 'run_inject.sh'
Note ("device run_inject.sh: " + $wrap)
Assert ($wrap -match '^[0-9a-f]{64}') "device wrapper run_inject.sh deployed"

# 干净进程：已经映射过 .so 就重启 app（旧 .so 被替换后 dlopen(RTLD_NOLOAD) 会失败）
$mapped = Su ("grep -c libtg_hook /proc/" + $core + "/maps")
if ($mapped -notmatch '^\d+$') { $mapped = 0 }
if ([int]$mapped -gt 0) {
    Note "libtg_hook.so already mapped; restarting the assistant for a clean process"
    Adb @('shell', 'am force-stop com.alibaba.ailabs.genie.smartapp') | Out-Null
    Start-Sleep -Seconds 2
    Adb @('shell', 'monkey -p com.alibaba.ailabs.genie.smartapp -c android.intent.category.LAUNCHER 1') | Out-Null
    Start-Sleep -Seconds 8
    $core = CorePid
    Note ("core pid after restart: " + $core)
    Assert ($core -match '^\d+$') "factory core came back after the restart"
}
$threads0 = Threads $core
Note ("baseline threads: " + $threads0)
Assert ($threads0 -gt 20) "baseline thread count looks sane"

$null = Su "logcat -c"
Start-Sleep -Milliseconds 500

$probe = Inject $core "--check"
$prc = InjectExit $probe
Note ("preflight --check exit: " + $prc)
Assert ($prc -eq 0) "--check on a clean process exits 0"
Assert ($probe -match 'check_only=1') "device wrapper passed every argument through to the injector"
Assert ((SenderLine 'sender thread up') -eq 0) "no sender thread exists before the first install"

# ------------------------------------------------------------------ P1
Step "P1 first install"
$out = Inject $core ""
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 0) "injector exit 0"
$paused = -1
if ($out -match 'paused (\d+) other threads') {
    $paused = [int]$Matches[1]
    Note ("paused other threads: " + $paused)
    Assert ($paused -gt 0) "every other thread was paused before patching"
} else {
    Assert $false "injector reported the paused thread count"
}
Assert ($out -match 'is clear') "PC check reported the patch window clear"
Assert ($out -match 'hook_status=0 hooked=1') "hook installed (hooked=1)"
Assert ($out -match 'sender=1 spawns=1') "sender thread reported by the agent (created once)"
$range = ''
if ($out -match 'patch_range=\[0x([0-9a-f]+),0x([0-9a-f]+)\)') { $range = $Matches[1] }
Note ("patch range low: 0x" + $range)
Assert ($range -ne '') "injector printed the patch range"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "no thread left in ptrace-stop"
Assert ((Threads $core) -ge ($threads0 - 1)) "thread count did not collapse"
Assert ((CorePid) -eq $core) "factory core pid unchanged"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -match '^e51ff004') "entry now holds ldr pc,[pc,#-4] (patch really written)"

# ------------------------------------------------------------------ P2
Step "P2 uninstall"
$out = Inject $core "--uninstall"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 0) "uninstall exit 0"
Assert ($out -match 'hooked=0 after uninstall') "agent reports hooked=0 after uninstall"
Assert ($out -match 'paused \d+ other threads') "uninstall used the same thread protection"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "all threads resumed after uninstall"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -eq 'e92d4ff0 e28db01c') "entry restored to the factory prologue"
$senderUp = SenderLine 'sender thread up'
$senderExit = SenderLine 'sender thread exit'
Note ("sender thread up/exit: " + $senderUp + " / " + $senderExit)
Assert ($senderUp -eq 1) "sender thread was created exactly once"
Assert ($senderExit -eq 0) "sender thread stayed alive across uninstall"
$chk = Inject $core "--check"
$crc = InjectExit $chk
Note ("--check exit: " + $crc)
Assert ($crc -eq 0) "--check after uninstall exits 0 (no bogus exit=20)"
Assert ($chk -match 'hook_status=0 hooked=0') "--check reports hooked=0 and state=0"
Assert ($chk -match 'sender=1') "--check reports the live sender thread"

# ------------------------------------------------------------------ P3
Step "P3 reinstall in the same process"
$out = Inject $core ""
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 0) "reinstall exit 0"
Assert ($out -match 'hook_status=0 hooked=1') "hook re-installed (hooked=1)"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -match '^e51ff004') "entry patched again after the reinstall"
$reused = SenderLine 'sender thread reused'
$senderNow = SenderLine 'sender thread up'
Note ("sender thread reused/up: " + $reused + " / " + $senderNow)
Assert ($reused -ge 1) "agent logged that the sender thread was reused"
Assert ($senderNow -eq 1) "no duplicate sender thread was created"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "no ptrace-stop after the reinstall"
Assert ((CorePid) -eq $core) "factory core pid unchanged"

# ------------------------------------------------------------------ P4
Step ("P4 " + $Rounds + " uninstall/install rounds")
$roundBad = 0
for ($i = 1; $i -le $Rounds; $i++) {
    $r = InjectRetry $core "--uninstall" ("round " + $i + " uninstall")
    $u = $r.Out
    $urc = $r.Rc
    # 先读入口，再安装：否则读到的是安装后的状态，断言毫无意义
    $wU = EntryWords $core $range
    $r = InjectRetry $core "" ("round " + $i + " install")
    $inst = $r.Out
    $irc = $r.Rc
    $wI = EntryWords $core $range
    $tr = (Tracer $core) -match 'TracerPid:\s*0'
    $pidOk = ((CorePid) -eq $core)
    $ok = ($urc -eq 0) -and ($irc -eq 0) -and ($u -match 'hooked=0 after uninstall') -and ($inst -match 'hook_status=0 hooked=1') -and ($wU -eq 'e92d4ff0 e28db01c') -and ($wI -match '^e51ff004') -and $tr -and $pidOk
    if (-not $ok) { $roundBad++ }
    Note ("round " + $i + ": uninstall=" + $urc + " install=" + $irc + " entry_uninstalled=" + $wU + " entry_installed=" + $wI + " tracer_ok=" + $tr + " pid_ok=" + $pidOk)
    Assert ($urc -eq 0) ("round " + $i + ": uninstall exit 0")
    Assert ($u -match 'hooked=0 after uninstall') ("round " + $i + ": hooked=0 after uninstall")
    Assert ($wU -eq 'e92d4ff0 e28db01c') ("round " + $i + ": entry restored to the factory prologue")
    Assert ($irc -eq 0) ("round " + $i + ": install exit 0")
    Assert ($inst -match 'hook_status=0 hooked=1') ("round " + $i + ": hooked=1 after install")
    Assert ($inst -match 'sender=1 spawns=1') ("round " + $i + ": one live sender thread, never re-spawned")
    Assert ($wI -match '^e51ff004') ("round " + $i + ": entry holds the jump again")
    Assert ($tr) ("round " + $i + ": no ptrace-stop left behind")
    Assert ($pidOk) ("round " + $i + ": factory core pid unchanged")
}
Assert ($roundBad -eq 0) ("all " + $Rounds + " rounds were clean")
Note ("transport retries during the rounds: " + $script:Transport)
$senderEnd = SenderLine 'sender thread up'
$senderEndExit = SenderLine 'sender thread exit'
Note ("logcat sender thread up/exit (ring buffer may have rotated): " + $senderEnd + " / " + $senderEndExit)
$st = Inject $core ""
$statsLine = ($st -split "`n" | Where-Object { $_ -match 'stats=' }) -join ' '
Note ("stats after the rounds: " + $statsLine)
Assert ($st -match 'sender=1 spawns=1') ("after " + $Rounds + " rounds: one live sender thread, spawned exactly once")
Assert ($st -match 'hooked=1') "hook still installed after the rounds"
$chk = Inject $core "--check"
Assert ((InjectExit $chk) -eq 0) "--check after the rounds exits 0"
Assert ($chk -match 'spawns=1') "--check confirms the sender thread was never re-spawned"

# ------------------------------------------------------------------ P5
Step "P5 fault injection: abort after pausing every thread"
$pre = InjectRetry $core "--uninstall" "P5 precondition"
Assert ($pre.Rc -eq 0) "precondition: hook uninstalled so the install path really runs"
$out = Inject $core "--fault abort-after-pause"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 21) "abort-after-pause returns 21"
Assert ($out -match 'paused \d+ other threads') "every thread was paused before the abort"
Assert ($out -match 'is clear') "PC window was clear before the abort"
Assert ($out -match 'threads resumed, no patch written') "abort path reported no patch written"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -eq 'e92d4ff0 e28db01c') "no patch in memory after the abort"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "every paused thread was resumed after the abort"
$th = Threads $core
Note ("threads after the abort: " + $th + " (baseline " + $threads0 + ")")
Assert ($th -ge 40) "process did not collapse after the abort"

Step "P5b fault injection: pause fails at the 3rd thread"
$out = Inject $core "--fault pause-fail:3"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 19) "pause-fail:3 returns 19"
Assert ($out -match 'injected pause failure after 3 thread') "the injected pause failure was reported"
Assert ($out -match 'stage=install_pause') "failure was classified as install_pause"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -eq 'e92d4ff0 e28db01c') "no patch in memory after the pause failure"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "already paused threads were resumed"
$th = Threads $core
Note ("threads after the pause failure: " + $th + " (baseline " + $threads0 + ")")
Assert ($th -ge 40) "process did not collapse after the pause failure"

Step "P5c fault injection: PC read fails with EPERM (fail-closed)"
$out = Inject $core "--fault pc-readfail"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 19) "pc-readfail returns 19"
Assert ($out -match 'stage=pc_check rc=-3') "failure came from the PC check"
Assert ($out -match 'PC read failed tid=\d+ errno=1 EPERM') "log names the TID and errno"
Assert ($out -match 'refusing to patch') "the injector refused to patch"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -eq 'e92d4ff0 e28db01c') "no patch in memory after the failed PC read"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "all threads resumed after the failed PC read"

Step "P5d fault injection: PC read fails with EIO (still fail-closed)"
$out = Inject $core "--fault pc-readfail:5"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 19) "pc-readfail:5 returns 19"
Assert ($out -match 'PC read failed tid=\d+ errno=5 EIO') "EIO is reported, not treated as thread exit"
Assert ($out -match 'refusing to patch') "EIO also refuses to patch"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -eq 'e92d4ff0 e28db01c') "no patch in memory after the EIO case"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "all threads resumed after the EIO case"
$chk = Inject $core "--check"
Assert ((InjectExit $chk) -eq 0) "--check still exits 0 after the fault runs"
Assert ($chk -match 'hook_status=0 hooked=0') "the agent is consistent: state=0, hooked=0"

Step "P5e fault injection: PC read of the executor thread fails (fail-closed)"
$out = Inject $core "--fault pc-readfail-exec"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 19) "pc-readfail-exec returns 19"
Assert ($out -match 'PC read failed tid=\d+ \(executor\) errno=1 EPERM') "executor read failure is reported with TID and errno"
Assert ($out -match 'refusing to patch') "executor read failure also refuses to patch"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -eq 'e92d4ff0 e28db01c') "no patch in memory after the executor read failure"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "all threads resumed after the executor read failure"

# ------------------------------------------------------------------ P6
Step "P6 reinstall after the rounds and a real ASR round-trip"
$out = Inject $core ""
Assert ((InjectExit $out) -eq 0) "install after the fault runs exits 0"
Assert ($out -match 'hook_status=0 hooked=1') "hook is installed again"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -match '^e51ff004') "entry patched after the reinstall"
$before = Lines $EV
Note ("events before: " + $before)
$after = $before
for ($i = 1; $i -le 3; $i++) {
    PlayOne $Stim
    $after = WaitEvent $before 40
    if ($after -gt $before) { break }
    Note ("attempt " + $i + ": no ASR final yet, retrying")
}
Note ("events after: " + $after)
Assert ($after -gt $before) "bridge stored a new ASR final with the hook installed"
if ($after -gt $before) {
    $new = Su ("tail -n " + ($after - $before) + " " + $EV)
    Rec ("new events:")
    Rec $new
    Assert ($new -match '"event_id":"t6-') "event_id carries the t6- prefix"
    Assert ($new -match '"event_type":"asr_final"') "event_type is asr_final"
    Assert ($new -match '"is_final":true') "is_final is true"
}
$st = Inject $core ""
Assert ($st -match 'acked=[1-9]') "hook agent received an ACK from the bridge"
Assert ($st -match 'hooked=1') "hook still installed after the speech"

# ------------------------------------------------------------------ P7
Step "P7 final uninstall and factory path"
$out = Inject $core "--uninstall"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 0) "final uninstall exit 0"
Assert ($out -match 'hooked=0 after uninstall') "hook patch removed"
$w = EntryWords $core $range
Note ("entry words: " + $w)
Assert ($w -eq 'e92d4ff0 e28db01c') "factory prologue is byte-identical again"
$before = Lines $EV
$null = Su "logcat -c"
$after = $before
$factory = 0
for ($i = 1; $i -le 3 -and $factory -eq 0; $i++) {
    PlayOne $Stim
    $deadline = (Get-Date).AddSeconds(25)
    while ((Get-Date) -lt $deadline) {
        Start-Sleep -Seconds 3
        $after = Lines $EV
        $n = Su "logcat -d | grep -c -E 'SessionManager|WakeupEngine|GenieAssistantUIManager'"
        if ($n -match '^\d+$') { $factory = [int]$n }
        if ($factory -gt 0) { break }
    }
    if ($factory -eq 0) { Note ("attempt " + $i + ": factory produced no log line yet, retrying") }
}
Note ("events before/after final play: " + $before + " / " + $after)
Assert ($after -eq $before) "no t6- event once the hook is removed"
Note ("factory log lines after uninstall: " + $factory)
Assert ($factory -gt 0) "factory ASR/NLU path is alive after uninstall"
Assert ((CorePid) -eq $core) "factory core still running at the end"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "no ptrace-stop at the end"
Assert ((SenderLine 'sender thread exit') -eq 0) "the sender thread outlived the whole run"

Rec ""
Rec ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails + " transport_retries=" + $script:Transport)
Write-Host ""
Write-Host ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails + " transport_retries=" + $script:Transport)
Write-Host ("log: " + $Log)
if ($script:Fails -eq 0) { exit 0 } else { exit 1 }
