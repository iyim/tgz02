# run_t9_08b_r2_stop_tests.ps1 -- T9-08B-R2 host test: the controlled stop request (kind=stop)
#
#   powershell -ExecutionPolicy Bypass -File run_t9_08b_r2_stop_tests.ps1
#
# Tests android/tg_inbox.c: the stop message contract (target required, fields strict), and that a
# stop reaches the worker with kind=stop + tts_id + no text, that its receipt says stage=stop, and
# that a stop the worker refuses is answered ok:false and parked in rejected/.
# Artifact: evidence/t9-08b-r2/t9_08b_r2_stop_unit_test.log
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence\t9-08b-r2"
$Out = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null

$Log = Join-Path $Ev "t9_08b_r2_stop_unit_test.log"
$exe = Join-Path $Out "t9_08b_r2_stop_test.exe"
$argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android, "-o", $exe,
          (Join-Path $Here "t9_08b_r2_stop_test.c"),
          (Join-Path $Android "tg_inbox.c"))

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T9-08B-R2 controlled-stop host unit test log")
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
