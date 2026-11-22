# build_t6.ps1 -- T6-01 (Native Injector + Hook Agent) cross-build for TG-Z02
#
#   powershell -ExecutionPolicy Bypass -File build_t6.ps1
#
# Artifacts (both ELF32 / ARM / armeabi-v7a / API 26, dynamically linked):
#   out/tg_injector    standalone injector (PIE executable)
#   out/libtg_hook.so  hook agent shared library
#
# Fixed flags: -O2 -Wall -Wextra, no -Wno-*.  Any warning lands in the log file.
# The script fails on: non-zero exit, any "warning:" line, or a non-ELF32/ARM header.
param(
    [string]$LogName = "t6_01_ndk_build.log"
)
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
$script:Warnings = 0

function Log([string]$s) {
    $script:LogLines.Add($s)
    if ($s -match 'warning\s*:') { $script:Warnings++ }
}

$InjectorDir = Join-Path $Here "injector"
$HookDir     = Join-Path $Here "hook_agent"

$Targets = @(
    @{
        name = "tg_injector"
        out  = (Join-Path $Out "tg_injector")
        args = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-fPIE", "-pie",
                 "-I", $InjectorDir, "-o", (Join-Path $Out "tg_injector"),
                 (Join-Path $InjectorDir "tg_injector.c"),
                 (Join-Path $InjectorDir "remote_call.c"))
    },
    @{
        name = "libtg_hook.so"
        out  = (Join-Path $Out "libtg_hook.so")
        args = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-fPIC", "-shared",
                 "-I", $HookDir, "-I", $Here, "-o", (Join-Path $Out "libtg_hook.so"),
                 (Join-Path $HookDir "libtg_hook.c"),
                 (Join-Path $HookDir "tg_wire.c"),
                 (Join-Path $Here "nlu_takeover.c"),
                 (Join-Path $Here "nlu_switch.c"),
                 (Join-Path $Here "nlu_patch.c"),
                 (Join-Path $Here "intent_route.c"),
                 (Join-Path $Here "echo_filter.c"),
                 "-llog")
    }
)

Log "# T6-01 build :: NDK r21e :: armv7a-linux-androideabi26-clang"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
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
    if ($hdr -notmatch 'Machine:\s+ARM')  { throw ($t.name + " is not ARM") }

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
Write-Host "artifacts: $Out\tg_injector"
Write-Host "           $Out\libtg_hook.so"
exit 0
