# run_t8_15_continuous_dialog_tests.ps1 -- T8-15 continuous dialog (real ai_worker.exe, host only)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_15_continuous_dialog_tests.ps1
#
# What this proves (task book: one wake -> several rounds, no second wake word):
#   A) ONE factory wake + 5 asr_final rounds (each round a NEW factory asr session,
#      exactly what the device does), driven with real play.public.json playing/idle
#      events between the rounds:
#      -> one dialog, round=5, followup_rounds=4, opens=1, ctx_valid=1,
#         every round reached the TTS queue, no wake was needed after round 1.
#   B) same flow with the factory talk tap DISABLED (default): rounds still work,
#      but wake_events / device_listening / last_wake_ms stay 0 -- nothing is faked.
#   C) continuous_dialog_enabled=0: the old T8-13 semantics come back
#      (every new asr session = a new dialog, followup_rounds=0).
#   D) continuous_max_rounds=3: the cap is enforced (round_cap_hits >= 1,
#      a second dialog is opened for the extra rounds).
#   E) a native "stop" utterance ends the dialog (end_reason = user stop),
#      and the next utterance opens a brand new dialog.
#
# Host only: TDM-GCC + mock provider, no device, no network, no factory call.
# The events are APPENDED one by one and each round is driven to FOLLOWUP before
# the next utterance appears -- otherwise the worker would consume all finals
# back-to-back and the scenario would not be the real "speak, listen to answer,
# speak again" loop.
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
$E2e = Join-Path $Out "t8_15"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null
New-Item -ItemType Directory -Force $E2e | Out-Null

$Log = Join-Path $Ev "t8_15_continuous_dialog_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$script:Pass = 0
$script:Fail = 0
function Pass([string]$s) { $script:Pass++; Log ("  PASS " + $s) }
function Fail([string]$s) { $script:Fail++; Log ("  FAIL " + $s) }

Log "# T8-15 continuous dialog host test log"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

# ---------------------------------------------------------------- build
$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)
$LibSrc = @(
    "deepseek_provider.c", "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "dead_letter.c", "echo_filter.c",
    "intent_route.c", "session_ctrl.c", "conv_session.c", "skill_dispatch.c", "talk_tap.c",
    "t7_dup.c", "utterance_gate.c"
) | ForEach-Object { Join-Path $Android $_ }
$WorkerSrc = @((Join-Path $Android "tg_inbox.c"), (Join-Path $Android "ai_worker.c")) + $LibSrc

$WorkerExe = Join-Path $Out "ai_worker.exe"
Log "=== build ai_worker (host) ==="
$argv = $Base + @("-o", $WorkerExe) + $WorkerSrc
$text = & $Gcc @argv 2>&1 | Out-String
if ($text.Trim().Length -gt 0) { Log $text.TrimEnd() }
if ($LASTEXITCODE -ne 0) { throw "build failed (exit $LASTEXITCODE)" }
if ($text.Trim().Length -eq 0) { Log "  (0 warning, 0 error)" }
Log ""

$enc = New-Object Text.UTF8Encoding($false)

# ---------------------------------------------------------------- helpers
function New-Event([int]$seq, [string]$eid, [string]$text, [string]$session) {
    $o = [ordered]@{
        version = 1; rec = "asr_final"; event_id = $eid; event_type = "asr_final"
        pid = 4242; session_id = $session; text = $text
        text_bytes = [Text.Encoding]::UTF8.GetByteCount($text); text_chars = $text.Length
        is_final = $true; received_at_ms = 1000 + $seq; recv_at_ms = 2000 + $seq
        stored_at_ms = 3000 + $seq; seq = $seq
    }
    return ($o | ConvertTo-Json -Compress -Depth 4)
}

function New-Case([string]$name) {
    $dir = Join-Path $E2e $name
    Remove-Item -Recurse -Force $dir -ErrorAction SilentlyContinue
    New-Item -ItemType Directory -Force (Join-Path $dir "work") | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $dir "tts\control") | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $dir "tts\queue") | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $dir "state") | Out-Null
    [IO.File]::WriteAllText((Join-Path $dir "work\events.jsonl"), "", $enc)
    return $dir
}

