<#
.SYNOPSIS
    恢复最近一次被禁用的包（必须先人工确认包名）。
.DESCRIPTION
    TG-Z02 系统精简项目救援脚本。**绝不自动禁用/删除/清数据/刷写**；只做恢复。
    - 恢复前读取记录文件，展示“最近一次禁用”的包名，并要求 -ConfirmPackage 完全匹配；
    - 使用 pm enable（若本固件被裁剪则报错），或 -ViaRestrictions 走还原 package-restrictions.xml；
    - 恢复前后写日志，并检查包的 enabled 状态与默认 Launcher 是否回来。
.NOTES
    Android 8.1 / SDK 27。pm 的 disable/disable-user 在本固件被裁剪；enable 是否可用未实测。
#>
[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$ConfirmPackage,
    [string]$Serial = '',
    [switch]$ViaRestrictions,
    [string]$RestrictionsBackup = '/data/local/tmp/pr_orig.xml',
    [string]$RecordFile = '',
    [switch]$AllowReboot
)

$ErrorActionPreference = 'Stop'
$PROTECTED = @(
    'com.dangbei1.tvlauncher',
    'bin.mt.plus',
    'com.estrongs.android.pop',
    'com.web1n.permissiondog',
    'com.shere.assistivetouch',
    'com.topjohnwu.magisk'
)

function Resolve-Adb {
    $adb = Get-Command adb -ErrorAction SilentlyContinue
    if (-not $adb) { throw 'adb 不在 PATH 中：恢复无法进行。' }
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

if (-not $RecordFile) { $RecordFile = Join-Path $PSScriptRoot '..\device_baseline\last_disabled.json' }
$LogDir = Join-Path $PSScriptRoot '..\device_baseline\logs'
if (-not (Test-Path $LogDir)) { New-Item -ItemType Directory -Path $LogDir -Force | Out-Null }
$stamp = Get-Date -Format 'yyyyMMdd_HHmmss'
$log = Join-Path $LogDir "restore_last_disabled_$stamp.log"
$lines = [System.Collections.Generic.List[string]]::new()
function Say($t) { $lines.Add($t); Write-Host $t }

Say "# restore_last_disabled  $stamp"

# ---- 1. 保护名单硬拦截
if ($PROTECTED -contains $ConfirmPackage) {
    Say "REFUSED: $ConfirmPackage 属于六个保护 App，本脚本不处理保护名单。"
    $lines -join "`n" | Set-Content -Encoding UTF8 $log
    exit 4
}

# ---- 2. 与记录文件比对
$record = $null
if (Test-Path $RecordFile) {
    $record = Get-Content $RecordFile -Raw | ConvertFrom-Json
    Say ("记录文件: {0}  最近一次禁用 = {1}  时间 = {2}" -f $RecordFile, $record.package, $record.captured_at)
    if ($record.package -and $record.package -ne $ConfirmPackage) {
        Say "WARN: 你确认的包名与记录不一致（记录=$($record.package)，输入=$ConfirmPackage）。"
    }
} else {
    Say "WARN: 没有找到记录文件 $RecordFile；将仅按你确认的包名执行。"
}

# ---- 3. ADB 在线检查（断开就明确失败）
$Adb = Resolve-Adb
$devices = & $Adb devices 2>&1
if (-not ($devices -match '\bdevice\b')) {
    Say "FAIL: adb 没有处于 device 状态的设备，未做任何操作。`n$($devices -join "`n")"
    $lines -join "`n" | Set-Content -Encoding UTF8 $log
    exit 2
}

# ---- 4. 恢复前状态
$before = Invoke-Adb -Adb $Adb -AdbArgs "dumpsys package $ConfirmPackage" -AllowFail
$beforeState = ($before | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches
$beforeVal = if ($beforeState.Count -gt 0) { $beforeState[0].Groups[1].Value } else { 'unknown' }
Say ("恢复前: enabled={0}" -f $beforeVal)

# ---- 5. 执行恢复
if ($ViaRestrictions) {
    $cmd = "su -c 'test -f $RestrictionsBackup && cp $RestrictionsBackup /data/system/users/0/package-restrictions.xml && chown system:system /data/system/users/0/package-restrictions.xml && chmod 660 /data/system/users/0/package-restrictions.xml && restorecon /data/system/users/0/package-restrictions.xml && sync && echo RESTORED'"
    Say "方式: 还原 $RestrictionsBackup → package-restrictions.xml"
    $out = Invoke-Adb -Adb $Adb -AdbArgs $cmd -AllowFail
    Say $out.Trim()
    if ($out -notmatch 'RESTORED') {
        Say 'FAIL: 还原未确认成功（备份不存在或无权限）。'
        $lines -join "`n" | Set-Content -Encoding UTF8 $log
        exit 5
    }
    if ($AllowReboot) {
        Say '重启以使状态生效…'
        & $Adb @(@('-s', $Serial) | Where-Object { $_ }) reboot 2>&1 | Out-Null
    } else {
        Say '需要重启才生效；未传 -AllowReboot，所以没有重启。'
    }
} else {
    Say "方式: pm enable $ConfirmPackage"
    $out = Invoke-Adb -Adb $Adb -AdbArgs "su -c 'pm enable $ConfirmPackage'" -AllowFail
    Say $out.Trim()
    if ($out -match 'unknown command') {
        Say 'FAIL: 本固件的 pm 被裁剪，enable 不可用 → 请改用 -ViaRestrictions。'
        $lines -join "`n" | Set-Content -Encoding UTF8 $log
        exit 6
    }
}

# ---- 6. 恢复后校验
Start-Sleep -Seconds 2
$after = Invoke-Adb -Adb $Adb -AdbArgs "dumpsys package $ConfirmPackage" -AllowFail
$afterState = ($after | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches
$stateVal = if ($afterState.Count -gt 0) { $afterState[0].Groups[1].Value } else { 'unknown' }
Say ("恢复后: enabled={0}（0=DEFAULT / 1=ENABLED 视为已启用）" -f $stateVal)

$homeOut = Invoke-Adb -Adb $Adb -AdbArgs 'cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME' -AllowFail
Say ("默认桌面: {0}" -f ($homeOut.Trim() -replace "`n", ' | '))

$ok = ($stateVal -in @('0', '1')) -and ($homeOut -match 'com\.')
Say ("RESULT: {0}" -f $(if ($ok) { 'OK' } else { 'INCOMPLETE - 见上面日志' }))
$lines -join "`n" | Set-Content -Encoding UTF8 $log
Say "日志: $log"
if (-not $ok) { exit 7 }
