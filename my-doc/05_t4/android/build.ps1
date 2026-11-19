# build.ps1 -- 本机（Windows + NDK r21e）交叉编译 T4 接收端
#
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# 产物：out/t4_receiver（ELF32 / ARM / 静态链接）
# 注意：构建参数只有 -O2 -Wall -Wextra -static，不使用任何 -Wno-*
$ErrorActionPreference = "Stop"

$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$Cc  = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
if (-not (Test-Path $Cc)) { throw "NDK clang not found: $Cc" }

$Out = Join-Path $PSScriptRoot "out"
New-Item -ItemType Directory -Force $Out | Out-Null

$Args = @(
    "-O2", "-Wall", "-Wextra", "-static",
    "-o", (Join-Path $Out "t4_receiver"),
    "t4_receiver.c", "rx_core.c", "vad_energy.c",
    "-lm"
)

Write-Host "cc  : $Cc"
Write-Host "cmd : $Cc $($Args -join ' ')"
& $Cc @Args
$rc = $LASTEXITCODE
Write-Host "exit: $rc"

$bin = Join-Path $Out "t4_receiver"
if (Test-Path $bin) {
    $f = Get-Item $bin
    Write-Host ("artifact: {0}  {1} B" -f $f.Name, $f.Length)
    Write-Host ("sha256  : {0}" -f (Get-FileHash $bin -Algorithm SHA256).Hash.ToLower())
}
exit $rc
