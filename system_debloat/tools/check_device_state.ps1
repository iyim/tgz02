<#
.SYNOPSIS
    只读检查设备状态：ADB 通道分类（USB / TCP）、默认桌面、禁用包、候选包状态。
.DESCRIPTION
    **只读**：不禁用、不卸载、不清数据、不写 XML、不刷写、不重启。
    USB 与 TCP/IP 分开报告：序列号形如 host:port 的一律记为 TCP，绝不当作 USB。
    所有 ADB 失败都会明确报错并返回非零码，不会假装成功。
.NOTES
    TG-Z02 / Android 8.1 (SDK 27)。
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
. (Join-Path $PSScriptRoot 'adb_transport.ps1')

function Invoke-Adb {
    param([string]$Adb, [string]$AdbArgs, [switch]$AllowFail)
    $target = @(); if ($Serial) { $target = @('-s', $Serial) }
    $out = & $Adb @target shell $AdbArgs 2>&1
    $code = $LASTEXITCODE
    if ($code -ne 0 -and -not $AllowFail) { throw "adb 命令失败 (exit $code): $AdbArgs`n$out" }
    return ($out -join "`n")
}

if (-not $LogDir) { $LogDir = Join-Path $PSScriptRoot '..\device_baseline\logs' }
if (-not (Test-Path $LogDir)) { New-Item -ItemType Directory -Path $LogDir -Force | Out-Null }
$stamp = Get-Date -Format 'yyyyMMdd_HHmmss'
$log = Join-Path $LogDir "check_device_state_$stamp.log"

$Adb = Get-AdbPath
$report = [System.Collections.Generic.List[string]]::new()
function Say($t) { $report.Add([string]$t); Write-Host $t }

Say "# check_device_state  $stamp"
Say "adb = $Adb"

$ti = Get-AdbTransportInfo -AdbPath $Adb
Say "`n## ADB 通道分类（USB 与 TCP 分开）"
Say ("原始输出:`n{0}" -f ($ti.raw -join "`n"))
Say ("USB  在线设备数 = {0}  序列号 = {1}" -f $ti.usb_online, (($ti.usb_serials -join ', ') -replace '^$', '无'))
Say ("TCP  在线设备数 = {0}  地址   = {1}" -f $ti.tcp_online, (($ti.tcp_serials -join ', ') -replace '^$', '无'))
Say ("USB 通道已验证 = {0}（没有 USB 序列号即视为未验证）" -f $ti.usb_verified)
Say ("TCP 通道已验证 = {0}" -f $ti.tcp_verified)

if (-not $ti.any_online) {
    Say 'RESULT: FAIL - 没有任何处于 device 状态的设备（USB 与 TCP 均不可用）。'
    $report -join "`n" | Set-Content -Encoding UTF8 $log
    Say "日志: $log"
    exit 2
}

Say "`n## 设备属性"
foreach ($p in 'ro.product.device', 'ro.build.version.sdk', 'ro.build.type', 'ro.adb.secure',
               'persist.adb.tcp.port', 'service.adb.tcp.port', 'sys.usb.state',
               'sys.usb.config', 'ro.genie.secureboot.enable') {
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
    $sus = ($d | Select-String -Pattern 'User 0:.*suspended=(true|false)').Matches
    $state = if ($en.Count -gt 0) { $en[0].Groups[1].Value } else { 'unknown' }
    $susVal = if ($sus.Count -gt 0) { $sus[0].Groups[1].Value } else { 'unknown' }
    Say ("{0,-46} installed={1,-5} enabled={2} suspended={3}" -f $pkg, $installed, $state, $susVal)
}

Say "`n## 两个桌面（默认 + 备用）"
foreach ($pkg in 'com.alibaba.ailabs.genie.launcher', 'com.dangbei1.tvlauncher') {
    $d = Invoke-Adb -Adb $Adb -AdbArgs "dumpsys package $pkg" -AllowFail
    $m = @(($d | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches)
    $en = if ($m.Count -gt 0) { $m[0].Groups[1].Value } else { 'unknown' }
    Say ("{0,-42} installed={1,-5} enabled={2}" -f $pkg, ($d -match 'installed=true'), $en)
}

Say "`n## 结论"
$verdict = if ($hasRoot -and $homeOk) { 'OK - ADB 在线、root 可用、默认桌面存在' } else { 'WARN - 见上面各项' }
if (-not $ti.usb_verified) { Say 'NOTE: USB 通道没有任何证据，USB 救援能力记为 unknown。' }
Say $verdict

$report -join "`n" | Set-Content -Encoding UTF8 $log
Say "`n日志: $log"
if ($verdict -notlike 'OK*') { exit 3 }
