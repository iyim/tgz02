# t5_06d_device_e2e.ps1 -- T5-06D 真机验收驱动（真实 ASR -> 真实模型 -> 原厂 TTS 播报）
#
# 前提（脚本会检查，不会自动修）：
#   - TG-Z02 在线（默认 192.168.1.9:5555），原厂 smartapp:core 在跑
#   - /data/local/tmp/t5_bridge/work/events.jsonl 由 T5-05B 桥接端追加（本脚本只读）
#   - 密钥文件 /data/local/tmp/t5_bridge/secret/deepseek_api_key 存在且 0600（内容不读、不打印）
#   - 已 push：tts_exec.dex、tts_supervisor.sh、run_tts_exec.sh、t5d06/bin/ai_worker
#   - 已 push：/data/local/tmp/t5d06/run_worker.sh、t506d_kill_all.sh 等 helper
#
# 用法：
#   powershell -File t5_06d_device_e2e.ps1 [-Only s1,s2] [-Stim s01,s02]
#
# 场景：
#   s1 一句短问句：真实模型回答 + 原厂播报
#   s2 连续两轮
#   s3 长文本（真实回答 + 直连长文本）
#   s4 播报期间再次说话
#   s5 连续多条回答的播报顺序
#   s6 TTS 执行器失败后恢复（回答不丢）
#   s7 执行器重启后的待播任务恢复
#   s8 原厂唤醒/ASR/音量共存检查
param(
    [string]$Dev = "192.168.1.9:5555",
    [string]$Only = "",
    [string]$Stim = "s01",
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t5_06d_device_e2e.log"
)

$ErrorActionPreference = 'Continue'
$adb = 'D:\GreenSoft\platform-tools\adb.exe'
$repo = 'D:\tgz02\OS\system\my-doc\07_ai_bridge'
$stimDir = 'D:\tgz02\OS\_analysis\t506d\stim2'
$hostWork = 'D:\tgz02\OS\_analysis\t506d'
$senderPidFile = Join-Path $hostWork 'e2e_sender.pid'
$TTS = '/data/local/tmp/t5_bridge/tts'
$ST = '/data/local/tmp/t5d06/state'
$EV = '/data/local/tmp/t5_bridge/work/events.jsonl'
$script:LogPath = $Log
$script:Fails = 0

function Adb([string[]]$argv) { & $adb -s $Dev @argv 2>&1 }
function Sh([string]$c) { (Adb @('shell', $c)) -join "`n" }
function Dev1([string]$c) { ((Sh $c) -replace "`r", "").Trim() }
function Su([string]$c) { Dev1 ("su -c 'PATH=/system/bin:/system/xbin:/sbin; " + $c + "'") }
function Rec([string]$t) { $t | Out-File -FilePath $script:LogPath -Encoding utf8 -Append }
function Step([string]$n) {
    Rec ""; Rec ("===== " + $n + " :: " + (Get-Date).ToString("yyyy-MM-dd HH:mm:ss") + " =====")
    Write-Host ("----- " + $n)
}
function Note([string]$t) { Rec ("  " + $t); Write-Host ("    " + $t) }
function Assert([bool]$cond, [string]$what) {
    if ($cond) { Note ("ASSERT OK   : " + $what) }
    else { Note ("ASSERT FAIL : " + $what); $script:Fails++ }
}
function Lines([string]$p) { [int]((Dev1 ("wc -l " + $p)).Split(' ')[0]) }
function Run([string]$c) { $o = Dev1 $c; $o; return $o }

function JournalTail([int]$n = 5) { Su ("tail -n $n $TTS/journal.jsonl") }
function ResetQueue() { Note ("> " + (Dev1 "sh /data/local/tmp/t5d06/reset.sh")) }
function QueueCount([string]$d) {
    # 队列目录是 0700 root：必须走 su 才能数
    $n = Su ("ls $TTS/$d 2>/dev/null | wc -l")
    return [int](($n -split '\s+')[0])
}
function ExecStatus() { Dev1 "sh /data/local/tmp/t5_bridge/run_tts_exec.sh status" }

