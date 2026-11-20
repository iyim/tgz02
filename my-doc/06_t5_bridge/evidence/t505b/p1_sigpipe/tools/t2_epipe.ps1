# t2_epipe.ps1 -- T5-05B P1 T2: deterministic EPIPE on send() (half-closed peer)
# ASCII only. Timeline -> t2_timeline.log
$ErrorActionPreference = 'Continue'
$adb = 'D:\GreenSoft\platform-tools\adb.exe'
$dev = '192.168.1.9:5555'
$p1  = 'D:\tgz02\OS\_analysis\t505b\p1'
$tl  = Join-Path $p1 't2_timeline.log'

function Log([string]$m) {
    $line = '[' + (Get-Date).ToString('HH:mm:ss.fff') + '] ' + $m
    Add-Content -LiteralPath $tl -Value $line -Encoding UTF8
    Write-Output $line
}
function Sh([string]$cmd) { & $adb -s $dev shell $cmd 2>&1 }

Set-Content -LiteralPath $tl -Value '' -Encoding UTF8
Log 'T2 start'

# --- 0. stop real bridge, make sure nothing listens ---
$st = Sh 'sh /data/local/tmp/t5_bridge/run_bridge.sh stop'
Log ('bridge stop: ' + (($st -join ' | ') -replace '\s+', ' '))
$ps = Sh 'ps | grep tgb_bridge'
Log ('ps tgb_bridge: ' + (($ps -join ' | ') -replace '\s+', ' '))

# --- 1. start half-closed test peer on the same abstract name ---
Sh 'rm -f /data/local/tmp/t5_bridge/peer.log'
Sh 'nohup /data/local/tmp/t5_bridge/t5p1_peer tgz2_asr_bridge 300 > /data/local/tmp/t5_bridge/peer.log 2>&1 &'
Start-Sleep -Milliseconds 1200
$pl = Sh 'cat /data/local/tmp/t5_bridge/peer.log'
Log ('peer log: ' + (($pl -join ' | ') -replace '\s+', ' '))

# --- 2. sender runner (unbuffered stdout so we can watch it live) ---
$out = Join-Path $p1 't2.out'
$err = Join-Path $p1 't2.err'
Remove-Item $out, $err -ErrorAction SilentlyContinue
$args = @(
    '-u',
    (Join-Path $p1 't505b_p1_runner.py'),
    'D:\tgz02\OS\system\my-doc\06_t5_bridge\frida\t505b_asr_bridge_sender.js',
    (Join-Path $p1 't505b_p1_sendwatch.js'),
    '16112', '120', (Join-Path $p1 't2.jsonl')
)
$runner = Start-Process -FilePath 'py' -ArgumentList (@('-3') + $args) `
    -RedirectStandardOutput $out -RedirectStandardError $err -NoNewWindow -PassThru
Log ('runner started pid=' + $runner.Id)

$ok = $false
for ($i = 0; $i -lt 100; $i++) {
    Start-Sleep -Milliseconds 200
    if ((Test-Path $out) -and (Select-String -LiteralPath $out -Pattern 'state": "connected' -Quiet -ErrorAction SilentlyContinue)) { $ok = $true; break }
}
Log ('sender connected to test peer = ' + $ok)
$pl = Sh 'cat /data/local/tmp/t5_bridge/peer.log'
Log ('peer log: ' + (($pl -join ' | ') -replace '\s+', ' '))

# --- 3. one real ASR final -> send() must hit EPIPE ---
$play = Join-Path $p1 't2.play.log'
$plan = 'D:\tgz02\OS\_analysis\t505b\stim\s04.wav:2000'
$player = Start-Process -FilePath 'powershell.exe' -ArgumentList @(
    '-NoProfile', '-STA', '-File', 'D:\tgz02\OS\_analysis\t502_play.ps1',
    '-Plan', $plan, '-Volume', '1.0', '-LogFile', $play
) -NoNewWindow -PassThru
Log ('player started pid=' + $player.Id)

$sawEpipe = $false
for ($i = 0; $i -lt 150; $i++) {
    Start-Sleep -Milliseconds 200
    if ((Test-Path $out) -and (Select-String -LiteralPath $out -Pattern 'sendErr=[1-9]' -Quiet -ErrorAction SilentlyContinue)) { $sawEpipe = $true; break }
}
Log ('EPIPE observed in stats = ' + $sawEpipe)
$log = Sh 'grep -n "send:32" /data/local/tmp/t5_bridge/tgb_bridge.log'
Log 'bridge log grep (should be empty, peer never wrote): ' + (($log -join ' | ') -replace '\s+', ' ')
$core = Sh 'pidof com.alibaba.ailabs.genie.smartapp:core'
Log ('core pid after EPIPE = ' + (($core -join ' ') -replace '\s+', ' '))

# --- 4. kill peer, start the real bridge ---
Sh 'pkill -9 -f t5p1_peer'
Start-Sleep -Milliseconds 800
$ps = Sh 'ps | grep t5p1_peer'
Log ('ps t5p1_peer: ' + (($ps -join ' | ') -replace '\s+', ' '))
$r = Sh 'sh /data/local/tmp/t5_bridge/run_bridge.sh start'
Log ('bridge start: ' + (($r -join ' | ') -replace '\s+', ' '))

# --- 5. wait for recovery + stored ---
$sawStored = $false
for ($i = 0; $i -lt 200; $i++) {
    Start-Sleep -Milliseconds 200
    if ((Test-Path $out) -and (Select-String -LiteralPath $out -Pattern 'status": "stored|status": "duplicate' -Quiet -ErrorAction SilentlyContinue)) { $sawStored = $true; break }
}
Log ('stored/duplicate ACK after bridge restart = ' + $sawStored)

$deadline = (Get-Date).AddSeconds(130)
while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 500 }
Log ('runner exited = ' + $runner.HasExited)
Log 'T2 end'
