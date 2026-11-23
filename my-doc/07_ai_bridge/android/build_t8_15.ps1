# build_t8_15.ps1 -- T8-15 连续对话阶段：ARM32 构建（守卫 + worker）
#
#   powershell -ExecutionPolicy Bypass -File build_t8_15.ps1 [-LogName t8_15_5_ndk_build.log]
#
# 为什么单独一个脚本：T8-15 阶段 worker 的源文件集合已经比 build_t7_02.ps1 大
# （intent_route / utterance_gate / conv_session / session_ctrl / skill_dispatch /
#  talk_tap / t7_dup），用旧脚本链接会缺符号。这里固定住这一阶段的构建命令，
# 让"提交里能查到究竟编了哪些文件、编出什么"。产物：
#   android/out/libtg_ttsguard.so   (ELF32 / ARM / armeabi-v7a / API 26，动态)
#   android/out/ai_worker           (同上，PIE 可执行)
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
    "talk_tap.c", "ai_worker.c"
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
