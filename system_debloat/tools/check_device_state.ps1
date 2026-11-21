<#
.SYNOPSIS
    只读检查：ADB 连接、默认桌面、禁用包、候选包状态。
.DESCRIPTION
    TG-Z02 系统精简项目的救援前置检查。**只读**：不禁用、不卸载、不清数据、不刷写。
    所有 ADB 失败都会明确报错并退出，不会假装成功。
.NOTES
    Android 8.1 / SDK 27。pm 的 disable/disable-user 在本固件被裁剪，本脚本不依赖它们。
#>
[CmdletBinding()]
param(
    [string]$Serial = '',
    [string[]]$Packages = @('com.alibaba.ailabs.genie.iot',
                            'com.alibaba.ailabs.ar.monitor',
                            'com.alibaba.ailabs.genie.children',
                            'com.alibaba.ailabs.genie.albums'),
    [string]$LogDir = ''
)

$ErrorActionPreference = 'Stop'

function Resolve-Adb {
    $adb = Get-Command adb -ErrorAction SilentlyContinue
    if (-not $adb) { throw 'adb 不在 PATH 中：请先安装 platform-tools 或把 adb 加入 PATH。' }
    return $adb.Source
}

function Invoke-Adb {
    param([string]$Adb, [string]$AdbArgs, [switch]$AllowFail)
    $target = @()
    if ($Serial) { $target = @('-s', $Serial) }
    $out = & $Adb @target shell $AdbArgs 2>&1
    $code = $LASTEXITCODE
    if ($code -ne 0 -and -not $AllowFail) {
        throw "adb 命令失败 (exit $code): $AdbArgs`n$out"
    }
    return ($out -join "`n")
}

if (-not $LogDir) { $LogDir = Join-Path $PSScriptRoot '..\device_baseline\logs' }
if (-not (Test-Path $LogDir)) { New-Item -ItemType Directory -Path $LogDir -Force | Out-Null }
$stamp = Get-Date -Format 'yyyyMMdd_HHmmss'
$log = Join-Path $LogDir "check_device_state_$stamp.log"

$Adb = Resolve-Adb
$report = [System.Collections.Generic.List[string]]::new()
function Say($t) { $report.Add($t); Write-Host $t }

Say "# check_device_state  $stamp"
Say "adb = $Adb"

$devices = & $Adb devices 2>&1
Say "`n## adb devices`n$($devices -join "`n")"
if (-not ($devices -match '\bdevice\b')) {
    Say 'RESULT: FAIL - 没有处于 device 状态的设备；恢复脚本此时无法工作。'
    $report -join "`n" | Set-Content -Encoding UTF8 $log
    Say "日志: $log"
    exit 2
}

$online = ($devices | Select-String -Pattern '^(\S+)\s+device$').Matches.Count
Say "在线设备数: $online"

Say "`n## 设备属性"
foreach ($p in 'ro.product.device', 'ro.build.version.sdk', 'ro.build.type', 'ro.adb.secure',
               'persist.adb.tcp.port', 'service.adb.tcp.port', 'ro.genie.secureboot.enable') {
    $v = Invoke-Adb -Adb $Adb -AdbArgs "getprop $p" -AllowFail
    Say ("{0} = {1}" -f $p, $v.Trim())
}

Say "`n## root 可用性"
$id = Invoke-Adb -Adb $Adb -AdbArgs "su -c id" -AllowFail
Say "su -c id => $($id.Trim())"
$hasRoot = $id -match 'uid=0'

Say "`n## 默认 HOME"
$homeOut = Invoke-Adb -Adb $Adb -AdbArgs 'cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME' -AllowFail
Say $homeOut.Trim()
$homeOk = $homeOut -match 'com\.alibaba\.ailabs\.genie\.launcher'
Say "默认桌面为 GenieLauncher: $homeOk"

Say "`n## 禁用包列表 (pm list packages -d)"
$disabled = Invoke-Adb -Adb $Adb -AdbArgs 'pm list packages -d' -AllowFail
if ([string]::IsNullOrWhiteSpace($disabled)) { Say '(空)' } else { Say $disabled.Trim() }

Say "`n## 候选包状态"
foreach ($pkg in $Packages) {
    $d = Invoke-Adb -Adb $Adb -AdbArgs "dumpsys package $pkg" -AllowFail
    $en = ($d | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches
    $installed = $d -match 'installed=true'
    $state = if ($en.Count -gt 0) { $en[0].Groups[1].Value } else { 'unknown' }
    Say ("{0,-46} installed={1,-5} enabled={2}" -f $pkg, $installed, $state)
}

Say "`n## 备用桌面（当贝）是否可用"
$db = Invoke-Adb -Adb $Adb -AdbArgs 'dumpsys package com.dangbei1.tvlauncher' -AllowFail
Say ("dangbei installed={0} enabled={1}" -f ($db -match 'installed=true'),
      (($db | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches | ForEach-Object { $_.Groups[1].Value }))

Say "`n## 结论"
$verdict = if ($hasRoot -and $homeOk) { 'OK - ADB 在线、root 可用、默认桌面存在' } else { 'WARN - 见上面各项' }
Say $verdict

$report -join "`n" | Set-Content -Encoding UTF8 $log
Say "`n日志: $log"
if ($verdict -notlike 'OK*') { exit 3 }
