# t502_play.ps1 -- T5-02 电脑端播放编排器（仅播放，不复制文件）
#
# 用法:
#   pwsh -STA -File t502_play.ps1 -Plan "path1:1500,path2:1500" -Volume 1.0 -LogFile out.log
#
# Plan: 逗号分隔的 <音频文件>:<播放后静默毫秒>；文件按顺序依次播放。
# 只做播放与时间打点，不写任何 WAV，不接触设备文件系统。

param(
    [Parameter(Mandatory = $true)][string]$Plan,
    [double]$Volume = 1.0,
    [int]$LeadInMs = 1000,
    [string]$LogFile = ""
)

Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

$script:lines = New-Object System.Collections.Generic.List[string]

function Log([string]$m) {
    $t = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss.fff")
    $line = "[$t] $m"
    $script:lines.Add($line)
    Write-Output $line
}

function Play-One([string]$path, [double]$vol) {
    if (-not (Test-Path -LiteralPath $path)) { throw "missing file: $path" }
    $item = Get-Item -LiteralPath $path
    Log ("open  {0} ({1} B)" -f $item.Name, $item.Length)
    $p = New-Object System.Windows.Media.MediaPlayer
    $p.Open([Uri]$item.FullName)

    $deadline = (Get-Date).AddSeconds(10)
    while (-not $p.NaturalDuration.HasTimeSpan) {
        if ((Get-Date) -gt $deadline) { throw "duration timeout: $($item.Name)" }
        Start-Sleep -Milliseconds 50
    }
    $dur = $p.NaturalDuration.TimeSpan
    Log ("ready {0} dur={1:n3}s" -f $item.Name, $dur.TotalSeconds)

    $p.Volume = $vol
    $p.Play()
    $t0 = Get-Date
    while ($p.Position -lt $dur) {
        Start-Sleep -Milliseconds 50
        if (((Get-Date) - $t0).TotalSeconds -gt ($dur.TotalSeconds + 5)) { break }
    }
    Start-Sleep -Milliseconds 150
    $p.Stop()
    $p.Close()
    $el = ((Get-Date) - $t0).TotalSeconds
    Log ("done  {0} elapsed={1:n2}s vol={2}" -f $item.Name, $el, $vol)
}

Log "plan = $Plan"
Log "volume = $Volume"
if ($LeadInMs -gt 0) { Log ("lead-in {0} ms" -f $LeadInMs); Start-Sleep -Milliseconds $LeadInMs }

foreach ($step in $Plan.Split(",")) {
    $s = $step.Trim()
    if ($s -eq "") { continue }
    $idx = $s.LastIndexOf(":")
    $file = $s.Substring(0, $idx).Trim()
    $gap = [int]$s.Substring($idx + 1).Trim()
    Play-One $file $Volume
    if ($gap -gt 0) {
        Log ("gap   {0} ms" -f $gap)
        Start-Sleep -Milliseconds $gap
    }
}

Log "PLAY_END"
if ($LogFile -ne "") {
    [System.IO.File]::WriteAllLines($LogFile, $script:lines, (New-Object System.Text.UTF8Encoding($false)))
}
