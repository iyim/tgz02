# t6_02_supervisor_device.ps1 -- T6-02 Native Supervisor 真机增量验收
#
#   powershell -File t6_02_supervisor_device.ps1 [-Restarts 3] [-Stim s01]
#
# 只测本次 Supervisor 功能，不重跑 T2-T5，也不重跑 T6-01 的 273 项断言：
#   P0 前置 + 部署：设备/root/桥接端；部署最新构建并按 sha256 逐字节核对；
#      清空 supervisor 日志、确认 Hook 处于未安装状态、清空 logcat
#   P1 单实例：启动 Supervisor → 断言只认一个实例；再起一个 → 退出码非 0 且日志
#      明确写"已有实例在跑"
#   P2 自动注入：核心进程已在跑 → 断言发现 PID（cmdline 精确等于 :core）、
#      --check、install 各一次、hooked=1；静置 12 秒断言**不重复注入**
#   P3 核心进程重启 3 次：每次断言 PID 改变、Supervisor 记录旧 PID 消失/新 PID 发现、
#      对新 PID 注入成功；结束后播放语音确认 Hook 真的在工作
#   P4 Supervisor 自身重启：先停后起，断言新实例用 --check 认出已注入（hooked=1）、
#      不执行 install（该区间 inject begin 计数为 0）
#   P5 目标暂时不存在：停掉 App，断言 Supervisor 不退出（进程还在）且记录 target gone；
#      再启动 App，断言自动发现新 PID 并重新注入
#   P6 正常停止：SIGTERM 退出、打印 stop/exit、删除 PID 文件、无残留进程
#   P7 原厂链路：播放语音，断言原厂 ASR/NLU/TTS 日志仍在、事件仍入库
param(
    [string]$Dev = "192.168.1.9:5555",
    [int]$Restarts = 3,
    [string]$Stim = "s01",
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t6_02_supervisor_device.log"
)

$ErrorActionPreference = 'Continue'
$adb = 'D:\GreenSoft\platform-tools\adb.exe'
$repo = 'D:\tgz02\OS\system\my-doc\07_ai_bridge'
$devDir = '/data/local/tmp/t6'
$supLog = '/data/local/tmp/t6/supervisor.log'
$supPid = '/data/local/tmp/t6/tg_supervisor.pid'
$EV = '/data/local/tmp/t5_bridge/work/events.jsonl'
$stimDir = 'D:\tgz02\OS\_analysis\t506d\stim2'
$playScript = 'D:\tgz02\OS\_analysis\t502_play.ps1'
$pkg = 'com.alibaba.ailabs.genie.smartapp'

$script:Fails = 0
$script:Passes = 0
$script:LogPath = $Log
Set-Content -Path $Log -Value '' -Encoding utf8

function Adb([string[]]$argv) { & $adb -s $Dev @argv 2>&1 }
function Sh([string]$c) { (Adb @('shell', $c)) -join "`n" }
function Dev1([string]$c) { ((Sh $c) -replace "`r", "").Trim() }
function Q([string]$c) { [char]34 + $c + [char]34 }
function Su([string]$c) { Dev1 ("su -c " + (Q $c)) }
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
    for ($i = 0; $i -lt 5; $i++) {
        $v = Dev1 ("pidof " + $pkg + ":core")
        if ($v -match '^\d+$') { return $v }
        Start-Sleep -Milliseconds 300
    }
    return ""
}

function SupPid() {
    $v = Dev1 "pidof tg_supervisor"
    if ($v -match '^\d+$') { return $v }
    return ""
}

function SupLines() {
    $v = Su ("wc -l < " + $supLog)
    if ($v -match '^\d+$') { return [int]$v }
    return 0
}

function SupFrom([int]$from) {
    return (Su ("tail -n +" + $from + " " + $supLog))
}

function Events() {
    $v = Su ("wc -l < " + $EV)
    if ($v -match '^\d+$') { return [int]$v }
    return 0
}

function CountIn([string]$text, [string]$pattern) {
    if ($text -eq '') { return 0 }
    return ([regex]::Matches($text, $pattern)).Count
}

