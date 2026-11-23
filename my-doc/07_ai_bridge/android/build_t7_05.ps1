# build_t7_05.ps1 -- T7-05 build (TTS guard with native_marker + ai_worker with gate-first routing)
#
#   powershell -ExecutionPolicy Bypass -File build_t7_04.ps1
#
# Artifacts:
#   out/libtg_ttsguard.so   TTS source guard (ELF32 / ARM / armeabi-v7a / API 26, dynamic)
#   out/ai_worker           AI worker (T7-04: intent route + utterance gate + session)
#
# Fixed flags -O2 -Wall -Wextra, no -Wno-*; any "warning:" line fails the build.
param(
    [string]$LogName = "t7_05_ndk_build.log"
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

$WorkerSources = @(
    "worker_util.c", "event_reader.c", "consumer_state.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "worker_status.c", "echo_filter.c",
    "intent_route.c", "utterance_gate.c", "conv_session.c", "t7_dup.c",
    "session_ctrl.c",
    # T8-14.1: skill dispatch must be part of the ARM32 worker build
    "skill_dispatch.c",
    "dead_letter.c",
    "provider.c", "mock_provider.c", "deepseek_provider.c", "talk_tap.c", "ai_worker.c"
) | ForEach-Object { Join-Path $Here $_ }

$Targets = @(
    @{
        name = "libtg_ttsguard.so"
        out  = (Join-Path $Out "libtg_ttsguard.so")
        args = @("-O2", "-Wall", "-Wextra", "-fPIC", "-shared",
                 "-I", $Here,
                 "-o", (Join-Path $Out "libtg_ttsguard.so"),
                 (Join-Path $Here "hook_tts\libtg_ttsguard.c"), (Join-Path $Here "hook_tts\native_marker.c"), "-llog")
    },
    @{
        name = "ai_worker"
        out  = (Join-Path $Out "ai_worker")
        args = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-fPIE", "-pie",
                 "-I", $Here,
                 "-o", (Join-Path $Out "ai_worker")) + $WorkerSources + @("-ldl", "-llog")
    }
)

Log "# T7-05 NDK build log (libtg_ttsguard native_marker + ai_worker gate-first routing)"
Log ("# time: " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Log "# ndk : $Ndk"
Log "# cc  : $Cc"
Log ""

foreach ($t in $Targets) {
    Log ("# cmd : " + $Cc + " " + ($t.args -join " "))
    $buildOut = & $Cc @($t.args) 2>&1 | Out-String
    $rc = $LASTEXITCODE
    if ($buildOut.Trim().Length -gt 0) { Log $buildOut.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
    Log "exit: $rc"
    if ($rc -ne 0) {
        Log ("# result: FAIL (" + $t.name + ")")
        $script:LogLines | Out-File -FilePath $Log -Encoding utf8
        throw "build failed (exit $rc): $($t.name)"
    }

    $f = Get-Item $t.out
    $sha = (Get-FileHash $t.out -Algorithm SHA256).Hash.ToLower()
    Log ("artifact: " + $f.Name + "  " + $f.Length + " B  sha256=" + $sha)

    $hdr = (& $ReadElf -h $t.out 2>&1 | Out-String)
    Log "# --- readelf -h ---"
    Log $hdr.TrimEnd()
    if ($hdr -notmatch 'Class:\s+ELF32') { throw ($t.name + " is not ELF32") }
    if ($hdr -notmatch 'Machine:\s+ARM') { throw ($t.name + " is not ARM") }

    $dyn = (& $ReadElf -d $t.out 2>&1 | Out-String)
    Log "# --- readelf -d ---"
    Log $dyn.TrimEnd()
    if ($dyn -match 'There is no dynamic section') { throw ($t.name + " is not dynamically linked") }
    Log ""
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
Write-Host "artifacts: $Out\libtg_ttsguard.so"
Write-Host "           $Out\ai_worker"
exit 0
