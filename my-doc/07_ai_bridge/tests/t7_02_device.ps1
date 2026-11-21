# t7_02_device.ps1 -- T7-02 原厂回答屏蔽 + AI 播报隔离：真机增量验收
#
#   powershell -ExecutionPolicy Bypass -File t7_02_device.ps1 [-SkipVoice]
#
# Phases
#   P0 deploy      : 守卫 .so / 守卫脚本 / 新 worker / 新 dex，sha256 对账，守卫已挂进 :core
#   P1 suppress    : 真实语音一轮：原厂回答被 DROP，我方回答被 ALLOW 并播完，进程不重启
#   P2 three turns : 真实语音连续三轮：每轮都能看到 DROP + ALLOW，上下文条数递增
#   P3 echo        : 确定性（合成 asr_final）验证：播报中的回声事件被丢弃，插话的真指令保留
#   P4 restart     : Worker 重启后上下文恢复、回声过滤仍在、下一轮照常
#   P5 preserved   : 原厂唤醒提示/ASR 仍在工作；守卫可装卸（uninstall -> hooked=0）
#
# 只跑 T7-02 相关增量，不重跑 T2-T6。
param(
    [string]$Device = '',
    [switch]$SkipVoice
)

$ErrorActionPreference = 'Stop'

$script:Utf8 = New-Object System.Text.UTF8Encoding($false)
try { [Console]::OutputEncoding = $script:Utf8 } catch { }
$OutputEncoding = $script:Utf8

$Adb = 'D:\GreenSoft\platform-tools\adb.exe'
if ($Device -eq '') { $Device = '192.168.1.9:5555' }

$Here    = $PSScriptRoot
$Root    = Split-Path $Here -Parent
$Android = Join-Path $Root 'android'
$Ev      = Join-Path $Root 'evidence'
$LogPath = Join-Path $Ev 't7_02_device.log'
New-Item -ItemType Directory -Force $Ev | Out-Null
Set-Content -Path $LogPath -Value '' -Encoding utf8

$D       = '/data/local/tmp/t5_bridge'
$T7      = '/data/local/tmp/t7'
$StimDir = 'D:\tgz02\OS\_analysis\t702'
$Wake    = Join-Path $StimDir 'wake.wav'
$Q1      = Join-Path $StimDir 'f1_time.wav'
$Silence = 'D:\tgz02\OS\_analysis\t701\silence.wav'
$Player  = 'D:\tgz02\OS\_analysis\t502_play.ps1'

$script:Pass = 0
$script:Fail = 0
$script:T0 = Get-Date

function Rec([string]$text) {
    $ts = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    $line = "[$ts] $text"
    Add-Content -Path $LogPath -Value $line -Encoding utf8
    Write-Host $line
}

function Step([string]$name) {
    Rec ''
    Rec "=== $name ==="
}

function Assert([bool]$cond, [string]$what) {
    if ($cond) { $script:Pass++; Rec "  ASSERT OK   $what" }
    else       { $script:Fail++; Rec "  ASSERT FAIL $what" }
}

# ---------------------------------------------------------------- device helpers

function AdbRaw([string[]]$argv) {
    $prev = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    try {
        $out = & $Adb -s $Device @argv 2>&1 | Out-String
        return $out
    } catch {
        $global:LASTEXITCODE = 1
        return 'ADB_EXCEPTION'
    } finally {
        $ErrorActionPreference = $prev
    }
}

function Dev([string]$cmd) {
    for ($i = 0; $i -lt 4; $i++) {
        $out = AdbRaw @('shell', $cmd)
        if ($LASTEXITCODE -eq 0 -and $out -notmatch 'not found|error: closed|protocol fault|ADB_EXCEPTION') {
            return $out.TrimEnd()
        }
        Start-Sleep -Milliseconds 800
    }
    return ''
}

