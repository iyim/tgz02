# run_t7_04_host_tests.ps1 -- T7-04 主机增量测试（Windows + TDM-GCC，零网络、零真机）
#   powershell -ExecutionPolicy Bypass -File run_t7_04_host_tests.ps1
#
# 只覆盖本轮新增内容：本地意图路由 / ASR 暂存门 / 会话状态机，
# 以及 Worker 侧的编译（-Wall -Wextra 零告警）。**不重跑** T2-T7 的用例。
#
# 产物：
#   tests/out/t7_04_route_unit_test.exe / t7_04_gate_unit_test.exe / t7_04_session_unit_test.exe
#   my-doc/07_ai_bridge/evidence/t7_04_host_unit_test.log
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here    = $PSScriptRoot
$Root    = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev      = Join-Path $Root "evidence"
$Out     = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$Log = Join-Path $Ev "t7_04_host_unit_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)
$Fail = 0
$TotalPass = 0

Log "# T7-04 host unit test log"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

function Build-And-Run([string]$Name, [string]$TestSrc, [string[]]$Libs) {
    $exe = Join-Path $Out ("$Name.exe")
    $argv = $Base + @("-o", $exe, (Join-Path $Here $TestSrc)) + ($Libs | ForEach-Object { Join-Path $Android $_ })
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

Build-And-Run "t7_04_route_unit_test"   "t7_04_route_unit_test.c"   @("intent_route.c", "echo_filter.c")
Build-And-Run "t7_04_gate_unit_test"    "t7_04_gate_unit_test.c"    @("utterance_gate.c", "echo_filter.c", "worker_util.c")
Build-And-Run "t7_04_session_unit_test" "t7_04_session_unit_test.c" @("conv_session.c")

Log "=== worker compile check (-c, warnings are failures) ==="
foreach ($f in @("intent_route.c", "utterance_gate.c", "conv_session.c", "worker_conf.c",
                 "worker_status.c", "ai_worker.c")) {
    $argv = $Base + @("-c", (Join-Path $Android $f), "-o", (Join-Path $Out ($f + ".o")))
    $cc = & $Gcc @argv 2>&1 | Out-String
    $cleaned = $cc.TrimEnd()
    if ($cleaned.Length -gt 0) {
        Log "$f : $cleaned"
        if ($cleaned -match 'warning:|error:') { $script:Fail++ }
    } else {
        Log "$f : 0 warning"
    }
}

Log ""
Log "SUMMARY pass=$TotalPass fail=$Fail"
Log ("RESULT: " + ($(if ($Fail -eq 0) { "PASS" } else { "FAIL" })))

$script:Lines | Out-File -FilePath $Log -Encoding utf8
if ($Fail -ne 0) { exit 1 }
exit 0
