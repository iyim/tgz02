# build.ps1 -- cross-compile the T5 agent for TG-Z02 (armeabi-v7a, API 26)
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# artifact: out/t5_agent  (ELF32 / ARM / static)
# flags   : -O2 -Wall -Wextra -static   (no -Wno-* anywhere)
$ErrorActionPreference = "Stop"

$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$Cc  = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd"
if (-not (Test-Path $Cc)) { throw "NDK clang not found: $Cc" }

$Out = Join-Path $PSScriptRoot "out"
New-Item -ItemType Directory -Force $Out | Out-Null

$Args = @(
    "-O2", "-Wall", "-Wextra", "-static",
    "-o", (Join-Path $Out "t5_agent"),
    "t5_agent.c", "t5_engine.c", "t5_store.c", "t5_provider.c",
    "t5_wav.c", "t5_state.c", "t5_util.c"
)

Write-Host "cc  : $Cc"
Write-Host "cmd : $Cc $($Args -join ' ')"
& $Cc @Args
$rc = $LASTEXITCODE
Write-Host "exit: $rc"

$bin = Join-Path $Out "t5_agent"
if (Test-Path $bin) {
    $f = Get-Item $bin
    Write-Host ("artifact: {0}  {1} B" -f $f.Name, $f.Length)
    Write-Host ("sha256  : {0}" -f (Get-FileHash $bin -Algorithm SHA256).Hash.ToLower())
}
exit $rc
