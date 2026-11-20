# c2.ps1 -- T5-05C C2: graceful stop() then reload (no duplicate hook / no duplicate send)
. 'D:\tgz02\OS\_analysis\t505c\t5c_lib.ps1'
Init-Case 'c2'

$tag = 'c2'
$stopFlag = Join-Path $script:P1 'c2.stop'
$unloadFlag = Join-Path $script:P1 'c2.unload'
Remove-Item $stopFlag, $unloadFlag -ErrorAction SilentlyContinue

Bridge 'status' | Out-Null
$evBefore = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c2_before.jsonl' | Out-Null
Log ('events before: ' + $evBefore)
Log ('core pid = ' + (CorePid))

$runner = StartSender @('--duration', '600', '--stop-flag', $stopFlag,
                        '--unload-flag', $unloadFlag, '--unload-mode', 'stop',
                        '--reload', '--reload-delay', '14') $tag
$s = WaitStat $tag { param($h) $h['conn'] -eq 'true' } 40
Log ('gen1 connected: ' + ($s['conn']))

# ---- round 1: keep talking until 5 stored ----
$batches = @('s01,s02,s03,s04,s05', 's06,s07,s08,s09,s10', 's11,s12,s13,s01,s02')
for ($i = 0; $i -lt $batches.Count; $i++) {
    $s = LastStat $tag
    if ([int]$s['stored'] -ge 5) { break }
    Play $batches[$i] ($tag + '_r1_' + ($i + 1))
    $s = WaitStat $tag { param($h) [int]$h['stored'] -ge 5 } 15
}
$s1 = LastStat $tag
Log ('round1 stats: ' + (($s1.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

# ---- ask the runner to call stop() (graceful) ----
New-Item -ItemType File -Path $unloadFlag -Force | Out-Null
$ok = WaitOut $tag '\[runner\] stop\(\) ->' 40
Log ('graceful stop() observed = ' + $ok)
Start-Sleep -Seconds 1
Sh 'cat /data/local/tmp/t5_bridge/work/bridge_status.json' | ForEach-Object { Log ('bridge status after stop: ' + ($_ -replace '\s+', ' ')) }

# ---- one phrase while NO sender instance exists ----
Play 's06' ($tag + '_gap')
Start-Sleep -Seconds 2

# ---- wait for the fresh instance ----
$ok2 = WaitOut $tag 'script gen2 loaded' 60
Log ('gen2 reloaded = ' + $ok2)
$okStat = WaitOut $tag '\[stat\]\[g2\]' 30
Log ('gen2 emitted its own stat line = ' + $okStat)
$s2 = LastStat $tag
Log ('gen2 first stat: ' + (($s2.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

# ---- round 2: keep talking until 5 stored ----
for ($i = 0; $i -lt $batches.Count; $i++) {
    $s = LastStat $tag
    if ([int]$s['stored'] -ge 5) { break }
    Play $batches[$i] ($tag + '_r2_' + ($i + 1))
    $s = WaitStat $tag { param($h) [int]$h['stored'] -ge 5 } 15
}
$s3 = LastStat $tag
Log ('round2 stats: ' + (($s3.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

$evAfter = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c2_after.jsonl' | Out-Null
Log ('events after: ' + $evAfter)
Log ('core pid = ' + (CorePid))

New-Item -ItemType File -Path $stopFlag -Force | Out-Null
$deadline = (Get-Date).AddSeconds(40)
while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 300 }
Log ('runner exited = ' + $runner.HasExited)
Log '=== c2 end ==='
