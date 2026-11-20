# c5.ps1 -- T5-05C C5: queue pressure / backpressure (cap 32, overflow accounting, drain after ACK)
. 'D:\tgz02\OS\_analysis\t505c\t5c_lib.ps1'
Init-Case 'c5'

$tag = 'c5'
$stopFlag = Join-Path $script:P1 'c5.stop'
Remove-Item $stopFlag -ErrorAction SilentlyContinue
Sh 'rm -f /data/local/tmp/t5_bridge/c5_ack' | Out-Null

Bridge 'stop' | Out-Null
StopPeer
$evBefore = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Log ('events before: ' + $evBefore)
Log ('core pid = ' + (CorePid))

$runner = StartSender @('--duration', '900', '--stop-flag', $stopFlag) $tag
if ($null -eq $runner) { Log 'ABORT: no runner'; exit 1 }
Start-Sleep -Seconds 6
$s0 = LastStat $tag
if ($s0.Count -eq 0) { Log 'ABORT: runner produced no stats (attach failed?)'; exit 1 }
Log ('phase A start (no receiver): conn=' + $s0['conn'] + ' connErr=' + $s0['connErr'])

# ---- Phase A: keep talking with NO receiver at all -> queue fills, then overflow ----
$plan = 's01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13'
for ($i = 1; $i -le 5; $i++) {
    $s = LastStat $tag
    if ([int]$s['final'] -ge 40) { break }
    Play $plan ($tag + '_A' + $i)
    $s = LastStat $tag
    Log ('phaseA after batch ' + $i + ': ' + (($s.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))
}
$sA = LastStat $tag
Log ('phaseA stats: ' + (($sA.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))
Log ('phaseA queue check: q=' + $sA['q'] + ' ovf=' + $sA['ovf'] + ' final=' + $sA['final'] + ' enqueued=' + $sA['enqueued'])

# ---- Phase B: peer accepts but withholds ACK, then ACK is enabled ----
StartPeer 'noack' 'c5_ack' 'c5'
$sB = WaitStat $tag { param($h) $h['conn'] -eq 'true' } 90
Log ('phaseB connected to no-ack peer: ' + $sB['conn'])
Start-Sleep -Seconds 6
$sB2 = LastStat $tag
Log ('phaseB (ACK withheld) stats: ' + (($sB2.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))
PeerLog 'c5'

# ---- enable ACKs ----
Sh 'touch /data/local/tmp/t5_bridge/c5_ack' | Out-Null
Log 'ACK enabled on peer (flag file created)'
$sC = WaitStat $tag { param($h) $h['q'] -eq '0' } 240
Log ('phaseB after ACK: ' + (($sC.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))
PeerLog 'c5'

$evAfter = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Log ('events after: ' + $evAfter + ' (fixture ACKs are synthetic: the fixture persists nothing)')
Log ('core pid = ' + (CorePid))

New-Item -ItemType File -Path $stopFlag -Force | Out-Null
$deadline = (Get-Date).AddSeconds(60)
while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 300 }
Log ('runner exited = ' + $runner.HasExited)
StopPeer
Log '=== c5 end ==='
