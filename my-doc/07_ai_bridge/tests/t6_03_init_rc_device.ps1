# t6_03_init_rc_device.ps1 -- T6-03 真机增量验收：init.rc 托管 Supervisor
#
#   powershell -File t6_03_init_rc_device.ps1
#
# 只测本次 init 集成，不重跑 T2–T6-02 的全量用例：
#   P0 环境核对 + 部署独立 rc（/system/etc/init/tg_supervisor.rc）+ 记录部署前快照
#   P1 重启 #1：Android 正常开机、init 拉起 Supervisor、核心进程自动注入、
#      ASR 文本进入 AI Bridge
#   P2 重启核心进程：新 PID 自动重新注入
#   P3 重启 #2：开机后仍然自动启动并注入（持久性）
#   P4 停用 rc + 重启 #3：Supervisor 不再自动启动；T6-02 手动启停仍可用
#   P5 故障演练：二进制缺失时开机不受影响（服务起不来也不阻断系统）+ 统计重试频率
#   P6 恢复：删除独立 rc，/system/etc/init 回到部署前的清单
#   P7 重新部署 + 重启 #4：确认可重复启用，原厂 ASR/NLU/TTS 正常
param(
    [string]$Dev = "192.168.1.9:5555",
    [string]$Stim = "s01",
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t6_03_init_rc_device.log"
)

$ErrorActionPreference = 'Continue'
$adb = 'D:\GreenSoft\platform-tools\adb.exe'
$repo = 'D:\tgz02\OS\system\my-doc\07_ai_bridge'
$devDir = '/data/local/tmp/t6'
$rcName = 'tg_supervisor.rc'
$rcPath = '/system/etc/init/' + $rcName
$supLog = '/data/local/tmp/t6/supervisor.log'
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

# 这台设备的 adbd 在重启后偶尔会短暂返回 "error: closed / device offline"。
# 所有读取都走这里：识别 adb 层错误后重试，必要时 reconnect，避免把链路抖动记成断言失败。
function IsAdbError([string]$s) {
    return ($s -match '^(adb(\.exe)?:\s*)?error:\s|device offline|protocol fault|device not found')
}

function Dev1([string]$c) {
    $v = ''
    for ($i = 0; $i -lt 10; $i++) {
        $v = ((Sh $c) -replace "`r", "").Trim()
        if (-not (IsAdbError $v)) { return $v }
        if ($i -eq 3) { $null = (& $adb -s $Dev reconnect 2>&1) }
        if ($i -eq 6) { $null = (& $adb -s $Dev connect $Dev 2>&1) }
        Start-Sleep -Milliseconds 1500
    }
    return $v
}

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

function Svc() { return (Dev1 "getprop init.svc.tg_supervisor") }
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
function SupFrom([int]$from) { return (Su ("tail -n +" + $from + " " + $supLog)) }
function Events() {
    $v = Su ("wc -l < " + $EV)
    if ($v -match '^\d+$') { return [int]$v }
    return 0
}
function Lines([string]$f) {
    $v = Su ("wc -l < " + $f)
    if ($v -match '^\d+$') { return [int]$v }
    return 0
}

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

function BridgeStart() {
    $null = Su '/data/local/tmp/t5_bridge/run_bridge.sh start'
    Start-Sleep -Seconds 2
    return (Su '/data/local/tmp/t5_bridge/run_bridge.sh status')
}

function WaitShell([int]$timeoutSec) {
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    while ((Get-Date) -lt $deadline) {
        $r = ((& $adb -s $Dev shell "echo shell_ok" 2>&1) -join ' ').Trim()
        if ($r -eq 'shell_ok') { return $true }
        Start-Sleep -Seconds 2
    }
    return $false
}