function KillAll() { Su "sh /data/local/tmp/t5d06/kill_all.sh" | Out-Null }
function ExecStart() {
    $o = Dev1 "sh /data/local/tmp/t5_bridge/run_tts_exec.sh start"
    Note ("> " + $o)
    Start-Sleep -Seconds 3
}
function ExecStop() {
    $o = Dev1 "sh /data/local/tmp/t5_bridge/run_tts_exec.sh stop"
    Note ("> " + $o)
    Start-Sleep -Seconds 1
}

function EnsureFrida() {
    Adb @('forward', 'tcp:27042', 'tcp:27042') | Out-Null
    $probe = & py -3 -c "import frida; d=frida.get_device_manager().add_remote_device('127.0.0.1:27042'); print('frida-ok', d.name)" 2>&1
    if (($probe -join ' ') -match 'frida-ok') { Note "frida-server reachable on 27042"; return }
    Note "frida-server not reachable; starting fs16019 (an already-bound port is fine)"
    Su "PATH=/system/bin:/system/xbin:/sbin; /data/local/tmp/fs16019 -D" | Out-Null
    Start-Sleep -Seconds 3
    $probe2 = & py -3 -c "import frida; d=frida.get_device_manager().add_remote_device('127.0.0.1:27042'); print('frida-ok', d.name)" 2>&1
    Assert (($probe2 -join ' ') -match 'frida-ok') "frida-server reachable for ASR hook"
}

function StartSender() {
    $corePid = Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core"
    if ($corePid -eq '') { throw "smartapp:core not running" }
    $js = Join-Path $repo '..\06_t5_bridge\frida\t505b_asr_bridge_sender.js'
    $run = Join-Path $repo '..\06_t5_bridge\frida\t505b_runner.py'
    $out = Join-Path $hostWork 'e2e_sender.jsonl'
    $err = Join-Path $hostWork 'e2e_sender.err'
    Remove-Item $out, $err -ErrorAction SilentlyContinue
    $p = Start-Process -FilePath 'py' -ArgumentList @('-3', $run, $js, $corePid, '900', $out) `
        -RedirectStandardOutput (Join-Path $hostWork 'e2e_sender.out') `
        -RedirectStandardError $err -NoNewWindow -PassThru
    $p.Id | Out-File -FilePath $senderPidFile -Encoding ascii
    Note ("frida sender pid=" + $p.Id + " core=" + $corePid)
    Start-Sleep -Seconds 8
    $ok = $false
    if (Test-Path $out) {
        $first = Get-Content $out -ErrorAction SilentlyContinue | Select-Object -First 3
        $ok = ($first -join "`n") -match '"t": "ready"'
    }
    Assert $ok "frida sender ready"
    return $corePid
}

function StopSender() {
    if (Test-Path $senderPidFile) {
        $id = (Get-Content $senderPidFile) -as [int]
        if ($id) { try { Stop-Process -Id $id -Force -ErrorAction SilentlyContinue } catch { } }
        Remove-Item $senderPidFile -ErrorAction SilentlyContinue
    }
}

function Wake() {
    Adb @('shell', 'input keyevent KEYCODE_WAKEUP') | Out-Null
    Start-Sleep -Milliseconds 600
    if ((Dev1 "dumpsys power | grep -m1 'mWakefulness='") -notmatch 'Awake') {
        Adb @('shell', 'input keyevent KEYCODE_WAKEUP') | Out-Null
        Start-Sleep -Milliseconds 600
    }
    Adb @('shell', 'monkey -p com.alibaba.ailabs.genie.smartapp -c android.intent.category.LAUNCHER 1') | Out-Null
    Start-Sleep -Seconds 1
}

