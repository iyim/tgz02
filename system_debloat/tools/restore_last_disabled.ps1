<#
.SYNOPSIS
    恢复最近一次被禁用的单个包（单包元素级恢复，绝不整文件覆盖）。
.DESCRIPTION
    TG-Z02 系统精简项目救援脚本。设计原则（rev5.6）：
      * 必须显式给出 -ConfirmPackage，且与备份里的目标包一致；
      * -Mode XmlElementRestore 时必须有 -BackupFile 与 -ExpectedSha256，且备份必须是
        **单包元素备份**（只含一个 <pkg name="目标包" ...> 片段）；整文件备份一律拒绝；
      * 写入前比对：当前 XML 里目标元素必须存在且唯一，其余包的元素行不得发生变化；
      * 退出码 0 **不代表恢复成功**——它只表示“操作已提交，等待重启后验证”；
        真正的成功要等 -Mode CheckOnly 复核（退出码 20）。
    退出码：0 已提交待验证 / 2 ADB 不可用 / 4 保护名单拒绝 / 5 备份非法（整文件或不匹配）
            6 pm 不可用 / 7 状态不一致 / 11 写入后校验失败 / 20 CheckOnly 通过 / 21 CheckOnly 未通过
            12 设备未回来
.NOTES
    只做恢复，不做禁用/卸载/清数据/刷写。默认不重启（需 -AllowReboot 显式开启）。
#>
[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [Parameter(Mandatory = $true)][string]$ConfirmPackage,
    [ValidateSet('CheckOnly', 'Enable', 'XmlElementRestore')][string]$Mode = 'CheckOnly',
    [string]$BackupFile = '',
    [string]$ExpectedSha256 = '',
    [string]$Serial = '',
    [string]$RecordFile = '',
    [switch]$AllowReboot,
    [int]$RebootWaitSeconds = 0
)

$ErrorActionPreference = 'Stop'
. (Join-Path $PSScriptRoot 'adb_transport.ps1')

$PROTECTED = @(
    'com.dangbei1.tvlauncher',
    'bin.mt.plus',
    'com.estrongs.android.pop',
    'com.web1n.permissiondog',
    'com.shere.assistivetouch',
    'com.topjohnwu.magisk'
)

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
$log = Join-Path $LogDir ("restore_{0}_{1}.log" -f $Mode.ToLower(), $stamp)
$lines = [System.Collections.Generic.List[string]]::new()
function Say($t) { $lines.Add([string]$t); Write-Host $t }
function Finish($code) {
    $lines -join "`n" | Set-Content -Encoding UTF8 $log
    Say "日志: $log"
    exit $code
}

Say "# restore_last_disabled  mode=$Mode  target=$ConfirmPackage  $stamp"

# ---- 1. 保护名单
if ($PROTECTED -contains $ConfirmPackage) {
    Say "REFUSED: $ConfirmPackage 属于六个保护 App（含默认/备用桌面），本脚本不处理保护名单。"
    Finish 4
}

# ---- 2. 设备在线
$Adb = Get-AdbPath
$ti = Get-AdbTransportInfo -AdbPath $Adb
Say ("USB 在线={0} TCP 在线={1}" -f $ti.usb_online, $ti.tcp_online)
if (-not $ti.any_online) {
    Say 'FAIL: 没有处于 device 状态的设备；未做任何操作。'
    Finish 2
}

# ---- 3. 记录文件（仅提示，不作为恢复依据）
if (Test-Path $RecordFile) {
    $rec = Get-Content $RecordFile -Raw | ConvertFrom-Json
    Say ("记录文件: 最近一次禁用={0} 时间={1}" -f $rec.package, $rec.captured_at)
    if ($rec.package -and $rec.package -ne $ConfirmPackage) {
        Say ("WARN: 记录={0} 与本次目标={1} 不一致；请确认你要恢复的是哪个包。" -f $rec.package, $ConfirmPackage)
    }
} else {
    Say "记录文件不存在（$RecordFile）；只按 -ConfirmPackage 执行。"
}

