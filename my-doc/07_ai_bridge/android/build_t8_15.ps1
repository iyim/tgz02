# build_t8_15.ps1 -- T8-15 杩炵画瀵硅瘽闃舵锛欰RM32 鏋勫缓锛堝畧鍗?+ worker锛?#
#   powershell -ExecutionPolicy Bypass -File build_t8_15.ps1 [-LogName t8_15_5_ndk_build.log]
#
# 涓轰粈涔堝崟鐙竴涓剼鏈細T8-15 闃舵 worker 鐨勬簮鏂囦欢闆嗗悎宸茬粡姣?build_t7_02.ps1 澶?# 锛坕ntent_route / utterance_gate / conv_session / session_ctrl / skill_dispatch /
#  talk_tap / t7_dup锛夛紝鐢ㄦ棫鑴氭湰閾炬帴浼氱己绗﹀彿銆傝繖閲屽浐瀹氫綇杩欎竴闃舵鐨勬瀯寤哄懡浠わ紝
# 璁?鎻愪氦閲岃兘鏌ュ埌绌剁珶缂栦簡鍝簺鏂囦欢銆佺紪鍑轰粈涔?銆備骇鐗╋細
#   android/out/libtg_ttsguard.so   (ELF32 / ARM / armeabi-v7a / API 26锛屽姩鎬?
#   android/out/ai_worker           (鍚屼笂锛孭IE 鍙墽琛?
param([string]$LogName = "t8_15_5_ndk_build.log")
$ErrorActionPreference = "Stop"

$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$BinDir = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin"
$Cc = Join-Path $BinDir "armv7a-linux-androideabi26-clang.cmd"
$ReadElf = Join-Path $BinDir "arm-linux-androideabi-readelf.exe"
if (-not (Test-Path $Cc)) { throw "NDK clang not found: $Cc" }
if (-not (Test-Path $ReadElf)) { throw "NDK readelf not found: $ReadElf" }

$Here = $PSScriptRoot                        # my-doc/07_ai_bridge/android
$Root = Split-Path $Here -Parent             # my-doc/07_ai_bridge
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null

$Log = Join-Path $Ev $LogName
$script:Lines = New-Object System.Collections.Generic.List[string]
$script:Warnings = 0

function Log([string]$s) {
    $script:Lines.Add($s)
    if ($s -match 'warning\s*:') { $script:Warnings++ }
}

$WorkerSources = @(
    "worker_util.c", "event_reader.c", "consumer_state.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "worker_status.c", "echo_filter.c",
    "intent_route.c", "utterance_gate.c", "conv_session.c", "t7_dup.c",
    "session_ctrl.c", "skill_dispatch.c", "dead_letter.c",
    "provider.c", "mock_provider.c", "deepseek_provider.c",
    "talk_tap.c", "tg_inbox.c", "ui_events.c", "ai_worker.c"
) | ForEach-Object { Join-Path $Here $_ }

$GuardSources = @(
    (Join-Path $Here "hook_tts\libtg_ttsguard.c"),
    (Join-Path $Here "hook_tts\native_marker.c")
)

$Targets = @(
    @{
        name = "libtg_ttsguard.so"
        out = (Join-Path $Out "libtg_ttsguard.so")
        args = @("-O2", "-Wall", "-Wextra", "-fPIC", "-shared", "-I", $Here,
                 "-o", (Join-Path $Out "libtg_ttsguard.so")) + $GuardSources + @("-llog")
    },
    @{
        name = "ai_worker"
        out = (Join-Path $Out "ai_worker")
        args = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-fPIE", "-pie", "-I", $Here,
                 "-o", (Join-Path $Out "ai_worker")) + $WorkerSources + @("-ldl", "-llog")
    }
)

Log "# T8-15 ARM32 build log (libtg_ttsguard + ai_worker, including tg_req_seq.h)"
Log "# ndk : $Ndk"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

$rcAll = 0
foreach ($t in $Targets) {
    Log ("# cmd : " + $Cc + " " + ($t.args -join " "))
    $buildOut = & $Cc @($t.args) 2>&1 | Out-String
    $rc = $LASTEXITCODE
    if ($buildOut.Trim().Length -gt 0) { Log $buildOut.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
    Log "exit: $rc"
    if ($rc -ne 0) {
        Log ("# result: FAIL (" + $t.name + ")")
        $script:Lines | Out-File -FilePath $Log -Encoding utf8
        throw "build failed (exit $rc): $($t.name)"
    }
    $f = Get-Item $t.out
    $sha = (Get-FileHash $t.out -Algorithm SHA256).Hash.ToLower()
    Log ("artifact: " + $f.Name + "  " + $f.Length + " B  sha256=" + $sha)
    $elf = & $ReadElf -h $t.out 2>&1 | Out-String
    ($elf -split "`n" | Where-Object { $_ -match 'Class:|Machine:|Type:' }) | ForEach-Object { Log ("  " + $_.Trim()) }
    Log ""
    $rcAll = $rcAll + $rc
}

Log ("# warnings: " + $script:Warnings)
Log ("# result: " + $(if ($script:Warnings -eq 0) { "OK (0 warning)" } else { "OK with warnings" }))
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ("artifacts: " + $Out + "\libtg_ttsguard.so , " + $Out + "\ai_worker")
Write-Host ("log: " + $Log)
exit $rcAll

