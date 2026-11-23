# run_t8_14_2_device_status_tests.ps1 -- T8-14.2 device.status wiring (real ai_worker.exe, host only)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_14_2_device_status_tests.ps1
#
# What this proves (task book section 4), with the real worker binary:
#   1) master ON + device switch OFF : device question goes to the model (old behaviour),
#      skill dispatch never runs, nothing enters the TTS queue.
#   2) master ON + device switch ON  : device.status runs, the message goes through the
#      real tts_enqueue(), the queue item is named after the event_id.
#      The host has no /proc/uptime -> the skill must degrade to battery-only
#      ("电量 77%"), never invent an uptime number.
#   3) master OFF                    : device question goes to the model, skill counters stay 0.
#   4) replay of the same event_id (fresh state dir): no second execution, no second item.
#   5) TTS enqueue failure           : consumption offset must NOT advance.
#   6) regressions                   : time.query still a skill, volume/stop still factory.
#   7) unit contract                 : data-source cases live in the C unit test (same run).
#
# Host only: TDM-GCC + mock provider, no device, no network.
# NOTE: keep this file ASCII-only (PowerShell 5.1 reads a BOM-less file as ANSI);
#       Chinese utterances are built from code points.
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
$E2e = Join-Path $Out "t8_14_2"
New-Item -ItemType Directory -Force $Out, $Ev, $E2e | Out-Null

$Log = Join-Path $Ev "t8_14_2_skill_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$script:Pass = 0
$script:Fail = 0
function Pass([string]$s) { $script:Pass++; Log ("  PASS " + $s) }
function Fail([string]$s) { $script:Fail++; Log ("  FAIL " + $s) }

Log "# T8-14.2 device.status host test log"
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

$UnitExe = Join-Path $Out "t8_14_2_device_status_unit_test.exe"
Build $UnitExe @((Join-Path $Here "t8_14_2_device_status_unit_test.c"),
                 (Join-Path $Android "skill_dispatch.c"),
                 (Join-Path $Android "intent_route.c"),
                 (Join-Path $Android "echo_filter.c"),
                 (Join-Path $Android "worker_util.c"))

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

function New-Case([string]$name, [int]$master, [int]$dev, [string]$batteryPct, [string[]]$events) {
    $dir = Join-Path $E2e $name
    Remove-Item -Recurse -Force $dir -ErrorAction SilentlyContinue
    New-Item -ItemType Directory -Force (Join-Path $dir "work") | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $dir "tts\control") | Out-Null
    $enc = New-Object Text.UTF8Encoding($false)
    [IO.File]::WriteAllText((Join-Path $dir "work\events.jsonl"),
                            (($events -join "`n") + "`n"), $enc)
    $lines = @(
        "provider=mock"
        "context_enabled=0"
        "route_native=1"
        "route_intents=volume,weather,screen_off,time,screen_on,media,stop,exit"
        "gate=0"
        ("skill_dispatch_enabled=" + $master)
        ("skill_device_status_enabled=" + $dev)
    )
    if ($batteryPct -ne "") {
        $battFile = Join-Path $dir "battery.txt"
        [IO.File]::WriteAllText($battFile, ($batteryPct + "`n"), $enc)
        $lines += ("skill_device_battery_path=" + $battFile)
    }
    [IO.File]::WriteAllText((Join-Path $dir "worker.conf"), (($lines -join "`n") + "`n"), $enc)
    return $dir
}

function Run-Case([string]$dir, [string]$stateDir, [int]$maxRuntime) {
    $wargs = @("--conf", (Join-Path $dir "worker.conf"),
               "--work-dir", (Join-Path $dir "work"),
               "--state-dir", $stateDir,
               "--provider", "mock",
               "--tts-queue-dir", (Join-Path $dir "tts"),
               "--gate", "0",
               "--poll-ms", "10",
               "--status-every-ms", "100",
               "--provider-retry-max", "1",
               "--provider-backoff-ms", "400",
               "--provider-backoff-max-ms", "800",
               "--idle-exit-ms", "1200",
               "--max-runtime-ms", "$maxRuntime")
    Log ("run : " + $WorkerExe + " " + ($wargs -join " "))
    $out = & $WorkerExe @wargs 2>&1 | Out-String
    $script:LastExit = $LASTEXITCODE
    ($out.TrimEnd() -split "`r?`n" | Where-Object { $_ -match 'skill|route=|tts ' } |
        Select-Object -First 12) | ForEach-Object { Log ("  | " + $_) }
    Log ("  exit=" + $script:LastExit)
    return $out
}

function Read-Json([string]$path) { return (Get-Content $path -Raw -Encoding UTF8 | ConvertFrom-Json) }

