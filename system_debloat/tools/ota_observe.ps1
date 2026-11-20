<#
OTA 只读观测采样器（rev4.1）

只做读取：cat /proc/*、dumpsys meminfo|cpuinfo|activity services|alarm|power、logcat -d。
不执行 pm、不 kill 进程、不改任何设置、不写入设备。

用法：
  pwsh -File ota_observe.ps1 -Serial 192.168.1.9:5555 -OutFile <path.jsonl> `
       -DurationSec 21900 -IntervalSec 300

输出：每行一个 JSON 对象，字段见下。采样间隔 300 s，持续 ≥6 h。
CPU 时间取自 /proc/<pid>/stat 的 utime+stime（USER_HZ，Android 通常 100），
分析时必须用差值除以时间差，不能跨 PID 相加。
#>
param(
    [string]$Serial = '192.168.1.9:5555',
    [string]$Package = 'com.alibaba.ailabs.genie.osupdate',
    [string]$OutFile = 'samples.jsonl',
    [int]$DurationSec = 21900,
    [int]$IntervalSec = 300,
    [string]$LogFile = ''
)

$ErrorActionPreference = 'Continue'
$start = Get-Date
$deadline = $start.AddSeconds($DurationSec)
$idx = 0
$lastLogStamp = ''
$clockHz = 100   # Android USER_HZ

function Adb([string]$cmd) {
    $out = & adb -s $Serial shell $cmd 2>&1 | Out-String
    return $out.Trim()
}

if (-not (Test-Path (Split-Path -Parent $OutFile))) {
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $OutFile) | Out-Null
}

while ((Get-Date) -lt $deadline) {
    $idx++
    $t0 = Get-Date
    $rec = [ordered]@{
        n            = $idx
        host_ts      = $t0.ToString('yyyy-MM-ddTHH:mm:ss.fffzzz')
        host_epoch   = [int64]($t0.ToUniversalTime() - [datetime]'1970-01-01').TotalSeconds
        uptime_s     = $null
        pids         = @()
        procs        = @()
        pss_kb       = $null
        swap_pss_kb  = $null
        cpuinfo_line = $null
        svc_records  = $null
        svc_started  = $null
        alarm_hits   = $null
        power_hits   = $null
        log_new      = @()
        errors       = @()
    }

    try {
        $up = Adb 'cat /proc/uptime'
        if ($up -match '^\s*([0-9.]+)') { $rec.uptime_s = [double]$Matches[1] } else { $rec.errors += "uptime:$up" }
    } catch { $rec.errors += "uptime:$_" }

    try {
        $pidOut = Adb "pidof $Package"
        if ($pidOut -match '\d+') {
            $rec.pids = @($pidOut -split '\s+' | Where-Object { $_ -match '^\d+$' } | ForEach-Object { [int]$_ })
        }
    } catch { $rec.errors += "pidof:$_" }

    foreach ($p in $rec.pids) {
        try {
            $stat = Adb "cat /proc/$p/stat"
            if ($stat -match '^(\d+)\s+\((.*)\)\s+(\S)\s+(.*)$') {
                $rest = $Matches[4] -split '\s+'
                # rest[0]=ppid ... utime=rest[11], stime=rest[12], cutime=13, cstime=14,
                # num_threads=17, starttime=19, vsize=20, rss=21
                $rec.procs += [ordered]@{
                    pid         = [int]$Matches[1]
                    comm        = $Matches[2]
                    state       = $Matches[3]
                    minflt      = [int64]$rest[7]
                    majflt      = [int64]$rest[9]
                    utime       = [int64]$rest[11]
                    stime       = [int64]$rest[12]
                    threads     = [int]$rest[17]
                    starttime   = [int64]$rest[19]
                    rss_pages   = [int64]$rest[21]
                    cpu_ticks   = [int64]$rest[11] + [int64]$rest[12]
                }
            } else {
                $rec.errors += "stat:$p"
            }
        } catch { $rec.errors += "stat:$_" }
    }

    try {
        $mi = Adb "dumpsys meminfo $Package"
        $m = [regex]::Match($mi, 'TOTAL:\s+(\d+)\s+TOTAL SWAP PSS:\s+(\d+)')
        if ($m.Success) {
            $rec.pss_kb = [int]$m.Groups[1].Value
            $rec.swap_pss_kb = [int]$m.Groups[2].Value
        } else {
            $rec.errors += 'pss:no-total'
        }
    } catch { $rec.errors += "pss:$_" }

    try {
        $ci = Adb 'dumpsys cpuinfo'
        $line = ($ci -split "`n" | Where-Object { $_ -match [regex]::Escape($Package) } | Select-Object -First 1)
        if ($line) { $rec.cpuinfo_line = $line.Trim() }
    } catch { $rec.errors += "cpuinfo:$_" }

    try {
        $sv = Adb 'dumpsys activity services'
        $rec.svc_records = ([regex]::Matches($sv, 'ServiceRecord\{[^}]*' + [regex]::Escape($Package) + '[^}]*\}')).Count
        $blk = ($sv -split "`n")
        $i = 0; $rec.svc_started = $false
        foreach ($l in $blk) {
            if ($l -match [regex]::Escape($Package) + '/\.UpdateService') {
                for ($j = $i; $j -lt [Math]::Min($i + 14, $blk.Count); $j++) {
                    if ($blk[$j] -match 'startRequested=true') { $rec.svc_started = $true }
                }
            }
            $i++
        }
    } catch { $rec.errors += "services:$_" }

    try { $rec.alarm_hits = [int](Adb "dumpsys alarm | grep -c $Package" | Select-Object -First 1) } catch { $rec.errors += "alarm:$_" }
    try { $rec.power_hits = [int](Adb "dumpsys power | grep -c $Package" | Select-Object -First 1) } catch { $rec.errors += "power:$_" }

    try {
        $logs = Adb 'logcat -d -v time -t 600'
        $pat = 'osupdate|FOTA_UPDATE|UpdateService|RebootUpdate|UpdateApplication'
        $hits = @($logs -split "`n" | Where-Object { $_ -match $pat })
        $stamped = @()
        foreach ($h in $hits) {
            if ($h -match '^(\d\d-\d\d\s\d\d:\d\d:\d\d\.\d\d\d)') { $stamped += [pscustomobject]@{ k = $Matches[1]; v = $h.Trim() } }
        }
        if ($stamped.Count -gt 0) {
            $maxStamp = ($stamped | Sort-Object k | Select-Object -Last 1).k
            $new = @($stamped | Where-Object { $_.k -gt $lastLogStamp })
            $lastLogStamp = $maxStamp
            $rec.log_new = @($new | Select-Object -Last 25 | ForEach-Object { $_.v })
        }
    } catch { $rec.errors += "logcat:$_" }

    $rec | ConvertTo-Json -Depth 6 -Compress | Add-Content -Path $OutFile -Encoding utf8

    $elapsed = ((Get-Date) - $t0).TotalSeconds
    $msg = '[{0}] #{1} pids={2} pss={3} ticks={4} svc={5}/{6} alarm={7} power={8} newlogs={9} dt={10:N1}s' -f `
        (Get-Date).ToString('HH:mm:ss'), $idx, ($rec.pids -join ','), $rec.pss_kb,
        (($rec.procs | ForEach-Object { $_.cpu_ticks }) -join ','), $rec.svc_records, $rec.svc_started,
        $rec.alarm_hits, $rec.power_hits, $rec.log_new.Count, $elapsed
    if ($LogFile) { Add-Content -Path $LogFile -Value $msg -Encoding utf8 } else { Write-Output $msg }

    $sleep = $IntervalSec - $elapsed
    if ($sleep -lt 5) { $sleep = 5 }
    if ((Get-Date).AddSeconds($sleep) -ge $deadline) { break }
    Start-Sleep -Seconds ([int]$sleep)
}

if ($LogFile) { Add-Content -Path $LogFile -Value ("DONE at " + (Get-Date).ToString('yyyy-MM-ddTHH:mm:ss')) -Encoding utf8 }