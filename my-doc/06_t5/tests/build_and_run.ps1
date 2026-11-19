# build_and_run.ps1 -- T5 主机自动化测试（Windows + TDM-GCC，不需要设备）
#
#   powershell -ExecutionPolicy Bypass -File build_and_run.ps1
#
# 产物：out/t5_host_test.exe
# 说明：源码与真机完全同一份（t5_engine.c 等），只是不含 POSIX socket / 线程依赖。
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Src = Join-Path $PSScriptRoot "..\android"
$Out = Join-Path $PSScriptRoot "out"
New-Item -ItemType Directory -Force $Out | Out-Null

$Files = @(
    "t5_util.c", "t5_state.c", "t5_wav.c", "t5_provider.c",
    "t5_store.c", "t5_engine.c"
) | ForEach-Object { Join-Path $Src $_ }

$Args = @(
    "-O2", "-Wall", "-Wextra", "-std=gnu99",
    "-I", $Src,
    "-o", (Join-Path $Out "t5_host_test.exe"),
    (Join-Path $PSScriptRoot "t5_host_test.c")
) + $Files

Write-Host "cc  : $Gcc"
& $Gcc @Args
if ($LASTEXITCODE -ne 0) { throw "build failed: $LASTEXITCODE" }

$Exe = Join-Path $Out "t5_host_test.exe"
Write-Host "run : $Exe`n"
& $Exe
$rc = $LASTEXITCODE
Write-Host "`nhost tests exit: $rc"
exit $rc