# ---- 4. 读取当前状态（恢复前证据）
function Get-PackageState([string]$pkg) {
    $d = Invoke-Adb -Adb $Adb -AdbArgs "dumpsys package $pkg" -AllowFail
    $m = @(($d | Select-String -Pattern 'User 0:.*enabled=(\d+)').Matches)
    $s = @(($d | Select-String -Pattern 'User 0:.*suspended=(true|false)').Matches)
    return [pscustomobject]@{
        installed = ($d -match 'installed=true')
        enabled   = if ($m.Count -gt 0) { $m[0].Groups[1].Value } else { 'unknown' }
        suspended = if ($s.Count -gt 0) { $s[0].Groups[1].Value } else { 'unknown' }
        raw_lines = ($d -split "`n" | Select-String 'User 0:').Count
    }
}

$before = Get-PackageState $ConfirmPackage
Say ("恢复前: installed={0} enabled={1} suspended={2}" -f $before.installed, $before.enabled, $before.suspended)

# ---- 5. CheckOnly：只报告，不写
if ($Mode -eq 'CheckOnly') {
    $homeOut = Invoke-Adb -Adb $Adb -AdbArgs 'cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME' -AllowFail
    Say ("默认桌面: {0}" -f (($homeOut -split "`n") -join ' | '))
    $okState = ($before.enabled -in @('0', '1'))
    Say ("状态判定: enabled={0} -> {1}" -f $before.enabled, $(if ($okState) { '已启用（DEFAULT/ENABLED）' } else { '仍为禁用状态' }))
    if ($okState) { Say 'RESULT: CHECK-OK（目标包处于启用状态）'; Finish 20 }
    Say 'RESULT: CHECK-FAIL（目标包仍未启用）'
    Finish 21
}

# ---- 6. pm enable 路径
if ($Mode -eq 'Enable') {
    Say "执行: pm enable $ConfirmPackage"
    $out = Invoke-Adb -Adb $Adb -AdbArgs "su -c 'pm enable $ConfirmPackage'" -AllowFail
    Say $out.Trim()
    if ($out -match 'unknown command') {
        Say 'FAIL: 本固件 pm 被裁剪，enable 不可用 → 改用 -Mode XmlElementRestore（需单包元素备份）。'
        Finish 6
    }
    $after = Get-PackageState $ConfirmPackage
    Say ("操作后: enabled={0}（注意：0/1 才表示已启用）" -f $after.enabled)
    Say 'RESULT: SUBMITTED-NOT-VERIFIED —— 退出码 0 不代表恢复成功；请运行 -Mode CheckOnly 复核。'
    Finish 0
}

