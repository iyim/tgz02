# c1.ps1 -- T5-05C C1: bridge restart recovery (10+ stored, 5+ during outage)
. 'D:\tgz02\OS\_analysis\t505c\t5c_lib.ps1'
Init-Case 'c1'

$tag = 'c1'
$flagFile = Join-Path $script:P1 'c1.stop'
Remove-Item $flagFile -ErrorAction SilentlyContinue

Bridge 'stop' | Out-Null
$evBefore = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c1_before.jsonl' | Out-Null
Log ('events before: ' + $evBefore)

Bridge 'start' | Out-Null
Log ('core pid = ' + (CorePid))

$runner = StartSender @('--duration', '400', '--stop-flag', $flagFile) $tag
$s = WaitStat $tag { param($h) $h['conn'] -eq 'true' } 40
Log ('connected: ' + ($s['conn']))

# ---- Phase A: at least 10 stored ----
$batches = @('s01,s02,s03,s04,s05,s06,s07,s08,s09,s10,s11,s12,s13',
             's01,s02,s03,s04,s05',
             's06,s07,s08,s09,s10')
for ($i = 0; $i -lt $batches.Count; $i++) {
    $s = LastStat $tag
    if ([int]$s['stored'] -ge 10) { break }
    Play $batches[$i] ($tag + '_A' + ($i + 1))
    Start-Sleep -Seconds 3
}
$sA = WaitStat $tag { param($h) [int]$h['stored'] -ge 10 } 30
Log ('phaseA stats: ' + (($sA.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

# ---- Phase B: stop bridge, keep talking ----
$storedBefore = [int]$sA['stored']
$finalBefore = [int]$sA['final']
Bridge 'stop' | Out-Null
Play 's11,s12,s13,s01,s02,s03' ($tag + '_B1')
$sB = LastStat $tag
if (([int]$sB['final'] - $finalBefore) -lt 5) {
    Play 's04,s05,s06' ($tag + '_B2')
}
Start-Sleep -Seconds 5
$sB = LastStat $tag
Log ('phaseB stats: ' + (($sB.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))
Log ("phaseB finals added = " + ([int]$sB['final'] - $finalBefore) + ", stored during outage = " + $sB['stored'] + " (before outage=" + $storedBefore + ")")

# ---- Phase C: restart bridge, expect drain ----
Bridge 'start' | Out-Null
$sC = WaitStat $tag { param($h) $h['q'] -eq '0' } 120
Log ('phaseC stats: ' + (($sC.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

Start-Sleep -Seconds 10
$sD = LastStat $tag
Log ('final stat line: ' + (($sD.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

$evAfter = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c1_after.jsonl' | Out-Null
Log ('events after: ' + $evAfter)
Log ('core pid = ' + (CorePid))

New-Item -ItemType File -Path $flagFile -Force | Out-Null
$deadline = (Get-Date).AddSeconds(30)
while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 300 }
Log ('runner exited = ' + $runner.HasExited)
Log '=== c1 end ==='
