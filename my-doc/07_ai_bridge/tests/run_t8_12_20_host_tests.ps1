# run_t8_12_20_host_tests.ps1 -- T8-12.20 exit intent host tests (+ full routing suite)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_12_20_host_tests.ps1
#
# Host only: TDM-GCC, no device, no network, no factory call.
# Builds:
#   t8_12_20_exit_route_unit_test   (new: exit intent + takeover decision + conf path)
#   t7_04_route_unit_test           (regression: base routing)
#   t7_05_route_negatives_unit_test (regression: negatives + bit coverage)
#   t8_02_nlu_takeover_unit_test    (regression: takeover capacity + concurrency)
# Artifact: evidence/t8_12_20_host_test.log
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

$Log = Join-Path $Ev "t8_12_20_host_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$Fail = 0
$TotalPass = 0

Log "# T8-12.20 exit intent host test log"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

function Build-And-Run([string]$Name, [string]$TestSrc, [string[]]$Libs, [string[]]$Extra = @()) {
    $exe = Join-Path $Out ("$Name.exe")
    $argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99") + $Extra + @("-I", $Android, "-o", $exe, (Join-Path $Here $TestSrc)) + $Libs
    Log "=== build $Name ==="
    Log ("cc   : " + $Gcc + " " + ($argv -join " "))
    $cc = & $Gcc @argv 2>&1 | Out-String
    if ($cc.Trim().Length -gt 0) { Log $cc.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
    if ($LASTEXITCODE -ne 0) {
        Log "build FAILED: $Name"
        $script:Fail++
        return
    }
    Log "=== run $Name ==="
    Push-Location $Out
    $run = & $exe 2>&1 | Out-String
    $rc = $LASTEXITCODE
    Pop-Location
    ($run.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
    if ($run -match 'pass=(\d+) fail=(\d+)') {
        $script:TotalPass += [int]$Matches[1]
        $script:Fail += [int]$Matches[2]
    } elseif ($rc -ne 0) {
        $script:Fail++
    }
    Log ""
}

$RouteLibs = @(
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c")
)

Build-And-Run "t8_12_20_exit_route_unit_test" "t8_12_20_exit_route_unit_test.c" @(
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c"),
    (Join-Path $Android "nlu_takeover.c"),
    (Join-Path $Android "worker_conf.c"),
    (Join-Path $Android "worker_util.c"),
    (Join-Path $Android "dead_letter.c"),
    (Join-Path $Android "worker_status.c"),
    (Join-Path $Android "seq_gap.c"),
    (Join-Path $Android "event_reader.c"),
    (Join-Path $Android "consumer_state.c"),
    (Join-Path $Android "conv_context.c"),
    (Join-Path $Android "deepseek_provider.c"),
    (Join-Path $Android "provider.c"),
    (Join-Path $Android "mock_provider.c"),
    (Join-Path $Android "skill_dispatch.c")
) @("-pthread")

Build-And-Run "t7_04_route_unit_test" "t7_04_route_unit_test.c" $RouteLibs
Build-And-Run "t7_05_route_negatives_unit_test" "t7_05_route_negatives_unit_test.c" $RouteLibs

# t8_02 regression (same sources as run_t8_02_host_tests.ps1)
Build-And-Run "t8_02_nlu_takeover_unit_test" "t8_02_nlu_takeover_unit_test.c" @(
    (Join-Path $Android "nlu_takeover.c"),
    (Join-Path $Android "skill_dispatch.c"),
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c")
) @("-pthread")

Log "# total: pass=$TotalPass fail=$Fail"
if ($Fail -ne 0) {
    Log "# result: FAIL"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    exit 1
}
Log "# result: OK"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
exit 0