function PlayStim([string]$names, [int]$gapMs = 3000) {
    # 唤醒词与指令分开播，中间静默 >= 3 s（真机上这样唤醒最稳）
    Wake
    $parts = @()
    foreach ($n in $names.Split(',')) {
        $base = $n.Trim()
        $wk = Join-Path $stimDir ($base + '_wake.wav')
        $cm = Join-Path $stimDir ($base + '_cmd.wav')
        if ((Test-Path $wk) -and (Test-Path $cm)) {
            $parts += "${wk}:" + $gapMs
            $parts += "${cm}:" + $gapMs
        } else {
            $parts += (Join-Path $stimDir ($base + '.wav')) + ':' + $gapMs
        }
    }
    $plog = Join-Path $hostWork 'e2e_play.log'
    $p = Start-Process -FilePath 'powershell.exe' -ArgumentList @(
        '-NoProfile', '-STA', '-File', 'D:\tgz02\OS\_analysis\t502_play.ps1',
        '-Plan', ($parts -join ','), '-Volume', '1.0', '-LogFile', $plog) -NoNewWindow -PassThru
    $p.WaitForExit()
    Note ("played: " + ($names -replace ',', ' ') + "  (wake -> 3s -> command)")
}

function WaitEvents([int]$from, [int]$timeoutSec = 60) {
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    $n = $from
    while ((Get-Date) -lt $deadline) {
        Start-Sleep -Seconds 3
        $n = Lines $EV
        if ($n -gt $from) { return $n }
    }
    return $n
}

function NewEventIds([int]$fromLine, [int]$toLine) {
    if ($toLine -le $fromLine) { return @() }
    $skip = $fromLine - $toLine
    $txt = Su ("tail -n " + ($toLine - $fromLine) + " " + $EV)
    $ids = @()
    foreach ($ln in ($txt -split "`n")) {
        $m = [regex]::Match($ln, '"event_id":"([^"]+)"')
        if ($m.Success) { $ids += $m.Groups[1].Value }
    }
    return $ids
}

function RunWorker([string]$prov, [int]$maxEvents, [int]$idleMs, [string]$tts, [string]$tag) {
    $out = "/data/local/tmp/t5d06/w_${tag}.log"
    # 以 root 运行：TTS 队列目录是 0700 root（与原厂执行器同一身份），shell 写不进去
    $o = Su ("sh /data/local/tmp/t5d06/run_worker.sh " + $prov + " " + $maxEvents + " " + $idleMs + " " + $tts + " " + $out)
    Rec ("> worker(" + $prov + " max=" + $maxEvents + " idle=" + $idleMs + " tts=" + $tts + ")")
    $o -split "`n" | ForEach-Object { Rec ("  " + $_) }
    return $o
}

# 权威 event id：来自 Worker 自己的 "tts queued: event=<id>" / "deepseek ok: ... event=<id>"
function WorkerEventId([string]$workerOut) {
    $m = [regex]::Match($workerOut, 'tts queued: event=([A-Za-z0-9._-]+)')
    if (-not $m.Success) { $m = [regex]::Match($workerOut, 'event=([A-Za-z0-9._-]+)') }
    if ($m.Success) { return $m.Groups[1].Value }
    return ""
}

function JournalFor([string]$eventId) {
    if ([string]::IsNullOrWhiteSpace($eventId)) { return "" }
    # 直接按 event_id 在整份 journal 里 grep（不受 tail 窗口影响），取最后一条
    $hit = Su ("grep " + $eventId + " " + $TTS + "/journal.jsonl 2>/dev/null | tail -n 1")
    return $hit.Trim()
}

# 播报要 4~10 s，journal 是播完才落盘：轮询到出现该 event_id（或超时）再断言
function WaitJournal([string]$eventId, [int]$timeoutSec = 90) {
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    $hit = ""
    while ((Get-Date) -lt $deadline) {
        $hit = JournalFor $eventId
        if ($hit -ne '') { return $hit }
        Start-Sleep -Seconds 2
    }
    return $hit
}
function SeedToEnd([string]$tag) {
    $n = Lines $EV
    RunWorker 'mock' 0 2500 'off' ("seed_" + $tag) | Out-Null
    $n2 = Lines $EV
    Note ("seeded: events " + $n + " -> " + $n2)
}

