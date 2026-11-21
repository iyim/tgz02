<#
.SYNOPSIS
    ADB 传输通道分类（USB vs TCP/IP）——被其它脚本 dot-source 使用。
.DESCRIPTION
    只读。把 `adb devices -l` 的输出解析成对象列表，永不把 192.168.x.x:5555 当成 USB。
    判定规则：
      * 序列号含 ':' 或形如 host:port          -> transport = 'tcp'
      * 序列号是纯字母数字且带 usb: 字段        -> transport = 'usb'
      * 其它                                    -> transport = 'unknown'
.NOTES
    TG-Z02 / Android 8.1。本文件不含任何写操作。
#>

function Get-AdbPath {
    $adb = Get-Command adb -ErrorAction SilentlyContinue
    if (-not $adb) { throw 'adb 不在 PATH 中：无法执行任何设备操作。' }
    return $adb.Source
}

function Get-AdbTransportInfo {
    param([string]$AdbPath)

    if (-not $AdbPath) { $AdbPath = Get-AdbPath }
    $raw = & $AdbPath devices -l 2>&1
    $devices = @()
    foreach ($line in $raw) {
        if ($line -match '^\s*List of devices') { continue }
        if ($line -match '^\s*$') { continue }
        if ($line -notmatch '^(?<serial>\S+)\s+(?<state>\S+)(?<rest>.*)$') { continue }
        $serial = $matches['serial']
        $state = $matches['state']
        $rest = $matches['rest']
        if ($serial -match ':' -or $rest -match '\busb:') {
            $transport = if ($serial -match ':') { 'tcp' } elseif ($rest -match '\busb:') { 'usb' } else { 'unknown' }
        } elseif ($rest -match '\busb:') {
            $transport = 'usb'
        } else {
            $transport = 'unknown'
        }
        $devices += [pscustomobject]@{
            serial    = $serial
            state     = $state
            transport = $transport
            raw       = $line.Trim()
        }
    }

    $usb = @($devices | Where-Object { $_.transport -eq 'usb' -and $_.state -eq 'device' })
    $tcp = @($devices | Where-Object { $_.transport -eq 'tcp' -and $_.state -eq 'device' })

    return [pscustomobject]@{
        raw            = $raw
        devices        = $devices
        usb_online     = $usb.Count
        tcp_online     = $tcp.Count
        usb_serials    = ($usb | ForEach-Object { $_.serial })
        tcp_serials    = ($tcp | ForEach-Object { $_.serial })
        any_online     = (($usb.Count + $tcp.Count) -gt 0)
        usb_verified   = ($usb.Count -gt 0)
        tcp_verified   = ($tcp.Count -gt 0)
    }
}

function Select-AdbTarget {
    param($TransportInfo, [string]$Preferred = '')

    if ($Preferred) { return $Preferred }
    if ($TransportInfo.tcp_online -gt 0) { return $TransportInfo.tcp_serials[0] }
    if ($TransportInfo.usb_online -gt 0) { return $TransportInfo.usb_serials[0] }
    return ''
}

function Wait-AdbDevice {
    param(
        [string]$AdbPath,
        [string]$Serial = '',
        [int]$TimeoutSeconds = 120,
        [int]$IntervalSeconds = 5
    )

    $deadline = (Get-Date).AddSeconds($TimeoutSeconds)
    do {
        $info = Get-AdbTransportInfo -AdbPath $AdbPath
        $hit = if ($Serial) {
            @($info.devices | Where-Object { $_.serial -eq $Serial -and $_.state -eq 'device' })
        } else {
            @($info.devices | Where-Object { $_.state -eq 'device' })
        }
        if ($hit.Count -gt 0) { return $info }
        if ((Get-Date) -ge $deadline) { break }
        Start-Sleep -Seconds $IntervalSeconds
    } while ($true)

    return Get-AdbTransportInfo -AdbPath $AdbPath
}