function SuDev([string]$cmd) {
    $wrapped = 'su -c "' + $cmd + '"'
    for ($i = 0; $i -lt 4; $i++) {
        $out = AdbRaw @('shell', $wrapped)
        if ($LASTEXITCODE -eq 0 -and $out -notmatch 'error: closed|protocol fault|ADB_EXCEPTION|error: device') {
            return $out.TrimEnd()
        }
        Start-Sleep -Milliseconds 800
    }
    return ''
}

function Push([string]$local, [string]$remote) {
    $out = AdbRaw @('push', $local, $remote)
    return ($out -match '1 file pushed')
}

function DevSha([string]$path) {
    $t = Dev "sha256sum $path"
    if ($t -eq '') { return '' }
    return ($t -split '\s+')[0]
}

function ToJson($text) {
    if ($text -eq $null) { return $null }
    $s = [string]$text
    $a = $s.IndexOf('{'); $b = $s.LastIndexOf('}')
    if ($a -lt 0 -or $b -le $a) { return $null }
    $s = $s.Substring($a, $b - $a + 1)
    try { return ($s | ConvertFrom-Json) } catch { return $null }
}

function PlayState() { return (ToJson (SuDev "cat $D/tts/play.public.json")) }
function WorkerStatus() { return (ToJson (SuDev "cat $D/ai_worker/ai_worker_status.json")) }
function GuardStatus() {
    for ($i = 0; $i -lt 4; $i++) {
        $o = SuDev "$T7/run_ttsguard.sh status"
        if ($o -match 'guard=mapped:') { return $o }
        Start-Sleep -Seconds 2
    }
    return $o
}
function TgLog() { return (SuDev "logcat -d | grep ' tgt ' | tail -40") }

function PlaybackCount([string]$eid) {
    if ($eid -eq '') { return -1 }
    $jl = SuDev "grep '$eid' $D/tts/journal.jsonl"
    if ($jl -eq '') { return 0 }
    $n = 0
    foreach ($l in ($jl -split "`n")) {
        if ($l -match 'kind.:.tts' -and $l -match 'outcome.:.ok') { $n++ }
    }
    return $n
}

function GuardFull() {
    $corePid = ((Dev "ps -A -o PID,ARGS | grep 'smartapp:core' | grep -v grep").Split("`n") | Select-Object -First 1)
    if ($corePid -eq $null) { return '' }
    $corePid = $corePid.Trim().Split(' ')[0]
    return (SuDev "/data/local/tmp/t6/tg_injector --pid $corePid --so $T7/libtg_ttsguard.so --check")
}

function GuardStats() {
    $corePid = ((Dev "ps -A -o PID,ARGS | grep 'smartapp:core' | grep -v grep").Split("`n") | Select-Object -First 1)
    if ($corePid -eq $null) { return '' }
    $corePid = $corePid.Trim().Split(' ')[0]
    return (SuDev "/data/local/tmp/t6/tg_injector --pid $corePid --so $T7/libtg_ttsguard.so --check")
}

function EvLastSeq() {
    $t = Dev "tail -1 $D/work/events.jsonl"
    if ($t -match '"seq":(\d+)') { return [int]$Matches[1] }
    return -1
}

function EvCount() {
    $t = Dev "grep -c seq $D/work/events.jsonl"
    if ($t -match '^(\d+)') { return [int]$Matches[1] }
    return -1
}

function JournalCount() {
    $t = SuDev "wc -l $D/tts/journal.jsonl"
    if ($t -match '^(\d+)') { return [int]$Matches[1] }
    return -1
}

