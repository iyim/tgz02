# build_and_run.ps1 -- T5-05A 主机全套（Windows + TDM-GCC，不需要设备、不需要 Frida）
#
#   powershell -ExecutionPolicy Bypass -File build_and_run.ps1
#
# 做四件事：
#   1) 编译纯逻辑单元测试 tgb_unit_test.exe 并运行
#   2) 编译集成测试客户端 tgb_client.exe
#   3) 编译 Windows 版接收端 tgb_bridge.exe（与 ARM 版同一份源码，只是 socket 走文件路径）
#   4) 跑 run_host_tests.py（15 个用例，真起进程、真收发、真落盘）
#
# 日志同时写入 ../evidence/ 下，便于附在报告里。
$ErrorActionPreference = "Stop"

# 让 PowerShell 用 UTF-8 解码原生程序的输出，否则中文会变成乱码（证据要看得出内容）
try {
    [Console]::OutputEncoding = New-Object System.Text.UTF8Encoding($false)
    $env:PYTHONIOENCODING = "utf-8"
} catch { }

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here   = $PSScriptRoot                 # .../06_t5_bridge/tests
$Root   = Split-Path $Here -Parent      # .../06_t5_bridge
$Android= Join-Path $Root "android"
$T5     = Join-Path (Split-Path $Root -Parent) "06_t5\android"   # .../my-doc/06_t5/android
$Ev     = Join-Path $Root "evidence"
$Out    = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null
New-Item -ItemType Directory -Force (Join-Path $Android "out") | Out-Null

$Inc = @("-I", $Android, "-I", $T5)
$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99") + $Inc

function Build($name, $outFile, $sources) {
    $argv = $Base + @("-o", $outFile) + $sources + @("-lws2_32")
    Write-Host ("cc  : {0} {1}" -f $Gcc, ($argv -join " "))
    & $Gcc @argv
    if ($LASTEXITCODE -ne 0) { throw "build failed: $name (exit $LASTEXITCODE)" }
    Write-Host ("ok  : {0}" -f $outFile)
}

Write-Host "=== [1/4] unit test ==="
Build "tgb_unit_test" (Join-Path $Out "tgb_unit_test.exe") @(
    (Join-Path $Here "tgb_unit_test.c"),
    (Join-Path $Android "tgb_proto.c"), (Join-Path $Android "tgb_event.c"),
    (Join-Path $Android "tgb_dedup.c"), (Join-Path $Android "tgb_store.c"),
    (Join-Path $T5 "t5_util.c"))

Write-Host "`n=== [2/4] integration client ==="
Build "tgb_client" (Join-Path $Out "tgb_client.exe") @(
    (Join-Path $Here "tgb_client.c"), (Join-Path $Android "tgb_proto.c"))

Write-Host "`n=== [3/4] windows bridge ==="
Build "tgb_bridge" (Join-Path $Android "out\tgb_bridge.exe") @(
    (Join-Path $Android "tgb_main.c"), (Join-Path $Android "tgb_server.c"),
    (Join-Path $Android "tgb_proto.c"), (Join-Path $Android "tgb_event.c"),
    (Join-Path $Android "tgb_dedup.c"), (Join-Path $Android "tgb_store.c"),
    (Join-Path $T5 "t5_util.c"))

Write-Host "`n=== [4/4] unit test run ==="
Push-Location $Out
Remove-Item -Recurse -Force "_tgb_unit" -ErrorAction SilentlyContinue
$logUnit = Join-Path $Ev "host_unit_t505a.log"
# 用 cmd 直接重定向：拿到的是 C 程序原样的 UTF-8 字节，不经 PowerShell 的编码转换
cmd /c "`"$(Join-Path $Out 'tgb_unit_test.exe')`" > `"$logUnit`" 2>&1"
$rcUnit = $LASTEXITCODE
Get-Content $logUnit -Encoding UTF8 | Select-Object -Last 2 | ForEach-Object { Write-Host $_ }
Pop-Location
Write-Host "unit exit: $rcUnit  (log: $logUnit)"

Write-Host "`n=== integration suite ==="
Push-Location $Here
python run_host_tests.py
$rcIt = $LASTEXITCODE
# 直接复制测试脚本自己写的 UTF-8 日志，避免控制台编码影响证据
$runDir = Get-ChildItem (Join-Path $Here "_run") -Directory -ErrorAction SilentlyContinue |
          Sort-Object LastWriteTime | Select-Object -Last 1
if ($runDir) {
    Copy-Item (Join-Path $runDir.FullName "host_tests.log") (Join-Path $Ev "host_it_t505a.log") -Force
    Copy-Item (Join-Path $runDir.FullName "results.json")   (Join-Path $Ev "host_it_t505a_results.json") -Force
    Write-Host ("it log: {0}" -f (Join-Path $Ev "host_it_t505a.log"))
}
Pop-Location
Write-Host "integration exit: $rcIt"

if ($rcUnit -ne 0 -or $rcIt -ne 0) { exit 1 }
Write-Host "`nall host tests passed"
exit 0