# 等某段日志里出现某个正则；返回从 $from 起的全部新日志
function WaitLog([string]$pattern, [int]$from, [int]$timeoutSec) {
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    $chunk = ''
    while ((Get-Date) -lt $deadline) {
        Start-Sleep -Milliseconds 500
        $chunk = SupFrom $from
        if ($chunk -match $pattern) { return $chunk }
    }
    return (SupFrom $from)
}

function InjectCheck([string]$target) {
    return (Su ("$devDir/run_inject.sh --so $devDir/libtg_hook.so --pid " + $target + " --check"))
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
        -LogFile 'D:\tgz02\OS\_analysis\t6\t6_02_play.log' | Out-Null
    Note ("played " + $name)
}

function RestartApp() {
    Adb @('shell', ('am force-stop ' + $pkg)) | Out-Null
    Start-Sleep -Seconds 2
    Adb @('shell', ('monkey -p ' + $pkg + ' -c android.intent.category.LAUNCHER 1')) | Out-Null
    Start-Sleep -Seconds 8
}

function Deploy([string]$localPath, [string]$devName) {
    $stage = "/data/local/tmp/" + $devName + ".stage"
    & $adb -s $Dev push $localPath $stage 2>&1 | Out-Null
    $null = Su ("cp " + $stage + " " + $devDir + "/" + $devName)
    $null = Su ("chmod 0755 " + $devDir + "/" + $devName)
    $null = Su ("rm -f " + $stage)
    return (Su ("sha256sum " + $devDir + "/" + $devName))
}

