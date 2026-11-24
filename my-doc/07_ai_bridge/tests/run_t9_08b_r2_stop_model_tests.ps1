# run_t9_08b_r2_stop_model_tests.ps1 -- T9-08B-R2 host test: the stop decision table (Java)
#
#   powershell -ExecutionPolicy Bypass -File run_t9_08b_r2_stop_model_tests.ps1
#
# Compiles android/tts_exec/StopControl.java together with the test (both in package com.tgz02.tts)
# and runs it on the host JVM. StopControl has no Android dependency exactly so that this works:
# it is the piece that decides "does this control file name the item I am playing?" and "is this
# outcome terminal?", i.e. the two decisions that fix the stop-replay defect.
# Artifact: evidence/t9-08b-r2/t9_08b_r2_stop_model_test.log
$ErrorActionPreference = "Stop"

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Src = Join-Path $Root "android\tts_exec\StopControl.java"
$Test = Join-Path $Here "t9_08b_r2_stop_model_test.java"
$Ev = Join-Path $Root "evidence\t9-08b-r2"
$Out = Join-Path $Here "out\java_r2"
New-Item -ItemType Directory -Force $Ev | Out-Null
if (Test-Path $Out) { Remove-Item -Recurse -Force $Out }
New-Item -ItemType Directory -Force $Out | Out-Null

$Log = Join-Path $Ev "t9_08b_r2_stop_model_test.log"
$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T9-08B-R2 stop decision-table host test log (real StopControl.java, host JVM)")
$lines.Add("# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')")
$lines.Add("javac: $Src + $Test")

$jc = & javac -encoding UTF-8 -d $Out $Src $Test 2>&1 | Out-String
$lines.Add($(if ($jc.Trim().Length -eq 0) { "javac: (no output: 0 warning, 0 error)" } else { $jc.TrimEnd() }))
if ($LASTEXITCODE -ne 0) {
    $lines.Add("# result: BUILD FAIL")
    $lines | Out-File -FilePath $Log -Encoding utf8
    Write-Host $jc
    exit 1
}

$jv = & java -cp $Out com.tgz02.tts.StopModelTest 2>&1 | Out-String
$rc = $LASTEXITCODE
$lines.Add("")
$lines.Add($jv.TrimEnd())
$lines.Add("")
$lines.Add(("# result: " + $(if ($rc -eq 0) { "PASS" } else { "FAIL (exit $rc)" })))
$lines | Out-File -FilePath $Log -Encoding utf8
Write-Host $jv.TrimEnd()
Write-Host ("exit=" + $rc + "  log=" + $Log)
exit $rc
