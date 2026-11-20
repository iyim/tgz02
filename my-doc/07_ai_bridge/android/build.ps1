# build.ps1 -- cross-compile the AI Worker for TG-Z02 (armeabi-v7a / API 26 / dynamic)
#
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# Artifact: out/ai_worker   (ELF32 / ARM / dynamically linked)
#
# Why dynamic linking is mandatory (T5-06A device measurements):
#   In a fully static binary libdl.a is only a stub
#   ("libdl.a is a stub --- use libdl.so instead"), so dlopen("libcurl.so") cannot work.
#   T5-06C reuses the system libcurl/OpenSSL for HTTPS, therefore the link mode is
#   fixed here and never revisited later.
#
# Fixed flags: -O2 -Wall -Wextra, no -Wno-*. Any warning shows up in evidence/ndk_build.log.
$ErrorActionPreference = "Stop"

$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$BinDir = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin"
$Cc  = Join-Path $BinDir "armv7a-linux-androideabi26-clang.cmd"
$ReadElf = Join-Path $BinDir "arm-linux-androideabi-readelf.exe"
if (-not (Test-Path $Cc)) { throw "NDK clang not found: $Cc" }
if (-not (Test-Path $ReadElf)) { throw "NDK readelf not found: $ReadElf" }

$Here = $PSScriptRoot                       # my-doc/07_ai_bridge/android
$Root = Split-Path $Here -Parent            # my-doc/07_ai_bridge
$Ev   = Join-Path $Root "evidence"
$Out  = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$Log = Join-Path $Ev "ndk_build.log"
$script:LogLines = New-Object System.Collections.Generic.List[string]

function Log([string]$text) {
    $script:LogLines.Add($text)
    Write-Host $text
}

$Src = @(
    "ai_worker.c", "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c"
)

$CcArgs = @(
    "-O2", "-Wall", "-Wextra", "-std=gnu99",
    "-fPIE", "-pie",
    "-I", $Here,
    "-o", (Join-Path $Out "ai_worker")
) + ($Src | ForEach-Object { Join-Path $Here $_ })

Log "# T5-06B NDK build log"
Log "# ndk : $Ndk"
Log "# cc  : $Cc"
Log "# cmd : $Cc $($CcArgs -join ' ')"
Log ""

$buildOut = & $Cc @CcArgs 2>&1 | Out-String
$rc = $LASTEXITCODE
Log $buildOut.TrimEnd()
Log "exit: $rc"
if ($rc -ne 0) {
    $script:LogLines | Out-File -FilePath $Log -Encoding utf8
    throw "build failed (exit $rc)"
}

$Bin = Join-Path $Out "ai_worker"
$f = Get-Item $Bin
$sha = (Get-FileHash $Bin -Algorithm SHA256).Hash.ToLower()

Log "artifact: $($f.Name)  $($f.Length) B  sha256=$sha"
Log ""
Log "# --- readelf -h (ELF header) ---"
Log ((& $ReadElf -h $Bin 2>&1 | Out-String).TrimEnd())
Log "# --- readelf -d (dynamic section) ---"
$dynText = (& $ReadElf -d $Bin 2>&1 | Out-String)
Log $dynText.TrimEnd()
Log "# --- readelf -l (INTERP) ---"
Log ((& $ReadElf -l $Bin 2>&1 | Select-String -Pattern "INTERP|Requesting|LOAD" |
      ForEach-Object { $_.Line }) -join "`n")

$script:LogLines | Out-File -FilePath $Log -Encoding utf8

Write-Host ""
Write-Host ("artifact: {0}  {1} B  sha256={2}" -f $f.Name, $f.Length, $sha)
Write-Host ("log     : {0}" -f $Log)

if ($dynText -match "There is no dynamic section") { throw "artifact is not dynamically linked" }
if ($dynText -notmatch "NEEDED.*libc\.so") { throw "artifact does not NEED libc.so" }
Write-Host "check   : dynamic linking OK (INTERP /system/bin/linker, NEEDED libc.so)"
exit 0
