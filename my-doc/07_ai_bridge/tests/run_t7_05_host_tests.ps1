# run_t7_05_host_tests.ps1 -- T7-05 主机增量测试（Windows + TDM-GCC，零网络、零真机）
#   powershell -ExecutionPolicy Bypass -File run_t7_05_host_tests.ps1
#
# 覆盖本轮新增内容：
#   - 顺序修复：先攒完整 utterance 再判定本地意图（五组分段样本）
#   - 完整本地指令的快路（不等 debounce）与紧随其后的修订去重
#   - 路由误判样本（任务书点名的 5 反 4 正）
#   - 放行标记的解析/判定（含失败注入：坏标记绝不放过原厂回答）
#
# 产物：tests/out/t7_05_*.exe + my-doc/07_ai_bridge/evidence/t7_05_host_unit_test.log
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here    = $PSScriptRoot
$Root    = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$HookDir = Join-Path $Android "hook_tts"
$Ev      = Join-Path $Root "evidence"
$Out     = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$Log = Join-Path $Ev "t7_05_host_unit_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android, "-I", $HookDir)
$Fail = 0
$TotalPass = 0

Log "# T7-05 host unit test log"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

function Build-And-Run([string]$Name, [string]$TestSrc, [string[]]$Libs) {
    $exe = Join-Path $Out ("$Name.exe")
    $argv = $Base + @("-o", $exe, (Join-Path $Here $TestSrc)) + $Libs
    Log "=== build $Name ==="
    Log ("cc   : " + $Gcc + " " + ($argv -join " "))
    $cc = & $Gcc @argv 2>&1 | Out-String
    if ($cc.Trim().Length -gt 0) { Log $cc.TrimEnd() } else { Log "(no compiler output: 0 warning, 0 error)" }
    if ($LASTEXITCODE -ne 0) {
        Log "build FAILED: $Name"
        $script:Fail++
        return
    }
    Log "=== run $Name ==="
    $run = & $exe 2>&1 | Out-String
    $rc = $LASTEXITCODE
    ($run.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
    if ($run -match 'pass=(\d+) fail=(\d+)') {
        $script:TotalPass += [int]$Matches[1]
        $script:Fail += [int]$Matches[2]
    } elseif ($rc -ne 0) {
        $script:Fail++
    }
    Log ""
}

Build-And-Run "t7_05_gate_order_unit_test"      "t7_05_gate_order_unit_test.c" @(
    (Join-Path $Android "utterance_gate.c"),
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c"),
    (Join-Path $Android "worker_util.c"))

Build-And-Run "t7_05_route_negatives_unit_test" "t7_05_route_negatives_unit_test.c" @(
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c"))

Build-And-Run "t7_05r1_incomplete_unit_test"    "t7_05r1_incomplete_unit_test.c" @(
    (Join-Path $Android "utterance_gate.c"),
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c"),
    (Join-Path $Android "worker_util.c"))

Build-And-Run "t7_05_native_marker_unit_test"   "t7_05_native_marker_unit_test.c" @(
    (Join-Path $HookDir "native_marker.c"))

Build-And-Run "t7_05r2_dedupe_unit_test"        "t7_05r2_dedupe_unit_test.c" @(
    (Join-Path $Android "t7_dup.c"),
    (Join-Path $Android "utterance_gate.c"),
    (Join-Path $Android "intent_route.c"),
    (Join-Path $Android "echo_filter.c"),
    (Join-Path $Android "worker_util.c"))

Log "# total: pass=$TotalPass fail=$Fail"
if ($Fail -ne 0) {
    Log "# result: FAIL"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    exit 1
}
Log "# result: OK"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
exit 0
