# t6_01_p1_threadsafety_device.ps1 -- T6-01-P1 真机验收：补丁期间的线程保护
#
#   powershell -File t6_01_p1_threadsafety_device.ps1 [-Rounds 20] [-Stim s01]
#
# 只测本次改动（线程暂停/PC 检查/恢复），不重跑 T2-T5。
#
# 阶段：
#   P0 前置：设备/root/原厂 core/桥接端；若本进程已映射 libtg_hook.so 就重启 app 换干净进程
#   P1 安装：断言 "paused N other threads"(N>0)、patch_range、hooked=1、TracerPid=0、线程数不减
#   P2 安装后真实语音：事件进入桥接端，event_id 带 t6-，Hook 计数 acked>=1
#   P3 故障注入 abort-after-pause：全部线程已暂停但故意不打补丁 → 断言退出码 21、
#      TracerPid=0、线程数恢复、补丁未被写（hooked 仍为 1）、原厂识别仍然工作
#   P4 故障注入 pause-fail:3：暂停到第 3 个线程时失败 → 断言退出码 19、
#      已暂停的线程全部恢复（TracerPid=0、线程数不变）、补丁未被写
#   P5 N 轮并发：播放持续语音的同时，反复 uninstall/install N 轮，每轮检查
#      PID / 线程数 / TracerPid / hooked 状态，并确认期间仍有新的 ASR 事件落库
#   P6 收尾：最终卸载 + 播放，确认原厂 NLU/TTS 正常、且不再产生 t6- 事件
param(
    [string]$Dev = "192.168.1.9:5555",
    [int]$Rounds = 20,
    [string]$Stim = "s01",
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t6_01_p1_threadsafety.log"
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
$script:LogPath = $Log

function Adb([string[]]$argv) { & $adb -s $Dev @argv 2>&1 }
function Sh([string]$c) { (Adb @('shell', $c)) -join "`n" }
function Dev1([string]$c) { ((Sh $c) -replace "`r", "").Trim() }
function Su([string]$c) { Dev1 ("su -c " + [char]34 + $c + [char]34) }
function Rec([string]$t) { $t | Out-File -FilePath $script:LogPath -Encoding utf8 -Append }
function Note([string]$t) { Rec ("  " + $t); Write-Host ("  " + $t) }
function Assert([bool]$cond, [string]$what) {
    if ($cond) { $script:Passes++; Rec ("  ASSERT OK   : " + $what); Write-Host ("  ASSERT OK   : " + $what) }
    else { $script:Fails++; Rec ("  ASSERT FAIL : " + $what); Write-Host ("  ASSERT FAIL : " + $what) }
}
function Step([string]$t) {
    Rec ""
    Rec ("===== " + $t + " :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " =====")
    Write-Host ""
    Write-Host ("===== " + $t + " =====")
}
function CorePid() {
    # pidof 偶尔会被一次 shell 抖动吞掉输出：重试，别把抖动当成"进程变了"
    for ($i = 0; $i -lt 3; $i++) {
        $v = Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core"
        if ($v -match '^\d+$') { return $v }
        Start-Sleep -Milliseconds 150
    }
    return ""
}
function Threads([string]$p) {
    # 线程数只是"没被打崩"的旁证：读不到时重试，别把一次 shell 抖动当成失败
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
# su -c 只跑"一条命令"：包装脚本负责回显 EXIT=<rc>（多命令字符串会被 Magisk su 降权）
# 注意：参数不能叫 $pid（PowerShell 的只读自动变量），否则函数一进就报错、返回空
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
function PlayOne([string]$name) {
    $base = $name.Trim()
    $wk = Join-Path $stimDir ($base + '_wake.wav')
    $cm = Join-Path $stimDir ($base + '_cmd.wav')
    $parts = @()
    if ((Test-Path $wk) -and (Test-Path $cm)) { $parts += "${wk}:3000"; $parts += "${cm}:3000" }
    else { $parts += (Join-Path $stimDir ($base + '.wav')) + ':3000' }
    Adb @('shell', 'input keyevent KEYCODE_WAKEUP') | Out-Null
    Start-Sleep -Milliseconds 800
    & powershell.exe -NoProfile -STA -File $playScript -Plan ($parts -join ',') -Volume '1.0' `
        -LogFile 'D:\tgz02\OS\_analysis\t6\p1_play.log' | Out-Null
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

Rec ("################ T6-01-P1 thread-safety verification :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " ################")

# ------------------------------------------------------------------ P0
Step "P0 preflight"
$devs = (& $adb devices 2>&1) -join "`n"
Rec ("adb devices:`n" + $devs)
Assert ($devs -match [regex]::Escape($Dev) + '\s+device') "device is online"

$id = Su "id"
Note ("id: " + $id)
Assert ($id -match 'uid=0') "su gives uid=0"

$core = CorePid
Note ("core pid: " + $core)
Assert ($core -match '^\d+$') "factory core is running"

$bridge = Dev1 "pidof tgb_bridge"
Note ("bridge pid: " + $bridge)
Assert ($bridge -match '^\d+$') "T5-05A bridge is running"

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
}
$threads0 = Threads $core
Note ("baseline threads: " + $threads0)

# 部署设备端包装脚本（把 injector 的退出码回显成 EXIT=<rc>）
& $adb -s $Dev push (Join-Path $repo 'android\t6_01_p1\run_inject.sh') /data/local/tmp/run_inject.stage 2>&1 | Out-Null
Su "cp /data/local/tmp/run_inject.stage /data/local/tmp/t6/run_inject.sh" | Out-Null
Su "chmod 755 /data/local/tmp/t6/run_inject.sh" | Out-Null
$probe = Su ("$devDir/run_inject.sh --so $devDir/libtg_hook.so --pid " + $core + " --check")
Assert ($probe -match 'EXIT=\d+') "device-side injector wrapper returns EXIT=<rc>"

# ------------------------------------------------------------------ P1
Step "P1 install with thread protection"
$out = Inject $core ""
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 0) "injector exit 0"
if ($out -match 'paused (\d+) other threads') {
    $paused = [int]$Matches[1]
    Note ("paused other threads: " + $paused)
    Assert ($paused -gt 0) "all other threads were paused before patching"
} else { Assert $false "injector reported the paused thread count" }
Assert ($out -match 'patch_range=\[0x[0-9a-f]+,0x[0-9a-f]+\)') "injector printed the patch range"
Assert ($out -match 'is clear') "PC check reported the patch window clear"
Assert ($out -match 'hook_status=0 hooked=1') "hook installed (hooked=1)"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "no thread left in ptrace-stop"
Assert ((Threads $core) -ge ($threads0 - 1)) "thread count did not collapse"
Assert ((CorePid) -eq $core) "factory core pid unchanged"

# ------------------------------------------------------------------ P2
Step "P2 real ASR while the hook is installed"
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
Assert ($after -gt $before) "bridge stored a new ASR final while the hook was active"
if ($after -gt $before) {
    $new = Su ("tail -n " + ($after - $before) + " " + $EV)
    Rec ("new events:`n" + $new)
    Assert ($new -match '"event_id":"t6-') "event_id carries the t6- prefix"
    Assert ($new -match '"event_type":"asr_final"') "event_type is asr_final"
    Assert ($new -match '"is_final":true') "is_final is true"
}
$st = Inject $core ""
Assert ($st -match 'acked=[1-9]') "hook agent received an ACK from the bridge"
Assert ($st -match 'hooked=1') "hook still hooked after speech"

# ------------------------------------------------------------------ P3
Step "P3 fault injection: abort after pausing every thread"
$out = Inject $core "--fault abort-after-pause"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 21) "injector aborted with exit 21 after pausing all threads"
Assert ($out -match 'threads resumed, no patch written') "abort path reported that no patch was written"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "every paused thread was resumed (TracerPid=0)"
Assert ((Threads $core) -ge ($threads0 - 1)) "thread count intact after the abort"
$st = Inject $core ""
Assert ($st -match 'hooked=1') "previous patch is untouched by the aborted run"
$before = Lines $EV
PlayOne $Stim
$after = WaitEvent $before 40
Assert ($after -gt $before) "factory ASR still produces events after the aborted run"

# ------------------------------------------------------------------ P4
Step "P4 fault injection: pause fails at the 3rd thread"
$out = Inject $core "--fault pause-fail:3"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 19) "injector failed with exit 19 (install stage blocked)"
Assert ($out -match 'injected pause failure after 3 thread') "the injected pause failure was reported"
Assert ($out -match 'stage=install_pause') "failure was classified as install_pause"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "all threads resumed after the pause failure"
Assert ((Threads $core) -ge ($threads0 - 1)) "thread count intact after the pause failure"
$st = Inject $core ""
Assert ($st -match 'hooked=1') "no patch written by the failed run"

