# c3.ps1 -- T5-05C C3: unacked event + FORCED script unload (quantify the loss window)
. 'D:\tgz02\OS\_analysis\t505c\t5c_lib.ps1'
Init-Case 'c3'

$tag = 'c3'
$unloadFlag = Join-Path $script:P1 'c3.unload'
$stopFlag = Join-Path $script:P1 'c3.stop'
Remove-Item $unloadFlag, $stopFlag -ErrorAction SilentlyContinue
Sh 'rm -f /data/local/tmp/t5_bridge/c3_ack' | Out-Null

Bridge 'stop' | Out-Null
$evBefore = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c3_before.jsonl' | Out-Null
Log ('events before: ' + $evBefore)
Log ('core pid = ' + (CorePid))

StartPeer 'noack' 'c3_ack' 'c3'

$runner = StartSender @('--duration', '300', '--stop-flag', $stopFlag,
                        '--unload-flag', $unloadFlag, '--unload-mode', 'forced',
                        '--reload', '--reload-delay', '12') $tag
$s = WaitStat $tag { param($h) $h['conn'] -eq 'true' } 40
Log ('gen1 connected to no-ack peer: ' + ($s['conn']))

# ---- one real utterance: frame written, never ACKed ----
Play 's07' ($tag + '_p1')
$gotSent = WaitOut $tag '\[sent\]\[g1\]' 30
Log ('frame written (awaiting ACK) = ' + $gotSent)
Start-Sleep -Seconds 2
$s1 = LastStat $tag
Log ('pre-unload stats line: ' + (($s1.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))
PeerLog 'c3'

# ---- FORCED unload (script.unload(), no stop()) ----
New-Item -ItemType File -Path $unloadFlag -Force | Out-Null
$ok = WaitOut $tag 'FORCED unload of gen1' 30
Log ('forced unload observed = ' + $ok)

# ---- peer gone, real bridge up ----
StopPeer
Bridge 'start' | Out-Null

$ok2 = WaitOut $tag 'script gen2 loaded' 60
Log ('gen2 reloaded = ' + $ok2)
$s2 = WaitStat $tag { param($h) $h['conn'] -eq 'true' } 40
Log ('gen2 connected: ' + ($s2['conn']))

# ---- round 2: two utterances on a healthy bridge ----
$batches = @('s08,s09', 's10,s11', 's12,s13')
for ($i = 0; $i -lt $batches.Count; $i++) {
    $s = LastStat $tag
    if ([int]$s['stored'] -ge 2) { break }
    Play $batches[$i] ($tag + '_p2_' + ($i + 1))
    $s = WaitStat $tag { param($h) [int]$h['stored'] -ge 2 } 20
}
$s3 = LastStat $tag
Log ('gen2 stats: ' + (($s3.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

$evAfter = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c3_after.jsonl' | Out-Null
Log ('events after: ' + $evAfter)
Log ('core pid = ' + (CorePid))

New-Item -ItemType File -Path $stopFlag -Force | Out-Null
$deadline = (Get-Date).AddSeconds(40)
while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 300 }
Log ('runner exited = ' + $runner.HasExited)
Log '=== c3 end ==='
