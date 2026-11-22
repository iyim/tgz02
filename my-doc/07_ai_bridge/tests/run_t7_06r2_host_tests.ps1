# run_t7_06r2_host_tests.ps1 -- dead letter JSON + persistence suite (T7-06-R2 + T7-08)
#
#   powershell -ExecutionPolicy Bypass -File run_t7_06r2_host_tests.ps1
#
# Host only: no device, no network, no api key. TDM-GCC + Python 3.
#
# Coverage:
#   1) unit test  : formatting / escaping / small buffer / append / tail repair (incl. >4KB) /
#                   wall-clock ts / short write / write failure / fsync failure / close failure /
#                   lock failure (fault injection via -DT6B_DL_TESTING)
#   2) parser test: json.loads on every sample line + concurrency (6 writers x 100 records)
#   3) e2e A      : real ai_worker + Mock always failing -> dead letters, offset advances, ts is wall clock
#   4) e2e B      : dead letter file unwritable -> offset NOT advanced, event stays pending
#   5) source     : ai_worker uses wu_wall_ms (not wu_now_ms) for the dead letter timestamp;
#                   every build/test script that lists ai_worker.c also lists dead_letter.c
#
# Artifacts: tests/out/*.exe, tests/out/e2e/, evidence/t7_06r2_host_test.log
# NOTE: keep this file ASCII-only (Windows PowerShell 5.1 reads a BOM-less file as ANSI and
#       multi-byte comment text can shift quote parsing).
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here    = $PSScriptRoot
$Root    = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev      = Join-Path $Root "evidence"
$Out     = Join-Path $Here "out"
$E2e     = Join-Path $Out "e2e"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null
Remove-Item -Recurse -Force $E2e -ErrorAction SilentlyContinue
New-Item -ItemType Directory -Force $E2e | Out-Null

$Log = Join-Path $Ev "t7_06r2_host_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)
$WorkerSrc = @(
    "ai_worker.c", "deepseek_provider.c", "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "dead_letter.c",
    "echo_filter.c", "intent_route.c", "utterance_gate.c", "conv_session.c", "t7_dup.c"
) | ForEach-Object { Join-Path $Android $_ }

$script:Fail = 0
function Fail([string]$why) { $script:Fail++; Log "FAIL $why" }
function Pass([string]$why) { Log "PASS $why" }