Rec ("################ T6-02 supervisor device verification :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " ################")

# ------------------------------------------------------------------ P0
Step "P0 preflight, deploy the fresh build, clean starting state"
$devs = (& $adb devices 2>&1) -join "`n"
Rec ("adb devices:`n" + $devs)
Assert ($devs -match ([regex]::Escape($Dev) + '\s+device')) "device is online"

$id = Su "id"
Note ("id: " + $id)
Assert ($id -match 'uid=0') "su gives uid=0"

$bridge = Dev1 "pidof tgb_bridge"
Note ("bridge pid: " + $bridge)
Assert ($bridge -match '^\d+$') "T5-05A bridge is running"

$localSup = (Get-FileHash (Join-Path $repo 'android\out\tg_supervisor') -Algorithm SHA256).Hash.ToLower()
$localInj = (Get-FileHash (Join-Path $repo 'android\out\tg_injector') -Algorithm SHA256).Hash.ToLower()
$localSo = (Get-FileHash (Join-Path $repo 'android\out\libtg_hook.so') -Algorithm SHA256).Hash.ToLower()
Note ("local tg_supervisor sha256: " + $localSup)

$devSup = Deploy (Join-Path $repo 'android\out\tg_supervisor') 'tg_supervisor'
$devWrap = Deploy (Join-Path $repo 'android\supervisor\run_supervisor.sh') 'run_supervisor.sh'
$devInj = Deploy (Join-Path $repo 'android\out\tg_injector') 'tg_injector'
$devSo = Deploy (Join-Path $repo 'android\out\libtg_hook.so') 'libtg_hook.so'
Note ("device tg_supervisor : " + $devSup)
Note ("device tg_injector  : " + $devInj)
Note ("device libtg_hook.so: " + $devSo)
Assert ($devSup -match $localSup) "device tg_supervisor is byte-identical to the fresh build"
Assert ($devInj -match $localInj) "device tg_injector is byte-identical to the fresh build"
Assert ($devSo -match $localSo) "device libtg_hook.so is byte-identical to the fresh build"
Assert ($devWrap -match '^[0-9a-f]{64}') "device wrapper run_supervisor.sh deployed"

# 干净起点：停掉可能残留的 Supervisor，清日志，并把 Hook 卸掉
$old = SupPid
if ($old -ne '') {
    Note ("stale supervisor pid=" + $old + "; stopping it")
    $null = Su ("$devDir/run_supervisor.sh stop")
    Start-Sleep -Seconds 1
}
$null = Su ("rm -f " + $supLog)
$null = Su ("rm -f " + $supPid)
Assert ((SupPid) -eq '') "no supervisor is running at the start"

RestartApp
$core = CorePid
Note ("core pid: " + $core)
Assert ($core -match '^\d+$') "factory core is running"

$chk = InjectCheck $core
if ($chk -match 'hooked=1') {
    Note "hook is still installed from an earlier run; uninstalling for a clean start"
    $u = Su ("$devDir/run_inject.sh --so $devDir/libtg_hook.so --pid $core --uninstall")
    Rec ("uninstall for a clean start:`n" + $u)
    $chk = InjectCheck $core
}
Rec ("check before the supervisor starts:`n" + $chk)
$cleanStart = ($chk -match 'hook_status=0 hooked=0') -or ($chk -match 'nothing to query')
Assert $cleanStart "starting state: nothing is hooked in the core process"
$null = Su "logcat -c"

# ------------------------------------------------------------------ P1
Step "P1 start the supervisor and prove the single-instance lock"
$t0 = SupLines
$out = Su ("$devDir/run_supervisor.sh start")
Rec ("start: " + $out)
$chunk = WaitLog 'pidfile=.*acquired' $t0 15
Rec $chunk
$supPid = SupPid
Note ("supervisor pid: " + $supPid)
Assert ($supPid -match '^\d+$') "supervisor is running"
Assert ($chunk -match 'start pid=\d+ target=com\.alibaba\.ailabs\.genie\.smartapp:core') "startup line names the exact target"
Assert ($chunk -match 'acquired \(single instance\)') "pidfile lock acquired"

$secondOut = Su ("timeout 8 " + $devDir + "/tg_supervisor")
Rec ("second instance output:`n" + $secondOut)
Assert ($secondOut -match 'another supervisor is already running') "second instance refuses to start"
$after = SupFrom $t0
Assert ($after -match 'another supervisor is already running \(pid=') "refusal was logged with the running pid"
$pidList = Dev1 "pidof tg_supervisor"
Note ("pidof tg_supervisor: " + $pidList)
$pidCount = @($pidList -split '\s+' | Where-Object { $_ -match '^\d+$' }).Count
Assert ($pidCount -eq 1) "exactly one supervisor process exists"

# ------------------------------------------------------------------ P2
Step "P2 auto injection for the core process that is already running"
$chunk = WaitLog ('inject end: pid=' + $core + ' exit=0 hooked=1') $t0 40
Rec $chunk
Assert ($chunk -match ('target found: pid=' + $core + ' starttime=\d+ argv_extra=\d+ cmdline=' + [regex]::Escape($pkg) + ':core')) "exact cmdline match on the core process"
Assert ((CountIn $chunk 'target found: pid=') -eq 1) "only one process matched (main process and :business are ignored)"
Assert ($chunk -match ('check done: pid=' + $core + ' exit=0 hooked=-?\d+ state=\w+')) "a --check ran before the first install"
Assert ($chunk -match ('inject begin: pid=' + $core + ' attempt=1')) "install started for this pid"
Assert ($chunk -match ('inject end: pid=' + $core + ' exit=0 hooked=1')) "install finished with exit=0 and hooked=1"
$c1 = InjectCheck $core
Rec ("post-inject check:`n" + $c1)
Assert ($c1 -match 'hook_status=0 hooked=1') "independent --check confirms hooked=1"
Assert ((CorePid) -eq $core) "injector did not disturb the target pid"

$holdFrom = SupLines
Note "watching for 12 s to prove the same pid is not injected twice"
Start-Sleep -Seconds 12
$hold = SupFrom $holdFrom
Rec ("idle window:`n" + $hold)
Assert ((CountIn $hold 'inject begin: pid=') -eq 0) "no second install for the same pid"
Assert ((CountIn $hold 'check done: pid=') -eq 0) "no repeated --check on a pid that is already hooked"
Assert ((SupPid) -ne '') "supervisor still running while idle"

$connBefore = (SupFrom $t0)
Assert ((CountIn $connBefore ('inject begin: pid=' + $core)) -eq 1) "exactly one install attempt in total for this pid"

# ------------------------------------------------------------------ P3
Step ("P3 " + $Restarts + " core-process restarts")
$restartRows = @()
for ($i = 1; $i -le $Restarts; $i++) {
    $oldPid = CorePid
    $from = SupLines
    RestartApp
    $newPid = CorePid
    Note ("restart " + $i + ": core pid " + $oldPid + " -> " + $newPid)
    Assert ($newPid -match '^\d+$') ("restart " + $i + ": core process is back")
    Assert ($newPid -ne $oldPid) ("restart " + $i + ": core pid changed")
    $chunk = WaitLog ('inject end: pid=' + $newPid + ' exit=0 hooked=1') $from 45
    Rec $chunk
    $goneOk = ($chunk -match ('target gone: pid=' + $oldPid)) -or ($chunk -match ('target changed: old pid=' + $oldPid))
    Assert $goneOk ("restart " + $i + ": the old pid was retired")
    Assert ($chunk -match ('target ready: pid=' + $newPid)) ("restart " + $i + ": waited for libsmartbox.so before injecting")
    Assert ($chunk -match ('inject begin: pid=' + $newPid + ' attempt=1')) ("restart " + $i + ": install started for the new pid on the first attempt")
    Assert ((CountIn $chunk 'inject failed:') -eq 0) ("restart " + $i + ": no failed injector attempt in this window")
    Assert ($chunk -match ('inject end: pid=' + $newPid + ' exit=0 hooked=1')) ("restart " + $i + ": install succeeded for the new pid")
    $c = InjectCheck $newPid
    Assert ($c -match 'hook_status=0 hooked=1') ("restart " + $i + ": independent --check confirms hooked=1")
    $restartRows += ("restart " + $i + ": " + $oldPid + " -> " + $newPid + " (hooked=1)")
    Start-Sleep -Seconds 1
}
$core = CorePid
Note ("core pid after the restarts: " + $core)

# 真实语音：确认重启后的 Hook 不只是标志位对，而是真的在工作
$before = Events
Note ("events before the speech: " + $before)
$after = $before
for ($i = 1; $i -le 3; $i++) {
    PlayOne $Stim
    $deadline = (Get-Date).AddSeconds(40)
    while ((Get-Date) -lt $deadline) {
        Start-Sleep -Seconds 3
        $after = Events
        if ($after -gt $before) { break }
    }
    if ($after -gt $before) { break }
    Note ("attempt " + $i + ": no ASR final yet, retrying")
}
Note ("events after the speech: " + $after)
Assert ($after -gt $before) "ASR final reached the bridge with the supervisor-installed hook"
if ($after -gt $before) {
    $new = Su ("tail -n " + ($after - $before) + " " + $EV)
    Rec ("new events:`n" + $new)
    Assert ($new -match '"event_id":"t6-') "event_id carries the t6- prefix"
    Assert ($new -match '"event_type":"asr_final"') "event_type is asr_final"
}

# ------------------------------------------------------------------ P4
Step "P4 restart the supervisor; it must recognise the existing patch"
$from = SupLines
$st1 = Su ("$devDir/run_supervisor.sh stop")
Rec ("stop: " + $st1)
Start-Sleep -Seconds 1
$tail = SupFrom $from
Rec $tail
Assert ($tail -match 'stop requested: signal=15') "SIGTERM was handled"
Assert ($tail -match 'exit: pid=') "shutdown was logged"
Assert ((SupPid) -eq '') "old supervisor is gone"
$pidFileExists = Dev1 ("su -c " + (Q ("ls " + $supPid + " 2>/dev/null")))
Assert ($pidFileExists -eq '') "pidfile was removed on shutdown"

$from = SupLines
$out = Su ("$devDir/run_supervisor.sh start")
Rec ("start again: " + $out)
$chunk = WaitLog ('already hooked: pid=' + $core) $from 40
Rec $chunk
Assert ($chunk -match ('check done: pid=' + $core + ' exit=0 hooked=1 state=hooked')) "restarted supervisor ran --check first"
Assert ($chunk -match ('already hooked: pid=' + $core + ' \(state=1\); skip install')) "restarted supervisor recognised the patch"
Assert ((CountIn $chunk 'inject begin: pid=') -eq 0) "no install was attempted after the supervisor restart"
$c = InjectCheck $core
Assert ($c -match 'hook_status=0 hooked=1') "hook is still hooked=1 after the supervisor restart"

# ------------------------------------------------------------------ P5
Step "P5 the target disappears; the supervisor must survive and recover"
$from = SupLines
Adb @('shell', ('am force-stop ' + $pkg)) | Out-Null
Start-Sleep -Seconds 6
$chunk = SupFrom $from
Rec $chunk
Assert ($chunk -match ('target gone: pid=' + $core)) "the vanished pid was reported"
$still = SupPid
Note ("supervisor pid while the target is absent: " + $still)
Assert ($still -ne '') "supervisor did not exit when the target was gone"

$from = SupLines
RestartApp
$newPid = CorePid
Note ("core pid after the recovery restart: " + $newPid)
Assert ($newPid -match '^\d+$') "core process is running again"
$chunk = WaitLog ('inject end: pid=' + $newPid + ' exit=0 hooked=1') $from 45
Rec $chunk
Assert ($chunk -match ('target found: pid=' + $newPid)) "the new pid was discovered"
Assert ($chunk -match ('inject end: pid=' + $newPid + ' exit=0 hooked=1')) "the new pid was injected"
$c = InjectCheck $newPid
Assert ($c -match 'hook_status=0 hooked=1') "independent --check confirms hooked=1 on the recovered pid"
$core = $newPid

# ------------------------------------------------------------------ P6
Step "P6 stop the supervisor and check for leftovers"
$from = SupLines
$supPid = SupPid
$st = Su ("$devDir/run_supervisor.sh stop")
Rec ("stop: " + $st)
Assert ($st -match 'stopped pid=\d+') "stop reported a clean shutdown"
Start-Sleep -Seconds 1
$tail = SupFrom $from
Rec $tail
Assert ($tail -match 'stop requested: signal=15') "SIGTERM was handled"
Assert ($tail -match ('exit: pid=' + $supPid)) "the shutdown line names the supervisor pid"
Assert ((SupPid) -eq '') "no supervisor process is left"
Assert ((Dev1 "pidof tg_injector") -eq '') "no injector process is left behind"
$left = Dev1 ("su -c " + (Q ("ls " + $supPid + " 2>/dev/null")))
Assert ($left -eq '') "no pidfile is left behind"

# ------------------------------------------------------------------ P7
Step "P7 factory ASR/NLU/TTS still works"
$before = Events
$null = Su "logcat -c"
$factory = 0
for ($i = 1; $i -le 3 -and $factory -eq 0; $i++) {
    PlayOne $Stim
    $deadline = (Get-Date).AddSeconds(25)
    while ((Get-Date) -lt $deadline) {
        Start-Sleep -Seconds 3
        $n = Su "logcat -d | grep -c -E 'SessionManager|WakeupEngine|GenieAssistantUIManager'"
        if ($n -match '^\d+$') { $factory = [int]$n }
        if ($factory -gt 0) { break }
    }
    if ($factory -eq 0) { Note ("attempt " + $i + ": factory produced no log line yet, retrying") }
}
$after = Events
Note ("factory log lines: " + $factory)
Note ("events during the factory check: " + $before + " -> " + $after)
Assert ($factory -gt 0) "factory ASR/NLU path produced log lines"
Assert ($after -gt $before) "factory path stored a new ASR final"
Assert ((CorePid) -eq $core) "core process survived the whole supervisor test"
$tr = Su ("grep -m1 TracerPid /proc/" + $core + "/status")
Assert ($tr -match 'TracerPid:\s*0') "no ptrace-stop is left on the target"

Rec ""
Rec ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Rec ("RESTARTS:")
foreach ($r in $restartRows) { Rec ("  " + $r) }
Write-Host ""
Write-Host ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Write-Host ("log: " + $Log)
if ($script:Fails -eq 0) { exit 0 } else { exit 1 }
