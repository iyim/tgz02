# run_host_tests.ps1 -- build + run the T5-06B host test suite (Windows + TDM-GCC + Python)
#
#   powershell -ExecutionPolicy Bypass -File run_host_tests.ps1
#
# Steps:
#   1) build the host worker binary          android/out/ai_worker.exe
#   2) build the unit test                   tests/out/worker_unit_test.exe
#   3) run the unit test                     evidence/host_unit_test.log
#   4) run the integration test (real procs) evidence/host_integration_test.log
#
# Everything here is host-only and Mock-only: no device, no Frida, no network, no API key.
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here   = $PSScriptRoot                       # my-doc/07_ai_bridge/tests
$Root   = Split-Path $Here -Parent            # my-doc/07_ai_bridge
$Android= Join-Path $Root "android"
$Ev     = Join-Path $Root "evidence"
$Out    = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null
New-Item -ItemType Directory -Force (Join-Path $Android "out") | Out-Null

$LibSrc = @(
    "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c"
) | ForEach-Object { Join-Path $Android $_ }
$WorkerSrc = @((Join-Path $Android "ai_worker.c")) + $LibSrc

$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)

function Build([string]$name, [string]$exe, [string[]]$sources) {
    $argv = $Base + @("-o", $exe) + $sources
    Write-Host ("cc  : " + $Gcc + " " + ($argv -join " "))
    $text = & $Gcc @argv 2>&1 | Out-String
    if ($text.Trim().Length -gt 0) { Write-Host $text }
    if ($LASTEXITCODE -ne 0) { throw "build failed: $name (exit $LASTEXITCODE)" }
    Write-Host ("ok  : " + $exe)
    return $text
}

Write-Host "=== [1/4] host worker ==="
$warn1 = Build "worker" (Join-Path $Android "out\ai_worker.exe") $WorkerSrc

Write-Host "`n=== [2/4] unit test ==="
$warn2 = Build "unit" (Join-Path $Out "worker_unit_test.exe") (@((Join-Path $Here "worker_unit_test.c")) + $LibSrc)

if (($warn1 + $warn2).Trim().Length -gt 0) {
    Write-Host "`nNOTE: compiler produced warnings (see above) - must be zero for acceptance"
}

Write-Host "`n=== [3/4] unit test run ==="
$unitLog = Join-Path $Ev "host_unit_test.log"
Push-Location $Out
Remove-Item -Recurse -Force "_t6b_unit" -ErrorAction SilentlyContinue
cmd /c "`"$(Join-Path $Out 'worker_unit_test.exe')`" > `"$unitLog`" 2>&1"
$rcUnit = $LASTEXITCODE
Pop-Location
Get-Content $unitLog -Encoding UTF8 | Select-Object -Last 3 | ForEach-Object { Write-Host $_ }
Write-Host ("unit exit: " + $rcUnit + "  (log: " + $unitLog + ")")

Write-Host "`n=== [4/4] integration test (real processes) ==="
Push-Location $Here
$env:PYTHONIOENCODING = "utf-8"
$itLog = Join-Path $Ev "host_integration_test.log"
$pyOut = & py -3 (Join-Path $Here "worker_integration_test.py") 2>&1 | Out-String
$rcIt = $LASTEXITCODE
$pyOut | Out-File -FilePath $itLog -Encoding utf8
Pop-Location
$pyOut -split "`r?`n" | Where-Object { $_ -match '^(PASS|FAIL|cases|RESULT)' } | ForEach-Object { Write-Host $_ }
Write-Host ("integration exit: " + $rcIt + "  (log: " + $itLog + ")")

if ($rcUnit -ne 0 -or $rcIt -ne 0) {
    Write-Host "`nRESULT: FAIL"
    exit 1
}
Write-Host "`nRESULT: PASS (host unit + integration, Mock provider only)"
exit 0

