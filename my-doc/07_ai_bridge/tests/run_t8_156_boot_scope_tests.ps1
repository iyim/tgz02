# run_t8_156_boot_scope_tests.ps1 -- T8-15.6 boot-scope contract (host only)
#
#   powershell -ExecutionPolicy Bypass -File run_t8_156_boot_scope_tests.ps1
#
# Tests android/tg_req_seq.h -- the exact same header compiled into the guard
# (hook_tts/libtg_ttsguard.c) and into ai_worker.c. No copies, no mocks.
# Artifact: evidence/t8_156_boot_scope_unit_test.log
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

$Log = Join-Path $Ev "t8_156_boot_scope_unit_test.log"
$exe = Join-Path $Out "t8_156_boot_scope_unit_test.exe"
$argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android,
          "-o", $exe, (Join-Path $Here "t8_156_boot_scope_unit_test.c"))

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T8-15.6 boot-scope contract unit test log (host)")
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
