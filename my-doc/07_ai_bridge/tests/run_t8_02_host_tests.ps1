# run_t8_02_host_tests.ps1 -- T8-02 host tests: takeover capacity + concurrency (+ T8-01 assertions)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_02_host_tests.ps1
#
# Host only: TDM-GCC (pthread), no device, no network, no factory call.
# Sections in the test binary:
#   A/A2 takeover decision (the four real device utterances, incomplete, disabled)
#   B    drop semantics (mark / idempotent / unknown / TTL / session end / reuse / duplicate final)
#   C    skill dispatch (mapping, volume example, argument rejection, NOIMPL, time)
#   D    end-to-end onStream -> onNlpResult (local runs factory, AI skips it)
#   E    capacity exhaustion (no silent eviction, overflow counter, fail-closed window, reclaim)
#   F    concurrency (mixed ops, duplicate registration, TTL reclaim, mutex lifecycle)
# Artifact: tests/out/t8_02_nlu_takeover_unit_test.exe, evidence/t8_02_host_test.log
# NOTE: keep this file ASCII-only (PowerShell 5.1 reads a BOM-less file as ANSI).
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null

$Log = Join-Path $Ev "t8_02_host_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$Exe = Join-Path $Out "t8_02_nlu_takeover_unit_test.exe"
$Src = @(
    (Join-Path $Here "t8_02_nlu_takeover_unit_test.c"),
    (Join-Path $Android "nlu_takeover.c"),
    (Join-Path $Android "skill_dispatch.c"),
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c")
)
$Argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-pthread", "-I", $Android, "-o", $Exe) + $Src

Log "# T8-02 host test log (takeover capacity + concurrency)"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""
Log "=== build t8_02_nlu_takeover_unit_test ==="
Log ("gcc " + ($Argv -join " "))
$build = & $Gcc @Argv 2>&1 | Out-String
if ($build.Trim().Length -gt 0) { Log $build.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
Log ("exit : " + $LASTEXITCODE)
if ($LASTEXITCODE -ne 0) {
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    throw "build failed"
}

Log ""
Log "=== run t8_02_nlu_takeover_unit_test ==="
$run = & $Exe 2>&1 | Out-String
($run.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
$rc = $LASTEXITCODE
Log ("exit : " + $rc)

Log ""
if ($run -notmatch 'pass=(\d+) fail=(\d+)') {
    Log "# result: FAIL (unreadable summary)"
} elseif ($rc -ne 0 -or [int]$Matches[2] -ne 0) {
    Log ("# result: FAIL (" + $Matches[2] + " failing assertion(s))")
} else {
    Log ("# result: OK (" + $Matches[1] + " assertions, 0 warning, 0 error)")
}
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ""
Write-Host ("log : {0}" -f $Log)
if ($rc -ne 0) { exit 1 }
exit 0