# ---- 7. 单包元素级恢复
if ($Mode -eq 'XmlElementRestore') {
    if (-not $BackupFile -or -not (Test-Path $BackupFile)) {
        Say 'FAIL: 缺少 -BackupFile（单包元素备份文件）。'
        Finish 5
    }
    if (-not $ExpectedSha256) {
        Say 'FAIL: 缺少 -ExpectedSha256；不允许在无法校验备份完整性时写入。'
        Finish 5
    }

    $actualSha = (Get-FileHash $BackupFile -Algorithm SHA256).Hash
    if ($actualSha -ne $ExpectedSha256.ToUpper()) {
        Say ("FAIL: 备份 SHA256 不匹配。期望={0} 实际={1}" -f $ExpectedSha256, $actualSha)
        Finish 5
    }

    $content = Get-Content $BackupFile -Raw
    if ($content -match '<package-restrictions') {
        Say 'FAIL: 该备份是**整文件**备份。整文件覆盖会改写其他应用的 PackageManager 状态，一律拒绝。'
        Say '      请改用单包元素备份（只包含该包的 <pkg .../> 片段）。'
        Finish 5
    }
    $elemMatch = [regex]::Matches($content, '<pkg\s+name="([^"]+)"')
    if ($elemMatch.Count -ne 1) {
        Say ("FAIL: 备份里应恰好有 1 个 <pkg> 元素，实际 {0} 个。" -f $elemMatch.Count)
        Finish 5
    }
    if ($elemMatch[0].Groups[1].Value -ne $ConfirmPackage) {
        Say ("FAIL: 备份属于 {0}，与目标 {1} 不一致。" -f $elemMatch[0].Groups[1].Value, $ConfirmPackage)
        Finish 5
    }

    # 取设备当前 XML（只读拉取，用于“其余包不变”的比对）
    $tmpNow = Join-Path ([System.IO.Path]::GetTempPath()) ("pr_now_{0}.xml" -f $stamp)
    $tmpElem = Join-Path ([System.IO.Path]::GetTempPath()) ("pr_elem_{0}.xml" -f $stamp)
    Invoke-Adb -Adb $Adb -AdbArgs "su -c 'cp /data/system/users/0/package-restrictions.xml /data/local/tmp/pr_pull.xml; chmod 644 /data/local/tmp/pr_pull.xml'" -AllowFail | Out-Null
    & $Adb @target pull /data/local/tmp/pr_pull.xml $tmpNow 2>&1 | Out-Null
    if (-not (Test-Path $tmpNow)) { Say 'FAIL: 无法拉取当前 package-restrictions.xml。'; Finish 7 }

    $nowText = Get-Content $tmpNow -Raw
    $curElems = [regex]::Matches($nowText, '<pkg\s+name="([^"]+)"[^>]*/>')
    $targetHits = @($curElems | Where-Object { $_.Groups[1].Value -eq $ConfirmPackage })
    Say ("当前 XML: 包元素 {0} 个；目标元素出现 {1} 次" -f $curElems.Count, $targetHits.Count)
    if ($targetHits.Count -ne 1) {
        Say 'FAIL: 目标元素在当前 XML 中不是恰好 1 个（结构异常，停止写入）。'
        Finish 7
    }

    $newElement = ([regex]::Match($content, '<pkg\s+name="' + [regex]::Escape($ConfirmPackage) + '"[^>]*/>')).Value
    if (-not $newElement) { Say 'FAIL: 备份中找不到完整的自闭合 <pkg .../> 元素。'; Finish 5 }

    $patched = $nowText.Replace($targetHits[0].Value, $newElement)
    Set-Content -Path $tmpElem -Value $patched -Encoding UTF8 -NoNewline

    # 校验：除目标外，其余 <pkg .../> 元素行必须完全一致
    $beforeOthers = ($curElems | Where-Object { $_.Groups[1].Value -ne $ConfirmPackage } | ForEach-Object { $_.Value }) -join "`n"
    $afterElems = [regex]::Matches($patched, '<pkg\s+name="([^"]+)"[^>]*/>')
    $afterOthers = ($afterElems | Where-Object { $_.Groups[1].Value -ne $ConfirmPackage } | ForEach-Object { $_.Value }) -join "`n"
    if ($beforeOthers -ne $afterOthers) {
        Say 'FAIL: 补丁会改变其它包的元素，已中止（不允许影响其他应用状态）。'
        Finish 7
    }

    if (-not $PSCmdlet.ShouldProcess($ConfirmPackage, '写入单包元素恢复')) { Say '未执行（WhatIf）。'; Finish 0 }

    & $Adb @target push $tmpElem /data/local/tmp/pr_patch.xml 2>&1 | Out-Null
    $write = Invoke-Adb -Adb $Adb -AdbArgs "su -c 'cp /data/local/tmp/pr_patch.xml /data/system/users/0/package-restrictions.xml && chown system:system /data/system/users/0/package-restrictions.xml && chmod 660 /data/system/users/0/package-restrictions.xml && restorecon /data/system/users/0/package-restrictions.xml && sync && echo WRITTEN'" -AllowFail
    Say $write.Trim()
    if ($write -notmatch 'WRITTEN') { Say 'FAIL: 写入未确认。'; Finish 11 }

    Say 'RESULT: SUBMITTED —— 已写入，但 PackageManager 只在启动时读取；需要重启并用 -Mode CheckOnly 复核。'
    Say '        退出码 0 仅表示“已提交”，不代表恢复成功。'
    if ($AllowReboot) {
        Say '按 -AllowReboot 重启…'
        & $Adb @target reboot 2>&1 | Out-Null
        if ($RebootWaitSeconds -gt 0) {
            $ti2 = Wait-AdbDevice -AdbPath $Adb -Serial $Serial -TimeoutSeconds $RebootWaitSeconds
            Say ("重启后设备回来={0}（USB 在线={1} / TCP 在线={2}）" -f $ti2.any_online, $ti2.usb_online, $ti2.tcp_online)
        }
    } else {
        Say '未传 -AllowReboot：没有重启。请手动重启后运行 -Mode CheckOnly。'
    }
    Finish 0
}
