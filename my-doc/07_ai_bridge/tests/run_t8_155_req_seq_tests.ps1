# run_t8_155_req_seq_tests.ps1 -- T8-15.5 re-listen request seq contract (host only)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_155_req_seq_tests.ps1
#
# Tests android/tg_req_seq.h -- the exact same header compiled into the guard
# (hook_tts/libtg_ttsguard.c) and into ai_worker.c. No copies, no mocks.
# Artifact: evidence/t8_155_req_seq_unit_test.log
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

$Log = Join-Path $Ev "t8_155_req_seq_unit_test.log"
$exe = Join-Path $Out "t8_155_req_seq_unit_test.exe"
$argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-pthread", "-I", $Android,
          "-o", $exe, (Join-Path $Here "t8_155_req_seq_unit_test.c"))

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T8-15.5 request-seq contract unit test log (host)")
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
$run = & $exe 2>&1 | Out-String
$rc = $LASTEXITCODE
Pop-Location
$lines.Add($run.TrimEnd())
$lines.Add("exit: $rc")
$lines.Add(($(if ($rc -eq 0) { "# result: OK" } else { "# result: FAIL" })))
$lines | Out-File -FilePath $Log -Encoding utf8
Write-Host $run
exit $rc