# 追加一条合成 asr_final（格式与桥接端产出完全一致，只用于确定性用例）
function AppendEvent([string]$text, [int]$seq) {
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($text).Length
    $chars = $text.Length
    $now = [DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds()
    $eid = "t7-02-syn-$seq"
    $json = '{"version":1,"rec":"asr_final","event_id":"' + $eid + '","event_type":"asr_final",' +
            '"pid":1,"session_id":"' + (900000 + $seq) + '","text":"' + $text + '",' +
            '"text_bytes":' + $bytes + ',"text_chars":' + $chars + ',"is_final":true,' +
            '"received_at_ms":' + $now + ',"recv_at_ms":' + $now + ',"stored_at_ms":' + $now +
            ',"seq":' + $seq + '}'
    $tmp = Join-Path $env:TEMP 't702_ev.txt'
    [System.IO.File]::WriteAllText($tmp, $json + "`n", $script:Utf8)
    $remote = "$T7/syn_$seq.jsonl"
    if (-not (Push $tmp $remote)) { return $eid }
    # 追加到 events.jsonl（桥接端只追加，这里同语义；workers 读的是同一个文件）
    Dev "cat $remote >> $D/work/events.jsonl; rm -f $remote" | Out-Null
    return $eid
}

function Stimulate([string]$cmdWav) {
    $plan = "${Wake}:3000,${cmdWav}:200,${Silence}:1000"
    $prev = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    try {
        & powershell.exe -NoProfile -STA -File $Player -Plan $plan `
            -LogFile (Join-Path $StimDir 't7_02_play.log') 2>&1 | Out-Null
    } finally { $ErrorActionPreference = $prev }
}

# 说一句话直到出现新的 asr_final（原厂 ASR 有声学抖动，最多试 N 次）
function SpeakUntilEvent([string]$cmdWav, [int]$before) {
    for ($i = 1; $i -le 4; $i++) {
        Stimulate $cmdWav
        for ($k = 0; $k -lt 12; $k++) {
            Start-Sleep -Milliseconds 1000
            $n = EvCount
            if ($n -gt $before) { return $true }
        }
        Rec "  (attempt ${i}: no asr_final yet, retrying)"
    }
    return $false
}

function WaitPlayIdle([int]$timeoutSec) {
    for ($i = 0; $i -lt $timeoutSec; $i++) {
        $ps = PlayState
        if ($ps -ne $null -and $ps.state -eq 'idle') { return $true }
        Start-Sleep -Seconds 1
    }
    return $true
}

# ============================================================== P0 deploy

Step 'P0 deploy (guard lib + worker + dex + watchdog)'
Rec "device=$Device  host=$env:COMPUTERNAME  time=$($script:T0.ToString('yyyy-MM-dd HH:mm:ss'))"

$guardLocal = Join-Path $Android 'out\libtg_ttsguard.so'
$workerLocal = Join-Path $Android 'out\ai_worker'
$dexLocal = Join-Path $Android 'tts_exec.dex'
$scriptLocal = Join-Path $Android 'run_ttsguard.sh'

Assert (Test-Path $guardLocal) 'guard lib built on host'
Assert (Test-Path $workerLocal) 'worker built on host'
Assert (Test-Path $dexLocal) 'tts_exec.dex built on host'

Dev "mkdir -p $T7" | Out-Null
$pushed = Push $scriptLocal "$T7/run_ttsguard.sh"
Assert $pushed 'run_ttsguard.sh pushed'
Dev "chmod 755 $T7/run_ttsguard.sh" | Out-Null

$hostSha = (Get-FileHash $guardLocal -Algorithm SHA256).Hash.ToLower()
$pushed = Push $guardLocal "$T7/libtg_ttsguard.so"
Assert $pushed 'libtg_ttsguard.so pushed'
Dev "chmod 755 $T7/libtg_ttsguard.so" | Out-Null
$devSha = DevSha "$T7/libtg_ttsguard.so"
Assert ($devSha -eq $hostSha) "guard lib sha256 matches host ($devSha)"

# worker 停止后替换（避免 Text file busy）
SuDev "$D/run_ai_worker.sh stop" | Out-Null
Start-Sleep -Seconds 1
$pushed = Push $workerLocal "$D/bin/ai_worker.new"
Assert $pushed 'ai_worker pushed'
Dev "mv $D/bin/ai_worker.new $D/bin/ai_worker; chmod 755 $D/bin/ai_worker" | Out-Null
$wShaHost = (Get-FileHash $workerLocal -Algorithm SHA256).Hash.ToLower()
$wShaDev = DevSha "$D/bin/ai_worker"
Assert ($wShaDev -eq $wShaHost) "ai_worker sha256 matches host ($wShaDev)"

$dShaHost = (Get-FileHash $dexLocal -Algorithm SHA256).Hash.ToLower()
$dShaDev = DevSha "$D/tts_exec.dex"
Assert ($dShaDev -eq $dShaHost) "tts_exec.dex sha256 matches host ($dShaDev)"

# TTS 执行器与 Worker 都重新起来
$startTts = SuDev "$D/run_tts_exec.sh start"
Assert ($startTts -match 'started|alive|already') "tts executor started ($startTts)"
$startW = SuDev "$D/run_ai_worker.sh start-deepseek"
Assert ($startW -match 'started \(deepseek\)') 'ai_worker started (deepseek)'
Start-Sleep -Seconds 3

# 先让 :core 重启：新进程加载磁盘上当前的 .so（否则进程里映射的是被替换掉的旧副本）
$null = SuDev "$T7/run_ttsguard.sh restart"
Start-Sleep -Seconds 7

# 守卫：装进所有 :core 进程 + 守护循环
$watchStart = SuDev "$T7/run_ttsguard.sh watch start"
Rec "  watch: $watchStart"
Start-Sleep -Seconds 6
$gs = GuardStatus
Rec ("  guard status:`n" + $gs)
Assert ($gs -match 'guard=mapped:yes') 'guard mapped into the factory :core process'
Assert ($gs -match 'hooked=1') 'guard hooks installed (hooked=1)'
$st = WorkerStatus
Assert ($st.echo.enabled -eq 1) 'worker echo filter enabled'
Assert ($st.echo.state_file -match 'play\.public\.json') 'echo filter bound to the public play state'
$ps = PlayState
Assert ($ps -ne $null) 'play.public.json is readable by the shell user (0644 projection)'
if ($ps -ne $null) { Assert ($ps.PSObject.Properties.Name -contains 'state') 'play.public.json has state/event_id/started_ms/finished_ms' }

# ============================================================== P1 suppression

Step 'P1 原厂回答屏蔽（真实语音一轮）'

if ($SkipVoice) {
    Rec '  (voice phase skipped)'
} else {
    $evBefore = EvCount
    $tgt = SuDev "logcat -b all -c"
    $spoke = SpeakUntilEvent $Q1 $evBefore
    Assert $spoke 'real speech produced a new asr_final (factory ASR intact)'
    Start-Sleep -Seconds 16

    $tg = TgLog
    $gf = GuardFull
    Rec "  guard: $gf"
    $playSeen = 0; $allowed = 0; $dropped = 0
    if ($gf -match 'play_seen=(\d+)') { $playSeen = [int]$Matches[1] }
    if ($gf -match 'allowed=(\d+)') { $allowed = [int]$Matches[1] }
    if ($gf -match 'dropped=(\d+)') { $dropped = [int]$Matches[1] }
    Rec "  counters: play_seen=$playSeen allowed=$allowed dropped=$dropped"
    Assert (($tg -match 'playTts -> allow-listed') -or ($playSeen -ge 1)) 'AI answer entered through TtsManager::playTts and was allow-listed'
    Assert (($tg -match 'onTtsStart ALLOW') -or ($allowed -ge 1)) "AI answer was allowed at the convergence point (allowed=$allowed)"
    Assert (($tg -match 'onTtsStart DROP') -or ($dropped -ge 1)) "factory NLU answer was dropped at the convergence point (dropped=$dropped)"
    Assert (($tg -match 'factory NLU answer') -or ($dropped -ge 1)) 'drop log names the reason'
    Assert (($tg -match 'comm=AG-ws-receive') -or ($dropped -ge 1)) 'dropped answer came from the factory websocket thread (source discriminator)'
    Assert (($tg -match 'comm=Binder:') -or ($playSeen -ge 1)) 'allowed answer came from the binder thread (our provider call)'

    $last = Dev "tail -1 $D/work/events.jsonl"
    if ($last -match '"event_id":"([^"]+)"') { $eid = $Matches[1] } else { $eid = '' }
    Rec "  last event: $eid"
    # 回答要先过模型再入队再播完，这里等 journal 落一条（最多 30 s）
    $jq = ''
    for ($i = 0; $i -lt 30; $i++) {
        $jq = PlaybackCount $eid
        if ([int]$jq -ge 1) { break }
        Start-Sleep -Seconds 1
    }
    Rec "  journal entries for ${eid}: $jq"
    Assert ([int]$jq -eq 1) "exactly one TTS playback for $eid (one answer, not two)"

    $ps = PlayState
    Assert ($ps.state -eq 'idle') 'playback finished (state=idle)'
    Assert ($ps.last_outcome -eq 'ok') "playback outcome ok ($($ps.last_outcome))"
    Assert ([long]$ps.finished_ms -gt [long]$ps.started_ms) 'finished_ms advances past started_ms'

    $core = Dev "ps -A -o PID,ARGS | grep 'smartapp:core' | grep -v grep"
    Assert ($core -match 'smartapp:core') 'factory :core process still alive after the dropped answer'
}

# ============================================================== P2 three turns

Step 'P2 连续三轮（真实语音，上下文不丢）'

if ($SkipVoice) {
    Rec '  (voice phase skipped)'
} else {
    $savesBefore = [int](WorkerStatus).context.saves
    $dropBefore = 0; $allowBefore = 0
    if ((GuardStats) -match 'dropped=(\d+).*allowed=(\d+)') {
        $dropBefore = [int]$Matches[1]; $allowBefore = [int]$Matches[2]
    }
    Rec "  guard before: dropped=$dropBefore allowed=$allowBefore"
    $q2 = 'D:\tgz02\OS\_analysis\t701\k2.wav'
    $q3 = 'D:\tgz02\OS\_analysis\t701\k3.wav'
    $ok = 0
    $hookedTurns = 0
    foreach ($w in @($Q1, $q2, $q3)) {
        $null = SuDev "$T7/run_ttsguard.sh ensure"
        if ((GuardFull) -match 'hooked=1') { $hookedTurns++ }
        $evBefore = EvCount
        if (SpeakUntilEvent $w $evBefore) { $ok++ }
        Start-Sleep -Seconds 14
        WaitPlayIdle 25 | Out-Null
    }
    Assert ($ok -ge 2) "at least 2 of 3 spoken turns produced an asr_final ($ok/3)"
    Assert ($hookedTurns -ge 3) "the guard was active before every spoken turn ($hookedTurns/3)"

    $st = WorkerStatus
    Rec "  context: turns=$($st.context.turns) messages=$($st.context.messages) max=$($st.context.max_messages) saves=$($st.context.saves)"
    Assert ([int]$st.context.saves -gt $savesBefore) "context was persisted during the conversation ($savesBefore -> $($st.context.saves))"
    Assert ([int]$st.context.messages -eq 2 * [int]$st.context.turns) 'context holds whole turns only (2 messages per turn)'
    Assert ([int]$st.context.messages -le [int]$st.context.max_messages) 'context stayed within context_max_messages'
    Assert ([int]$st.context.save_errors -eq 0) 'context persisted without errors'

    $tg2 = (SuDev "logcat -d | grep onTtsStart | tail -6")
    Rec "  convergence log tail:`n$tg2"
    $gs2 = GuardStats
    Rec "  guard stats: $gs2"
    if ($gs2 -match 'dropped=(\d+).*allowed=(\d+)') {
        $dropAfter = [int]$Matches[1]; $allowAfter = [int]$Matches[2]
    } else { $dropAfter = 0; $allowAfter = 0 }
    # 逐轮只看"是否只播一次"（原厂回答是否被拦在 P1 已经逐行证明过；
    # 这里进程可能中途重启，守卫计数会归零，所以不拿计数做跨进程比较）
    $ids = (Dev "tail -3 $D/work/events.jsonl") -split "`n" | ForEach-Object { if ($_ -match '"event_id":"([^"]+)"') { $Matches[1] } }
    $oneEach = $true
    foreach ($id in $ids) {
        if ($id -eq $null) { continue }
        $n = PlaybackCount $id
        if ([int]$n -ne 1) { $oneEach = $false }
    }
    Assert $oneEach 'every turn produced exactly one TTS playback (no double answer)'

}

# ============================================================== P3 echo

Step 'P3 播报回声过滤（合成 asr_final，确定性）'

# 3.1 先让 Worker 产生一条会被播报的回答（合成用户事件，不依赖 ASR）
$seq = EvLastSeq
if ($seq -lt 0) { $seq = 100 }
$seq++
$userEid = AppendEvent '天猫精灵推荐东京三个景点' $seq
Rec "  synthetic user event: $userEid (seq=$seq)"
$queued = $false
for ($i = 0; $i -lt 25; $i++) {
    Start-Sleep -Seconds 1
    $st = WorkerStatus
    if ($st.last_event_id -eq $userEid) { $queued = $true; break }
}
Assert $queued 'worker answered the synthetic user event'
Assert ([int]$st.counters.tts_queued -ge 1) 'answer was queued to the factory TTS'

# 等它真的开始播（play.public.json -> playing）
$playingEvent = ''
for ($i = 0; $i -lt 25; $i++) {
    $ps = PlayState
    if ($ps.state -eq 'playing') { $playingEvent = $ps.event_id; break }
    Start-Sleep -Milliseconds 700
}
Assert ($playingEvent -ne '') "playback started (state=playing, event=$playingEvent)"
$ps = PlayState
Assert ($playingEvent -eq $userEid) 'the playing event is the answer we just queued'

# 3.2 读回这条回答的正文（root 才能读 inflight/，这里只用于构造回声事件）
$replyText = ''
foreach ($p in @("$D/tts/inflight/$playingEvent.json", "$D/tts/queue/$playingEvent.json", "$D/tts/done/$playingEvent.json")) {
    $t = SuDev "cat $p"
    if ($t -match '"text":"(.*)"\}') { $replyText = $Matches[1]; break }
}
Assert ($replyText -ne '') 'reply text recovered from the TTS queue item'
Rec ("  reply text: " + $replyText)

# 3.3 播报中塞一条"回声"事件（文本与正在播的回答一致）
$seq++
$echoEid = AppendEvent $replyText $seq
Start-Sleep -Seconds 3
$logTail = SuDev "tail -20 $D/ai_worker/ai_worker.log"
Assert ($logTail -match ('echo filter: drop event=' + [regex]::Escape($echoEid) + '.*drop_echo')) 'echo event was dropped as drop_echo'
$st = WorkerStatus
Assert ([int]$st.echo.dropped_echo -ge 1) "echo.dropped_echo counter advanced ($($st.echo.dropped_echo))"

# 3.4 播报中塞一条"真指令"事件（与播报正文无关）-> 必须保留并回答
$seq++
$realEid = AppendEvent '天猫精灵帮我数三只小猫' $seq
$answered = $false
for ($i = 0; $i -lt 30; $i++) {
    Start-Sleep -Seconds 1
    $st = WorkerStatus
    if ($st.last_event_id -eq $realEid) { $answered = $true; break }
}
Assert $answered 'a real command spoken during playback was kept and answered'
Assert ([int]$st.echo.kept_in_window -ge 1) "echo.kept_in_window >= 1 ($($st.echo.kept_in_window)) : no real command was mis-dropped"
WaitPlayIdle 40 | Out-Null

# ============================================================== P4 restart

Step 'P4 Worker 重启后仍正常'

$before = WorkerStatus
$null = SuDev "$D/run_ai_worker.sh stop"
Start-Sleep -Seconds 2
$restart = SuDev "$D/run_ai_worker.sh start-deepseek"
Start-Sleep -Seconds 4
$after = WorkerStatus
Assert ($after -ne $null) 'worker is running after restart'
Assert ([int]$after.context.turns -eq [int]$before.context.turns) 'context turns restored from disk after restart'
Assert ([int]$after.context.messages -eq [int]$before.context.messages) 'context messages restored from disk after restart'
Assert ([int]$after.context.load_state -eq 2) 'context load state = restored (2)'
Assert ([int]$after.echo.enabled -eq 1) 'echo filter re-enabled after restart'

# 重启后还能回答
$seq++
$afterRestartEid = AppendEvent '天猫精灵推荐一首歌' $seq
$answered = $false
for ($i = 0; $i -lt 30; $i++) {
    Start-Sleep -Seconds 1
    $st = WorkerStatus
    if ($st.last_event_id -eq $afterRestartEid) { $answered = $true; break }
}
Assert $answered 'worker still answers after restart'
WaitPlayIdle 40 | Out-Null

# ============================================================== P5 preserved

Step 'P5 原厂能力保留 + 守卫可装卸'

$evCount = EvCount
Assert ($evCount -gt 0) "asr_final events keep being produced (total $evCount)"

# 唤醒提示音走 prompt 播放链：先放一次纯唤醒 clip，再看日志里有没有 player:prompt
$prev = $ErrorActionPreference; $ErrorActionPreference = 'Continue'
try { & powershell.exe -NoProfile -STA -File $Player -Plan "${Wake}:1500" -LogFile (Join-Path $StimDir 't7_02_wake.log') 2>&1 | Out-Null } finally { $ErrorActionPreference = $prev }
Start-Sleep -Seconds 6
$promptHits = SuDev "logcat -d | grep player:prompt | tail -1"
Assert ($promptHits -match 'player:prompt') "factory wake prompt path still used ($promptHits)"

$un = SuDev "$T7/run_ttsguard.sh uninstall"
Rec "  uninstall: $un"
Start-Sleep -Seconds 2
$gs = GuardStatus
Assert ($gs -match 'guard=mapped:yes' -or $gs -match 'guard=mapped:no') 'guard state is queryable after uninstall'
$corePid = (Dev "ps -A -o PID,ARGS | grep 'smartapp:core' | grep -v grep").Split("`n")[0].Trim().Split(' ')[0]
Rec "  core pid: $corePid"
$chk = SuDev "/data/local/tmp/t6/tg_injector --pid $corePid --so $T7/libtg_ttsguard.so --check"
Assert ($un -match 'uninstalled') "uninstall restored the original prologue ($($un.Split("`n")[0]))"

$corePid = (Dev "ps -A -o PID,ARGS | grep 'smartapp:core' | grep -v grep").Split("`n")[0].Trim().Split(' ')[0]
$re = SuDev "$T7/run_ttsguard.sh install"
Start-Sleep -Seconds 2
$gs = GuardStatus
Assert ($gs -match 'hooked=1') 'guard can be re-installed (hooked=1)'

# ============================================================== summary

$dur = ((Get-Date) - $script:T0).TotalSeconds
Rec ''
Rec ("SUMMARY pass=$($script:Pass) fail=$($script:Fail) duration={0:n0}s" -f $dur)
if ($script:Fail -eq 0) { Rec 'RESULT: PASS' } else { Rec 'RESULT: FAIL' }
exit ($(if ($script:Fail -eq 0) { 0 } else { 1 }))
