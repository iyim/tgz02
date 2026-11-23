# run_t8_14_1_skill_tests.ps1 -- T8-14.1 skill dispatch wiring (real ai_worker.exe, host only)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_14_1_skill_tests.ps1
#
# What this proves (task book section 5, real call order, not just the registry):
#   1) switch OFF (default): time query still goes to the factory (route.native),
#      the skill is never called, nothing is written into the TTS queue.
#   2) switch ON: time query is executed by t8_skill_execute() via the worker, the
#      factory publish path is NOT used (route.native == 0), and the skill text lands
#      in the real TTS queue file named after the event_id.
#   3) switch ON + TTS enqueue failure (T6B_FAULT_TTSQ=create): the consumption
#      offset must NOT advance (events_processed == 0, pending_event_id == the event).
#   4) replay of the same event_id (fresh state dir = restart with lost offset):
#      the skill is NOT executed again and no second queue item appears (dedup by
#      the durable TTS queue probe).
#   5) volume / stop / media still follow the factory route while the switch is ON.
#   6) registry contract: unregistered skill -> NOIMPL (C unit test, same run).
#
# Host only: TDM-GCC + mock provider, no device, no network, no factory call.
# NOTE: keep this file ASCII-only (PowerShell 5.1 reads a BOM-less file as ANSI).
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
$E2e = Join-Path $Out "t8_14_1"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null
New-Item -ItemType Directory -Force $E2e | Out-Null

$Log = Join-Path $Ev "t8_14_1_skill_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$script:Pass = 0
$script:Fail = 0
function Pass([string]$s) { $script:Pass++; Log ("  PASS " + $s) }
function Fail([string]$s) { $script:Fail++; Log ("  FAIL " + $s) }

Log "# T8-14.1 skill dispatch host test log"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

# ---------------------------------------------------------------- build
$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)
$LibSrc = @(
    "deepseek_provider.c", "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "dead_letter.c", "echo_filter.c",
    "intent_route.c", "session_ctrl.c", "conv_session.c", "skill_dispatch.c",
    "t7_dup.c", "utterance_gate.c"
) | ForEach-Object { Join-Path $Android $_ }
$WorkerSrc = @((Join-Path $Android "ai_worker.c")) + $LibSrc

function Build([string]$exe, [string[]]$sources) {
    $argv = $Base + @("-o", $exe) + $sources
    Log ("cc  : " + $Gcc + " " + ($argv -join " "))
    $text = & $Gcc @argv 2>&1 | Out-String
    if ($text.Trim().Length -gt 0) { Log $text.TrimEnd() }
    if ($LASTEXITCODE -ne 0) { throw "build failed: $exe (exit $LASTEXITCODE)" }
    if ($text.Trim().Length -eq 0) { Log "  (0 warning, 0 error)" }
    Log ""
}

$WorkerExe = Join-Path $Out "ai_worker.exe"
Build $WorkerExe $WorkerSrc

$RegistryExe = Join-Path $Out "t8_14_1_skill_registry_unit_test.exe"
Build $RegistryExe @((Join-Path $Here "t8_14_1_skill_registry_unit_test.c"),
                     (Join-Path $Android "skill_dispatch.c"),
                     (Join-Path $Android "intent_route.c"),
                     (Join-Path $Android "echo_filter.c"))

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

function New-Case([string]$name, [int]$skillOn, [string[]]$events) {
    $dir = Join-Path $E2e $name
    Remove-Item -Recurse -Force $dir -ErrorAction SilentlyContinue
    New-Item -ItemType Directory -Force (Join-Path $dir "work") | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $dir "tts\control") | Out-Null
    $enc = New-Object Text.UTF8Encoding($false)
    [IO.File]::WriteAllText((Join-Path $dir "work\events.jsonl"),
                            (($events -join "`n") + "`n"), $enc)
    $conf = @(
        "provider=mock"
        "context_enabled=0"
        "route_native=1"
        "route_intents=volume,weather,screen_off,time,screen_on,media,stop,exit"
        "gate=0"
        ("skill_dispatch_enabled=" + $skillOn)
    ) -join "`n"
    [IO.File]::WriteAllText((Join-Path $dir "worker.conf"), ($conf + "`n"), $enc)
    return $dir
}

