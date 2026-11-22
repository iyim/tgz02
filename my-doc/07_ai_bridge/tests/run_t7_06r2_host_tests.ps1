# run_t7_06r2_host_tests.ps1 -- T7-06-R2 dead letter JSON fix (host only: TDM-GCC + Python)
#
#   powershell -ExecutionPolicy Bypass -File run_t7_06r2_host_tests.ps1
#
# Coverage (host only: no device, no network, no api key):
#   1) unit test  : formatting / escaping / small buffer / append / half-line repair / -1 on failure
#   2) parser test: json.loads on every sample line (quotes, backslash, newline, control chars,
#                   non-ASCII, invalid UTF-8, structural injection) + the legacy line must FAIL
#   3) e2e A      : real ai_worker + Mock always failing -> one dead letter per event, offset advances
#   4) e2e B      : dead letter file unwritable (path occupied by a directory) -> offset NOT advanced
#
# Artifacts: tests/out/t7_06r2_*.exe, tests/out/e2e/, evidence/t7_06r2_host_test.log
# NOTE: keep this file ASCII-only. Windows PowerShell 5.1 reads a BOM-less file as ANSI and
#       multi-byte comment text can shift quote parsing (hit during T7-06-R2).
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here    = $PSScriptRoot                       # my-doc/07_ai_bridge/tests
$Root    = Split-Path $Here -Parent            # my-doc/07_ai_bridge
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
$LibSrc = @(
    "ai_worker.c", "deepseek_provider.c", "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "dead_letter.c",
    "echo_filter.c", "intent_route.c", "utterance_gate.c", "conv_session.c", "t7_dup.c"
) | ForEach-Object { Join-Path $Android $_ }

$script:Fail = 0
function Fail([string]$why) { $script:Fail++; Log "FAIL $why" }
function Pass([string]$why) { Log "PASS $why" }

function Build([string]$name, [string]$exe, [string[]]$sources) {
    $argv = $Base + @("-o", $exe) + $sources
    Log "=== build $name ==="
    $text = & $Gcc @argv 2>&1 | Out-String
    if ($text.Trim().Length -gt 0) { Log $text.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
    Log ("exit : " + $LASTEXITCODE)
    if ($LASTEXITCODE -ne 0) { Fail "build $name"; return $false }
    return $true
}

Log "# T7-06-R2 host test log (dead letter JSON)"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

# ---------- 1) unit test ----------
$UnitExe = Join-Path $Out "t7_06r2_dead_letter_unit_test.exe"
if (Build "t7_06r2_dead_letter_unit_test" $UnitExe @(
        (Join-Path $Here "t7_06r2_dead_letter_unit_test.c"),
        (Join-Path $Android "dead_letter.c"))) {
    Log "=== run t7_06r2_dead_letter_unit_test ==="
    $run = & $UnitExe $Out 2>&1 | Out-String
    ($run.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
    if ($run -notmatch 'pass=(\d+) fail=(\d+)') { Fail "unit test output unreadable" }
    elseif ([int]$Matches[2] -ne 0) { Fail "unit test: $($Matches[2]) failing assertion(s)" }
    else { Pass "unit test: $($Matches[1]) assertions" }
}

# ---------- 2) samples file (written by the unit test) ----------
$Samples = Join-Path $Out "t7_06r2_dead_letter_samples.jsonl"
if (-not (Test-Path $Samples)) { Fail "samples file missing (unit test did not write it)" }

# ---------- 3) e2e A: provider always fails -> dead letters, offset advances ----------
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

Log ""
Log "=== e2e A: provider always fails -> dead letter + offset advances ==="
$WorkerExe = Join-Path $Out "ai_worker.exe"
if (Build "ai_worker(host)" $WorkerExe $LibSrc) {
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
        if ([int]$st.offset -gt 0) { Pass "e2e A: durable offset advanced" }
        else { Fail "e2e A: offset did not advance" }
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

# ---------- 5) parser test (json.loads on every line) ----------
Log ""
Log "=== parser test (json.loads on every line) ==="
$pyArgs = @((Join-Path $Here "t7_06r2_dead_letter_json_test.py"), "--samples", $Samples)
$dlApath = Join-Path (Join-Path $E2e "a_state") "dead_letter.jsonl"
if (Test-Path $dlApath) { $pyArgs += @("--e2e", $dlApath) }
Push-Location $Here
$pyOut = & py -3 @pyArgs 2>&1 | Out-String
$pyRc = $LASTEXITCODE
Pop-Location
($pyOut.TrimEnd() -split "`r?`n" | Where-Object { $_ -match '^(FAIL|checks=|RESULT|PASS (regression|e2e))' }) |
    ForEach-Object { Log $_ }
if ($pyRc -ne 0) { Fail "parser test" } else { Pass "parser test" }

Log ""
if ($script:Fail -ne 0) {
    Log "# total fail=$($script:Fail)"
    Log "# result: FAIL"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    exit 1
}
Log "# result: OK (unit + parser + e2e A/B, Mock only, no device, no network)"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
exit 0



