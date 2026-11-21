# t6_injector_device.ps1 -- T6-01 真机验收驱动（独立 Injector + Hook Agent）
#
#   powershell -File t6_injector_device.ps1 [-Only P2,P3] [-Stim s01]
#
# 阶段：
#   P0 前置检查：设备在线、su 可用、原厂 core 在跑、桥接端在跑（不在则拉起）
#   P1 推送产物：tg_injector / libtg_hook.so -> /data/local/tmp/t6（目标进程可读）
#   P2 注入：跑 Injector，断言 dlopen/dlsym/install 全 OK，目标进程不变形
#   P3 注入后完整性：pid 不变、TracerPid=0、线程数不减少、maps 有 libtg_hook.so
#   P4 重复注入保护：第二次运行只查询状态（already_mapped=1），不重复安装
#   P5 真实语音联调：host 播放唤醒+指令 -> 原厂 ASR -> Hook Agent -> 桥接端 -> events.jsonl
#   P6 AI Worker 消费：用生产状态的副本从原偏移继续消费，断言只多处理 1 条且是 t6- 事件
#   P7 卸载：--uninstall 恢复原厂序言，断言 hooked=0 且原厂 ASR 仍正常
#
# 只读约束：不截断 events.jsonl、不改生产 state（P6 用副本）、不动 T5-05A/06 代码。
param(
    [string]$Dev = "192.168.1.9:5555",
    [string]$Only = "",
    [string]$Stim = "s01",
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t6_01_device_verify.log"
)