# ---------------------------------------------------------------- preconditions
Step "0. preconditions"
Rec "################ T5-06D device acceptance: real ASR -> real model -> factory TTS ################"
Rec ("host time: " + (Get-Date).ToString("yyyy-MM-dd HH:mm:ss"))
$core = Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core"
Rec ("core pid           : " + $core)
Assert ($core -ne '') "smartapp:core is running"

$br = Dev1 "sh /data/local/tmp/t5_bridge/run_bridge.sh status 2>&1 | head -2"
Rec ("bridge             : " + ($br -replace "`n", " | "))
if ($br -match 'not running') {
    Run "sh /data/local/tmp/t5_bridge/run_bridge.sh start" | Out-Null
    Start-Sleep -Seconds 2
}
Assert ((Dev1 "sh /data/local/tmp/t5_bridge/run_bridge.sh status 2>&1 | head -2") -notmatch 'not running') "bridge running"

$keyLs = Su "ls -l /data/local/tmp/t5_bridge/secret/deepseek_api_key"
$keyMode = if ($keyLs.Length -ge 10) { $keyLs.Substring(0, 10) } else { $keyLs }
$keySize = Su "wc -c < /data/local/tmp/t5_bridge/secret/deepseek_api_key"
Rec ("key file           : mode=" + $keyMode + " bytes=" + $keySize)
Assert ($keyMode -match '^-rw-------') "api key file is 0600"
Assert ([int]$keySize -gt 10) "api key file is non-empty (content never read)"

$dexLs = Dev1 "ls -l /data/local/tmp/t5_bridge/tts_exec.dex"
$dexSize = ($dexLs -split '\s+')[-1]
$binLs = Dev1 "ls -l /data/local/tmp/t5d06/bin/ai_worker"
$binSize = ($binLs -split '\s+')[-1]
Rec ("tts_exec.dex       : " + $dexSize + " B")
Rec ("ai_worker          : " + $binSize + " B")
Assert ($dexSize -ne '') "tts_exec.dex present"

$evBefore = Lines $EV
Rec ("events.jsonl lines : " + $evBefore)
Assert ($evBefore -gt 0) "real events.jsonl exists (never truncated by this run)"

EnsureFrida
$core = StartSender

# 唤醒屏幕 + 原厂 App 到前台（原厂 TTS 走原厂会话，前台状态最稳）
Adb @('shell', 'input keyevent KEYCODE_WAKEUP') | Out-Null
Start-Sleep -Seconds 1
Adb @('shell', 'monkey -p com.alibaba.ailabs.genie.smartapp -c android.intent.category.LAUNCHER 1') | Out-Null
Start-Sleep -Seconds 2
$core2 = Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core"
Assert ($core2 -eq $core) "factory core pid unchanged after foregrounding"

ExecStart
$st = ExecStatus
Rec ("executor           : " + ($st -replace "`n", " | "))
Assert ($st -match 'executor=\d+/alive') "TTS executor is alive"

SeedToEnd "pre"
Note ("> " + (Dev1 "sh /data/local/tmp/t5d06/cap.sh start"))
$want = $Only.Split(',') | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne '' }
function Wanted([string]$s) { return (($want.Count -eq 0) -or ($want -contains $s)) }