function RebootAndWait([int]$timeoutSec) {
    $null = Adb @('reboot')
    Start-Sleep -Seconds 10
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    while ((Get-Date) -lt $deadline) {
        $state = ((& $adb -s $Dev get-state 2>&1) -join ' ').Trim()
        if ($state -eq 'device') {
            $bc = ((& $adb -s $Dev shell "getprop sys.boot_completed" 2>&1) -join '').Trim()
            if ($bc -eq '1') {
                # 系统起来了还不够：adbd 也可能还在抽风，等一条 shell 命令真的能跑通
                if (WaitShell 60) {
                    Start-Sleep -Seconds 3
                    return $true
                }
            }
        }
        Start-Sleep -Seconds 5
    }
    return $false
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
        -LogFile 'D:\tgz02\OS\_analysis\t6\t6_03_play.log' | Out-Null
    Note ("played " + $name)
}

function DeployFile([string]$localPath, [string]$devName) {
    $stage = "/data/local/tmp/" + $devName + ".stage"
    & $adb -s $Dev push $localPath $stage 2>&1 | Out-Null
    $null = Su ("cp " + $stage + " " + $devDir + "/" + $devName)
    $null = Su ("chmod 0755 " + $devDir + "/" + $devName)
    $null = Su ("rm -f " + $stage)
    return (Su ("sha256sum " + $devDir + "/" + $devName))
}

