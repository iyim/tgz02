# t5c_lib.ps1 -- T5-05C acceptance helpers (ASCII only)
$ErrorActionPreference = 'Continue'
$script:ADB  = 'D:\GreenSoft\platform-tools\adb.exe'
$script:DEV  = '192.168.1.9:5555'
$script:P1   = 'D:\tgz02\OS\_analysis\t505c'
$script:STIM = 'D:\tgz02\OS\_analysis\t505b\stim'
$script:JS   = 'D:\tgz02\OS\system\my-doc\06_t5_bridge\frida\t505b_asr_bridge_sender.js'
$script:TL   = $null

function Init-Case([string]$name) {
    $script:TL = Join-Path $script:P1 ($name + '_timeline.log')
    Set-Content -LiteralPath $script:TL -Value '' -Encoding UTF8
    Log ("=== $name start ===")
}

function Log([string]$m) {
    $line = '[' + (Get-Date).ToString('HH:mm:ss.fff') + '] ' + $m
    Add-Content -LiteralPath $script:TL -Value $line -Encoding UTF8
    Write-Output $line
}

function Sh([string]$cmd) { (& $script:ADB -s $script:DEV shell $cmd 2>&1) }

function Bridge([string]$verb) {
    $r = Sh ("sh /data/local/tmp/t5_bridge/run_bridge.sh " + $verb)
    Log ("bridge $verb : " + (($r -join ' | ') -replace '\s+', ' '))
    return $r
}

function CorePid { ((Sh 'pidof com.alibaba.ailabs.genie.smartapp:core') -join ' ').Trim() }

function StartSender([string[]]$extra, [string]$tag, [string]$fridaPid = '') {
    if (-not $fridaPid) { $fridaPid = CorePid }
    if (-not $fridaPid) { Log 'ERROR: core pid not found, sender not started'; return $null }
    $out = Join-Path $script:P1 ($tag + '.out')
    $err = Join-Path $script:P1 ($tag + '.err')
    Remove-Item $out, $err -ErrorAction SilentlyContinue
    $a = @('-3', '-u', (Join-Path $script:P1 't5c_runner.py'),
           '--js', $script:JS, '--pid', $fridaPid, '--out', (Join-Path $script:P1 ($tag + '.jsonl')))
    $a += $extra
    $p = Start-Process -FilePath 'py' -ArgumentList $a -RedirectStandardOutput $out `
        -RedirectStandardError $err -NoNewWindow -PassThru
    Log ("sender runner started pid=" + $p.Id + " tag=" + $tag + " frida_pid=" + $fridaPid)
    return $p
}

# 返回"最新一代脚本"的最后一次 [stat] 行的 key=value 哈希
# （重载后 gen2 的计数必须与 gen1 分开看，所以按 [gN] 取最大 N）
function LastStat([string]$tag) {
    $f = Join-Path $script:P1 ($tag + '.out')
    if (-not (Test-Path $f)) { return @{} }
    $lines = Select-String -LiteralPath $f -Pattern '^\[stat\]\[g\d+\]' -ErrorAction SilentlyContinue
    if (-not $lines) { return @{} }
    $maxGen = 0
    foreach ($l in $lines) {
        $m = [regex]::Match($l.Line, '^\[stat\]\[g(\d+)\]')
        if ($m.Success) { $g = [int]$m.Groups[1].Value; if ($g -gt $maxGen) { $maxGen = $g } }
    }
    $cur = $lines | Where-Object { $_.Line -match ('^\[stat\]\[g' + $maxGen + '\]') }
    if (-not $cur) { return @{} }
    $last = $cur[-1].Line
    $h = @{}
    $h['gen'] = "$maxGen"
    foreach ($m in [regex]::Matches($last, '([A-Za-z_]+)=([^\s]+)')) {
        $h[$m.Groups[1].Value] = $m.Groups[2].Value
    }
    return $h
}

function WaitStat([string]$tag, [scriptblock]$cond, [int]$timeoutSec) {
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    while ((Get-Date) -lt $deadline) {
        $s = LastStat $tag
        if ($s.Count -gt 0) { if (& $cond $s) { return $s } }
        Start-Sleep -Milliseconds 300
    }
    return (LastStat $tag)
}

function Play([string]$names, [string]$logTag) {
    $parts = $names.Split(',') | ForEach-Object { (Join-Path $script:STIM ($_.Trim() + '.wav')) + ':2500' }
    $plan = $parts -join ','
    $plog = Join-Path $script:P1 ($logTag + '_play.log')
    $p = Start-Process -FilePath 'powershell.exe' -ArgumentList @(
        '-NoProfile', '-STA', '-File', 'D:\tgz02\OS\_analysis\t502_play.ps1',
        '-Plan', $plan, '-Volume', '1.0', '-LogFile', $plog) -NoNewWindow -PassThru
    Log ("playing " + $names + " (pid=" + $p.Id + ")")
    $p.WaitForExit()
    Log ("play done: " + $names)
}

function PlayEnd([string]$names, [string]$logTag) {
    $t = (Get-Date).ToString('HH:mm:ss')
    Log ("play batch end " + $names + " at " + $t)
}

function WaitOut([string]$tag, [string]$pattern, [int]$timeoutSec) {
    $f = Join-Path $script:P1 ($tag + '.out')
    $deadline = (Get-Date).AddSeconds($timeoutSec)
    while ((Get-Date) -lt $deadline) {
        if (Test-Path $f) {
            if (Select-String -LiteralPath $f -Pattern $pattern -Quiet -ErrorAction SilentlyContinue) { return $true }
        }
        Start-Sleep -Milliseconds 250
    }
    return $false
}

function StartPeer([string]$mode, [string]$flagFile, [string]$logTag) {
    $plog = '/data/local/tmp/t5_bridge/' + $logTag + '_peer.log'
    Sh ('rm -f ' + $plog) | Out-Null
    $fl = if ($flagFile) { ' /data/local/tmp/t5_bridge/' + $flagFile } else { '' }
    Sh ('nohup /data/local/tmp/t5_bridge/t5c_peer ' + $mode + ' tgz2_asr_bridge' + $fl + ' > ' + $plog + ' 2>&1 &') | Out-Null
    Start-Sleep -Milliseconds 1200
    $l = Sh ('cat ' + $plog)
    Log ('peer[' + $mode + '] ' + (($l -join ' | ') -replace '\s+', ' '))
}

function PeerLog([string]$logTag) {
    $l = Sh ('tail -20 /data/local/tmp/t5_bridge/' + $logTag + '_peer.log')
    Log ('peer log tail: ' + (($l -join ' | ') -replace '\s+', ' '))
}

function StopPeer {
    Sh 'kill -9 $(pidof t5c_peer) 2>/dev/null' | Out-Null
    Start-Sleep -Milliseconds 800
    $n = ((Sh 'ps | grep -c t5c_peer') -join ' ').Trim()
    Log ('peer stopped, ps count=' + $n)
}