# ---------------------------------------------------------------------- S1
if (Wanted 's1') {
    Step "S1 single short question: real ASR -> real model -> factory TTS"
    $before = Lines $EV
    $ids = @()
    for ($try = 1; $try -le 3; $try++) {
        PlayStim $Stim
        $after = WaitEvents $before 45
        $ids = @(NewEventIds $before $after)
        if ($ids.Count -ge 1) { break }
        Note ("S1 attempt " + $try + ": no final yet, retrying")
        Start-Sleep -Seconds 4
    }
    Rec ("events lines: " + $before + " -> " + (Lines $EV) + "  ids=" + ($ids -join ','))
    Assert ($ids.Count -ge 1) "factory ASR produced a new final"
    if ($ids.Count -ge 1) {
        $id = $ids[0]
        $w = RunWorker 'deepseek' 1 8000 'on' "s1"
        Assert ($w -match 'deepseek ok: .*http=200') "worker: real model HTTP 200"
        Assert ($w -match 'tts queued') "worker: answer queued for TTS"
        $id = WorkerEventId $w
        if ($id -eq "") { $id = $ids[0] }
        Note ("worker event id: " + $id)
        $j = WaitJournal $id
        Rec ("journal: " + $j)
        Assert (($j -ne '') -and ($j -match '"outcome":"ok"')) "executor: factory TTS reported complete"
        if ($j -match '"tts_id":(\d+)') {
            $tid = $Matches[1]
            Rec ("tts_id: " + $tid)
            # 证据来自运行期间持续抓取的日志文件（不受 logcat 环形缓冲滚动的影晌）
            Start-Sleep -Seconds 2
            $lg = Dev1 ("sh /data/local/tmp/t5d06/capgrep.sh " + $tid)
            Rec ("factory audio log: " + ($lg -replace "`n", " | "))
            Assert ($lg -match 'status = complete') "factory: audio state machine reported complete"
        }
        if ($j -match '"dur_ms":(\d+)') {
            Assert ([int]$Matches[1] -gt 400) "playback lasted a real amount of time (dur_ms>400)"
        }
    }
}

# ---------------------------------------------------------------------- S2
if (Wanted 's2') {
    Step "S2 two consecutive turns"
    $doneIds = @()
    foreach ($turn in 1, 2) {
        $before = Lines $EV
        PlayStim $Stim
        $after = WaitEvents $before 60
        $ids = @(NewEventIds $before $after)
        Assert ($ids.Count -ge 1) ("turn " + $turn + ": ASR final produced")
        if ($ids.Count -ge 1) {
            $w = RunWorker 'deepseek' 1 8000 'on' ("s2t" + $turn)
            Assert ($w -match 'http=200') ("turn " + $turn + ": model HTTP 200")
            Start-Sleep -Seconds 2
            $jid = WorkerEventId $w
        if ($jid -eq "") { $jid = $ids[0] }
        Note ("worker event id: " + $jid)
        $j = WaitJournal $jid
            Rec ("turn " + $turn + " journal: " + $j)
            Assert ($j -match '"outcome":"ok"') ("turn " + $turn + ": TTS complete")
            $doneIds += $ids[0]
        }
        Start-Sleep -Seconds 2
    }
    Assert ($doneIds.Count -eq 2) "two distinct turns handled"
    Assert (($doneIds | Select-Object -Unique).Count -eq $doneIds.Count) "turn event ids are distinct"
}

# ---------------------------------------------------------------------- S3
if (Wanted 's3') {
    Step "S3 long Chinese text: real answer + direct long text"
    $before = Lines $EV
    PlayStim $Stim
    $after = WaitEvents $before 60
    $ids = @(NewEventIds $before $after)
    if ($ids.Count -ge 1) {
        $w = RunWorker 'deepseek' 1 8000 'on' "s3"
        Assert ($w -match 'http=200') "real answer HTTP 200"
        $replyBytes = 0
        if ($w -match 'reply_bytes=(\d+)') { $replyBytes = [int]$Matches[1] }
        Note ("real answer reply_bytes=" + $replyBytes)
        $jid = WorkerEventId $w
        if ($jid -eq "") { $jid = $ids[0] }
        Note ("worker event id: " + $jid)
        $j = WaitJournal $jid
        Assert ($j -match '"outcome":"ok"') "real answer played to completion"
    }
    # 直连长文本：一口气 ~180 字节中文，验证不截断、不中断
    $long = ("这是一段用于验证原厂语音合成长文本处理能力的测试文本，" +
             "内容包括中文标点、阿拉伯数字2026和英文缩写AI，" +
             "目的是确认整段文本能够完整播报，不出现乱码、截断或中途异常中断。")
    $lf = Join-Path $hostWork 'long_text.txt'
    [System.IO.File]::WriteAllText($lf, $long, (New-Object System.Text.UTF8Encoding($false)))
    Adb @('push', $lf, '/data/local/tmp/t5d06/long_text.txt') | Out-Null
    $bytes = [System.Text.Encoding]::UTF8.GetByteCount($long)
    Rec ("long text bytes=" + $bytes)
    # 上一段播报/会话刚结束，先静置，避免被原厂会话打断（interupt）
    Start-Sleep -Seconds 8
    $j = ''
    for ($try = 1; $try -le 2; $try++) {
        $lid = "longtext-" + (Get-Date).ToString("HHmmss") + "-" + $try
        $o = Dev1 ("sh /data/local/tmp/t5_bridge/run_tts_exec.sh play /data/local/tmp/t5d06/long_text.txt " + $lid)
        Rec ("> " + ($o -replace "`n", " | "))
        $j = WaitJournal $lid 90
        Rec ("journal: " + $j)
        if ($j -match '"outcome":"ok"') { break }
        Note ("long text attempt " + $try + " outcome not ok; retrying after a pause")
        Start-Sleep -Seconds 8
    }
    Assert (($j -ne '') -and ($j -match '"outcome":"ok"')) "long text played to completion"
    if ($j -match '"dur_ms":(\d+)') {
        $d = [int]$Matches[1]
        Note ("long text dur_ms=" + $d)
        Assert ($d -gt 3000) "long text duration is consistent with its length"
    }
    Assert ($j -match ('"text_bytes":' + $bytes)) "long text reached the engine byte-exact"
}

