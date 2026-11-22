# build_t7_08_arm.ps1 -- T7-08: ARM32 (armeabi-v7a / API 26) build of the worker with dead_letter.c
#
#   powershell -ExecutionPolicy Bypass -File build_t7_08_arm.ps1
#
# 产物：
#   android/out/ai_worker.t7_08          （ELF32 / ARM / PIE，未部署到设备）
#   evidence/t7_08_arm_build.log         （真实编译日志：命令行、编译器输出、readelf、结论）
#
# 与 build_t7_05.ps1 的区别只有一个：源码清单里多了 dead_letter.c，输出文件名带 .t7_08，
# 免得和"设备上正在跑的那一份"混在一起。任何 warning 都判失败（沿用本项目约定）。
param(
    [string]$LogName = "t7_08_arm_build.log"
)
$ErrorActionPreference = "Stop"

$Ndk     = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
$BinDir  = Join-Path $Ndk "toolchains\llvm\prebuilt\windows-x86_64\bin"
$Cc      = Join-Path $BinDir "armv7a-linux-androideabi26-clang.cmd"
$ReadElf = Join-Path $BinDir "arm-linux-androideabi-readelf.exe"
if (-not (Test-Path $Cc))      { throw "NDK clang not found: $Cc" }
if (-not (Test-Path $ReadElf)) { throw "NDK readelf not found: $ReadElf" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Ev   = Join-Path $Root "evidence"
$Out  = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$Log = Join-Path $Ev $LogName
$script:Lines = New-Object System.Collections.Generic.List[string]
$script:Warnings = 0
function Log([string]$s) {
    $script:Lines.Add($s)
    if ($s -match 'warning\s*:') { $script:Warnings++ }
    Write-Host $s
}

# 与 build_t7_05.ps1 的 $WorkerSources 保持一致，唯一新增是 dead_letter.c
$Sources = @(
    "worker_util.c", "event_reader.c", "consumer_state.c", "seq_gap.c",
    "conv_context.c", "worker_conf.c", "worker_status.c", "echo_filter.c",
    "intent_route.c", "utterance_gate.c", "conv_session.c", "t7_dup.c",
    "dead_letter.c",
    "provider.c", "mock_provider.c", "deepseek_provider.c", "ai_worker.c"
) | ForEach-Object { Join-Path $Here $_ }

$Obj  = Join-Path $Out "ai_worker.t7_08"
$Args = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-fPIE", "-pie",
          "-I", $Here, "-o", $Obj) + $Sources + @("-ldl", "-llog")

Log "# T7-08 ARM32 build log (ai_worker + dead_letter.c, armeabi-v7a / API 26)"
Log ("# time: " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Log "# ndk : $Ndk"
Log "# cc  : $Cc"
Log "# out : $Obj"
Log ("# cmd : " + $Cc + " " + ($Args -join " "))
$buildOut = & $Cc @($Args) 2>&1 | Out-String
$rc = $LASTEXITCODE
if ($buildOut.Trim().Length -gt 0) { Log $buildOut.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
Log ("exit: " + $rc)
if ($rc -ne 0) {
    Log "# result: FAIL (compile/link)"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    throw "arm build failed (exit $rc)"
}

$f = Get-Item $Obj
Log ("artifact: " + $f.Name + "  " + $f.Length + " B  sha256=" + (Get-FileHash $Obj -Algorithm SHA256).Hash.ToLower())

$hdr = (& $ReadElf -h $Obj 2>&1 | Out-String)
Log "# --- readelf -h ---"
Log $hdr.TrimEnd()
if ($hdr -notmatch 'Class:\s+ELF32') { throw "not ELF32" }
if ($hdr -notmatch 'Machine:\s+ARM') { throw "not ARM" }

$dyn = (& $ReadElf -d $Obj 2>&1 | Out-String)
Log "# --- readelf -d ---"
Log $dyn.TrimEnd()
if ($dyn -match 'There is no dynamic section') { throw "not dynamically linked" }
if ($dyn -notmatch 'NEEDED.*libc\.so')         { throw "does not NEED libc.so" }

$sym = (& $ReadElf -sW $Obj 2>&1 | Out-String)
$hasDl = ($sym -match 't6b_dl_format') -and ($sym -match 't6b_dl_append')
$leaked = ($sym -match 't6b_dl_test_fault') -or ($sym -match 'dl_test_env_init') -or ($sym -match 'dl_mk_selftest')
$strs = (& $ReadElf -p .rodata $Obj 2>&1 | Out-String)
$strLeak = $strs -match 'marker-selftest'
Log ("# symbols present: t6b_dl_format/t6b_dl_append = " + $hasDl)
if ($leaked) { Log "# fault-injection symbols: PRESENT (BAD)" }
else         { Log "# fault-injection symbols: absent (expected in a production build)" }
Log ("# T7-10 marker test entry string '--marker-selftest': " + ($(if ($strLeak) { "PRESENT (BAD)" } else { "absent (expected)" })))
if (-not $hasDl) { throw "dead_letter symbols missing from ARM artifact" }
if ($leaked)     { throw "test hooks leaked into the production ARM build" }
if ($strLeak)    { throw "T7-10 marker selftest entry leaked into the production ARM build" }

if ($script:Warnings -ne 0) {
    Log ("# result: FAIL (" + $script:Warnings + " warning line(s))")
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    throw "compiler warnings present ($($script:Warnings))"
}

Log "# result: OK (0 warning, 0 error; ELF32/ARM/PIE; NEEDED libc; no test hooks)"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ""
Write-Host ("log      : {0}" -f $Log)
Write-Host ("artifact : {0}" -f $Obj)
exit 0
