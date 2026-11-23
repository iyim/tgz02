# run_t8_15_host_tests.ps1 -- T8-15 continuous dialog, C unit tests (host only)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_15_host_tests.ps1
#
# Builds and runs:
#   t8_15_continuous_dialog_unit_test  (session_ctrl continuous turns + talk tap parser)
# Artifact: evidence/t8_15_unit_test.log
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

$Log = Join-Path $Ev "t8_15_unit_test.log"
$exe = Join-Path $Out "t8_15_continuous_dialog_unit_test.exe"
$argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android, "-o", $exe,
          (Join-Path $Here "t8_15_continuous_dialog_unit_test.c"),
          (Join-Path $Android "session_ctrl.c"),
          (Join-Path $Android "talk_tap.c"))

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T8-15 unit test log")
$lines.Add("# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$lines.Add("cc: " + $Gcc + " " + ($argv -join " "))

$build = & $Gcc @argv 2>&1 | Out-String
$lines.Add(($(if ($build.Trim().Length -eq 0) { "(no compiler output: 0 warning, 0 error)" } else { $build.TrimEnd() })))
if ($LASTEXITCODE -ne 0) {
    $lines.Add("# result: BUILD FAIL")
    $lines | Out-File -FilePath $Log -Encoding utf8
    Write-Host $build
    exit 1
}

$run = & $exe 2>&1 | Out-String
$lines.Add($run.TrimEnd())
$rc = $LASTEXITCODE
$lines.Add("exit: $rc")
$lines.Add(($(if ($rc -eq 0) { "# result: OK" } else { "# result: FAIL" })))
$lines | Out-File -FilePath $Log -Encoding utf8
Write-Host $run
exit $rc