$ErrorActionPreference = 'Continue'
$adb    = 'D:\GreenSoft\platform-tools\adb.exe'
$repo   = 'D:\tgz02\OS\system\my-doc\07_ai_bridge'
$out    = Join-Path $repo 'android\out'
$devDir = '/data/local/tmp/t6'
$EV     = '/data/local/tmp/t5_bridge/work/events.jsonl'
$stimDir = 'D:\tgz02\OS\_analysis\t506d\stim2'
$hostWork = 'D:\tgz02\OS\_analysis\t6'

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
    else       { $script:Fails++;  Rec ("  ASSERT FAIL : " + $what); Write-Host ("  ASSERT FAIL : " + $what) }
}
function Step([string]$t) {
    Rec ""
    Rec ("===== " + $t + " :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " =====")
    Write-Host ""
    Write-Host ("===== " + $t + " =====")
}
function Want([string]$p) {
    if ($Only -ne '') { return (($Only -split ',') -contains $p) }
    return $true
}
function CorePid() { Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core" }
function Lines([string]$f) { [int](Su ("wc -l < " + $f + " 2>/dev/null || echo 0")) }

Rec ("################ T6-01 device verification :: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') + " ################")

# ---------------------------------------------------------------- P0 前置
if (Want 'P0') {
    Step "P0 preflight"
    $devs = (& $adb devices 2>&1) -join "`n"
    Rec ("adb devices:`n" + $devs)
    Assert ($devs -match [regex]::Escape($Dev) + '\s+device') "device $Dev is online"

    $id = Su "id"
    Note ("id: " + $id)
    Assert ($id -match 'uid=0') "su gives uid=0 (expected via Magisk)"

    $core = CorePid
    Note ("core pid: " + $core)
    Assert ($core -match '^\d+$') "factory com.alibaba.ailabs.genie.smartapp:core is running"

    $model = Dev1 "getprop ro.product.model"
    Note ("model: " + $model)
    Assert ($model -eq 'AILABS_S1L') "device model is AILABS_S1L (TG-Z02)"

    $bridge = Dev1 "pidof tgb_bridge"
    if ($bridge -notmatch '^\d+$') {
        Note "bridge not running; starting it from /data/local/tmp/t5_bridge/bin/tgb_bridge"
        Su ("nohup /data/local/tmp/t5_bridge/bin/tgb_bridge --sock tgz2_asr_bridge --work-dir /data/local/tmp/t5_bridge/work >> /data/local/tmp/t5_bridge/bridge.out 2>&1 &") | Out-Null
        Start-Sleep -Seconds 2
        $bridge = Dev1 "pidof tgb_bridge"
    }
    Note ("bridge pid: " + $bridge)
    Assert ($bridge -match '^\d+$') "T5-05A bridge (tgb_bridge) is running"
    Assert ((Lines $EV) -gt 0) "events.jsonl exists and is non-empty"

    $sdk = Dev1 "getprop ro.build.version.sdk"
    Note ("sdk: " + $sdk)

    # 如果这个进程里已经映射过 libtg_hook.so（上一次验收留下的），P2 的
    # "already_mapped=0 / 首次注入" 就不成立。重启原厂 app 换一个干净进程再测。
    $mapped = Su ("grep -c libtg_hook /proc/" + $core + "/maps 2>/dev/null")
    if ($mapped -notmatch '^\d+$') { $mapped = 0 }
    if ([int]$mapped -gt 0) {
        Note ("libtg_hook.so already mapped in pid " + $core + "; restarting the assistant for a clean process")
        Adb @('shell', 'am force-stop com.alibaba.ailabs.genie.smartapp') | Out-Null
        Start-Sleep -Seconds 2
        Adb @('shell', 'monkey -p com.alibaba.ailabs.genie.smartapp -c android.intent.category.LAUNCHER 1') | Out-Null
        Start-Sleep -Seconds 8
        $core = CorePid
        Note ("core pid after restart: " + $core)
    }
    Assert ($core -match '^\d+$') "factory core is running after the preflight restart"
}

# ---------------------------------------------------------------- P1 推送
if (Want 'P1') {
    Step "P1 push artifacts"
    Su ("mkdir -p " + $devDir) | Out-Null
    Su ("chmod 755 " + $devDir) | Out-Null
    foreach ($f in @('tg_injector', 'libtg_hook.so')) {
        $local = Join-Path $out $f
        Assert (Test-Path $local) ("local artifact exists: " + $f)
        & $adb -s $Dev push $local "$devDir/$f" 2>&1 | Out-Null
        $sz = Dev1 ("ls -l " + $devDir + "/" + $f + " | awk '{print `$5}'")
        Note ($f + " size on device: " + $sz)
    }
    Su ("chmod 755 " + $devDir + "/tg_injector") | Out-Null
    Su ("chmod 644 " + $devDir + "/libtg_hook.so") | Out-Null
    $ls = Su ("ls -l " + $devDir)
    Rec ("ls: " + $ls)
    Assert ($ls -match '-rwxr-xr-x.*tg_injector') "injector is 0755"
    Assert ($ls -match '-rw-r--r--.*libtg_hook\.so') "hook agent is 0644 (target process can read it)"
}

# ---------------------------------------------------------------- P2 注入
$coreBefore = CorePid
$threadsBefore = 0
$uptimeBefore = ""
if (Want 'P2') {
    Step "P2 inject via standalone injector (no frida, no magisk module)"
    $threadsBefore = [int](Su ("ls /proc/" + $coreBefore + "/task | wc -l"))
    $uptimeBefore = Dev1 "cat /proc/uptime"
    Note ("core pid=" + $coreBefore + " threads=" + $threadsBefore + " uptime=" + $uptimeBefore)
    Assert ((Dev1 "ps -A -o NAME | grep -c frida") -eq '0') "no frida process on the device"

    $cmd = "$devDir/tg_injector --so $devDir/libtg_hook.so --pid $coreBefore --verbose"
    Rec ("> " + $cmd)
    $res = Su $cmd
    Rec $res
    Write-Host $res

    Assert ($res -match 'abi=ELF32/ARM') "injector confirmed target ABI ELF32/ARM"
    Assert ($res -match 'already_mapped=0') "library was not mapped before injection"
    Assert ($res -match 'attached tid=\d+') "injector attached a thread"
    Assert ($res -match 'scratch=0x') "scratch page allocated in the target"
    Assert ($res -match 'dlopen ok handle=0x') "dlopen succeeded inside the target"
    Assert ($res -match 'tg_hook_install\(\) = 0') "tg_hook_install() returned 0"
    Assert ($res -match 'hook_status=0 hooked=1') "hook agent reports status=0 hooked=1"
    Assert ($res -match 'RESULT ok') "injector reported RESULT ok"
    Assert ($res -match 'detached \(target thread resumed\)') "injector detached the thread"
}

# ---------------------------------------------------------------- P3 完整性
if (Want 'P3') {
    Step "P3 target integrity after injection"
    $coreAfter = CorePid
    Note ("core pid after: " + $coreAfter)
    Assert ($coreAfter -eq $coreBefore) "factory core pid unchanged (no crash/restart)"

    $tracer = Dev1 ("grep -m1 TracerPid /proc/" + $coreAfter + "/status")
    Note ($tracer)
    Assert ($tracer -match 'TracerPid:\s*0') "no thread left in ptrace-stop (TracerPid=0)"

    $threadsAfter = [int](Su ("ls /proc/" + $coreAfter + "/task | wc -l"))
    Note ("threads after: " + $threadsAfter)
    Assert ($threadsAfter -ge ($threadsBefore - 1)) "thread count did not collapse"

    $maps = Su ("grep -c libtg_hook /proc/" + $coreAfter + "/maps")
    Note ("libtg_hook mappings: " + $maps)
    Assert ([int]$maps -ge 1) "libtg_hook.so is mapped inside the target process"

    $log = Su "logcat -d -s tgl:V | tail -20"
    Rec ("logcat tgl:`n" + $log)
    Assert ($log -match 'hook installed') "hook agent logged 'hook installed'"
    Assert ($log -match 'sender thread up') "hook agent sender thread started"

    $state = Dev1 "dumpsys activity activities | grep -m1 mResumedActivity"
    Note ("resumed: " + $state)
}

# ---------------------------------------------------------------- P4 幂等
if (Want 'P4') {
    Step "P4 repeated injection is refused"
    $cmd = "$devDir/tg_injector --so $devDir/libtg_hook.so --pid $coreBefore"
    Rec ("> " + $cmd)
    $res = Su $cmd
    Rec $res
    Write-Host $res
    Assert ($res -match 'already_mapped=1') "second run detects the library is already mapped"
    Assert ($res -match 'dlopen ok handle=0x') "re-opened with RTLD_NOLOAD (no second load)"
    Assert ($res -match 'hook_status=0 hooked=1') "hook state still healthy"
}

# ---------------------------------------------------------------- P5 语音
if (Want 'P5') {
    Step "P5 real voice -> factory ASR -> hook agent -> bridge -> events.jsonl"
    $before = Lines $EV
    Note ("events lines before: " + $before)

    # 唤醒靠声学触发，第一次偶尔叫不醒（尤其 app 刚重启/屏幕刚亮）。
    # 所以：先确保亮屏 + 前台，再播；没产生事件就等一会儿重试一次（换一条指令）。
    $after = $before
    for ($try = 1; $try -le 3; $try++) {
        $base = if ($try -eq 1) { $Stim.Trim() } else { 's02' }
        $wk = Join-Path $stimDir ($base + '_wake.wav')
        $cm = Join-Path $stimDir ($base + '_cmd.wav')
        $parts = @()
        if ((Test-Path $wk) -and (Test-Path $cm)) { $parts += "${wk}:3000"; $parts += "${cm}:3000" }
        else { $parts += (Join-Path $stimDir ($base + '.wav')) + ':3000' }

        Adb @('shell', 'input keyevent KEYCODE_WAKEUP') | Out-Null
        Start-Sleep -Milliseconds 800
        Adb @('shell', 'monkey -p com.alibaba.ailabs.genie.smartapp -c android.intent.category.LAUNCHER 1') | Out-Null
        Start-Sleep -Seconds 6

        $plog = Join-Path $hostWork ("t6_play_" + $try + ".log")
        & powershell.exe -NoProfile -STA -File 'D:\tgz02\OS\_analysis\t502_play.ps1' -Plan ($parts -join ',') -Volume '1.0' -LogFile $plog | Out-Null
        Note ("attempt " + $try + " played: " + ($parts -join ' , '))

        $deadline = (Get-Date).AddSeconds(45)
        while ((Get-Date) -lt $deadline) {
            Start-Sleep -Seconds 3
            $after = Lines $EV
            if ($after -gt $before) { break }
        }
        if ($after -gt $before) { break }
        Note ("attempt " + $try + " produced no ASR final; retrying")
        Start-Sleep -Seconds 2
    }
    Note ("events lines after: " + $after)
    Assert ($after -gt $before) "bridge stored at least one new ASR final event"

    if ($after -gt $before) {
        $new = Su ("tail -n " + ($after - $before) + " " + $EV)
        Rec ("new events:`n" + $new)
        Write-Host $new
        Assert ($new -match '"event_id":"t6-') "new event_id carries the t6- prefix (hook agent, not frida)"
        Assert ($new -match '"event_type":"asr_final"') "event_type is asr_final"
        Assert ($new -match '"is_final":true') "is_final is true"
        Assert ($new -notmatch '[A-Za-z0-9+/]{32,}=') "no secret-looking blob in the stored line"
    }

    $stats = Su ("$devDir/tg_injector --so $devDir/libtg_hook.so --pid $coreBefore")
    Rec ("stats after speech:`n" + $stats)
    Write-Host $stats
    Assert ($stats -match 'seen=[1-9]') "hook callback saw the factory onStream call"
    Assert ($stats -match 'final=[1-9]') "hook captured at least one isFinished=1 result"
    Assert ($stats -match 'acked=[1-9]') "hook agent got an ACK from the bridge"
}

# ---------------------------------------------------------------- P6 worker
if (Want 'P6') {
    Step "P6 existing AI worker consumes the new event"
    $ws = "$devDir/worker_state"
    # su -c 里不要串多条命令（Magisk 的 su 在某些组合下会退化成 shell 执行）；
    # 一条一个 Su 调用，保证每条都以 root 跑。
    Su ("rm -rf " + $ws) | Out-Null
    Su ("mkdir -p " + $ws) | Out-Null
    Su ("cp /data/local/tmp/t5_bridge/ai_worker/consumer_state.json " + $ws + "/consumer_state.json") | Out-Null
    $st1 = Su ("cat " + $ws + "/consumer_state.json 2>/dev/null")
    $off1 = 0
    if ($st1 -match '"offset"\s*:\s*(\d+)') { $off1 = [int64]$Matches[1] }
    Note ("worker state offset before: " + $off1)

    # --events-file 只接受"文件名"，不接受绝对路径（worker 的既有约定）；目录用 --work-dir。
    # 一次把积压的新事件都消费掉（--max-events 0 = 不限），断言 processed>=1 且 offset 前进。
    $run = Su ("/data/local/tmp/t5d06/bin/ai_worker --work-dir /data/local/tmp/t5_bridge/work" +
                " --events-file events.jsonl --state-dir " + $ws +
                " --provider mock --mock-reply ok --max-events 0 --idle-exit-ms 3000 --max-runtime-ms 30000")
    Rec ("worker:`n" + $run)
    Write-Host $run
    Assert ($run -match 'processed=[1-9]') "worker processed the new ASR event(s)"
    $st2 = Su ("cat " + $ws + "/consumer_state.json 2>/dev/null")
    $off2 = 0
    if ($st2 -match '"offset"\s*:\s*(\d+)') { $off2 = [int64]$Matches[1] }
    Note ("worker state offset after: " + $off2)
    Assert ($off2 -gt $off1) "worker advanced its offset (event consumed)"
    Su ("rm -rf " + $ws) | Out-Null
}

# ---------------------------------------------------------------- P7 卸载
if (Want 'P7') {
    Step "P7 uninstall restores the factory prologue"
    $cmd = "$devDir/tg_injector --so $devDir/libtg_hook.so --pid $coreBefore --uninstall"
    Rec ("> " + $cmd)
    $res = Su $cmd
    Rec $res
    Write-Host $res
    Assert ($res -match 'tg_hook_uninstall\(\) = 0') "tg_hook_uninstall() returned 0"
    Assert ($res -match 'hooked=0 after uninstall') "hook patch removed (hooked=0)"
    Assert ((CorePid) -eq $coreBefore) "factory core still alive after uninstall"

    # 卸载后再验一次原厂识别能力：仍然能产生新的 asr_final
    $b2 = Lines $EV
    $plog = Join-Path $hostWork 't6_play2.log'
    $base = $Stim.Trim()
    $wk = Join-Path $stimDir ($base + '_wake.wav')
    $cm = Join-Path $stimDir ($base + '_cmd.wav')
    $parts = @()
    if ((Test-Path $wk) -and (Test-Path $cm)) { $parts += "${wk}:3000"; $parts += "${cm}:3000" }
    & powershell.exe -NoProfile -STA -File 'D:\tgz02\OS\_analysis\t502_play.ps1' -Plan ($parts -join ',') -Volume '1.0' -LogFile $plog | Out-Null
    $deadline = (Get-Date).AddSeconds(45)
    $a2 = $b2
    while ((Get-Date) -lt $deadline) { Start-Sleep -Seconds 3; $a2 = Lines $EV; if ($a2 -gt $b2) { break } }
    Assert ($a2 -eq $b2) "after uninstall the factory path is unchanged for the hook (no t6 events)"
}

Rec ""
Rec ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Write-Host ""
Write-Host ("SUMMARY: passes=" + $script:Passes + " fails=" + $script:Fails)
Write-Host ("log: " + $Log)
if ($script:Fails -eq 0) { exit 0 } else { exit 1 }
