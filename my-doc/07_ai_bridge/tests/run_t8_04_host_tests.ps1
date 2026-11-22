# run_t8_04_host_tests.ps1 -- T8-04: boot-once gate concurrency test + source assertions
#
#   powershell -ExecutionPolicy Bypass -File run_t8_04_host_tests.ps1
#
# Host only (TDM-GCC + pthread). Does not run the older suites.
# Artifact: tests/out/t8_04_boot_once_test.exe, evidence/t8_04_host_test.log
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

$Log = Join-Path $Ev "t8_04_host_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }
$script:Fail = 0
function Fail([string]$why) { $script:Fail++; Log "FAIL $why" }
function Pass([string]$why) { Log "PASS $why" }

$Exe = Join-Path $Out "t8_04_boot_once_test.exe"
$Src = @(
    (Join-Path $Here "t8_04_boot_once_test.c"),
    (Join-Path $Android "nlu_takeover.c"),
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c")
)
$Argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-pthread", "-I", $Android, "-o", $Exe) + $Src

Log "# T8-04 host test log (boot-once gate)"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""
Log "=== build t8_04_boot_once_test ==="
Log ("gcc " + ($Argv -join " "))
$build = & $Gcc @Argv 2>&1 | Out-String
if ($build.Trim().Length -gt 0) { Log $build.TrimEnd(); Fail "build produced output (warnings?)" } else { Log "(no compiler output: 0 warning, 0 error)" }
Log ("exit : " + $LASTEXITCODE)
if ($LASTEXITCODE -ne 0) {
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    throw "build failed"
}

Log ""
Log "=== run t8_04_boot_once_test ==="
$run = & $Exe 2>&1 | Out-String
($run.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
$rc = $LASTEXITCODE
Log ("exit : " + $rc)
if ($run -notmatch 'pass=(\d+) fail=(\d+)') { Fail "unreadable summary" }
elseif ([int]$Matches[2] -ne 0) { Fail ("test: " + $Matches[2] + " failing assertion(s)") }
else { Pass ("boot-once test: " + $Matches[1] + " assertions") }

# ---- source assertions: libtg_hook.c really uses the once gate ----
Log ""
Log "=== source assertions (libtg_hook.c) ==="
$text = Get-Content (Join-Path $Android "hook_agent\libtg_hook.c") -Raw
if ($text -match 'static\s+pthread_once_t\s+g_nlu_once\s*=\s*PTHREAD_ONCE_INIT') {
    Pass "nlu boot gate is a pthread_once_t with PTHREAD_ONCE_INIT"
} else { Fail "pthread_once_t gate missing" }
if ($text -match 'pthread_once\(&g_nlu_once,\s*nlu_boot_once\)') {
    Pass "nlu_want_enabled() goes through pthread_once(&g_nlu_once, nlu_boot_once)"
} else { Fail "pthread_once call missing" }
if ($text -match 'g_nlu_booted') { Fail "the old double-checked volatile gate is still present" }
else { Pass "old volatile double-checked gate is gone" }
if ($text -match 'if\s*\(rc\s*!=\s*0\)\s*g_nlu_init_failed\s*=\s*1') {
    Pass "init failure is recorded (g_nlu_init_failed)"
} else { Fail "init failure flag missing" }
if ($text -match 't8_to_enabled_set\(&g_to,\s*1\);\s*/\*') {
    Pass "enabled is set even when init fails (fail-closed path)"
} else { Fail "enabled_set call missing in boot body" }

Log ""
if ($script:Fail -ne 0) { Log ("# result: FAIL (" + $script:Fail + " problem(s))") }
else { Log "# result: OK (boot-once + source assertions)" }
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ""
Write-Host ("log : {0}" -f $Log)
if ($script:Fail -ne 0) { exit 1 }
exit 0