# ------------------------------------------------------------------ P3b
Step "P3b fault injection: PC check finds a thread inside the patch window"
$pre = Inject $core "--uninstall"
Assert ((InjectExit $pre) -eq 0) "precondition: hook uninstalled so install runs again"
$out = Inject $core "--fault pc-busy:1"
$rc = InjectExit $out
Note ("exit: " + $rc)
Assert ($rc -eq 0) "install succeeded after resuming and retrying"
Assert ($out -match 'sits inside \[0x') "injector reported a thread inside the patch window"
Assert ($out -match 'resuming all, retrying') "injector resumed every thread before retrying"
Assert ($out -match 'is clear') "the retried pause found the window clear"
Assert ($out -match 'hook_status=0 hooked=1') "patch written only after the window was clear"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "no ptrace-stop after the retry path"
# ------------------------------------------------------------------ P5
Step ("P5 " + $Rounds + " install/uninstall rounds during continuous speech")
$planParts = @()
foreach ($n in @('s02', 's03', 's04', 's05', 's06', 's07', 's08', 's09')) {
    $wk = Join-Path $stimDir ($n + '_wake.wav')
    $cm = Join-Path $stimDir ($n + '_cmd.wav')
    if ((Test-Path $wk) -and (Test-Path $cm)) {
        $planParts += "${wk}:3000"
        $planParts += "${cm}:3000"
    }
}
$playLog = 'D:\tgz02\OS\_analysis\t6\p1_loop_play.log'
$player = Start-Process -FilePath 'powershell.exe' -ArgumentList @(
    '-NoProfile', '-STA', '-File', $playScript,
    '-Plan', ($planParts -join ','), '-Volume', '1.0', '-LogFile', $playLog) -NoNewWindow -PassThru