function Read-Status([string]$stateDir) {
    $p = Join-Path $stateDir "ai_worker_status.json"
    if (-not (Test-Path $p)) { return $null }
    return (Get-Content $p -Raw | ConvertFrom-Json)
}

function Queue-Files([string]$dir) {
    $q = Join-Path $dir "tts"
    if (-not (Test-Path $q)) { return @() }
    return @(Get-ChildItem -Recurse $q -File -ErrorAction SilentlyContinue |
             Where-Object { $_.Extension -eq ".json" -and $_.Directory.Name -eq "queue" })
}

$DevPower = [regex]::Unescape('\u97f3\u7bb1\u8fd8\u5269\u591a\u5c11\u7535')      # speaker battery?
$DevUptime = [regex]::Unescape('\u8bbe\u5907\u8fd0\u884c\u65f6\u95f4\u662f\u591a\u5c11') # uptime?
$TimeText = [regex]::Unescape('\u73b0\u5728\u51e0\u70b9')
$VolText = [regex]::Unescape('\u97f3\u91cf\u8c03\u5230\u767e\u5206\u4e4b') + '30'
$StopText = [regex]::Unescape('\u505c\u6b62')

# ---------------------------------------------------------------- 1) master ON, device OFF
Log "=== case 1: master ON + device.status OFF -> model route (old behaviour) ==="
$d1 = New-Case "case1_dev_off" 1 0 "" @((New-Event 1 "e-doff1" $DevPower "1969300"))
$o1 = Run-Case $d1 (Join-Path $d1 "state") 4000
$st1 = Read-Status (Join-Path $d1 "state")
if ($st1 -eq $null) { Fail "1: status missing" } else {
    if ([int]$st1.skill_dispatch.device_status -eq 0) { Pass "1: device switch reported off" }
    else { Fail "1: device_status == $($st1.skill_dispatch.device_status)" }
    if ([int]$st1.skill_dispatch.calls -eq 0) { Pass "1: skill dispatch never ran" }
    else { Fail "1: skill calls == $($st1.skill_dispatch.calls)" }
    if ([int]$st1.route.ai -eq 1) { Pass "1: question went to the model (route.ai == 1)" }
    else { Fail "1: route.ai == $($st1.route.ai)" }
    if ([int]$st1.route.native -eq 0) { Pass "1: nothing routed to the factory (no route bit)" }
    else { Fail "1: route.native == $($st1.route.native)" }
    if ([int]$st1.counters.tts_queued -eq 1) { Pass "1: the model answer is what got queued (old behaviour)" }
    else { Fail "1: tts_queued == $($st1.counters.tts_queued)" }
    $q1 = Queue-Files $d1
    if ($q1.Count -eq 1 -and (Read-Json $q1[0].FullName).event_id -eq "e-doff1" -and
        (Read-Json $q1[0].FullName).text -notmatch [regex]::Unescape('\u7535\u91cf')) {
        Pass "1: queue holds the AI answer for this event, not a device.status message"
    } else { Fail "1: queue content is not the expected AI answer" }
}
if ($o1 -match 'route=skill') { Fail "1: skill claimed while device switch off" }
else { Pass "1: no skill path log" }