function Run-Case([string]$dir, [string]$stateDir, [int]$maxRuntime, [int]$retryMax) {
    $wargs = @("--conf", (Join-Path $dir "worker.conf"),
               "--work-dir", (Join-Path $dir "work"),
               "--state-dir", $stateDir,
               "--provider", "mock",
               "--tts-queue-dir", (Join-Path $dir "tts"),
               "--gate", "0",
               "--poll-ms", "10",
               "--status-every-ms", "100",
               "--provider-retry-max", "$retryMax",
               "--provider-backoff-ms", "400",
               "--provider-backoff-max-ms", "800",
               "--idle-exit-ms", "1200",
               "--max-runtime-ms", "$maxRuntime")
    Log ("run : " + $WorkerExe + " " + ($wargs -join " "))
    $out = & $WorkerExe @wargs 2>&1 | Out-String
    $script:LastExit = $LASTEXITCODE
    $keep = $out.TrimEnd() -split "`r?`n" | Where-Object { $_ -match 'skill|route=|tts |enqueue' }
    ($keep | Select-Object -First 12) | ForEach-Object { Log ("  | " + $_) }
    Log ("  exit=" + $script:LastExit)
    return $out
}

function Read-Status([string]$stateDir) {
    $p = Join-Path $stateDir "ai_worker_status.json"
    if (-not (Test-Path $p)) { return $null }
    return (Get-Content $p -Raw | ConvertFrom-Json)
}

function Queue-Files([string]$dir) {
    $q = Join-Path $dir "tts"
    if (-not (Test-Path $q)) { return @() }
    return @(Get-ChildItem -Recurse $q -File -ErrorAction SilentlyContinue |
             Where-Object { $_.Extension -eq ".json" })
}

# Utterances are built from code points so this script stays ASCII-only:
#   time   = "now what time is it"
#   volume = "set volume to 30 percent"
#   stop   = "stop"
$TimeText = [regex]::Unescape('\u73b0\u5728\u51e0\u70b9')
$VolText = [regex]::Unescape('\u97f3\u91cf\u8c03\u5230\u767e\u5206\u4e4b') + '30'
$StopText = [regex]::Unescape('\u505c\u6b62')

# ---------------------------------------------------------------- 1) switch OFF
Log "=== case 1: skill_dispatch_enabled=0 -> factory route unchanged ==="
$d1 = New-Case "case1_off" 0 @((New-Event 1 "e-off1" $TimeText "1969001"))
$o1 = Run-Case $d1 (Join-Path $d1 "state") 4000 1
$st1 = Read-Status (Join-Path $d1 "state")
if ($st1 -eq $null) { Fail "1: status file missing" } else {
    if ([int]$st1.route.native -ge 1) { Pass "1: factory route used (route.native >= 1)" }
    else { Fail "1: route.native == $($st1.route.native)" }
    if ([int]$st1.route.time -ge 1) { Pass "1: time intent routed natively" }
    else { Fail "1: route.time == $($st1.route.time)" }
    if ([int]$st1.skill_dispatch.enabled -eq 0) { Pass "1: skill dispatch reported disabled" }
    else { Fail "1: skill_dispatch.enabled == $($st1.skill_dispatch.enabled)" }
    if ([int]$st1.skill_dispatch.calls -eq 0) { Pass "1: t8_skill_execute never called" }
    else { Fail "1: skill calls == $($st1.skill_dispatch.calls)" }
    if ([int]$st1.route.ai -eq 0) { Pass "1: no AI pend created" }
    else { Fail "1: route.ai == $($st1.route.ai)" }
    if ([int]$st1.counters.tts_queued -eq 0) { Pass "1: nothing handed to TTS" }
    else { Fail "1: tts_queued == $($st1.counters.tts_queued)" }
}
$q1 = Queue-Files $d1
if ($q1.Count -eq 0) { Pass "1: TTS queue has no item" } else { Fail "1: queue items == $($q1.Count)" }
if ($o1 -match 'route=skill') { Fail "1: skill path was taken while disabled" }
else { Pass "1: no skill path log while disabled" }