function Write-Conf([string]$dir, [string[]]$extra) {
    $conf = @(
        "provider=mock"
        "context_enabled=1"
        "context_max_messages=16"
        "route_native=1"
        "route_intents=volume,weather,screen_off,time,screen_on,media,stop,exit"
        "gate=0"
    ) + $extra
    [IO.File]::WriteAllText((Join-Path $dir "worker.conf"), (($conf -join "`n") + "`n"), $enc)
}

# Factory talk tap file: exactly what "logcat -s SessionManager:V > factory_talk.log" holds.
function Write-Tap([string]$dir, [string[]]$lines) {
    [IO.File]::WriteAllText((Join-Path $dir "state\factory_talk.log"), (($lines -join "`n") + "`n"), $enc)
}

function Tap-Line([string]$kind, [string]$session) {
    switch ($kind) {
        "wake"   { return "D/SessionManager( 30807): onStartTalk: sessionId = $session, wakeupType = 0, wakeupWord=tian mao jing ling" }
        "stop"   { return "D/SessionManager( 30807): onStopTalk: mStopTalkReason = 0, reason = normal" }
        "listen" { return "D/AGSpeechEngineProxy( 30807): onListenStarted,684" }
        default  { return "D/SessionManager( 30807): unrelated line" }
    }
}