# ---------------------------------------------------------------- 2) master ON, device ON
Log ""
Log "=== case 2: master ON + device ON -> device.status executes, real TTS queue ==="
$d2 = New-Case "case2_dev_on" 1 1 "77" @((New-Event 1 "e-dev1" $DevPower "1969310"))
$o2 = Run-Case $d2 (Join-Path $d2 "state") 4000
$st2 = Read-Status (Join-Path $d2 "state")
if ($st2 -eq $null) { Fail "2: status missing" } else {
    if ([int]$st2.skill_dispatch.device_status -eq 1) { Pass "2: device switch reported on" }
    else { Fail "2: device_status == $($st2.skill_dispatch.device_status)" }
    if ([int]$st2.skill_dispatch.calls -eq 1) { Pass "2: skill executed exactly once" }
    else { Fail "2: skill calls == $($st2.skill_dispatch.calls)" }
    if ([int]$st2.skill_dispatch.ok -eq 1) { Pass "2: skill ok" }
    else { Fail "2: skill ok == $($st2.skill_dispatch.ok)" }
    if ($st2.skill_dispatch.last_skill -eq "device.status") { Pass "2: last_skill == device.status" }
    else { Fail "2: last_skill == '$($st2.skill_dispatch.last_skill)'" }
    if ($st2.skill_dispatch.last_result -eq "ok:device.status") { Pass "2: result ok:device.status" }
    else { Fail "2: last_result == '$($st2.skill_dispatch.last_result)'" }
    if ([int]$st2.route.ai -eq 0) { Pass "2: model NOT called for this question" }
    else { Fail "2: route.ai == $($st2.route.ai)" }
    if ([int]$st2.route.native -eq 0) { Pass "2: factory NOT used" }
    else { Fail "2: route.native == $($st2.route.native)" }
    if ([int]$st2.counters.events_processed -eq 1) { Pass "2: offset advanced after enqueue" }
    else { Fail "2: events_processed == $($st2.counters.events_processed)" }
}
$q2 = Queue-Files $d2
if ($q2.Count -eq 1) {
    Pass "2: exactly one queue item"
    if ($q2[0].BaseName -eq "e-dev1") { Pass "2: item named after event_id" }
    else { Fail "2: name == $($q2[0].BaseName)" }
    $body = Read-Json $q2[0].FullName
    if ($body.event_id -eq "e-dev1") { Pass "2: body event_id matches" }
    else { Fail "2: body event_id == '$($body.event_id)'" }
    if ($body.text -eq ([regex]::Unescape('\u7535\u91cf') + ' 77%')) {
        Pass ("2: message is battery only, honest degradation on host (" + $body.text + ")")
    } else { Fail "2: message == '$($body.text)'" }
    if ($body.text -notmatch [regex]::Unescape('\u8fd0\u884c')) {
        Pass "2: no invented uptime (host has no /proc/uptime)"
    } else { Fail "2: message claims uptime on a host without /proc/uptime" }
    $script:QueueText2 = [string]$body.text
} else { Fail "2: queue items == $($q2.Count)" }
if ($o2 -match 'route=skill skill=device\.status') { Pass "2: route=skill device.status logged" }
else { Fail "2: route=skill device.status missing" }

# ---------------------------------------------------------------- 2b) uptime phrasing still claims
Log ""
Log "=== case 2b: uptime wording is claimed too (and degrades on host) ==="
$d2b = New-Case "case2b_uptime" 1 1 "50" @((New-Event 1 "e-devup" $DevUptime "1969315"))
$o2b = Run-Case $d2b (Join-Path $d2b "state") 4000
$st2b = Read-Status (Join-Path $d2b "state")
$q2b = Queue-Files $d2b
if ($st2b -ne $null -and [int]$st2b.skill_dispatch.calls -eq 1) { Pass "2b: uptime wording claimed by skill" }
else { Fail "2b: skill not called for uptime wording" }
if ($q2b.Count -eq 1) { Pass "2b: queued through the same path" } else { Fail "2b: queue items == $($q2b.Count)" }
if ($o2b -match 'device\.uptime|device\.both') { Pass "2b: rule is device.uptime/both" }
else { Fail "2b: unexpected rule for uptime wording" }

# ---------------------------------------------------------------- 3) master OFF
Log ""
Log "=== case 3: master OFF -> model route, skill inert ==="
$d3 = New-Case "case3_master_off" 0 1 "77" @((New-Event 1 "e-moff1" $DevPower "1969320"))
$o3 = Run-Case $d3 (Join-Path $d3 "state") 4000
$st3 = Read-Status (Join-Path $d3 "state")
if ($st3 -eq $null) { Fail "3: status missing" } else {
    if ([int]$st3.skill_dispatch.enabled -eq 0) { Pass "3: master switch reported off" }
    else { Fail "3: skill enabled == $($st3.skill_dispatch.enabled)" }
    if ([int]$st3.skill_dispatch.calls -eq 0) { Pass "3: skill never ran" }
    else { Fail "3: calls == $($st3.skill_dispatch.calls)" }
    if ([int]$st3.route.ai -eq 1) { Pass "3: went to the model" }
    else { Fail "3: route.ai == $($st3.route.ai)" }
}
$q3 = Queue-Files $d3
if ($q3.Count -eq 1 -and (Read-Json $q3[0].FullName).text -notmatch [regex]::Unescape('\u7535\u91cf')) {
    Pass "3: only the AI answer was queued (no device.status message)"
} else { Fail "3: queue items == $($q3.Count) or device message leaked" }

