# run_t6_host_tests.ps1 -- T6-01 host-side tests (no device needed)
#
#   powershell -ExecutionPolicy Bypass -File run_t6_host_tests.ps1
#
# Builds and runs tests/t6_wire_unit_test.c against:
#   - android/hook_agent/tg_wire.c            (the code that ships in libtg_hook.so)
#   - ../06_t5_bridge/android/tgb_proto.c     (accepted T5-05A frame codec)
#   - ../06_t5_bridge/android/tgb_event.c     (accepted T5-05A strict JSON validator)
#   - ../06_t5/android/t5_util.c              (t5_json_escape)
# so the test proves byte-level compatibility instead of testing the code against itself.
param(
    [string]$LogName = "t6_01_host_test.log"
)
$ErrorActionPreference = "Stop"

$Here = $PSScriptRoot                       # my-doc/07_ai_bridge/tests
$Root = Split-Path $Here -Parent            # my-doc/07_ai_bridge
$Ev   = Join-Path $Root "evidence"
$Out  = Join-Path $Root "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "host gcc not found: $Gcc" }

$Exe = Join-Path $Out "t6_wire_unit_test.exe"
$Log = Join-Path $Ev $LogName

$args = @(
    "-O2", "-Wall", "-Wextra", "-std=gnu99", "-o", $Exe,
    (Join-Path $Here "t6_wire_unit_test.c"),
    (Join-Path $Root "android\hook_agent\tg_wire.c"),
    (Join-Path $Root "..\06_t5_bridge\android\tgb_proto.c"),
    (Join-Path $Root "..\06_t5_bridge\android\tgb_event.c"),
    (Join-Path $Root "..\06_t5\android\t5_util.c"),
    "-I", (Join-Path $Root "android\hook_agent"),
    "-I", (Join-Path $Root "..\06_t5_bridge\android"),
    "-I", (Join-Path $Root "..\06_t5\android")
)

$out = & $Gcc @args 2>&1 | Out-String
$rc = $LASTEXITCODE
if ($out.Trim().Length -gt 0) { $out.TrimEnd() | Out-File -FilePath $Log -Encoding utf8 }
if ($rc -ne 0) {
    ("# build FAILED (exit $rc)") | Out-File -FilePath $Log -Encoding utf8 -Append
    throw "host build failed"
}
("" ) | Out-File -FilePath $Log -Encoding utf8 -Append
("# run: $Exe") | Out-File -FilePath $Log -Encoding utf8 -Append
$run = & $Exe 2>&1 | Out-String
$rrc = $LASTEXITCODE
$run.TrimEnd() | Out-File -FilePath $Log -Encoding utf8 -Append

Write-Host $run.TrimEnd()
Write-Host ("log: " + $Log)
if ($rrc -ne 0) { exit $rrc } else { exit 0 }
