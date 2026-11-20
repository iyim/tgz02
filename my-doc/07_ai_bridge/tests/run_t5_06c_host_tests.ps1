# run_t5_06c_host_tests.ps1 -- T5-06C host test bundle (no network, no API key needed)
#
#   powershell -ExecutionPolicy Bypass -File run_t5_06c_host_tests.ps1
#
# What it does:
#   1) rebuilds the host binaries (TDM-GCC, -O2 -Wall -Wextra, zero warnings required)
#   2) runs the full host unit test  -> worker_unit_test.c (includes the DeepSeek group:
#      URL join, request-body escaping, response parsing, key loading, stub transport)
#   3) runs the DeepSeek related integration cases on real processes:
#        i25 prefix-hash atomicity (T5-06B regression)
#        i26 provider=deepseek without a key file   -> exit 4, no request
#        i27 provider=deepseek with key, no libcurl -> exit 4, key never leaks
#        i28 invalid provider/url/model/timeouts    -> exit 2
#        i29 default provider is still mock         -> exit 0, no HTTP
#   4) writes everything into evidence/t5_06c_host_test.log
#
# Nothing here talks to api.deepseek.com: the transport is either the mock provider or
# an injected stub, and i27 points at 127.0.0.1 on purpose.
$ErrorActionPreference = "Stop"

$Gcc  = "C:\TDM-GCC-64\bin\gcc.exe"
$Here = $PSScriptRoot                       # my-doc/07_ai_bridge/tests
$Root = Split-Path $Here -Parent            # my-doc/07_ai_bridge
$And  = Join-Path $Root "android"
$Ev   = Join-Path $Root "evidence"
$Out  = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$LibSrc = @(
    "deepseek_provider.c", "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c"
) | ForEach-Object { Join-Path $And $_ }
$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $And)

$Log = New-Object System.Collections.Generic.List[string]
function Say([string]$t) { $script:Log.Add($t); Write-Host $t }

Say "# T5-06C host test log (no network, no api key)"
Say ("# host : Windows " + [System.Environment]::OSVersion.VersionString)
Say ("# cc   : " + $Gcc)
Say ("# time : " + (Get-Date).ToString("yyyy-MM-dd HH:mm:ss"))
Say ""

$rc = 0

# ---------------------------------------------------------------- build
Say "## 1. host build"
foreach ($t in @(
        @{ n = "ai_worker.exe";        out = (Join-Path $And "out\ai_worker.exe");  src = @((Join-Path $And "ai_worker.c")) + $LibSrc },
        @{ n = "worker_unit_test.exe"; out = (Join-Path $Out "worker_unit_test.exe"); src = @((Join-Path $Here "worker_unit_test.c")) + $LibSrc })) {
    $argv = $Base + @("-o", $t.out) + $t.src
    Say ("cc  : " + $Gcc + " " + ($argv -join " "))
    $text = & $Gcc @argv 2>&1 | Out-String
    if ($text.Trim().Length -gt 0) { Say $text.TrimEnd() } else { Say "(no compiler output: 0 warning, 0 error)" }
    if ($LASTEXITCODE -ne 0) { Say ("BUILD FAILED: " + $t.n); $rc = 1 }
}
Say ""

# ---------------------------------------------------------------- unit test
Say "## 2. host unit test (includes the DeepSeek group; stub transport only)"
Push-Location $Out
Remove-Item -Recurse -Force "_t6b_unit" -ErrorAction SilentlyContinue
$env:T6B_FAULT_PREFIX = $null
$unitOut = & (Join-Path $Out "worker_unit_test.exe") 2>&1 | Out-String
$rcUnit = $LASTEXITCODE
Pop-Location
Say $unitOut.TrimEnd()
Say ("unit exit: " + $rcUnit)
if ($rcUnit -ne 0) { $rc = 1 }
Say ""

# ---------------------------------------------------------------- integration
Say "## 3. integration cases (real worker processes, no network)"
Push-Location $Here
$env:PYTHONIOENCODING = "utf-8"
foreach ($filter in @("i25", "deepseek", "provider_config", "still_the_default")) {
    Say ("--- --only " + $filter + " ---")
    $out = & py -3 (Join-Path $Here "worker_integration_test.py") --only $filter 2>&1 | Out-String
    $rcIt = $LASTEXITCODE
    Say $out.TrimEnd()
    Say ("exit: " + $rcIt)
    if ($rcIt -ne 0) { $rc = 1 }
    Say ""
}
Pop-Location

Say ("RESULT: " + $(if ($rc -eq 0) { "PASS" } else { "FAIL" }))
# 保留 BOM（PS 5.1 读中文注释需要）
$p = Join-Path $Ev "t5_06c_host_test.log"
[System.IO.File]::WriteAllText($p, ($Log -join "`r`n") + "`r`n", (New-Object System.Text.UTF8Encoding($true)))
Write-Host ("log : " + $p)
exit $rc
