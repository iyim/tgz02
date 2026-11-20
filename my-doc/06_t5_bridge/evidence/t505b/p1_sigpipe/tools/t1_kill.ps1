# t1_kill.ps1 -- T5-05B P1 T1: real bridge force-killed while sender connected
# ASCII only (avoid PS 5.1 BOM issues). Timeline logged to t1_timeline.log
$ErrorActionPreference = 'Continue'
$adb = 'D:\GreenSoft\platform-tools\adb.exe'
$dev = '192.168.1.9:5555'
$p1  = 'D:\tgz02\OS\_analysis\t505b\p1'
$tl  = Join-Path $p1 't1_timeline.log'

function Log([string]$m) {
    $line = '[' + (Get-Date).ToString('HH:mm:ss.fff') + '] ' + $m
    Add-Content -LiteralPath $tl -Value $line -Encoding UTF8
    Write-Output $line
}

function Sh([string]$cmd) { & $adb -s $dev shell $cmd 2>&1 }

Set-Content -LiteralPath $tl -Value '' -Encoding UTF8
Log 'T1 start'

# --- 0. clean state ---
$st = Sh 'sh /data/local/tmp/t5_bridge/run_bridge.sh status'
Log ("bridge status before: " + ($st -join ' | '))

# --- 1. start real bridge ---
$r = Sh 'sh /data/local/tmp/t5_bridge/run_bridge.sh start'
Log ("bridge start: " + ($r -join ' | '))

# --- 2. start sender runner (background) ---
$out = Join-Path $p1 't1.out'
$err = Join-Path $p1 't1.err'
Remove-Item $out, $err -ErrorAction SilentlyContinue
$args = @(
    (Join-Path $p1 't505b_p1_runner.py'),
    'D:\tgz02\OS\system\my-doc\06_t5_bridge\frida\t505b_asr_bridge_sender.js',
    (Join-Path $p1 't505b_p1_sendwatch.js'),
    '16112', '92', (Join-Path $p1 't1.jsonl')
)
$runner = Start-Process -FilePath 'py' -ArgumentList (@('-3') + $args) `
    -RedirectStandardOutput $out -RedirectStandardError $err -NoNewWindow -PassThru
Log ("runner started pid=" + $runner.Id)
Log 'T1 step 3: '

# --- 3. wait for UDS connected ---
$ok = $false
for ($i = 0; $i -lt 100; $i++) {
    Start-Sleep -Milliseconds 200
    if (Test-Path $out) {
        if (Select-String -LiteralPath $out -Pattern '"state": "connected"' -Quiet -ErrorAction SilentlyContinue) { $ok = $true; break }
    }
}
Log ("sender connected = " + $ok)

# --- 4. play 3 phrases; kill -9 bridge during 2nd phrase ---
$play = Join-Path $p1 't1.play.log'
$plan = 'D:\tgz02\OS\_analysis\t505b\stim\s01.wav:2000,D:\tgz02\OS\_analysis\t505b\stim\s02.wav:2000,D:\tgz02\OS\_analysis\t505b\stim\s03.wav:2000'
$player = Start-Process -FilePath 'powershell.exe' -ArgumentList @(
    '-NoProfile', '-STA', '-File', 'D:\tgz02\OS\_analysis\t502_play.ps1',
    '-Plan', $plan, '-Volume', '1.0', '-LogFile', $play
) -NoNewWindow -PassThru
Log ("player started pid=" + $player.Id)

Start-Sleep -Milliseconds 7500
$pidTxt = (Sh 'cat /data/local/tmp/t5_bridge/tgb_bridge.pid').Trim()
Log ("force-killing bridge pid=" + $pidTxt + " (kill -9)")
$k = Sh ("kill -9 " + $pidTxt)
Log ('kill result: ' + ($k -join ' | '))
$chk = Sh 'ps | grep tgb_bridge'
Log ('ps after kill: ' + (($chk -join ' | ') -replace '\s+', ' '))

# --- 5. keep bridge down ~9s so the ASR final lands on the dead connection ---
Start-Sleep -Milliseconds 9000

# --- 6. restart bridge ---
$r2 = Sh 'sh /data/local/tmp/t5_bridge/run_bridge.sh start'
Log ('bridge restart: ' + ($r2 -join ' | '))

# --- 7. let recovery + 3rd phrase complete ---
Start-Sleep -Milliseconds 18000

# --- 8. wait for runner to finish ---
$deadline = (Get-Date).AddSeconds(80)
while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 500 }
Log ('runner exited = ' + $runner.HasExited)

Log 'T1 end'