function Start-Worker([string]$dir, [int]$maxRuntime) {
    $outLog = Join-Path $dir "worker.out.txt"
    $wargs = @("--conf", (Join-Path $dir "worker.conf"),
               "--work-dir", (Join-Path $dir "work"),
               "--state-dir", (Join-Path $dir "state"),
               "--provider", "mock",
               "--tts-queue-dir", (Join-Path $dir "tts"),
               "--gate", "0",
               "--poll-ms", "10",
               "--status-every-ms", "100",
               "--provider-backoff-ms", "200",
               "--provider-backoff-max-ms", "400",
               "--idle-exit-ms", "15000",
               "--max-runtime-ms", "$maxRuntime")
    Log ("run : " + $WorkerExe + " " + ($wargs -join " "))
    return (Start-Process -FilePath $WorkerExe -ArgumentList $wargs -PassThru -NoNewWindow `
                          -RedirectStandardOutput $outLog -RedirectStandardError (Join-Path $dir "worker.err.txt"))
}

function Stop-Worker($p) {
    if ($p -ne $null -and -not $p.HasExited) {
        Stop-Process -Id $p.Id -Force -ErrorAction SilentlyContinue
        Start-Sleep -Milliseconds 250
    }
}

function Read-Status([string]$dir) {
    $p = Join-Path $dir "state\ai_worker_status.json"
    if (-not (Test-Path $p)) { return $null }
    try { return ([IO.File]::ReadAllText($p, [Text.Encoding]::UTF8) | ConvertFrom-Json) } catch { return $null }
}

function Wait-State([string]$dir, [string]$want, [int]$timeoutMs) {
    $sw = [Diagnostics.Stopwatch]::StartNew()
    while ($sw.ElapsedMilliseconds -lt $timeoutMs) {
        $st = Read-Status $dir
        if ($st -ne $null -and [string]$st.session_ctrl.state -eq $want) { return $st }
        Start-Sleep -Milliseconds 50
    }
    return (Read-Status $dir)
}

function Queue-Count([string]$dir) {
    return @(Get-ChildItem -Path (Join-Path $dir "tts\queue") -Filter *.json -ErrorAction SilentlyContinue).Count
}

function Play-Event([string]$dir, [string]$eid, [string]$state) {
    $body = "{`n  `"state`": `"$state`",`n  `"event_id`": `"$eid`",`n  `"last_outcome`": `"ok`",`n  `"pid`": 30807`n}`n"
    [IO.File]::WriteAllText((Join-Path $dir "tts\play.public.json"), $body, $enc)
}

# Append one utterance, wait for its TTS item, publish playing -> idle for exactly
# that event_id (what TtsExec does), then wait for the session to reach FOLLOWUP.
function Run-Turn([string]$dir, [string]$line, [int]$queueBefore) {
    [IO.File]::AppendAllText((Join-Path $dir "work\events.jsonl"), ($line + "`n"), $enc)
    $eid = $null
    for ($i = 0; $i -lt 300; $i++) {
        if ((Queue-Count $dir) -gt $queueBefore) {
            $newest = Get-ChildItem -Path (Join-Path $dir "tts\queue") -Filter *.json |
                      Sort-Object LastWriteTime | Select-Object -Last 1
            $j = [IO.File]::ReadAllText($newest.FullName, [Text.Encoding]::UTF8) | ConvertFrom-Json
            $eid = [string]$j.event_id
            break
        }
        Start-Sleep -Milliseconds 25
    }
    if ($eid -eq $null) { return $null }
    Play-Event $dir $eid "playing"
    Start-Sleep -Milliseconds 150
    Play-Event $dir $eid "idle"
    $null = Wait-State $dir "FOLLOWUP" 5000
    return $eid
}

# Append one native utterance (factory answers, no AI TTS item) and wait for the
# dialog to close.
function Run-NativeTurn([string]$dir, [string]$line) {
    [IO.File]::AppendAllText((Join-Path $dir "work\events.jsonl"), ($line + "`n"), $enc)
    $sw = [Diagnostics.Stopwatch]::StartNew()
    while ($sw.ElapsedMilliseconds -lt 6000) {
        $st = Read-Status $dir
        if ($st -ne $null -and [string]$st.session_ctrl.state -eq "IDLE" -and
            [int]$st.session_ctrl.round -eq 0) { return $st }
        Start-Sleep -Milliseconds 60
    }
    return (Read-Status $dir)
}

function Tap-WakeBlock([string]$session) {
    return @((Tap-Line "wake" $session), (Tap-Line "listen"))
}

# ---------------------------------------------------------------- case A
Log "=== case A: one wake -> 5 rounds (a new factory asr session per turn) ==="
$dir = New-Case "A"
$texts = @("why is the sky blue", "and the second question", "tell me a third thing",
           "a fourth one please", "and the fifth question")
$sessions = @("2070101", "2070102", "2070103", "2070104", "2070105")
Write-Conf $dir @("continuous_dialog_enabled=1", "continuous_relisten_ms=12000",
                  "continuous_max_rounds=8", "factory_talk_tap_enabled=1")
$tap = @()
$tap += Tap-WakeBlock "2070101"
for ($i = 0; $i -lt 5; $i++) { $tap += (Tap-Line "stop") }
Write-Tap $dir $tap

$p = Start-Worker $dir 60000
$got = @()
for ($i = 0; $i -lt 5; $i++) {
    $e = Run-Turn $dir (New-Event ($i + 1) ("e-a" + ($i + 1)) $texts[$i] $sessions[$i]) $i
    if ($e -eq $null) { Fail "round $($i + 1): no TTS item appeared"; break }
    $got += $e
    Log ("  round " + ($i + 1) + " -> tts event " + $e)
}
$stA = Read-Status $dir
Stop-Worker $p

if ($got.Count -eq 5) { Pass "A: all 5 rounds reached the TTS queue" } else { Fail "A: rounds enqueued = $($got.Count)" }
if ($stA -ne $null) {
    if ([int]$stA.counters.events_processed -eq 5) { Pass "A: 5 events consumed" } else { Fail "A: events_processed = $($stA.counters.events_processed)" }
    if ([int]$stA.route.ai -eq 5) { Pass "A: 5 model answers" } else { Fail "A: route.ai = $($stA.route.ai)" }
    if ([int]$stA.session_ctrl.round -eq 5) { Pass "A: dialog round = 5" } else { Fail "A: round = $($stA.session_ctrl.round)" }
    if ([int]$stA.session_ctrl.opens -eq 1) { Pass "A: still ONE dialog (no re-wake)" } else { Fail "A: opens = $($stA.session_ctrl.opens)" }
    if ([int]$stA.session_ctrl.followup_rounds -eq 4) { Pass "A: 4 hands-free rounds" } else { Fail "A: followup_rounds = $($stA.session_ctrl.followup_rounds)" }
    if ([int]$stA.session_ctrl.rounds_total -eq 5) { Pass "A: rounds_total = 5" } else { Fail "A: rounds_total = $($stA.session_ctrl.rounds_total)" }
    if ([int]$stA.session_ctrl.max_round_seen -eq 5) { Pass "A: max_round_seen = 5" } else { Fail "A: max_round_seen = $($stA.session_ctrl.max_round_seen)" }
    if ([int]$stA.session_ctrl.ctx_valid -eq 1) { Pass "A: context valid for the dialog" } else { Fail "A: ctx_valid = $($stA.session_ctrl.ctx_valid)" }
    if ([int]$stA.session_ctrl.relisten_armed -eq 1) { Pass "A: relisten window armed after the last answer" } else { Fail "A: relisten_armed = $($stA.session_ctrl.relisten_armed)" }
    if ([int]$stA.session_ctrl.wake_events -eq 1) { Pass "A: exactly ONE factory wake observed" } else { Fail "A: wake_events = $($stA.session_ctrl.wake_events)" }
    if ([int]$stA.session_ctrl.talk_stops -eq 5) { Pass "A: 5 factory EOU events observed" } else { Fail "A: talk_stops = $($stA.session_ctrl.talk_stops)" }
    if ([int]$stA.session_ctrl.interrupts -eq 0) { Pass "A: no fake barge-in (each turn waited for its answer)" } else { Fail "A: interrupts = $($stA.session_ctrl.interrupts)" }
    if ([int]$stA.session_ctrl.device_listening -eq 0) { Pass "A: device listening = 0 (honest: mic is closed)" } else { Fail "A: device_listening = $($stA.session_ctrl.device_listening)" }
    if ([int]$stA.talk_tap.recognized -eq 7) { Pass "A: tap recognized 7 factory lines" } else { Fail "A: tap recognized = $($stA.talk_tap.recognized)" }
    if ([string]$stA.talk_tap.last_session -eq "2070101") { Pass "A: tap bound the wake to its session id" } else { Fail "A: tap last_session = $($stA.talk_tap.last_session)" }
    if ([int]$stA.context.messages -ge 10) { Pass "A: context really carries all turns" } else { Fail "A: context.messages = $($stA.context.messages)" }
} else { Fail "A: no status file" }
Log ""

# ---------------------------------------------------------------- case B
Log "=== case B: tap disabled (default) -> rounds work, nothing is faked ==="
$dir = New-Case "B"
Write-Conf $dir @("continuous_dialog_enabled=1")
$p = Start-Worker $dir 60000
for ($i = 0; $i -lt 3; $i++) {
    $null = Run-Turn $dir (New-Event ($i + 1) ("e-b" + ($i + 1)) $texts[$i] ("207020" + ($i + 1))) $i
}
$stB = Read-Status $dir
Stop-Worker $p
if ($stB -ne $null) {
    if ([int]$stB.session_ctrl.round -eq 3) { Pass "B: 3 rounds without any wake event" } else { Fail "B: round = $($stB.session_ctrl.round)" }
    if ([int]$stB.session_ctrl.opens -eq 1) { Pass "B: one dialog" } else { Fail "B: opens = $($stB.session_ctrl.opens)" }
    if ([int]$stB.session_ctrl.followup_rounds -eq 2) { Pass "B: 2 hands-free rounds" } else { Fail "B: followup_rounds = $($stB.session_ctrl.followup_rounds)" }
    if ([int]$stB.session_ctrl.wake_events -eq 0) { Pass "B: wake_events = 0 (tap off, nothing invented)" } else { Fail "B: wake_events = $($stB.session_ctrl.wake_events)" }
    if ([int64]$stB.session_ctrl.last_wake_ms -eq 0) { Pass "B: last_wake_ms stays 0" } else { Fail "B: last_wake_ms = $($stB.session_ctrl.last_wake_ms)" }
    if ([int]$stB.session_ctrl.device_listening -eq 0) { Pass "B: device_listening stays 0" } else { Fail "B: device_listening = $($stB.session_ctrl.device_listening)" }
    if ([int]$stB.talk_tap.enabled -eq 0) { Pass "B: tap disabled in status" } else { Fail "B: tap enabled = $($stB.talk_tap.enabled)" }
} else { Fail "B: no status file" }
Log ""

# ---------------------------------------------------------------- case C
Log "=== case C: continuous_dialog_enabled=0 -> T8-13 semantics ==="
$dir = New-Case "C"
Write-Conf $dir @("continuous_dialog_enabled=0")
$p = Start-Worker $dir 60000
for ($i = 0; $i -lt 3; $i++) {
    $null = Run-Turn $dir (New-Event ($i + 1) ("e-c" + ($i + 1)) $texts[$i] ("207030" + ($i + 1))) $i
}
$stC = Read-Status $dir
Stop-Worker $p
if ($stC -ne $null) {
    if ([int]$stC.session_ctrl.continuous -eq 0) { Pass "C: continuous flag off in status" } else { Fail "C: continuous = $($stC.session_ctrl.continuous)" }
    if ([int]$stC.session_ctrl.opens -eq 3) { Pass "C: every new asr session opened a dialog (legacy)" } else { Fail "C: opens = $($stC.session_ctrl.opens)" }
    if ([int]$stC.session_ctrl.followup_rounds -eq 0) { Pass "C: no hands-free round claimed" } else { Fail "C: followup_rounds = $($stC.session_ctrl.followup_rounds)" }
    if ([int]$stC.counters.events_processed -eq 3) { Pass "C: all 3 events still answered" } else { Fail "C: events_processed = $($stC.counters.events_processed)" }
} else { Fail "C: no status file" }
Log ""

# ---------------------------------------------------------------- case D
Log "=== case D: continuous_max_rounds=3 -> cap enforced ==="
$dir = New-Case "D"
Write-Conf $dir @("continuous_dialog_enabled=1", "continuous_max_rounds=3")
$p = Start-Worker $dir 60000
for ($i = 0; $i -lt 5; $i++) {
    $null = Run-Turn $dir (New-Event ($i + 1) ("e-d" + ($i + 1)) $texts[$i] ("207040" + ($i + 1))) $i
}
$stD = Read-Status $dir
Stop-Worker $p
if ($stD -ne $null) {
    if ([int]$stD.session_ctrl.max_rounds -eq 3) { Pass "D: cap = 3 in status" } else { Fail "D: max_rounds = $($stD.session_ctrl.max_rounds)" }
    if ([int]$stD.session_ctrl.round_cap_hits -ge 1) { Pass "D: cap was hit" } else { Fail "D: round_cap_hits = $($stD.session_ctrl.round_cap_hits)" }
    if ([int]$stD.session_ctrl.opens -ge 2) { Pass "D: a new dialog was opened after the cap" } else { Fail "D: opens = $($stD.session_ctrl.opens)" }
    if ([int]$stD.session_ctrl.round -le 3) { Pass "D: no dialog exceeds the cap" } else { Fail "D: round = $($stD.session_ctrl.round)" }
    if ([int]$stD.counters.events_processed -eq 5) { Pass "D: no utterance was dropped" } else { Fail "D: events_processed = $($stD.counters.events_processed)" }
} else { Fail "D: no status file" }
Log ""

# ---------------------------------------------------------------- case E
Log "=== case E: native stop ends the dialog, next utterance opens a new one ==="
$dir = New-Case "E"
Write-Conf $dir @("continuous_dialog_enabled=1")
$p = Start-Worker $dir 60000
$null = Run-Turn $dir (New-Event 1 "e-e1" $texts[0] "2070501") 0
$stEmid = Run-NativeTurn $dir (New-Event 2 "e-e2" "停止播放" "2070502")
$null = Run-Turn $dir (New-Event 3 "e-e3" $texts[2] "2070503") 1
$stE = Read-Status $dir
Stop-Worker $p
if ($stEmid -ne $null) {
    if ([int]$stEmid.session_ctrl.round -eq 0 -and [string]$stEmid.session_ctrl.state -eq "IDLE") {
        Pass "E: dialog closed after the stop utterance"
    } else { Fail "E: after stop -> state=$($stEmid.session_ctrl.state) round=$($stEmid.session_ctrl.round)" }
    if (([string]$stEmid.session_ctrl.end_reason) -match "user stop") {
        Pass "E: end_reason records the user stop"
    } else { Fail "E: end_reason = $($stEmid.session_ctrl.end_reason)" }
} else { Fail "E: no status file after stop" }
if ($stE -ne $null) {
    if ([int]$stE.route.stop -ge 1) { Pass "E: stop still went to the factory" } else { Fail "E: route.stop = $($stE.route.stop)" }
    if ([int]$stE.session_ctrl.opens -ge 2) { Pass "E: the next utterance opened a new dialog" } else { Fail "E: opens = $($stE.session_ctrl.opens)" }
    if ([int]$stE.session_ctrl.round -eq 1) { Pass "E: new dialog starts at round 1" } else { Fail "E: round = $($stE.session_ctrl.round)" }
} else { Fail "E: no status file at the end" }
Log ""

Log ("# total: pass=$($script:Pass) fail=$($script:Fail)")
if ($script:Fail -ne 0) {
    Log "# result: FAIL"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    exit 1
}
Log "# result: OK"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
exit 0