# ---------------------------------------------------------------- 2) switch ON
Log ""
Log "=== case 2: skill_dispatch_enabled=1 -> time.query executed by worker ==="
$d2 = New-Case "case2_on" 1 @((New-Event 1 "e-on1" $TimeText "1969002"))
$o2 = Run-Case $d2 (Join-Path $d2 "state") 4000 1
$st2 = Read-Status (Join-Path $d2 "state")
if ($st2 -eq $null) { Fail "2: status file missing" } else {
    if ([int]$st2.skill_dispatch.enabled -eq 1) { Pass "2: skill dispatch reported enabled" }
    else { Fail "2: skill_dispatch.enabled == $($st2.skill_dispatch.enabled)" }
    if ([int]$st2.skill_dispatch.calls -eq 1) { Pass "2: skill executed exactly once" }
    else { Fail "2: skill calls == $($st2.skill_dispatch.calls)" }
    if ([int]$st2.skill_dispatch.ok -eq 1) { Pass "2: skill reported ok" }
    else { Fail "2: skill ok == $($st2.skill_dispatch.ok)" }
    if ($st2.skill_dispatch.last_skill -eq "time.query") { Pass "2: last_skill == time.query" }
    else { Fail "2: last_skill == '$($st2.skill_dispatch.last_skill)'" }
    if ($st2.skill_dispatch.last_result -eq "ok:time.query") { Pass "2: last_result == ok:time.query" }
    else { Fail "2: last_result == '$($st2.skill_dispatch.last_result)'" }
    if ([int]$st2.route.native -eq 0) { Pass "2: factory publish path NOT used (route.native == 0)" }
    else { Fail "2: route.native == $($st2.route.native)" }
    if ([int]$st2.route.ai -eq 0) { Pass "2: model NOT called (route.ai == 0)" }
    else { Fail "2: route.ai == $($st2.route.ai)" }
    if ([int]$st2.skill_dispatch.claimed -eq 1) { Pass "2: claimed counter == 1" }
    else { Fail "2: claimed == $($st2.skill_dispatch.claimed)" }
    if ([int]$st2.counters.events_processed -eq 1) { Pass "2: offset advanced after TTS enqueue" }
    else { Fail "2: events_processed == $($st2.counters.events_processed)" }
}
$q2 = Queue-Files $d2
if ($q2.Count -eq 1) {
    Pass "2: exactly one TTS queue item"
    if ($q2[0].BaseName -eq "e-on1") { Pass "2: queue file named after event_id (e-on1)" }
    else { Fail "2: queue file name == $($q2[0].BaseName)" }
    $body = Get-Content $q2[0].FullName -Raw | ConvertFrom-Json
    if ($body.event_id -eq "e-on1") { Pass "2: queue body event_id matches" }
    else { Fail "2: queue body event_id == '$($body.event_id)'" }
    if ($body.text -match '^now \d\d:\d\d$') { Pass "2: queue text is the skill message ($($body.text))" }
    else { Fail "2: queue text == '$($body.text)'" }
    if ([int]$body.reply_bytes -eq [Text.Encoding]::UTF8.GetByteCount([string]$body.text)) {
        Pass "2: reply_bytes consistent with text"
    } else { Fail "2: reply_bytes mismatch" }
    $script:QueueItem2 = $q2[0].FullName
    $script:QueueText2 = [string]$body.text
} else { Fail "2: queue item count == $($q2.Count)" }
if ($o2 -match 'route=skill skill=time\.query') { Pass "2: route=skill log present" }
else { Fail "2: route=skill log missing" }
if ($o2 -match 'route=native') { Fail "2: factory native route log present while skill claimed" }
else { Pass "2: no factory native route log" }

# ---------------------------------------------------------------- 3) enqueue failure
Log ""
Log "=== case 3: skill ON + TTS enqueue fails -> offset must NOT advance ==="
$d3 = New-Case "case3_fault" 1 @((New-Event 1 "e-fault1" $TimeText "1969003"))
$env:T6B_FAULT_TTSQ = "create"
$o3 = Run-Case $d3 (Join-Path $d3 "state") 2200 1
Remove-Item Env:T6B_FAULT_TTSQ -ErrorAction SilentlyContinue
$st3 = Read-Status (Join-Path $d3 "state")
$q3 = Queue-Files $d3
if ($q3.Count -eq 0) { Pass "3: nothing persisted into the TTS queue" }
else { Fail "3: queue items == $($q3.Count)" }
if ($st3 -eq $null) { Fail "3: status file missing" } else {
    if ([int]$st3.counters.events_processed -eq 0) { Pass "3: events_processed == 0 (no commit)" }
    else { Fail "3: events_processed == $($st3.counters.events_processed)" }
    if ($st3.pending_event_id -eq "e-fault1") { Pass "3: pending_event_id kept (e-fault1)" }
    else { Fail "3: pending_event_id == '$($st3.pending_event_id)'" }
    if ([int]$st3.counters.tts_enqueue_failed -ge 1) { Pass "3: enqueue failure counted" }
    else { Fail "3: tts_enqueue_failed == $($st3.counters.tts_enqueue_failed)" }
    if ([int]$st3.skill_dispatch.calls -ge 1) { Pass "3: skill was executed (attempt recorded)" }
    else { Fail "3: skill calls == $($st3.skill_dispatch.calls)" }
}
$cs3 = Join-Path $d3 "state\consumer_state.json"
if (Test-Path $cs3) {
    $c3 = Get-Content $cs3 -Raw | ConvertFrom-Json
    if ([int]$c3.processed_total -eq 0) { Pass "3: consumer_state.processed_total == 0" }
    else { Fail "3: consumer_state.processed_total == $($c3.processed_total)" }
} else { Pass "3: consumer_state.json not created (nothing committed)" }
if ($o3 -match 'offset NOT advanced') { Pass "3: worker logged 'offset NOT advanced'" }
else { Fail "3: missing 'offset NOT advanced' log" }