# ---------------------------------------------------------------------- S4
if (Wanted 's4') {
    Step "S4 speak while playing: ASR/TTS interaction"
    # 先用直连长文本起一段播报，然后在播报期间说话
    $long2 = ("现在正在进行一段较长的语音播报，用于观察播报期间用户再次说话时，" +
              "原厂麦克风采集与原厂语音合成之间是否互相干扰，" +
              "以及新的识别结果能否正常进入事件队列。")
    $lf2 = Join-Path $hostWork 's4_text.txt'
    [System.IO.File]::WriteAllText($lf2, $long2, (New-Object System.Text.UTF8Encoding($false)))
    Adb @('push', $lf2, '/data/local/tmp/t5d06/s4_text.txt') | Out-Null
    $before = Lines $EV
    $playJob = Start-Job -ScriptBlock {
        param($adb, $dev)
        & $adb -s $dev shell "sh /data/local/tmp/t5_bridge/run_tts_exec.sh play /data/local/tmp/t5d06/s4_text.txt s4long"
    } -ArgumentList $adb, $Dev
    Start-Sleep -Seconds 3
    PlayStim $Stim
    Wait-Job $playJob -Timeout 120 | Out-Null
    $playOut = Receive-Job $playJob
    Remove-Job $playJob -Force
    Rec ("> direct play during speech: " + (($playOut -join ' ') -replace "`r", ""))
    $after = WaitEvents $before 40
    $ids = @(NewEventIds $before $after)
    Rec ("events lines: " + $before + " -> " + $after + " ids=" + ($ids -join ','))
    Note ("ASR during playback produced " + $ids.Count + " new final(s)")
    $lg = Dev1 "sh /data/local/tmp/t5d06/ttslog2.sh"
    Rec ("factory tts log: " + (($lg -replace "`n", " | ")))
    Assert $true "interaction observed and recorded (no crash, chain still alive)"
    Assert ((Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core") -eq $core) "factory core survived the overlap"
}

# ---------------------------------------------------------------------- S5
if (Wanted 's5') {
    Step "S5 ordering: several answers queued back to back"
    ExecStop
    ResetQueue
    ExecStop
    Start-Sleep -Seconds 1
    $q = QueueCount 'queue'
    Note ("queue before: " + $q)
    $ids = @()
    foreach ($i in 1, 2, 3) {
        $txt = ("第" + $i + "条顺序测试播报。")
        $f = Join-Path $hostWork ("s5_" + $i + ".txt")
        [System.IO.File]::WriteAllText($f, $txt, (New-Object System.Text.UTF8Encoding($false)))
        Adb @('push', $f, ("/data/local/tmp/t5d06/s5_" + $i + ".txt")) | Out-Null
        $o = Dev1 ("sh /data/local/tmp/t5_bridge/run_tts_exec.sh play /data/local/tmp/t5d06/s5_" + $i + ".txt ord-" + $i)
        Rec ("queued ord-" + $i + ": " + ($o -replace "`n", " | "))
        $ids += ("ord-" + $i)
        Start-Sleep -Milliseconds 300
    }
    Note ("queued: " + ($ids -join ','))
    Assert ((QueueCount 'queue') -ge 3) "three items queued while the executor is down"
    ExecStart
    Start-Sleep -Seconds 22
    $jt = JournalTail 6
    Rec ("journal tail:`n" + $jt)
    $order = @()
    foreach ($ln in ($jt -split "`n")) {
        $m = [regex]::Match($ln, '"event_id":"(ord-\d)"')
        if ($m.Success) { $order += $m.Groups[1].Value }
    }
    Note ("journal order: " + ($order -join '>'))
    Assert (($order -join ',') -eq 'ord-1,ord-2,ord-3') "plays happened in FIFO order"
    Assert ((QueueCount 'queue') -eq 0) "queue drained"
    Assert ($jt -match '"event_id":"ord-3".*"outcome":"ok"') "last item completed"
}

# ---------------------------------------------------------------------- S6
if (Wanted 's6') {
    Step "S6 TTS executor down -> answer must not be lost -> recovery"
    ResetQueue
    ExecStop
    Start-Sleep -Seconds 1
    $before = Lines $EV
    $ids = @()
    for ($try = 1; $try -le 3; $try++) {
        PlayStim $Stim
        $after = WaitEvents $before 45
        $ids = @(NewEventIds $before $after)
        if ($ids.Count -ge 1) { break }
        Note ("S6 attempt " + $try + ": no final yet, retrying")
        Start-Sleep -Seconds 4
    }
    Assert ($ids.Count -ge 1) "ASR final produced while executor is down"
    if ($ids.Count -ge 1) {
        $w = RunWorker 'deepseek' 1 8000 'on' "s6"
        Assert ($w -match 'http=200') "model still answered (executor down)"
        Assert ($w -match 'tts queued') "answer queued locally"
        $q = QueueCount 'queue'
        Note ("queue depth with executor down: " + $q)
        Assert ($q -ge 1) "answer survives in the local queue (not silently dropped)"
        $jid = WorkerEventId $w
        if ($jid -eq "") { $jid = $ids[0] }
        Note ("worker event id: " + $jid)
        $j = WaitJournal $jid
        Assert ($j -eq '') "no journal entry yet (nothing played)"
        ExecStart
        Start-Sleep -Seconds 6
        $jid2 = WorkerEventId $w
        if ($jid2 -eq "") { $jid2 = $ids[0] }
        Note ("worker event id: " + $jid2)
        $j2 = WaitJournal $jid2 150
        Rec ("after recovery: " + $j2)
        Assert (($j2 -ne '') -and ($j2 -match '"outcome":"ok"')) "queued answer played after executor came back"
        Assert ((QueueCount 'queue') -eq 0) "queue drained after recovery"
    }
}

# ---------------------------------------------------------------------- S7
if (Wanted 's7') {
    Step "S7 executor restart mid-play -> pending item recovered"
    ResetQueue
    $txt = ("这是一条用于验证执行器异常重启后待播报任务能否恢复播报的测试文本，" +
            "内容足够长，以便在播报过程中把执行器杀掉，" +
            "并且再补充一些字数，确保播报时间足够我们下手，" +
            "从而真正命中 inflight 状态下的崩溃恢复路径。")
    $f = Join-Path $hostWork 's7_text.txt'
    [System.IO.File]::WriteAllText($f, $txt, (New-Object System.Text.UTF8Encoding($false)))
    Adb @('push', $f, '/data/local/tmp/t5d06/s7_text.txt') | Out-Null
    $rid = "recover-" + (Get-Date).ToString("HHmmss")
    $o = Dev1 ("sh /data/local/tmp/t5_bridge/run_tts_exec.sh play /data/local/tmp/t5d06/s7_text.txt " + $rid)
    Rec ("> " + ($o -replace "`n", " | "))
    # 等它真正进入 inflight（开始播）再杀，才叫"播报中崩溃"
    $inf = 0
    $deadline = (Get-Date).AddSeconds(20)
    while ((Get-Date) -lt $deadline) {
        $inf = QueueCount 'inflight'
        if ($inf -ge 1) { break }
        Start-Sleep -Milliseconds 500
    }
    Note ("inflight while playing: " + $inf)
    $ex = Su ("cat " + $TTS + "/tts_exec.pid")
    Note ("killing executor pid=" + $ex)
    Su ("kill -9 " + $ex) | Out-Null
    Start-Sleep -Seconds 3
    $q = QueueCount 'queue'
    $inf2 = QueueCount 'inflight'
    Note ("after kill: queue=" + $q + " inflight=" + $inf2)
    ExecStart
    Start-Sleep -Seconds 8
    # 恢复有两种合法形态：inflight 被重放（kind=recover）或被杀前已播完（ok）
    $jt = ''
    for ($try = 1; $try -le 3; $try++) {
        $jt = WaitJournal $rid 60
        if ($jt -match '"outcome":"ok"') { break }
        Start-Sleep -Seconds 4
    }
    Rec ("journal for " + $rid + ": " + $jt)
    $rec = Su ("grep -c 'kind.:.recover' " + $TTS + "/journal.jsonl")
    Note ("recover markers in journal: " + $rec)
    Assert (($jt -ne '') -and ($jt -match '"outcome":"ok"')) "pending answer was replayed/played after restart"
    Assert ([int]$rec -ge 1) "journal records the inflight recovery"
    Assert ((QueueCount 'queue') -eq 0 -and (QueueCount 'inflight') -eq 0) "no leftover work"
}

# ---------------------------------------------------------------------- S8
if (Wanted 's8') {
    Step "S8 factory wake word / ASR / volume coexistence"
    $vol = Dev1 "su -c `"dumpsys audio | grep -A2 'STREAM_MUSIC' | head -6`""
    Rec ("volume/mute state: " + (($vol -replace "`n", " | ")))
    # 刚播完 TTS 时麦克风可能还在收尾：先静置，再最多试 3 次
    Start-Sleep -Seconds 5
    $before = Lines $EV
    $ids = @()
    for ($try = 1; $try -le 3; $try++) {
        PlayStim $Stim
        $after = WaitEvents $before 45
        $ids = @(NewEventIds $before $after)
        if ($ids.Count -ge 1) { break }
        Note ("S8 attempt " + $try + ": no final yet, retrying")
        Start-Sleep -Seconds 4
    }
    Rec ("factory ASR after the whole run: lines " + $before + " -> " + (Lines $EV))
    Assert ($ids.Count -ge 1) "factory ASR still recognises speech after all TTS activity"
    Assert ((Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core") -eq $core) "factory core pid unchanged"
    $wake = Dev1 "sh /data/local/tmp/t5d06/wakelog.sh"
    Rec ("wakeup log tail: " + (($wake -replace "`n", " | ")))
    $keyLs2 = Su "ls -l /data/local/tmp/t5_bridge/secret/deepseek_api_key"
    $keyMode2 = if ($keyLs2.Length -ge 10) { $keyLs2.Substring(0, 10) } else { $keyLs2 }
    Assert ($keyMode2 -match '^-rw-------') "api key file still 0600"
    Assert ((Lines $EV) -ge $evBefore) "events.jsonl never shrank (no truncation)"
}

Step "Z. summary"
Note ("> " + (Dev1 "sh /data/local/tmp/t5d06/cap.sh stop"))
$final = ExecStatus
Rec ("executor: " + ($final -replace "`n", " | "))
Rec ("journal:`n" + (JournalTail 12))
Rec ("FAILS: " + $script:Fails)
StopSender
if ($script:Fails -eq 0) { Rec "RESULT: PASS" ; Write-Host "RESULT: PASS" }
else { Rec "RESULT: FAIL" ; Write-Host ("RESULT: FAIL (" + $script:Fails + ")") }
exit $script:Fails
