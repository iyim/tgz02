<#
.SYNOPSIS
    校验默认桌面（HOME）是否可用，必要时给出恢复建议。
.DESCRIPTION
    只读：解析 HOME、检查 GenieLauncher / 当贝 / FallbackHome 三个候选是否存在，
    可选地真实启动一次桌面（-TryStart）并再次确认前台 Activity。
    不禁用、不卸载、不清数据、不刷写。
#>
[CmdletBinding()]
param(
    [string]$Serial = '',
    [switch]$TryStart,
    [string]$LogDir = ''
)

$ErrorActionPreference = 'Stop'

function Resolve-Adb {
    $adb = Get-Command adb -ErrorAction SilentlyContinue
    if (-not $adb) { throw 'adb 不在 PATH 中。' }
    return $adb.Source
}

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
function Say($t) { $lines.Add($t); Write-Host $t }

Say "# verify_launcher  $stamp"
$Adb = Resolve-Adb

$devices = & $Adb devices 2>&1
Say ("adb devices:`n{0}" -f ($devices -join "`n"))
if (-not ($devices -match '\bdevice\b')) {
    Say 'FAIL: 没有在线设备，无法校验桌面。'
    $lines -join "`n" | Set-Content -Encoding UTF8 $log
    exit 2
}

$homeOut = Invoke-Adb -Adb $Adb -AdbArgs 'cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME' -AllowFail
Say "HOME 解析:`n$($homeOut.Trim())"

$candidates = @{
    'GenieLauncher' = 'com.alibaba.ailabs.genie.launcher'
    'dangbei'       = 'com.dangbei1.tvlauncher'
    'FallbackHome'  = 'com.android.settings'
}
foreach ($k in $candidates.Keys) {
    $pkg = $candidates[$k]
    $d = Invoke-Adb -Adb $Adb -AdbArgs "dumpsys package $pkg" -AllowFail
    $installed = $d -match 'installed=true'
    $m = ($d | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches
    $en = if ($m.Count -gt 0) { $m[0].Groups[1].Value } else { 'unknown' }
    Say ("{0,-14} {1,-46} installed={2,-5} enabled={3}" -f $k, $pkg, $installed, $en)
}

if ($TryStart) {
    Say "`n尝试启动默认桌面（只启动 Activity，不改配置）…"
    $out = Invoke-Adb -Adb $Adb -AdbArgs 'am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity' -AllowFail
    Say $out.Trim()
    Start-Sleep -Seconds 2
    $top = Invoke-Adb -Adb $Adb -AdbArgs 'dumpsys activity activities | grep -m3 -E "mResumedActivity|topResumedActivity|ResumedActivity"' -AllowFail
    Say "前台 Activity:`n$($top.Trim())"
}

$homePkg = if ($homeOut -match '(\S+)/(\S+)') { $matches[1] } else { '' }
$ok = $homePkg -and ($homePkg -in $candidates.Values)
Say ("RESULT: {0}（默认 HOME = {1}）" -f $(if ($ok) { 'OK' } else { 'WARN - 默认 HOME 无法解析或不在候选内' }), $homePkg)

if (-not $ok) {
    Say @'
建议的恢复顺序：
  1) adb shell am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity
  2) adb shell cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity
  3) powershell -File tools\restore_last_disabled.ps1 -ConfirmPackage <你禁用的包>
'@
}

$lines -join "`n" | Set-Content -Encoding UTF8 $log
Say "日志: $log"
if (-not $ok) { exit 3 }
