# c4.ps1 -- T5-05C C4: core process restart (normal app-level stop/start) + sender remount
. 'D:\tgz02\OS\_analysis\t505c\t5c_lib.ps1'
Init-Case 'c4'

$tag = 'c4'
$stopFlag = Join-Path $script:P1 'c4.stop'
Remove-Item $stopFlag -ErrorAction SilentlyContinue

$oldPid = CorePid
Log ('old core pid = ' + $oldPid)
$evBefore = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c4_before.jsonl' | Out-Null
Log ('events before: ' + $evBefore)

# ---- 1. no sender attached while the app restarts ----
$running = ((Sh 'ps | grep -c t5c_runner') -join ' ').Trim()
Log ('sender runners alive = ' + $running)

# ---- 2. normal app-level stop (system kills the package processes) ----
Sh 'am force-stop com.alibaba.ailabs.genie.smartapp' | Out-Null
Start-Sleep -Seconds 3
$gone = Sh 'pidof com.alibaba.ailabs.genie.smartapp:core; echo rc=$?'
Log ('after force-stop, pidof core: ' + (($gone -join ' ') -replace '\s+', ' '))
Log ('all ailabs processes: ' + (((Sh 'ps -A -o PID,NAME | grep -i ailabs') -join ' | ') -replace '\s+', ' '))

# ---- 3. normal app-level start (boot activity), then wait for the core process ----
Sh 'am start -n com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.genie.genieboot.activity.BootHomeActivity' | Out-Null
$newPid = ''
for ($i = 0; $i -lt 60; $i++) {
    Start-Sleep -Seconds 1
    $newPid = CorePid
    if ($newPid -ne '') { break }
}
Log ('new core pid = ' + $newPid + ' (old=' + $oldPid + ')')
Log ('all ailabs processes: ' + (((Sh 'ps -A -o PID,NAME | grep -i ailabs') -join ' | ') -replace '\s+', ' '))
if ($newPid -eq '' -or $newPid -eq $oldPid) {
    Log 'C4 BLOCKED: core did not come back with a new pid'
    Log '=== c4 end ==='
    exit 1
}

Start-Sleep -Seconds 8

# ---- 4. sender on the NEW pid ----
Bridge 'status' | Out-Null
$runner = StartSender @('--duration', '300', '--stop-flag', $stopFlag) $tag $newPid
$s = WaitStat $tag { param($h) $h['conn'] -eq 'true' } 45
Log ('connected on new pid: ' + ($s['conn']))
$pre = Select-String -LiteralPath (Join-Path $script:P1 ($tag + '.jsonl')) -Pattern 'precheck' -ErrorAction SilentlyContinue
if ($pre) { Log ('precheck: ' + (($pre[0].Line -replace '\s+', ' '))) }

# ---- 5. five utterances ----
$batches = @('s01,s02,s03,s04,s05', 's06,s07,s08,s09,s10', 's11,s12,s13,s01,s02')
for ($i = 0; $i -lt $batches.Count; $i++) {
    $s = LastStat $tag
    if ([int]$s['stored'] -ge 5) { break }
    Play $batches[$i] ($tag + '_p' + ($i + 1))
    $s = WaitStat $tag { param($h) [int]$h['stored'] -ge 5 } 20
}
$s5 = LastStat $tag
Log ('final stats: ' + (($s5.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))

$evAfter = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c4_after.jsonl' | Out-Null
Log ('events after: ' + $evAfter)
Log ('core pid now = ' + (CorePid))

New-Item -ItemType File -Path $stopFlag -Force | Out-Null
$deadline = (Get-Date).AddSeconds(40)
while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 300 }
Log ('runner exited = ' + $runner.HasExited)
Log '=== c4 end ==='