Rec ("################ T6-03 init.rc supervisor device verification :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " ################")

# ------------------------------------------------------------------ P0
Step "P0 boot-environment audit and rc deployment"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
$devs = (& $adb devices 2>&1) -join "`n"
Rec ("adb devices:`n" + $devs)
Assert ($devs -match ([regex]::Escape($Dev) + '\s+device')) "device is online"

$id = Su "id"
Note ("id: " + $id)
Assert ($id -match 'uid=0') "su gives uid=0"

# 1) init 的导入关系：目录导入 + 显式 import
$imports = Su "grep -h import /init.rc"
Rec ("/init.rc imports:`n" + $imports)
Assert ($imports -match 'import /init\.common\.rc') "init.rc import chain is readable and unchanged"
$initDirs = Su "strings /init | grep -F /etc/init"
Rec ("init import dirs in the binary:`n" + $initDirs)
Assert ($initDirs -match '/system/etc/init') "init auto-imports the /system/etc/init directory"
$initRcProp = Dev1 "getprop ro.boot.init_rc"
Note ("ro.boot.init_rc=[" + $initRcProp + "]")
Assert ($initRcProp -eq '') "no ro.boot.init_rc override (directory imports are used)"

# 2) 分区与 /data 时机
$sysMount = Su "mount"
Rec (($sysMount -split "`n" | Where-Object { $_ -match ' /system | /data | /vendor ' }) -join "`n")
Assert ((($sysMount -split "`n") | Where-Object { $_ -match ' /system .*\bro\b' }).Count -ge 1) "/system is mounted read-only"
Assert ((($sysMount -split "`n") | Where-Object { $_ -match ' /data .*\brw\b' }).Count -ge 1) "/data is mounted read-write"
$crypto = Dev1 "getprop ro.crypto.state"
Note ("ro.crypto.state=" + $crypto)
Assert ($crypto -eq 'unencrypted') "/data needs no decryption wait (post-fs-data is enough)"
$verity = Dev1 "getprop ro.boot.veritymode"
$vbs = Dev1 "getprop ro.boot.verifiedbootstate"
Note ("ro.boot.veritymode=" + $verity + " ro.boot.verifiedbootstate=" + $vbs)
$verityDmesg = Su "dmesg"
Assert ((($verityDmesg -split "`n") | Where-Object { $_ -match 'dm-verity|verity' }).Count -eq 0) "no dm-verity device is active at runtime"

# 3) SELinux 实际模式（不看 ro.boot.selinux 的结论）
$enforce = Dev1 "getenforce"
$enforceFile = Su "cat /sys/fs/selinux/enforce"
$bootSelinux = Dev1 "getprop ro.boot.selinux"
Note ("getenforce=" + $enforce + " /sys/fs/selinux/enforce=" + $enforceFile + " ro.boot.selinux=" + $bootSelinux)
$selinuxPermissive = ($enforce -eq 'Permissive') -and ($enforceFile -eq '0')
Assert $selinuxPermissive "runtime SELinux mode confirmed Permissive from the kernel, not from the boot prop"
$avc = Su "dmesg"
Assert ((($avc -split "`n") | Where-Object { $_ -match 'avc: *denied' }).Count -eq 0) "no AVC denial in the current boot log"

# 4) 文件属主/权限
$files = Su ("ls -l " + $devDir + "/tg_supervisor " + $devDir + "/tg_injector " + $devDir + "/libtg_hook.so")
Rec ($files)
Assert ($files -match '^-rwxr-xr-x 1 root +root .* tg_supervisor') "supervisor binary is root:root 0755"
$tmpDir = Su ("ls -ld " + $devDir)
Rec ($tmpDir)
Assert ($tmpDir -match 'drwx') "/data/local/tmp/t6 exists for boot-time use"

# 5) 部署：rc + 设备端脚本 + 二进制哈希核对
$localRc = (Get-FileHash (Join-Path $repo 'android\init_rc\tg_supervisor.rc') -Algorithm SHA256).Hash.ToLower()
$localSup = (Get-FileHash (Join-Path $repo 'android\out\tg_supervisor') -Algorithm SHA256).Hash.ToLower()
Note ("local rc sha256 : " + $localRc)
Note ("local supervisor: " + $localSup)
$devSup = DeployFile (Join-Path $repo 'android\out\tg_supervisor') 'tg_supervisor'
$devRc = DeployFile (Join-Path $repo 'android\init_rc\tg_supervisor.rc') 'tg_supervisor.rc'
$null = DeployFile (Join-Path $repo 'android\init_rc\deploy_rc.sh') 'deploy_rc.sh'
$null = DeployFile (Join-Path $repo 'android\init_rc\disable_rc.sh') 'disable_rc.sh'
$null = DeployFile (Join-Path $repo 'android\init_rc\restore_rc.sh') 'restore_rc.sh'
$null = DeployFile (Join-Path $repo 'android\init_rc\status_rc.sh') 'status_rc.sh'
Assert ($devSup -match $localSup) "device supervisor is byte-identical to the build"
Assert ($devRc -match $localRc) "device rc copy matches the repo"

$deploy = Su ("$devDir/deploy_rc.sh")
Rec ("deploy:`n" + $deploy)
Assert ($deploy -match 'deployed: ' + [regex]::Escape($rcPath)) "rc file installed into /system/etc/init"
Assert ($deploy -match $localRc) "deployed rc content matches the repo copy"
$rcLs = Su ("ls -l " + $rcPath)
Rec ($rcLs)
Assert ($rcLs -match '^-rw-r--r-- 1 root +root') "rc file is root:root 0644"
$sysAfter = Su "mount"
Assert ((($sysAfter -split "`n") | Where-Object { $_ -match ' /system .*\bro\b' }).Count -ge 1) "/system was remounted read-only after the deploy"
$snap = Su "ls -l /system/etc/init"
$snapCount = (($snap -split "`n") | Where-Object { $_ -match '^-' }).Count
Note ("/system/etc/init entry count after deploy: " + $snapCount)

# 让"部署后、重启前"的起点干净：如果本次开机已经由 init 拉起过实例，先停掉
$null = Su 'setprop ctl.stop tg_supervisor'
$null = Su ("$devDir/run_supervisor.sh stop")
Start-Sleep -Seconds 2
$svcBefore = Svc
Note ("init.svc.tg_supervisor before the reboot: [" + $svcBefore + "]")
Assert ($svcBefore -ne 'running') "service is not running before the reboot"

# ------------------------------------------------------------------ P1
Step "P1 reboot #1: init starts the supervisor and the hook is injected"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
$logFrom = SupLines
$booted = RebootAndWait 260
Assert $booted "Android finished booting with the rc in place"
$bc = Dev1 "getprop sys.boot_completed"
Assert ($bc -eq '1') "sys.boot_completed=1"
$svc = Svc
Note ("init.svc.tg_supervisor=" + $svc)
Assert ($svc -eq 'running') "init started tg_supervisor at boot"
$supPid = SupPid
Note ("supervisor pid=" + $supPid)
Assert ($supPid -match '^\d+$') "supervisor process is alive"

$chunk = WaitLog 'inject end: pid=\d+ exit=0 hooked=1' $logFrom 90
Rec $chunk
Assert ($chunk -match 'start pid=\d+ target=com\.alibaba\.ailabs\.genie\.smartapp:core') "supervisor logged its startup after the init start"
Assert ($chunk -match 'inject end: pid=\d+ exit=0 hooked=1') "supervisor injected the core process automatically"
$core = CorePid
Note ("core pid=" + $core)
Assert ($core -match '^\d+$') "factory core process is running"
$chk = InjectCheck $core
Assert ($chk -match 'hook_status=0 hooked=1') "independent --check confirms hooked=1"
$tr = Su ("grep -m1 TracerPid /proc/" + $core + "/status")
Assert ($tr -match 'TracerPid:\s*0') "no ptrace-stop is left on the target"

$bridge = BridgeStart
Rec ($bridge)
Assert ($bridge -match 'running: pid=') "AI bridge is up (T5 infrastructure)"
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
Assert ($after -gt $before) "ASR text reached the AI bridge through the init-started supervisor"
if ($after -gt $before) {
    $new = Su ("tail -n " + ($after - $before) + " " + $EV)
    Rec ("new events:`n" + $new)
    Assert ($new -match '"event_id":"t6-') "event_id carries the t6- prefix"
    Assert ($new -match '"event_type":"asr_final"') "event_type is asr_final"
}

# ------------------------------------------------------------------ P2
Step "P2 restart the core process: the new pid is injected again"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
$oldCore = CorePid
$from = SupLines
Adb @('shell', ('am force-stop ' + $pkg)) | Out-Null
Start-Sleep -Seconds 2
Adb @('shell', ('monkey -p ' + $pkg + ' -c android.intent.category.LAUNCHER 1')) | Out-Null
Start-Sleep -Seconds 8
$newCore = CorePid
Note ("core pid " + $oldCore + " -> " + $newCore)
Assert ($newCore -match '^\d+$') "core process is back"
Assert ($newCore -ne $oldCore) "core pid changed"
$chunk = WaitLog ('inject end: pid=' + $newCore + ' exit=0 hooked=1') $from 60
Rec $chunk
Assert ($chunk -match ('inject end: pid=' + $newCore + ' exit=0 hooked=1')) "the new pid was injected automatically"
Assert ($chunk -match ('target gone: pid=' + $oldCore + '|target changed: old pid=' + $oldCore)) "the old pid was retired"
$chk = InjectCheck $newCore
Assert ($chk -match 'hook_status=0 hooked=1') "independent --check confirms hooked=1 on the new pid"
Assert ((SupPid) -eq $supPid) "the same supervisor process survived the app restart"
$core = $newCore

# ------------------------------------------------------------------ P3
Step "P3 reboot #2: the supervisor starts again by itself"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
$logFrom = SupLines
$booted = RebootAndWait 260
Assert $booted "Android finished booting on the second reboot"
$svc = Svc
Note ("init.svc.tg_supervisor=" + $svc)
Assert ($svc -eq 'running') "init started tg_supervisor again after the reboot"
$supPid2 = SupPid
Note ("supervisor pid after reboot: " + $supPid2)
Assert ($supPid2 -match '^\d+$') "supervisor process is alive after the reboot"
$chunk = WaitLog 'inject end: pid=\d+ exit=0 hooked=1' $logFrom 90
Assert ($chunk -match 'inject end: pid=\d+ exit=0 hooked=1') "the freshly booted supervisor injected the core process"
$core = CorePid
$chk = InjectCheck $core
Assert ($chk -match 'hook_status=0 hooked=1') "independent --check confirms hooked=1 after the reboot"
Assert ((SupPid2) -ne $supPid) "the supervisor pid is a new process after the reboot"

# ------------------------------------------------------------------ P4
Step "P4 failure drill: a service that cannot exec must not disturb the system"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
# 这一步故意在"rc 已启用、服务已解析"的这次开机里做，不重启：
# 把二进制临时改名 → 让 init 去启动一个找不到的可执行文件 → 观察后果 → 立刻恢复。
# 之所以不在缺失状态下重启：本机 adbd 偶发不可用（历史故障），
# 而一旦重启，设备就会停在"服务一直起不来"的状态且无法远程修复。
$core = CorePid
$bootBefore = Dev1 "cat /proc/sys/kernel/random/boot_id"
Note ("core pid before the drill: " + $core)
$mv = Su ("mv $devDir/tg_supervisor $devDir/tg_supervisor.off")
Rec ("hide the binary: " + $mv)
$hidden = Su ("ls -l $devDir/tg_supervisor.off")
Assert ($hidden -match 'tg_supervisor\.off') "binary is temporarily hidden"
$null = Su 'setprop ctl.stop tg_supervisor'
Start-Sleep -Seconds 2
$null = Su 'setprop ctl.start tg_supervisor'
Start-Sleep -Seconds 5
$svc = Svc
Note ("init.svc.tg_supervisor while the binary is missing: [" + $svc + "]")
Assert ($svc -ne 'running') "init could not keep the service up without a binary"
$p = SupPid
Assert ($p -eq '') "no supervisor process is running during the drill"
$logd = Dev1 "getprop init.svc.logd"
Note ("init.svc.logd during the drill: [" + $logd + "]")
Assert ($logd -eq 'running') "other init services are unaffected"
$bootAfter = Dev1 "cat /proc/sys/kernel/random/boot_id"
Assert ($bootBefore -eq $bootAfter) "the failure did not reboot or destabilise the system"
$coreDrill = CorePid
Assert ($coreDrill -eq $core) "factory core process survived the failed service start"
$dm = Su "dmesg"
$mentions = (($dm -split "`n") | Where-Object { $_ -match 'tg_supervisor' }).Count
Note ("init log lines mentioning tg_supervisor in the last 5 s window: " + $mentions)
Assert ($mentions -lt 200) "no runaway restart storm during the drill"

$mvBack = Su ("mv $devDir/tg_supervisor.off $devDir/tg_supervisor")
Rec ("restore the binary: " + $mvBack)
$back = Su ("ls -l $devDir/tg_supervisor")
Assert ($back -match 'tg_supervisor$') "binary is restored immediately after the drill"
$null = Su 'setprop ctl.start tg_supervisor'
$chunk = WaitLog 'inject end: pid=\d+ exit=0 hooked=1' (SupLines) 60
$chunk = WaitLog ('already hooked: pid=' + $core) (SupLines) 5
$svc = Svc
Note ("init.svc.tg_supervisor after restoring the binary: [" + $svc + "]")
Assert ($svc -eq 'running') "init brought the service back once the binary existed again"
$p = SupPid
Assert ($p -match '^\d+$') "supervisor is running again after the drill"

# ------------------------------------------------------------------ P5
Step "P5 disable the rc and reboot #3: no auto start, manual control still works"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
$dis = Su ("$devDir/disable_rc.sh")
Rec ("disable:`n" + $dis)
Assert ($dis -match 'disabled: ') "rc file was renamed to .disabled"
Assert ((Svc) -ne 'running') "running service was stopped"
Assert ((SupPid) -eq '') "no supervisor process is left"
$logFrom = SupLines
$booted = RebootAndWait 260
Assert $booted "Android finished booting with the rc disabled"
$svc = Svc
Note ("init.svc.tg_supervisor after disabling: [" + $svc + "]")
Assert ($svc -ne 'running') "init no longer starts the supervisor"
$p = SupPid
Assert ($p -eq '') "no supervisor process after boot"
$chunk = SupFrom $logFrom
Assert (($chunk -match 'start pid=') -eq $false) "the supervisor never started during this boot"

$man = Su ("$devDir/run_supervisor.sh start")
Rec ("manual start:`n" + $man)
$chunk = WaitLog 'inject end: pid=\d+ exit=0 hooked=1' $logFrom 60
Assert ($chunk -match 'inject end: pid=\d+ exit=0 hooked=1') "T6-02 manual start still works and injects"
$p = SupPid
Assert ($p -match '^\d+$') "manually started supervisor is running"
Assert ((Svc) -ne 'running') "the manual instance is not managed by init (as expected)"
$stop = Su ("$devDir/run_supervisor.sh stop")
Rec ("manual stop:`n" + $stop)
Assert ($stop -match 'stopped pid=') "T6-02 manual stop still works"
Assert ((SupPid) -eq '') "manual instance is gone"

# ------------------------------------------------------------------ P6
Step "P6 restore the factory startup configuration"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
$restore = Su ("$devDir/restore_rc.sh")
Rec ("restore:`n" + $restore)
$left = Su "ls /system/etc/init"
$leftNames = ($left -split "`n") | Where-Object { $_ -match 'tg_supervisor' }
Note ("tg_supervisor files left in /system/etc/init: [" + ($leftNames -join ',') + "]")
Assert ($leftNames.Count -eq 0) "no tg_supervisor rc remains in /system/etc/init"
$sysNow = Su "mount"
Assert ((($sysNow -split "`n") | Where-Object { $_ -match ' /system .*\bro\b' }).Count -ge 1) "/system is read-only again after the restore"
$countNow = (($left -split "`n") | Where-Object { $_ -match '^-' }).Count
Note ("entry count now: " + $countNow + " (was " + $snapCount + " with our file)")
Assert ($countNow -eq ($snapCount - 1)) "/system/etc/init is back to the pre-deploy entry count"

# ------------------------------------------------------------------ P7
Step "P7 re-deploy and reboot #4: reproducible enable, factory path intact"
# 每个阶段开始前先确认 adb shell 真的可用：本机 adbd 会偶发 "error: closed"，
# 一旦断了就明确中止，不把链路错误记成一堆断言失败。
if (-not (WaitShell 90)) {
    Rec "ABORT: adb shell is not usable; stopping before this phase"
    Write-Host "ABORT: adb shell is not usable"
    exit 2
}
$re = Su ("$devDir/deploy_rc.sh")
Rec ("re-deploy:`n" + $re)
Assert ($re -match 'deployed: ') "rc deployed again"
$logFrom = SupLines
$booted = RebootAndWait 260
Assert $booted "Android finished booting on the final reboot"
$svc = Svc
Note ("init.svc.tg_supervisor=" + $svc)
Assert ($svc -eq 'running') "init starts the supervisor again after re-deploying the rc"
$chunk = WaitLog 'inject end: pid=\d+ exit=0 hooked=1' $logFrom 90
Assert ($chunk -match 'inject end: pid=\d+ exit=0 hooked=1') "the core process is injected again"
$core = CorePid
$chk = InjectCheck $core
Assert ($chk -match 'hook_status=0 hooked=1') "independent --check confirms hooked=1"

$bridge = BridgeStart
Assert ($bridge -match 'running: pid=') "AI bridge is up for the factory-path check"
$null = Su "logcat -c"
$before = Events
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
Assert ($after -gt $before) "ASR final still reaches the bridge"
Assert ((SupPid) -match '^\d+$') "supervisor is still running at the end"
$tr = Su ("grep -m1 TracerPid /proc/" + $core + "/status")
Assert ($tr -match 'TracerPid:\s*0') "no ptrace-stop is left on the target"

Rec ""
Rec ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Write-Host ""
Write-Host ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Write-Host ("log: " + $Log)
if ($script:Fails -eq 0) { exit 0 } else { exit 1 }