function Build([string]$name, [string]$exe, [string[]]$sources, [string[]]$extra) {
    $argv = $Base + $extra + @("-o", $exe) + $sources
    Log "=== build $name ==="
    $text = & $Gcc @argv 2>&1 | Out-String
    if ($text.Trim().Length -gt 0) { Log $text.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
    Log ("exit : " + $LASTEXITCODE)
    if ($LASTEXITCODE -ne 0) { Fail "build $name"; return $false }
    return $true
}

Log "# T7-06-R2 / T7-08 host test log (dead letter JSON + persistence)"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

# ---------- 1) unit test (with fault injection compiled in) ----------
$UnitExe = Join-Path $Out "t7_06r2_dead_letter_unit_test.exe"
if (Build "t7_06r2_dead_letter_unit_test" $UnitExe @(
        (Join-Path $Here "t7_06r2_dead_letter_unit_test.c"),
        (Join-Path $Android "dead_letter.c"),
        (Join-Path $Android "worker_util.c")) @("-DT6B_DL_TESTING")) {
    Log "=== run t7_06r2_dead_letter_unit_test ==="
    $run = & $UnitExe $Out 2>&1 | Out-String
    ($run.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
    if ($run -notmatch 'pass=(\d+) fail=(\d+)') { Fail "unit test output unreadable" }
    elseif ([int]$Matches[2] -ne 0) { Fail "unit test: $($Matches[2]) failing assertion(s)" }
    else { Pass "unit test: $($Matches[1]) assertions" }
}

$Samples = Join-Path $Out "t7_06r2_dead_letter_samples.jsonl"
if (-not (Test-Path $Samples)) { Fail "samples file missing (unit test did not write it)" }

# ---------- 2) e2e fixtures ----------
function New-Event([int]$seq, [string]$eid, [string]$text) {
    $o = [ordered]@{
        version = 1; rec = "asr_final"; event_id = $eid; event_type = "asr_final"
        pid = 4242; session_id = "1000"; text = $text
        text_bytes = [Text.Encoding]::UTF8.GetByteCount($text); text_chars = $text.Length
        is_final = $true; received_at_ms = 1000 + $seq; recv_at_ms = 2000 + $seq
        stored_at_ms = 3000 + $seq; seq = $seq
    }
    return ($o | ConvertTo-Json -Compress -Depth 4)
}

$WorkerExe = Join-Path $Out "ai_worker.exe"
$workerBuilt = Build "ai_worker(host)" $WorkerExe $WorkerSrc @()

# ---------- 3) e2e A: provider always fails -> dead letters, offset advances ----------
Log ""
Log "=== e2e A: provider always fails -> dead letter + offset advances ==="
if ($workerBuilt) {
    $wa = Join-Path $E2e "a_work"; $sa = Join-Path $E2e "a_state"
    New-Item -ItemType Directory -Force $wa | Out-Null
    $evLines = @(
        (New-Event 1 "e-a1" "first"),
        (New-Event 2 "e-a2" "second"),
        (New-Event 3 "e-a3" "third")
    )
    [IO.File]::WriteAllLines((Join-Path $wa "events.jsonl"), $evLines, (New-Object Text.UTF8Encoding($false)))

    $wargs = @("--work-dir", $wa, "--state-dir", $sa, "--provider", "mock",
               "--mock-fail-from", "1", "--provider-retry-max", "1",
               "--provider-backoff-ms", "1", "--provider-backoff-max-ms", "5",
               "--state-sync-every", "1", "--poll-ms", "10", "--status-every-ms", "100",
               "--max-runtime-ms", "6000")
    Log ("run  : " + $WorkerExe + " " + ($wargs -join " "))
    $outA = & $WorkerExe @wargs 2>&1 | Out-String
    Log ("exit : " + $LASTEXITCODE)
    ($outA.TrimEnd() -split "`r?`n" | Select-Object -Last 10) | ForEach-Object { Log $_ }

    $dlA = Join-Path $sa "dead_letter.jsonl"
    if (-not (Test-Path $dlA)) { Fail "e2e A: dead_letter.jsonl not created" }
    else {
        $dlLines = @(Get-Content $dlA | Where-Object { $_.Trim().Length -gt 0 })
        if ($dlLines.Count -eq 3) { Pass "e2e A: 3 dead letters (one per event)" }
        else { Fail "e2e A: expected 3 dead letters, got $($dlLines.Count)" }
        $st = Get-Content (Join-Path $sa "ai_worker_status.json") -Raw | ConvertFrom-Json
        if ([int]$st.counters.dead_letters -eq 3) { Pass "e2e A: status counters.dead_letters == 3" }
        else { Fail "e2e A: status counters.dead_letters == $($st.counters.dead_letters)" }
        if ([int]$st.counters.events_processed -ge 3) { Pass "e2e A: pipeline continued (events_processed >= 3)" }
        else { Fail "e2e A: events_processed == $($st.counters.events_processed)" }
        $csA = Get-Content (Join-Path $sa "consumer_state.json") -Raw | ConvertFrom-Json
        if ([int]$csA.processed_total -eq 3) { Pass "e2e A: consumer_state.processed_total == 3" }
        else { Fail "e2e A: processed_total == $($csA.processed_total)" }
        if ($csA.last_event_id -eq "e-a3") { Pass "e2e A: last_event_id == e-a3" }
        else { Fail "e2e A: last_event_id == '$($csA.last_event_id)'" }
    }

    # ---------- 4) e2e B: dead letter unwritable -> offset must NOT advance ----------
    Log ""
    Log "=== e2e B: dead letter file unwritable -> offset must NOT advance ==="
    $wb = Join-Path $E2e "b_work"; $sb = Join-Path $E2e "b_state"
    New-Item -ItemType Directory -Force $wb | Out-Null
    New-Item -ItemType Directory -Force $sb | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $sb "dead_letter.jsonl") | Out-Null
    [IO.File]::WriteAllLines((Join-Path $wb "events.jsonl"),
        @((New-Event 1 "e-b1" "unwritable")), (New-Object Text.UTF8Encoding($false)))

    $wargsB = @("--work-dir", $wb, "--state-dir", $sb, "--provider", "mock",
                "--mock-fail-from", "1", "--provider-retry-max", "1",
                "--provider-backoff-ms", "1", "--provider-backoff-max-ms", "5",
                "--state-sync-every", "1", "--poll-ms", "10", "--status-every-ms", "100",
                "--max-runtime-ms", "2000")
    Log ("run  : " + $WorkerExe + " " + ($wargsB -join " "))
    $outB = & $WorkerExe @wargsB 2>&1 | Out-String
    Log ("exit : " + $LASTEXITCODE)
    ($outB.TrimEnd() -split "`r?`n" | Select-Object -Last 8) | ForEach-Object { Log $_ }

    $stB = Get-Content (Join-Path $sb "ai_worker_status.json") -Raw | ConvertFrom-Json
    if ($stB.pending_event_id -eq "e-b1") { Pass "e2e B: event stays pending (offset not advanced)" }
    else { Fail "e2e B: pending_event_id == '$($stB.pending_event_id)'" }
    if ([int]$stB.counters.events_processed -eq 0) { Pass "e2e B: events_processed == 0" }
    else { Fail "e2e B: events_processed == $($stB.counters.events_processed)" }
    $csB = Get-Content (Join-Path $sb "consumer_state.json") -Raw | ConvertFrom-Json
    if ([int]$csB.processed_total -eq 0) { Pass "e2e B: consumer_state.processed_total == 0 (no commit)" }
    else { Fail "e2e B: processed_total == $($csB.processed_total)" }
    if ($csB.last_event_id -eq "") { Pass "e2e B: no last_event_id recorded (nothing committed)" }
    else { Fail "e2e B: last_event_id == '$($csB.last_event_id)'" }
    if ([int]$stB.counters.provider_retries -gt 0) { Pass "e2e B: provider kept retrying instead of skipping" }
    else { Fail "e2e B: provider_retries == $($stB.counters.provider_retries)" }
}

# ---------- 4b) e2e C/D: rollback failure -> latched fault, never retried (T7-09) ----------
Log ""
Log "=== e2e C/D: dead-letter rollback failure latches a persistent fault ==="
$FaultExe = Join-Path $Out "ai_worker.faultmodel.exe"
$faultBuilt = Build "ai_worker(fault model)" $FaultExe $WorkerSrc @("-DT6B_DL_TESTING", "-DT6B_DL_TEST_ENV")
if ($faultBuilt) {
    $wc = Join-Path $E2e "c_work"; $sc = Join-Path $E2e "c_state"
    New-Item -ItemType Directory -Force $wc | Out-Null
    New-Item -ItemType Directory -Force $sc | Out-Null
    # seed one valid record: proves the uncertain path never duplicates it (1 -> 2, never 3)
    $seedLine = '{"ts":1700000000000,"event_id":"seed-g1","seq":1,"attempts":1,"error_class":"http_503","error_bytes":3,"invalid_utf8":0}'
    [IO.File]::WriteAllText((Join-Path $sc "dead_letter.jsonl"), $seedLine + "`n", (New-Object Text.UTF8Encoding($false)))
    [IO.File]::WriteAllLines((Join-Path $wc "events.jsonl"),
        @((New-Event 1 "e-c1" "rollback")), (New-Object Text.UTF8Encoding($false)))

    $wargsC = @("--work-dir", $wc, "--state-dir", $sc, "--provider", "mock",
                "--mock-fail-from", "1", "--provider-retry-max", "1",
                "--provider-backoff-ms", "1", "--provider-backoff-max-ms", "5",
                "--state-sync-every", "1", "--poll-ms", "10", "--status-every-ms", "100",
                "--max-runtime-ms", "3000")
    $env:T6B_DL_TEST_FAULT = "fsync_fail"
    $env:T6B_DL_TEST_FAULT2 = "trunc_fail"
    Log ("run  : " + $FaultExe + " " + ($wargsC -join " ") + "  [T6B_DL_TEST_FAULT=fsync_fail FAULT2=trunc_fail]")
    $outC = & $FaultExe @wargsC 2>&1 | Out-String
    Log ("exit : " + $LASTEXITCODE)
    ($outC.TrimEnd() -split "`r?`n" | Select-Object -Last 12) | ForEach-Object { Log $_ }
    Remove-Item Env:\T6B_DL_TEST_FAULT -ErrorAction SilentlyContinue
    Remove-Item Env:\T6B_DL_TEST_FAULT2 -ErrorAction SilentlyContinue

    $stC = Get-Content (Join-Path $sc "ai_worker_status.json") -Raw | ConvertFrom-Json
    # the last published status is "stopped" (process exited by max-runtime); the latch itself
    # is proven by dead_letter.failed=1 plus the log line checked below
    if ($stC.state -eq "dead_letter_failed" -or $stC.state -eq "stopped") {
        Pass ("e2e C: state == " + $stC.state + " (latch judged by dead_letter.failed)")
    } else { Fail "e2e C: state == '$($stC.state)'" }
    if ([int]$stC.dead_letter.failed -eq 1) { Pass "e2e C: status.dead_letter.failed == 1" }
    else { Fail "e2e C: status.dead_letter.failed == $($stC.dead_letter.failed)" }
    if ($stC.dead_letter.event_id -eq "e-c1") { Pass "e2e C: fault event_id recorded" }
    else { Fail "e2e C: fault event_id == '$($stC.dead_letter.event_id)'" }
    if ([int]$stC.dead_letter.io_stage -eq 2) { Pass "e2e C: io_stage == FSYNC(2)" }
    else { Fail "e2e C: io_stage == $($stC.dead_letter.io_stage)" }
    if ([int]$stC.dead_letter.rollback_stage -eq 4) { Pass "e2e C: rollback_stage == TRUNC(4)" }
    else { Fail "e2e C: rollback_stage == $($stC.dead_letter.rollback_stage)" }
    if ([int]$stC.dead_letter.pre_len -gt 0) { Pass "e2e C: pre_len recorded" }
    else { Fail "e2e C: pre_len == $($stC.dead_letter.pre_len)" }
    if ([int]$stC.counters.dead_letters -eq 0) { Pass "e2e C: no dead letter was counted as skipped" }
    else { Fail "e2e C: counters.dead_letters == $($stC.counters.dead_letters)" }
    if ([int]$stC.counters.events_processed -eq 0) { Pass "e2e C: events_processed == 0" }
    else { Fail "e2e C: events_processed == $($stC.counters.events_processed)" }
    $csC = Get-Content (Join-Path $sc "consumer_state.json") -Raw | ConvertFrom-Json
    if ([int]$csC.processed_total -eq 0 -and $csC.last_event_id -eq "") {
        Pass "e2e C: offset not advanced (processed_total=0, no last_event_id)"
    } else { Fail "e2e C: consumer_state shows progress ($($csC.processed_total)/'$($csC.last_event_id)')" }
    if ($stC.pending_event_id -eq "e-c1") { Pass "e2e C: event stays pending" }
    else { Fail "e2e C: pending_event_id == '$($stC.pending_event_id)'" }

    $marker = Join-Path $sc "dead_letter.fault.json"
    if (Test-Path $marker) { Pass "e2e C: fault marker written" } else { Fail "e2e C: fault marker missing" }
    if ([int]$stC.dead_letter.marker_state -eq 1) { Pass "e2e C: status marker_state == WRITTEN(1) (cross-restart protection armed)" }
    else { Fail "e2e C: status marker_state == $($stC.dead_letter.marker_state)" }
    $dlC = @(Get-Content (Join-Path $sc "dead_letter.jsonl") | Where-Object { $_.Trim().Length -gt 0 })
    if ($dlC.Count -eq 2) { Pass "e2e C: exactly 2 records (seed + one unrolled-back write, no duplicate)" }
    else { Fail "e2e C: expected 2 records, got $($dlC.Count)" }
    if ($outC -match 'ROLLBACK FAILED') { Pass "e2e C: log carries the full rollback-failure site" }
    else { Fail "e2e C: no ROLLBACK FAILED line in the worker output" }
    if ($outC -match 'persistent fault \(dead_letter_failed\) latched') {
        Pass "e2e C: worker latched the persistent fault state"
    } else { Fail "e2e C: worker did not latch the fault state" }
    # D) restart with the marker present must refuse to append again (no duplicate across restarts)
    #    NOTE: the reader resumes at the committed offset, which by design can be past a pending
    #    event (pre-existing semantics, unchanged here). To exercise the marker we reset the
    #    consumer state, i.e. the situation where the same event is read again.
    Log "=== e2e D: restart with the marker present must refuse to append again ==="
    Remove-Item (Join-Path $sc "consumer_state.json") -ErrorAction SilentlyContinue
    $env:T6B_DL_TEST_FAULT = "fsync_fail"
    $env:T6B_DL_TEST_FAULT2 = "trunc_fail"
    $outD = & $FaultExe @wargsC 2>&1 | Out-String
    Log ("exit : " + $LASTEXITCODE)
    ($outD.TrimEnd() -split "`r?`n" | Select-Object -Last 8) | ForEach-Object { Log $_ }
    Remove-Item Env:\T6B_DL_TEST_FAULT -ErrorAction SilentlyContinue
    Remove-Item Env:\T6B_DL_TEST_FAULT2 -ErrorAction SilentlyContinue
    $dlD = @(Get-Content (Join-Path $sc "dead_letter.jsonl") | Where-Object { $_.Trim().Length -gt 0 })
    if ($dlD.Count -eq 2) { Pass "e2e D: still 2 records after restart (no duplicate append)" }
    else { Fail "e2e D: record count changed to $($dlD.Count)" }
    if ($outD -match 'refusing to append') { Pass "e2e D: restart refused to append (marker honoured)" }
    else { Fail "e2e D: restart did not report the refusal" }
}

# ---------- 4c) T7-10: fault marker reliability (write / read / normal) ----------
Log ""
Log "=== e2e marker-reliability: marker write failure, marker read failure, marker present ==="
$mk = Join-Path $E2e "mk"
Remove-Item -Recurse -Force $mk -ErrorAction SilentlyContinue
foreach ($d in @("probe_absent", "probe_match", "probe_foreign", "probe_unreadable",
                 "probe_empty", "probe_garbage", "write_ok", "write_fail_open",
                 "write_fail_rename")) {
    New-Item -ItemType Directory -Force (Join-Path $mk $d) | Out-Null
}
$u8 = New-Object Text.UTF8Encoding($false)
[IO.File]::WriteAllText((Join-Path $mk "probe_match\dead_letter.fault.json"),
    '{"ts":1,"event_id":"e-mk","seq":7}' + "`n", $u8)
[IO.File]::WriteAllText((Join-Path $mk "probe_foreign\dead_letter.fault.json"),
    '{"ts":1,"event_id":"other-9","seq":3}' + "`n", $u8)
[IO.File]::WriteAllText((Join-Path $mk "probe_empty\dead_letter.fault.json"), "", $u8)
[IO.File]::WriteAllText((Join-Path $mk "probe_garbage\dead_letter.fault.json"),
    "hello, not a marker" + "`n", $u8)
# pathological fixtures (no code needed): the marker path is a directory -> cannot be read;
# the .tmp path is a directory -> cannot be opened. Exactly what an unhealthy filesystem does.
New-Item -ItemType Directory -Force (Join-Path $mk "probe_unreadable\dead_letter.fault.json") | Out-Null
New-Item -ItemType Directory -Force (Join-Path $mk "write_fail_open\dead_letter.fault.json.tmp") | Out-Null
New-Item -ItemType Directory -Force (Join-Path $mk "write_fail_rename\dead_letter.fault.json") | Out-Null

if ($faultBuilt) {
    Log ("run  : " + $FaultExe + " --marker-selftest " + $mk)
    $selOut = & $FaultExe --marker-selftest $mk 2>&1 | Out-String
    $selRc = $LASTEXITCODE
    Log ("exit : " + $selRc)
    ($selOut.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
    if ($selRc -eq 0) { Pass "marker selftest: exit 0 (write / read / normal all as specified)" }
    else { Fail "marker selftest: exit $selRc" }
    if ($selOut -match 'pass=(\d+) fail=0') { Pass ("marker selftest: " + $Matches[1] + " assertions, 0 failing") }
    else { Fail "marker selftest: failing assertions" }

    # E) rollback failure AND the marker cannot be written -> latch stays, protection reported as ABSENT
    $we = Join-Path $E2e "e_work"; $se = Join-Path $E2e "e_state"
    New-Item -ItemType Directory -Force $we | Out-Null
    New-Item -ItemType Directory -Force $se | Out-Null
    [IO.File]::WriteAllText((Join-Path $se "dead_letter.jsonl"), $seedLine + "`n", $u8)
    New-Item -ItemType Directory -Force (Join-Path $se "dead_letter.fault.json.tmp") | Out-Null
    [IO.File]::WriteAllLines((Join-Path $we "events.jsonl"), @((New-Event 1 "e-e1" "rollback")), $u8)
    $wargsE = @("--work-dir", $we, "--state-dir", $se, "--provider", "mock",
                "--mock-fail-from", "1", "--provider-retry-max", "1",
                "--provider-backoff-ms", "1", "--provider-backoff-max-ms", "5",
                "--state-sync-every", "1", "--poll-ms", "10", "--status-every-ms", "100",
                "--max-runtime-ms", "3000")
    $env:T6B_DL_TEST_FAULT = "fsync_fail"
    $env:T6B_DL_TEST_FAULT2 = "trunc_fail"
    Log ("run  : " + $FaultExe + " " + ($wargsE -join " ") + "  [marker .tmp path is a directory]")
    $outE = & $FaultExe @wargsE 2>&1 | Out-String
    Log ("exit : " + $LASTEXITCODE)
    ($outE.TrimEnd() -split "`r?`n" | Select-Object -Last 12) | ForEach-Object { Log $_ }
    Remove-Item Env:\T6B_DL_TEST_FAULT -ErrorAction SilentlyContinue
    Remove-Item Env:\T6B_DL_TEST_FAULT2 -ErrorAction SilentlyContinue
    $stE = Get-Content (Join-Path $se "ai_worker_status.json") -Raw | ConvertFrom-Json
    if ([int]$stE.dead_letter.failed -eq 1) { Pass "e2e E: status.dead_letter.failed == 1" }
    else { Fail "e2e E: status.dead_letter.failed == $($stE.dead_letter.failed)" }
    if ([int]$stE.dead_letter.marker_state -eq 2) { Pass "e2e E: marker_state == WRITE_FAILED(2) (protection not established)" }
    else { Fail "e2e E: marker_state == $($stE.dead_letter.marker_state)" }
    if ([int]$stE.dead_letter.marker_stage -eq 1) { Pass "e2e E: marker_stage == OPEN(1)" }
    else { Fail "e2e E: marker_stage == $($stE.dead_letter.marker_stage)" }
    if ([int]$stE.counters.dead_letters -eq 0) { Pass "e2e E: no dead letter counted as skipped" }
    else { Fail "e2e E: counters.dead_letters == $($stE.counters.dead_letters)" }
    $csE = Get-Content (Join-Path $se "consumer_state.json") -Raw | ConvertFrom-Json
    if ([int]$csE.processed_total -eq 0 -and $csE.last_event_id -eq "") {
        Pass "e2e E: offset not advanced"
    } else { Fail "e2e E: consumer_state shows progress ($($csE.processed_total)/'$($csE.last_event_id)')" }
    if ($stE.pending_event_id -eq "e-e1") { Pass "e2e E: event stays pending" }
    else { Fail "e2e E: pending_event_id == '$($stE.pending_event_id)'" }
    $dlE = @(Get-Content (Join-Path $se "dead_letter.jsonl") | Where-Object { $_.Trim().Length -gt 0 })
    if ($dlE.Count -eq 2) { Pass "e2e E: still 2 records (no extra append after the marker failed)" }
    else { Fail "e2e E: expected 2 records, got $($dlE.Count)" }
    if ($outE -match 'FAULT MARKER WRITE FAILED') { Pass "e2e E: log reports the marker write failure" }
    else { Fail "e2e E: no FAULT MARKER WRITE FAILED line" }
    if ($outE -match 'cross-restart protection NOT established') {
        Pass "e2e E: log states the cross-restart protection was not established"
    } else { Fail "e2e E: protection status not reported" }
    if ($outE -match 'persistent fault \(dead_letter_failed\) latched') {
        Pass "e2e E: worker still latched the persistent fault"
    } else { Fail "e2e E: worker did not latch" }
    if (Test-Path (Join-Path $se "dead_letter.fault.json")) {
        Fail "e2e E: a fake marker file appeared although the write failed"
    } else { Pass "e2e E: no fake marker file (the failure is not disguised as success)" }

    # F) marker exists but cannot be read -> refuse to append at all, never treat it as "no marker"
    $wf = Join-Path $E2e "f_work"; $sf = Join-Path $E2e "f_state"
    New-Item -ItemType Directory -Force $wf | Out-Null
    New-Item -ItemType Directory -Force $sf | Out-Null
    [IO.File]::WriteAllText((Join-Path $sf "dead_letter.jsonl"), $seedLine + "`n", $u8)
    New-Item -ItemType Directory -Force (Join-Path $sf "dead_letter.fault.json") | Out-Null
    [IO.File]::WriteAllLines((Join-Path $wf "events.jsonl"), @((New-Event 1 "e-f1" "tell me a joke")), $u8)
    $wargsF = @("--work-dir", $wf, "--state-dir", $sf, "--provider", "mock",
                "--mock-fail-from", "1", "--provider-retry-max", "1",
                "--provider-backoff-ms", "1", "--provider-backoff-max-ms", "5",
                "--state-sync-every", "1", "--poll-ms", "10", "--status-every-ms", "100",
                "--max-runtime-ms", "3000")
    Log ("run  : " + $FaultExe + " " + ($wargsF -join " ") + "  [marker path is a directory]")
    $outF = & $FaultExe @wargsF 2>&1 | Out-String
    Log ("exit : " + $LASTEXITCODE)
    ($outF.TrimEnd() -split "`r?`n" | Select-Object -Last 10) | ForEach-Object { Log $_ }
    $stF = Get-Content (Join-Path $sf "ai_worker_status.json") -Raw | ConvertFrom-Json
    if ([int]$stF.dead_letter.failed -eq 1) { Pass "e2e F: status.dead_letter.failed == 1" }
    else { Fail "e2e F: status.dead_letter.failed == $($stF.dead_letter.failed)" }
    if ([int]$stF.dead_letter.marker_state -eq 3) { Pass "e2e F: marker_state == UNREADABLE(3)" }
    else { Fail "e2e F: marker_state == $($stF.dead_letter.marker_state)" }
    if ([int]$stF.counters.dead_letters -eq 0) { Pass "e2e F: nothing was appended or skipped" }
    else { Fail "e2e F: counters.dead_letters == $($stF.counters.dead_letters)" }
    $dlF = @(Get-Content (Join-Path $sf "dead_letter.jsonl") | Where-Object { $_.Trim().Length -gt 0 })
    if ($dlF.Count -eq 1) { Pass "e2e F: dead_letter.jsonl unchanged (1 seed record, no append)" }
    else { Fail "e2e F: expected 1 record, got $($dlF.Count)" }
    $csF = Get-Content (Join-Path $sf "consumer_state.json") -Raw | ConvertFrom-Json
    if ([int]$csF.processed_total -eq 0 -and $csF.last_event_id -eq "") {
        Pass "e2e F: offset not advanced"
    } else { Fail "e2e F: consumer_state shows progress ($($csF.processed_total)/'$($csF.last_event_id)')" }
    if ($stF.pending_event_id -eq "e-f1") { Pass "e2e F: event stays pending" }
    else { Fail "e2e F: pending_event_id == '$($stF.pending_event_id)'" }
    if ($outF -match 'CANNOT BE CONFIRMED') { Pass "e2e F: log says the marker cannot be confirmed" }
    else { Fail "e2e F: no CANNOT BE CONFIRMED line" }
    if ($outF -match 'append refused') { Pass "e2e F: append was refused" }
    else { Fail "e2e F: append refusal not reported" }
}

# ---------- 5) parser test (json.loads) + concurrency ----------
Log ""
Log "=== parser test (json.loads on every line + 6x100 concurrent appends) ==="
$pyArgs = @((Join-Path $Here "t7_06r2_dead_letter_json_test.py"), "--samples", $Samples,
            "--unit", $UnitExe, "--concurrency", "6x100")
$dlApath = Join-Path (Join-Path $E2e "a_state") "dead_letter.jsonl"
if (Test-Path $dlApath) { $pyArgs += @("--e2e", $dlApath) }
Push-Location $Here
$pyOut = & py -3 @pyArgs 2>&1 | Out-String
$pyRc = $LASTEXITCODE
Pop-Location
($pyOut.TrimEnd() -split "`r?`n" | Where-Object { $_ -match '^(FAIL|checks=|RESULT|PASS (regression|e2e|concurrency|samples/wallclock))' }) |
    ForEach-Object { Log $_ }
if ($pyRc -ne 0) { Fail "parser test" } else { Pass "parser test" }

# ---------- 6) source-level assertions (A1 + build script coverage) ----------
Log ""
Log "=== source assertions ==="
$workerSrcText = Get-Content (Join-Path $Android "ai_worker.c") -Raw
if ($workerSrcText -match 'rec\.ts_ms = wu_wall_ms\(\);') { Pass "A1: ai_worker.c sets rec.ts_ms from wu_wall_ms()" }
else { Fail "A1: ai_worker.c does not use wu_wall_ms() for rec.ts_ms" }
if ($workerSrcText -match 'rec\.ts_ms = wu_now_ms\(\);') { Fail "A1: ai_worker.c still uses the monotonic clock for rec.ts_ms" }
else { Pass "A1: no monotonic clock left on the dead letter timestamp path" }

$scriptFiles = @(
    (Join-Path $Android "build.ps1"),
    (Join-Path $Android "build_t7_05.ps1"),
    (Join-Path $Android "build_t7_08_arm.ps1"),
    (Join-Path $Here "run_host_tests.ps1"),
    (Join-Path $Here "run_t7_06r2_host_tests.ps1")
)
foreach ($f in $scriptFiles) {
    if (-not (Test-Path $f)) { Fail ("build script missing: " + $f); continue }
    $t = Get-Content $f -Raw
    if ($t -notmatch 'ai_worker\.c') { continue }
    if ($t -match 'dead_letter\.c') { Pass ("dead_letter.c listed in " + (Split-Path $f -Leaf)) }
    else { Fail ("dead_letter.c missing from " + (Split-Path $f -Leaf)) }
}

Log ""
if ($script:Fail -ne 0) {
    Log "# total fail=$($script:Fail)"
    Log "# result: FAIL"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    exit 1
}
Log "# result: OK (unit + parser + concurrency + e2e A/B + source assertions, Mock only)"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
exit 0
