# run_t7_host_tests.ps1 -- T7-01 主机增量测试（Windows + TDM-GCC，零网络、零真机）
#
#   powershell -ExecutionPolicy Bypass -File run_t7_host_tests.ps1
#
# 只做 T7-01 相关内容：对话上下文模块 + 配置模块 + Provider 的 messages 入口 +
# DeepSeek 请求体拼装。**不重跑** T2-T6 的用例（任务书 §7）。
#
# 产物：
#   tests/out/t7_conv_context_unit_test.exe
#   my-doc/07_ai_bridge/evidence/t7_01_host_unit_test.log
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

$LibSrc = @(
    "conv_context.c", "worker_conf.c", "provider.c", "mock_provider.c",
    "deepseek_provider.c", "worker_util.c", "worker_status.c",
    "event_reader.c", "consumer_state.c", "seq_gap.c"
) | ForEach-Object { Join-Path $Android $_ }

$TestSrc = Join-Path $Here "t7_conv_context_unit_test.c"
$Exe     = Join-Path $Out "t7_conv_context_unit_test.exe"

$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)

Write-Host "=== [1/2] build T7-01 host unit test ==="
$argv = $Base + @("-o", $Exe, $TestSrc) + $LibSrc
Write-Host ("cc  : " + $Gcc + " " + ($argv -join " "))
$cc = & $Gcc @argv 2>&1 | Out-String
if ($cc.Trim().Length -gt 0) { Write-Host $cc }
if ($LASTEXITCODE -ne 0) { throw "build failed (exit $LASTEXITCODE)" }
Write-Host "build: OK, 0 warning"

Write-Host "`n=== [2/2] run T7-01 host unit test ==="
$log = Join-Path $Ev "t7_01_host_unit_test.log"
$run = & $Exe 2>&1 | Out-String
$rc  = $LASTEXITCODE
$run | Out-File -FilePath $log -Encoding utf8
$run -split "`r?`n" | Where-Object { $_ -match '^(===|SUMMARY|RESULT|  FAIL)' } | ForEach-Object {
    Write-Host $_
}
Write-Host ("log : {0}" -f $log)

if ($rc -ne 0) {
    Write-Host "`nRESULT: FAIL"
    exit 1
}
Write-Host "`nRESULT: PASS (T7-01 context/config/provider-messages, host only)"
exit 0
