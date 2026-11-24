# run_t9_08c_models_tests.ps1 -- T9-08C host test: multi-vendor model config + adapters + realtime stub
#
#   powershell -ExecutionPolicy Bypass -File run_t9_08c_models_tests.ps1
#
# Compiles the real production files (model_cfg / model_json / model_call / the three vendor
# adapters / model_provider / realtime_voice / doubao_realtime_provider) together with the test and
# runs it on the host. No device, no network, no API key: the HTTP transport is a scripted stub, so
# this proves protocol shaping and decision logic, NOT that a real vendor answers.
# Artifact: evidence/t9-08c/t9_08c_models_unit_test.log
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence\t9-08c"
$Out = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null

$Log = Join-Path $Ev "t9_08c_models_unit_test.log"
$exe = Join-Path $Out "t9_08c_models_test.exe"

$Sources = @(
    "model_json.c", "model_cfg.c", "model_call.c",
    "doubao_provider.c", "qwen_provider.c", "openai_provider.c",
    "model_provider.c", "realtime_voice.c", "doubao_realtime_provider.c"
) | ForEach-Object { Join-Path $Android $_ }

$argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android, "-o", $exe,
          (Join-Path $Here "t9_08c_models_test.c")) + $Sources

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T9-08C multi-vendor model host unit test log")
$lines.Add("# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$lines.Add("# note: the HTTP transport here is a scripted stub -> protocol/decision logic only,")
$lines.Add("#       NOT a real vendor call (real calls need real credentials, see the report)")
$lines.Add("cc: " + $Gcc + " " + ($argv -join " "))

$build = & $Gcc @argv 2>&1 | Out-String
$lines.Add($(if ($build.Trim().Length -eq 0) { "(no compiler output: 0 warning, 0 error)" } else { $build.TrimEnd() }))
if ($LASTEXITCODE -ne 0) {
    $lines.Add("# result: BUILD FAIL")
    $lines | Out-File -FilePath $Log -Encoding utf8
    Write-Host $build
    exit 1
}

Push-Location $Out
try {
    $run = & $exe 2>&1 | Out-String
    $rc = $LASTEXITCODE
} finally {
    Pop-Location
}
$lines.Add("")
$lines.Add($run.TrimEnd())
$lines.Add("")
$lines.Add(("# result: " + $(if ($rc -eq 0) { "PASS" } else { "FAIL (exit $rc)" })))
$lines | Out-File -FilePath $Log -Encoding utf8
Write-Host $run.TrimEnd()
Write-Host ("exit=" + $rc + "  log=" + $Log)
exit $rc
