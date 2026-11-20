# build.ps1 -- 交叉编译 T5-05A Bridge 接收端到 TG-Z02（armeabi-v7a / API 26 / 静态链接）
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# 产物：
#   out/tgb_bridge     接收端（ELF32 / ARM / static）
#   out/tgb_client     设备侧冒烟客户端（同一个 tests/tgb_client.c，用来在真机上验证抽象命名空间）
#
# 编译选项固定为 -O2 -Wall -Wextra -static，不使用任何 -Wno-*；
# 有警告就会在日志里看得见（本文件不做过滤）。
$ErrorActionPreference = "Stop"

$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$Cc  = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
if (-not (Test-Path $Cc)) { throw "NDK clang not found: $Cc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent              # my-doc/06_t5_bridge
$Util = Join-Path (Split-Path (Split-Path $Here -Parent) -Parent) "06_t5\android\t5_util.c"
$Out  = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null

if (-not (Test-Path $Util)) { throw "t5_util.c not found: $Util" }

$CommonSrc = @(
    "tgb_proto.c", "tgb_event.c", "tgb_dedup.c", "tgb_store.c"
)

Write-Host "ndk : $Ndk"
Write-Host "cc  : $Cc"

$BridgeArgs = @(
    "-O2", "-Wall", "-Wextra", "-static",
    "-I", $Here, "-I", (Split-Path $Util -Parent),
    "-o", (Join-Path $Out "tgb_bridge"),
    (Join-Path $Here "tgb_main.c"), (Join-Path $Here "tgb_server.c")
) + ($CommonSrc | ForEach-Object { Join-Path $Here $_ }) + $Util

Write-Host ""
Write-Host "=== [1/2] bridge ==="
Write-Host ("cmd : {0} {1}" -f $Cc, ($BridgeArgs -join " "))
& $Cc @BridgeArgs
$rc1 = $LASTEXITCODE
Write-Host "exit: $rc1"
if ($rc1 -ne 0) { exit $rc1 }

$ClientArgs = @(
    "-O2", "-Wall", "-Wextra", "-static",
    "-I", $Here, "-I", (Split-Path $Util -Parent),
    "-o", (Join-Path $Out "tgb_client"),
    (Join-Path $Root "tests\tgb_client.c"),
    (Join-Path $Here "tgb_proto.c")       # 客户端只用帧编解码，不需要 event/store
)

Write-Host ""
Write-Host "=== [2/2] device smoke client ==="
Write-Host ("cmd : {0} {1}" -f $Cc, ($ClientArgs -join " "))
& $Cc @ClientArgs
$rc2 = $LASTEXITCODE
Write-Host "exit: $rc2"
if ($rc2 -ne 0) { exit $rc2 }

Write-Host ""
foreach ($name in @("tgb_bridge", "tgb_client")) {
    $bin = Join-Path $Out $name
    if (Test-Path $bin) {
        $f = Get-Item $bin
        Write-Host ("artifact: {0}  {1} B  sha256={2}" -f $f.Name, $f.Length,
            (Get-FileHash $bin -Algorithm SHA256).Hash.ToLower())
    }
}
exit 0
