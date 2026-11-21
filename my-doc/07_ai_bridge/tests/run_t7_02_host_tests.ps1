# run_t7_02_host_tests.ps1 -- T7-02 主机增量测试（Windows + TDM-GCC，零网络、零真机）
#   powershell -ExecutionPolicy Bypass -File run_t7_02_host_tests.ps1
#
# 只覆盖 T7-02 新增内容：回声过滤模块（回声判定、窗口、无指令规则、开关）
# 以及 Worker 侧接入后的状态字段/CLI 不回归。**不重跑** T2-T6 的用例。
#
# 产物：
#   tests/out/t7_02_echo_unit_test.exe
#   my-doc/07_ai_bridge/evidence/t7_02_host_unit_test.log
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here    = $PSScriptRoot
$Root    = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev      = Join-Path $Root "evidence"
$Out     = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$Log = Join-Path $Ev "t7_02_host_unit_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$TestSrc = Join-Path $Here "t7_02_echo_unit_test.c"
$Exe     = Join-Path $Out "t7_02_echo_unit_test.exe"
$ModSrc  = Join-Path $Android "echo_filter.c"
$Base    = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)

Log "# T7-02 host unit test log"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

Log "=== [1/2] build echo_filter host unit test ==="
$argv = $Base + @("-o", $Exe, $TestSrc, $ModSrc)
Log ("cc   : " + $Gcc + " " + ($argv -join " "))
$cc = & $Gcc @argv 2>&1 | Out-String
if ($cc.Trim().Length -gt 0) { Log $cc.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
if ($LASTEXITCODE -ne 0) {
    Log "# result: FAIL (build exit $LASTEXITCODE)"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    throw "build failed"
}
Log "build: OK"

Log ""
Log "=== [2/2] run ==="
$run = & $Exe 2>&1 | Out-String
Log $run.TrimEnd()
$rc = $LASTEXITCODE

if ($run -match 'pass=(\d+) fail=(\d+)') {
    $pass = [int]$Matches[1]; $fail = [int]$Matches[2]
    Log ""
    Log ("SUMMARY pass=$pass fail=$fail")
    if ($fail -ne 0 -or $rc -ne 0) {
        Log "# result: FAIL"
        $script:Lines | Out-File -FilePath $Log -Encoding utf8
        throw "host unit test failed ($fail)"
    }
} else {
    Log "# result: FAIL (no summary line)"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    throw "host unit test produced no summary"
}

Log "# result: OK (exit 0, 0 fail)"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ""
Write-Host "log: $Log"
exit 0
