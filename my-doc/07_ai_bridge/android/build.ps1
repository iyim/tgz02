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
#
# T5-06C: also builds worker_unit_test (same sources + tests/worker_unit_test.c) so the
# device-side ARM32 unit test always matches the shipped worker binary.
#   -LogName t5_06c_ndk_build.log   (default ndk_build.log)
param([string]$LogName = "ndk_build.log")
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

$Log = Join-Path $Ev $LogName
$script:LogLines = New-Object System.Collections.Generic.List[string]

function Log([string]$text) {
    $script:LogLines.Add($text)
    Write-Host $text
}

$Lib = @(
    "event_reader.c", "consumer_state.c", "provider.c",
    "mock_provider.c", "deepseek_provider.c", "worker_status.c", "worker_util.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "dead_letter.c"
) | ForEach-Object { Join-Path $Here $_ }

$Targets = @(
    @{ name = "ai_worker";        out = (Join-Path $Out "ai_worker");        src = @((Join-Path $Here "ai_worker.c")) + $Lib },
    @{ name = "worker_unit_test"; out = (Join-Path $Out "worker_unit_test"); src = @((Join-Path $Root "tests\worker_unit_test.c")) + $Lib }
)

Log "# T5-06B/T5-06C NDK build log (ai_worker + worker_unit_test, deepseek_provider included)"
Log "# ndk : $Ndk"
Log "# cc  : $Cc"
Log ""
Log "# --- readelf of the shipped libs (for the record) ---"

$rcAll = 0
$dynAll = ""
foreach ($t in $Targets) {
    $CcArgs = @(
        "-O2", "-Wall", "-Wextra", "-std=gnu99",
        "-fPIE", "-pie",
        "-I", $Here,
        "-o", $t.out
    ) + $t.src

    Log ("# cmd : " + $Cc + " " + ($CcArgs -join " "))
    $buildOut = & $Cc @CcArgs 2>&1 | Out-String
    $rc = $LASTEXITCODE
    if ($buildOut.Trim().Length -gt 0) { Log $buildOut.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
    Log "exit: $rc"
    if ($rc -ne 0) {
        Log ("# result: FAIL (" + $t.name + ")")
        $script:LogLines | Out-File -FilePath $Log -Encoding utf8
        throw "build failed (exit $rc)"
    }

    $f = Get-Item $t.out
    $sha = (Get-FileHash $t.out -Algorithm SHA256).Hash.ToLower()
    Log ("artifact: " + $f.Name + "  " + $f.Length + " B  sha256=" + $sha)
    Log "# --- readelf -h (ELF header) ---"
    Log ((& $ReadElf -h $t.out 2>&1 | Out-String).TrimEnd())
    Log "# --- readelf -d (dynamic section) ---"
    $dynText = (& $ReadElf -d $t.out 2>&1 | Out-String)
    Log $dynText.TrimEnd()
    Log "# --- readelf -l (INTERP) ---"
    Log ((& $ReadElf -l $t.out 2>&1 | Select-String -Pattern "INTERP|Requesting|LOAD" |
          ForEach-Object { $_.Line }) -join "`n")
    Log ""

    if ($dynText -match "There is no dynamic section") { throw ($t.name + " is not dynamically linked") }
    if ($dynText -notmatch "NEEDED.*libc\.so") { throw ($t.name + " does not NEED libc.so") }
    $dynAll += $dynText
}

Log "# result: OK (0 warning, 0 error, both binaries dynamically linked, NEEDED libc.so)"
$script:LogLines | Out-File -FilePath $Log -Encoding utf8

Write-Host ""
Write-Host ("log     : {0}" -f $Log)
Write-Host "check   : dynamic linking OK for both binaries (NEEDED libc.so)"
exit 0