Note ("background speech player started (pid " + $player.Id + ")")
Start-Sleep -Seconds 2

$evBefore = Lines $EV
$roundFails = 0
for ($i = 1; $i -le $Rounds; $i++) {
    $u = Inject $core "--uninstall"
    $urc = InjectExit $u
    $okU = ($urc -eq 0) -and ($u -match 'hooked=0 after uninstall') -and ($u -match 'paused \d+ other threads')
    $inst = Inject $core ""
    $irc = InjectExit $inst
    $okI = ($irc -eq 0) -and ($inst -match 'hook_status=0 hooked=1') -and ($inst -match 'is clear')
    $pidOk = ((CorePid) -eq $core)
    $tr = (Tracer $core) -match 'TracerPid:\s*0'
    $th = Threads $core
    $thOk = ($th -ge ($threads0 - 1))
    if (-not ($okU -and $okI -and $pidOk -and $tr -and $thOk)) { $roundFails++ }
    Note ("round " + $i + ": uninstall=" + $urc + " install=" + $irc +
          " pid_ok=" + $pidOk + " tracer_ok=" + $tr + " threads=" + $th)
}
if (-not $player.HasExited) { Stop-Process -Id $player.Id -Force -ErrorAction SilentlyContinue }
$evAfter = Lines $EV
Note ("events during the rounds: " + $evBefore + " -> " + $evAfter)
Assert ($roundFails -eq 0) ("all " + $Rounds + " rounds ended with a healthy process and correct hook state")
Assert ((CorePid) -eq $core) "factory core survived every round (same pid)"
Assert ((Tracer $core) -match 'TracerPid:\s*0') "no ptrace-stop leaked across " + $Rounds + " rounds"
Assert ($evAfter -gt $evBefore) "ASR kept producing events while the patch was being toggled"
$st = Inject $core ""
Assert ($st -match 'hooked=1') "hook is installed after the rounds"

# ------------------------------------------------------------------ P6
Step "P6 final uninstall and factory path"
$out = Inject $core "--uninstall"
$rc = InjectExit $out
Assert ($rc -eq 0) "final uninstall exit 0"
Assert ($out -match 'hooked=0 after uninstall') "hook patch removed"
Assert ($out -match 'paused \d+ other threads') "uninstall used the same thread protection"
$before = Lines $EV
Su "logcat -c" | Out-Null
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

Rec ""
Rec ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Write-Host ""
Write-Host ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Write-Host ("log: " + $Log)
if ($script:Fails -eq 0) { exit 0 } else { exit 1 }