# ---------------------------------------------------------------- 4) replay dedup
Log ""
Log "=== case 4: same event_id replay (fresh state) -> no re-execution / no re-queue ==="
$st4dir = Join-Path $d2 "state_replay"
$o4 = Run-Case $d2 $st4dir 4000
$st4 = Read-Status $st4dir
if ($st4 -eq $null) { Fail "4: status missing" } else {
    if ([int]$st4.skill_dispatch.dedup -eq 1) { Pass "4: dedup counted" }
    else { Fail "4: dedup == $($st4.skill_dispatch.dedup)" }
    if ([int]$st4.skill_dispatch.calls -eq 0) { Pass "4: skill NOT executed again" }
    else { Fail "4: calls == $($st4.skill_dispatch.calls)" }
    if ([int]$st4.counters.events_processed -eq 1) { Pass "4: event consumed once" }
    else { Fail "4: events_processed == $($st4.counters.events_processed)" }
}
$q4 = Queue-Files $d2
if ($q4.Count -eq 1 -and (Read-Json $q4[0].FullName).text -eq $script:QueueText2) {
    Pass "4: single unchanged queue item (no second broadcast)"
} else { Fail "4: queue changed on replay" }
if ($o4 -match 'skill skip \(already enqueued') { Pass "4: dedup log present" }
else { Fail "4: dedup log missing" }

# ---------------------------------------------------------------- 5) enqueue failure
Log ""
Log "=== case 5: enqueue failure -> offset must NOT advance ==="
$d5 = New-Case "case5_fault" 1 1 "77" @((New-Event 1 "e-fault1" $DevPower "1969330"))
$env:T6B_FAULT_TTSQ = "create"
$o5 = Run-Case $d5 (Join-Path $d5 "state") 2200
Remove-Item Env:T6B_FAULT_TTSQ -ErrorAction SilentlyContinue
$st5 = Read-Status (Join-Path $d5 "state")
if ((Queue-Files $d5).Count -eq 0) { Pass "5: nothing persisted" } else { Fail "5: queue not empty" }
if ($st5 -eq $null) { Fail "5: status missing" } else {
    if ([int]$st5.counters.events_processed -eq 0) { Pass "5: events_processed == 0" }
    else { Fail "5: events_processed == $($st5.counters.events_processed)" }
    if ($st5.pending_event_id -eq "e-fault1") { Pass "5: pending event kept" }
    else { Fail "5: pending == '$($st5.pending_event_id)'" }
    if ([int]$st5.counters.tts_enqueue_failed -ge 1) { Pass "5: enqueue failure counted" }
    else { Fail "5: tts_enqueue_failed == 0" }
}
$cs5 = Join-Path $d5 "state\consumer_state.json"
if (Test-Path $cs5) {
    $c5 = Read-Json $cs5
    if ([int]$c5.processed_total -eq 0) { Pass "5: consumer_state.processed_total == 0" }
    else { Fail "5: processed_total == $($c5.processed_total)" }
} else { Pass "5: consumer_state.json not created" }

# ---------------------------------------------------------------- 6) regressions
Log ""
Log "=== case 6: time.query / volume / stop unchanged while device.status is ON ==="
$d6 = New-Case "case6_mixed" 1 1 "77" @(
    (New-Event 1 "e-t1" $TimeText "1969340"),
    (New-Event 2 "e-v1" $VolText "1969340"),
    (New-Event 3 "e-s1" $StopText "1969340")
)
$o6 = Run-Case $d6 (Join-Path $d6 "state") 6000
$st6 = Read-Status (Join-Path $d6 "state")
$q6 = Queue-Files $d6
if ($st6 -eq $null) { Fail "6: status missing" } else {
    if ([int]$st6.skill_dispatch.calls -eq 1) { Pass "6: only time.query ran (device not involved)" }
    else { Fail "6: skill calls == $($st6.skill_dispatch.calls)" }
    if ([int]$st6.route.volume -ge 1) { Pass "6: volume still factory" }
    else { Fail "6: route.volume == $($st6.route.volume)" }
    if ([int]$st6.route.stop -ge 1) { Pass "6: stop still factory" }
    else { Fail "6: route.stop == $($st6.route.stop)" }
    if ([int]$st6.route.native -ge 2) { Pass "6: two factory routes (volume+stop)" }
    else { Fail "6: route.native == $($st6.route.native)" }
}
if ($q6.Count -eq 1) { Pass "6: only the time answer went to TTS" }
else { Fail "6: queue items == $($q6.Count)" }
if ($q6.Count -eq 1 -and (Read-Json $q6[0].FullName).text -match '^now \d\d:\d\d$') {
    Pass "6: time.query message format unchanged"
} else { Fail "6: unexpected queue text" }

# ---------------------------------------------------------------- 7) unit contract
Log ""
Log "=== case 7: data-source contract (C unit test: legal / illegal / missing) ==="
$out7 = & $UnitExe 2>&1 | Out-String
$rc7 = $LASTEXITCODE
($out7.TrimEnd() -split "`r?`n") | ForEach-Object { Log ("  | " + $_) }
if ($rc7 -eq 0) { Pass "7: device.status unit test PASS (no fabricated values)" }
else { Fail "7: device.status unit test FAIL" }

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
