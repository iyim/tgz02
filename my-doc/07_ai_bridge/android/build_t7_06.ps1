# build_t7_06.ps1 -- T7-06 build (read-only _WakeUpInfo_ snapshot hook)
#
#   powershell -ExecutionPolicy Bypass -File build_t7_06.ps1
#
# Artifacts:
#   out/libtg_wakeinfo.so   SessionManager::onStartTalk 只读观测（ARM32 / armeabi-v7a / API 26）
#
# Fixed flags -O2 -Wall -Wextra, no -Wno-*; any "warning:" line fails the build.
param(
    [string]$LogName = "t7_06_ndk_build.log"
)
$ErrorActionPreference = "Stop"

$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$BinDir = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin"
$Cc = Join-Path $BinDir "armv7a-linux-androideabi26-clang.cmd"
$ReadElf = Join-Path $BinDir "arm-linux-androideabi-readelf.exe"
if (-not (Test-Path $Cc)) { throw "NDK clang not found: $Cc" }
if (-not (Test-Path $ReadElf)) { throw "NDK readelf not found: $ReadElf" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
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
    Write-Host $s
}

$Src = Join-Path $Here "hook_wake\libtg_wakeinfo.c"
$Obj = Join-Path $Out "libtg_wakeinfo.so"

Log "# T7-06 NDK build log (libtg_wakeinfo: read-only _WakeUpInfo_ snapshot)"
Log ("# time: " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Log "# ndk : $Ndk"
Log "# cc  : $Cc"
Log ""

$args = @("-O2", "-Wall", "-Wextra", "-fPIC", "-shared",
          "-I", $Here,
          "-o", $Obj, $Src, "-llog")
Log ("# cmd : " + $Cc + " " + ($args -join " "))
$buildOut = & $Cc @args 2>&1 | Out-String
$rc = $LASTEXITCODE
if ($buildOut.Trim().Length -gt 0) { Log $buildOut.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
Log "exit: $rc"
if ($rc -ne 0) {
    Log "# result: FAIL"
    $script:LogLines | Out-File -FilePath $Log -Encoding utf8
    throw "build failed (exit $rc)"
}

$f = Get-Item $Obj
$sha = (Get-FileHash $Obj -Algorithm SHA256).Hash.ToLower()
Log ("artifact: " + $f.Name + "  " + $f.Length + " B  sha256=" + $sha)

$hdr = (& $ReadElf -h $Obj 2>&1 | Out-String)
Log "# --- readelf -h ---"
Log $hdr.TrimEnd()
if ($hdr -notmatch 'Class:\s+ELF32') { throw "not ELF32" }
if ($hdr -notmatch 'Machine:\s+ARM') { throw "not ARM" }

$dyn = (& $ReadElf -d $Obj 2>&1 | Out-String)
Log "# --- readelf -d ---"
Log $dyn.TrimEnd()
if ($dyn -match 'There is no dynamic section') { throw "not dynamically linked" }

$sym = (& $ReadElf -s $Obj 2>&1 | Out-String)
Log "# --- exported tg_hook_* ---"
($sym -split "`r?`n" | Where-Object { $_ -match 'tg_hook_' }) | ForEach-Object { Log $_.TrimEnd() }
foreach ($need in @('tg_hook_install','tg_hook_prepare','tg_hook_status','tg_hook_stats','tg_hook_hooked','tg_hook_uninstall','tg_hook_last_error')) {
    if ($sym -notmatch [regex]::Escape($need)) { throw "missing export: $need" }
}

if ($script:Warnings -ne 0) {
    Log ("# result: FAIL (" + $script:Warnings + " warning line(s) in compiler output)")
    $script:LogLines | Out-File -FilePath $Log -Encoding utf8
    throw "compiler warnings present ($($script:Warnings))"
}

Log "# result: OK (0 warning, 0 error, ELF32/ARM, dynamically linked)"
$script:LogLines | Out-File -FilePath $Log -Encoding utf8

Write-Host ""
Write-Host ("log      : {0}" -f $Log)
Write-Host ("artifact : {0}" -f $Obj)
exit 0
