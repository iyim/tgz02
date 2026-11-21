<#
.SYNOPSIS
    校验默认桌面（HOME）是否可用；可作为重启后的独立检查阶段。
.DESCRIPTION
    只读。区分 USB / TCP 通道；USB 无序列号时明确记 unknown，不会拿 TCP 冒充 USB。
    重启后的调用方式：加 -WaitSeconds，先等设备回来，再判定；设备没回来返回 12（不是“恢复失败”）。
    返回码：0 桌面正常；2 无可用设备；3 桌面异常；12 设备未回来（等待超时）。
#>
[CmdletBinding()]
param(
    [string]$Serial = '',
    [switch]$TryStart,
    [int]$WaitSeconds = 0,
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
$log = Join-Path $LogDir "verify_launcher_$stamp.log"
$lines = [System.Collections.Generic.List[string]]::new()
function Say($t) { $lines.Add([string]$t); Write-Host $t }

Say "# verify_launcher  $stamp"
$Adb = Get-AdbPath

if ($WaitSeconds -gt 0) {
    Say "等待设备回来（最多 $WaitSeconds 秒）…"
    $ti = Wait-AdbDevice -AdbPath $Adb -Serial $Serial -TimeoutSeconds $WaitSeconds
} else {
    $ti = Get-AdbTransportInfo -AdbPath $Adb
}

Say ("USB 在线={0} 序列号={1}；TCP 在线={2} 地址={3}；USB 已验证={4}" -f
     $ti.usb_online, (($ti.usb_serials -join ',') -replace '^$', '无'),
     $ti.tcp_online, (($ti.tcp_serials -join ',') -replace '^$', '无'), $ti.usb_verified)

if (-not $ti.any_online) {
    Say 'RESULT: DEVICE-NOT-BACK - 设备尚未回来（这不是“桌面恢复失败”，请稍后单独重跑本检查）。'
    $lines -join "`n" | Set-Content -Encoding UTF8 $log
    Say "日志: $log"
    exit 12
}

$homeOut = Invoke-Adb -Adb $Adb -AdbArgs 'cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME' -AllowFail
Say "HOME 解析:`n$($homeOut.Trim())"

$candidates = [ordered]@{
    'GenieLauncher(默认)' = 'com.alibaba.ailabs.genie.launcher'
    'dangbei(备用)'      = 'com.dangbei1.tvlauncher'
    'FallbackHome'      = 'com.android.settings'
}
foreach ($k in $candidates.Keys) {
    $pkg = $candidates[$k]
    $d = Invoke-Adb -Adb $Adb -AdbArgs "dumpsys package $pkg" -AllowFail
    $m = @(($d | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches)
    $en = if ($m.Count -gt 0) { $m[0].Groups[1].Value } else { 'unknown' }
    Say ("{0,-20} {1,-46} installed={2,-5} enabled={3}" -f $k, $pkg, ($d -match 'installed=true'), $en)
}

if ($TryStart) {
    Say "`n尝试启动默认桌面（只启动 Activity，不改配置）…"
    $out = Invoke-Adb -Adb $Adb -AdbArgs 'am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity' -AllowFail
    Say $out.Trim()
    Start-Sleep -Seconds 2
    $top = Invoke-Adb -Adb $Adb -AdbArgs 'dumpsys activity activities | grep -m3 -E "mResumedActivity|topResumedActivity"' -AllowFail
    Say "前台 Activity:`n$($top.Trim())"
}

$homePkg = if ($homeOut -match '(\S+)/(\S+)') { $matches[1] } else { '' }
$protectedHomes = @('com.alibaba.ailabs.genie.launcher', 'com.dangbei1.tvlauncher', 'com.android.settings')
$ok = $homePkg -and ($protectedHomes -contains $homePkg)
Say ("RESULT: {0}（默认 HOME = {1}）" -f $(if ($ok) { 'OK' } else { 'WARN - 默认 HOME 无法解析或不在受保护的桌面候选内' }), $homePkg)

if (-not $ok) {
    Say @'
建议的恢复顺序（都不改配置，先试第 1 条）：
  1) adb shell am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity
  2) adb shell am start -n com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity
  3) powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <目标包> -Mode CheckOnly
'@
}

$lines -join "`n" | Set-Content -Encoding UTF8 $log
Say "日志: $log"
if (-not $ok) { exit 3 }
