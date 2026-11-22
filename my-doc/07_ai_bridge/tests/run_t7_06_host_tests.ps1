# run_t7_06_host_tests.ps1 -- T7-06-R1 主机测试（Windows + TDM-GCC，零设备、零网络）
#
#   powershell -ExecutionPolicy Bypass -File run_t7_06_host_tests.ps1
#
# 覆盖：
#   - 快照队列（容量/丢弃计数/多生产者压测/顺序/完整性）
#   - 采集落点权限决策（0700/0600，别人的宽松文件必须归档让开）
#
# 产物：tests/out/t7_06r1_*.exe + evidence/t7_06r1_host_unit_test.log
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here    = $PSScriptRoot
$Root    = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Wake    = Join-Path $Android "hook_wake"
$Ev      = Join-Path $Root "evidence"
$Out     = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev  | Out-Null

$Log = Join-Path $Ev "t7_06r1_host_unit_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Wake)
$Fail = 0
$TotalPass = 0

Log "# T7-06-R1 host unit test log"
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

Build-And-Run "t7_06r1_wake_queue_unit_test" "t7_06r1_wake_queue_unit_test.c" @(
    (Join-Path $Wake "wake_queue.c"))

Build-And-Run "t7_06r1_wake_store_unit_test" "t7_06r1_wake_store_unit_test.c" @(
    (Join-Path $Wake "wake_store.c"))

Log "# total: pass=$TotalPass fail=$Fail"
if ($Fail -ne 0) {
    Log "# result: FAIL"
    $script:Lines | Out-File -FilePath $Log -Encoding utf8
    exit 1
}
Log "# result: OK"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
exit 0