# ---------------------------------------------------------------- 4) replay dedup
Log ""
Log "=== case 4: same event_id replay (fresh state) -> no re-execution, no re-queue ==="
$st4dir = Join-Path $d2 "state_replay"
$o4 = Run-Case $d2 $st4dir 4000 1
$st4 = Read-Status $st4dir
if ($st4 -eq $null) { Fail "4: status file missing" } else {
    if ([int]$st4.skill_dispatch.dedup -eq 1) { Pass "4: dedup hit counted (skill not re-executed)" }
    else { Fail "4: skill_dispatch.dedup == $($st4.skill_dispatch.dedup)" }
    if ([int]$st4.skill_dispatch.calls -eq 0) { Pass "4: skill NOT executed again in this run" }
    else { Fail "4: skill calls == $($st4.skill_dispatch.calls)" }
    if ([int]$st4.counters.tts_queued -eq 0 -and [int]$st4.counters.tts_skipped -eq 0) {
        Pass "4: nothing re-enqueued"
    } else {
        Fail "4: tts_queued=$($st4.counters.tts_queued) tts_skipped=$($st4.counters.tts_skipped)"
    }
    if ([int]$st4.counters.events_processed -eq 1) { Pass "4: offset advanced (event consumed once)" }
    else { Fail "4: events_processed == $($st4.counters.events_processed)" }
    if ([int]$st4.route.native -eq 0) { Pass "4: factory path still not used" }
    else { Fail "4: route.native == $($st4.route.native)" }
}
$q4 = Queue-Files $d2
if ($q4.Count -eq 1) { Pass "4: still exactly one queue item" } else { Fail "4: queue items == $($q4.Count)" }
if ($q4.Count -eq 1 -and (Get-Content $q4[0].FullName -Raw | ConvertFrom-Json).text -eq $script:QueueText2) {
    Pass "4: queue item text unchanged (no second broadcast)"
} else { Fail "4: queue item text changed" }
if ($o4 -match 'skill skip \(already enqueued') { Pass "4: dedup log present" }
else { Fail "4: dedup log missing" }

# ---------------------------------------------------------------- 5) factory regression
Log ""
Log "=== case 5: skill ON -> volume/stop still on the factory route ==="
$d5 = New-Case "case5_native" 1 @(
    (New-Event 1 "e-vol1" $VolText "1969005"),
    (New-Event 2 "e-stop1" $StopText "1969005")
)
$o5 = Run-Case $d5 (Join-Path $d5 "state") 5000 1
$st5 = Read-Status (Join-Path $d5 "state")
if ($st5 -eq $null) { Fail "5: status file missing" } else {
    if ([int]$st5.route.volume -ge 1) { Pass "5: volume routed natively" }
    else { Fail "5: route.volume == $($st5.route.volume)" }
    if ([int]$st5.route.stop -ge 1) { Pass "5: stop routed natively" }
    else { Fail "5: route.stop == $($st5.route.stop)" }
    if ([int]$st5.route.native -ge 2) { Pass "5: both utterances used the factory publish path" }
    else { Fail "5: route.native == $($st5.route.native)" }
    if ([int]$st5.skill_dispatch.calls -eq 0) { Pass "5: skill dispatch untouched (no overlap)" }
    else { Fail "5: skill calls == $($st5.skill_dispatch.calls)" }
    if ([int]$st5.route.ai -eq 0) { Pass "5: nothing went to the model" }
    else { Fail "5: route.ai == $($st5.route.ai)" }
}
$q5 = Queue-Files $d5
if ($q5.Count -eq 0) { Pass "5: no TTS item for factory-routed intents" }
else { Fail "5: queue items == $($q5.Count)" }
if ($o5 -match 'route=skill') { Fail "5: skill claimed a factory intent" }
else { Pass "5: skill claimed nothing" }

# ---------------------------------------------------------------- 6) registry contract
Log ""
Log "=== case 6: registry contract (NOIMPL for unregistered skill, C unit test) ==="
$out6 = & $RegistryExe 2>&1 | Out-String
$rc6 = $LASTEXITCODE
($out6.TrimEnd() -split "`r?`n") | ForEach-Object { Log ("  | " + $_) }
if ($rc6 -eq 0) { Pass "6: registry unit test PASS (NOIMPL never fakes success)" }
else { Fail "6: registry unit test FAIL" }

# ---------------------------------------------------------------- summary
Log ""
Log ("# total: pass=$script:Pass fail=$script:Fail")
if ($script:Fail -ne 0) {
    Log "# result: FAIL"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    exit 1
}
Log "# result: OK"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
exit 0
