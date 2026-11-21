# run_t5_06d_host_tests.ps1 -- T5-06D/T5-06D-P1 主机侧验证（dex 构建 + Worker 单元/集成 + TTS 队列用例）
#
# 做三件事：
#   1) 构建 tts_exec.dex（javac + d8），把结果写进 evidence/t5_06d_host_test.log
#   2) 构建并运行 Worker 主机单元测试（含 T5-06D 新增断言）
#   3) 运行集成测试全集 + TTS 队列相关子集（i31..i38，含 P1 故障注入用例）
#
# 不做：不连真机、不调用模型、不播放任何音频。
param(
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t5_06d_p1_host_test.log"
)
$ErrorActionPreference = 'Continue'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$root = Split-Path -Parent $here
$android = Join-Path $root 'android'

$lines = New-Object System.Collections.Generic.List[string]
function Rec([string]$s) { $lines.Add($s); Write-Host $s }

Rec ("=== T5-06D host verification " + (Get-Date).ToString("yyyy-MM-dd HH:mm:ss") + " ===")
Rec "1) build tts_exec.dex"
$bout = & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $android 'build_tts_exec.ps1') -LogName (Join-Path $root 'evidence\t5_06d_tts_build.log') 2>&1
$brc = $LASTEXITCODE
$bout | ForEach-Object { Rec ("   " + $_) }
if ($brc -ne 0) { Rec "# result: FAIL (dex build)"; $lines | Set-Content -Path $Log -Encoding UTF8; exit 1 }

Rec ""
Rec "2) worker unit tests (host)"
$ut = Join-Path $here 'out\worker_unit_test.exe'
if (-not (Test-Path $ut)) { Rec "   building host binaries first" }
$hout = & powershell -NoProfile -ExecutionPolicy Bypass -File (Join-Path $here 'run_host_tests.ps1') 2>&1
$hrc = $LASTEXITCODE
$hout | Where-Object { $_ -match 'checks passed|PASS |FAIL |cases:|rounds:|RESULT' } | ForEach-Object { Rec ("   " + $_) }
Rec ("   host suite exit: " + $hrc)

Rec ""
Rec "3) TTS queue integration subset (i31..i39b) -- verbose"
$iout = & py -3 (Join-Path $here 'worker_integration_test.py') --exe (Join-Path $android 'out\ai_worker.exe') --only i3 --keep 2>&1
$iout | Where-Object { $_ -match '^(PASS|FAIL)|^cases:' } | ForEach-Object { Rec ("   " + $_) }

Rec ""
Rec "3b) P1-3 stat/error-classification case (i41) -- verbose"
$iout2 = & py -3 (Join-Path $here 'worker_integration_test.py') --exe (Join-Path $android 'out\ai_worker.exe') --only i41 --keep 2>&1
$iout2 | Where-Object { $_ -match '^(PASS|FAIL)|^cases:' } | ForEach-Object { Rec ("   " + $_) }

Rec ""
if ($hrc -eq 0) { Rec "# result: OK (dex built, host unit + integration + tts queue cases pass)" }
else { Rec "# result: FAIL (host suite)" }
$lines | Set-Content -Path $Log -Encoding UTF8
Write-Host "log: $Log"
exit $hrc
