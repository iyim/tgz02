# build_t6_02.ps1 -- T6-02 Native Supervisor 交叉编译（TG-Z02 / ARM32）
#
#   powershell -ExecutionPolicy Bypass -File build_t6_02.ps1
#
# 产物：out/tg_supervisor（ELF32 / ARM / armeabi-v7a / API 26，动态链接）
# 固定编译选项：-O2 -Wall -Wextra，不加任何 -Wno-*；脚本遇到非零退出码、
# 任何 "warning:" 行、或不是 ELF32/ARM 的头都会失败。
#
# 本脚本只构建 Supervisor，不动 T6-01 的 tg_injector / libtg_hook.so
#（那两个仍由 build_t6.ps1 产出；本任务不修改它们）。
param(
    [string]$LogName = "t6_02_ndk_build.log"
)
$ErrorActionPreference = "Stop"

$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$BinDir = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin"
$Cc = Join-Path $BinDir "armv7a-linux-androideabi26-clang.cmd"
$ReadElf = Join-Path $BinDir "arm-linux-androideabi-readelf.exe"
if (-not (Test-Path $Cc)) { throw "NDK clang not found: $Cc" }
if (-not (Test-Path $ReadElf)) { throw "NDK readelf not found: $ReadElf" }

$Here = $PSScriptRoot                       # my-doc/07_ai_bridge/android
$Root = Split-Path $Here -Parent            # my-doc/07_ai_bridge
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null

$Log = Join-Path $Ev $LogName
$script:LogLines = New-Object System.Collections.Generic.List[string]
$script:Warnings = 0

function Log([string]$s) {
    $script:LogLines.Add($s)
    if ($s -match 'warning\s*:') { $script:Warnings++ }
}

$Src = Join-Path $Here "supervisor\tg_supervisor.c"
$Dest = Join-Path $Out "tg_supervisor"
$CompileArgs = @(
    "-O2", "-Wall", "-Wextra",
    "-o", $Dest,
    $Src
)

Log "# T6-02 supervisor build"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log "# cmd : $Cc  $($CompileArgs -join ' ')"
Log ""

$buildOut = & $Cc @CompileArgs 2>&1 | Out-String
$rc = $LASTEXITCODE
if ($buildOut.Trim().Length -gt 0) { Log $buildOut.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
Log "exit: $rc"
if ($rc -ne 0) {
    Log "# result: FAIL (compile error)"
    $script:LogLines | Out-File -FilePath $Log -Encoding utf8
    throw "build failed (exit $rc)"
}

$f = Get-Item $Dest
$sha = (Get-FileHash $Dest -Algorithm SHA256).Hash.ToLower()
Log ("artifact: " + $f.Name + "  " + $f.Length + " B  sha256=" + $sha)
Log "# --- readelf -h ---"
$hdr = (& $ReadElf -h $Dest 2>&1 | Out-String)
Log $hdr.TrimEnd()
if ($hdr -notmatch 'Class:\s+ELF32') { throw "tg_supervisor is not ELF32" }
if ($hdr -notmatch 'Machine:\s+ARM') { throw "tg_supervisor is not ARM" }
Log "# --- readelf -d ---"
$dyn = (& $ReadElf -d $Dest 2>&1 | Out-String)
Log $dyn.TrimEnd()
if ($dyn -match 'There is no dynamic section') { throw "tg_supervisor is not dynamically linked" }

if ($script:Warnings -ne 0) {
    Log ("# result: FAIL (" + $script:Warnings + " warning line(s) in compiler output)")
    $script:LogLines | Out-File -FilePath $Log -Encoding utf8
    throw "compiler warnings present ($($script:Warnings))"
}

Log "# result: OK (0 warning, 0 error, ELF32/ARM, dynamically linked)"
$script:LogLines | Out-File -FilePath $Log -Encoding utf8

Write-Host ""
Write-Host ("log      : {0}" -f $Log)
Write-Host "artifact : $Dest"
Write-Host ("sha256   : {0}" -f $sha)
exit 0
