# c6.ps1 -- T5-05C C6: duplicate / wrong-id / bad-crc / bad-type / timeout / reject / error
. 'D:\tgz02\OS\_analysis\t505c\t5c_lib.ps1'
Init-Case 'c6'

$cases = @(
    @{ mode = 'badid';      stim = 's01,s02' },
    @{ mode = 'badcrc';     stim = 's03,s04' },
    @{ mode = 'badtype';    stim = 's05,s06' },
    @{ mode = 'dup';        stim = 's07,s08' },
    @{ mode = 'error';      stim = 's09,s10' },
    @{ mode = 'reject';     stim = 's11,s12' },
    @{ mode = 'rejectnull'; stim = 's13,s01' },
    @{ mode = 'silent';     stim = 's02,s03' }
)

foreach ($c in $cases) {
    $mode = $c['mode']
    $tag = 'c6_' + $mode
    $stopFlag = Join-Path $script:P1 ($tag + '.stop')
    Remove-Item $stopFlag -ErrorAction SilentlyContinue

    Log ('--- case ' + $mode + ' ---')
    Bridge 'stop' | Out-Null
    StopPeer
    StartPeer $mode '' ('c6_' + $mode)

    $runner = StartSender @('--duration', '180', '--stop-flag', $stopFlag) $tag
    if ($null -eq $runner) { Log ('ABORT case ' + $mode); continue }
    $s = WaitStat $tag { param($h) $h['conn'] -eq 'true' } 40
    Log ($mode + ' connected=' + $s['conn'])

    $stimList = $c['stim'].Split(',')
    for ($i = 0; $i -lt $stimList.Count; $i++) {
        $s = LastStat $tag
        if ([int]$s['final'] -ge 1) { break }
        Play $stimList[$i] ($tag + '_p' + ($i + 1))
        $s = WaitStat $tag { param($h) [int]$h['final'] -ge 1 } 12
    }
    Start-Sleep -Seconds 9
    $s2 = LastStat $tag
    Log ($mode + ' stats: ' + (($s2.GetEnumerator() | Sort-Object Name | ForEach-Object { "$($_.Key)=$($_.Value)" }) -join ' '))
    PeerLog ('c6_' + $mode)

    New-Item -ItemType File -Path $stopFlag -Force | Out-Null
    $deadline = (Get-Date).AddSeconds(35)
    while (-not $runner.HasExited -and (Get-Date) -lt $deadline) { Start-Sleep -Milliseconds 300 }
    Log ($mode + ' runner exited=' + $runner.HasExited)
    StopPeer
}

# ---- bridge-side dedupe / frame reject, using the repo test client against the real Bridge ----
Bridge 'start' | Out-Null
Start-Sleep -Seconds 2
$evBefore = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Log ('bridge dedupe baseline events: ' + $evBefore)

$r1 = Sh '/data/local/tmp/t5_bridge/tgb_client --sock tgz2_asr_bridge --scenario dup --id-prefix c6dup-'
Log ('tgb_client dup: ' + (($r1 -join ' | ') -replace '\s+', ' '))
$r2 = Sh '/data/local/tmp/t5_bridge/tgb_client --sock tgz2_asr_bridge --scenario bad_crc --id-prefix c6crc-'
Log ('tgb_client bad_crc: ' + (($r2 -join ' | ') -replace '\s+', ' '))
$r3 = Sh '/data/local/tmp/t5_bridge/tgb_client --sock tgz2_asr_bridge --scenario bad_type --id-prefix c6typ-'
Log ('tgb_client bad_type: ' + (($r3 -join ' | ') -replace '\s+', ' '))
$r4 = Sh '/data/local/tmp/t5_bridge/tgb_client --sock tgz2_asr_bridge --scenario resend_after_ack --id-prefix c6res-'
Log ('tgb_client resend_after_ack: ' + (($r4 -join ' | ') -replace '\s+', ' '))

$evAfter = ((Sh 'wc -l /data/local/tmp/t5_bridge/work/events.jsonl') -join ' ') -replace '\s+', ' '
Log ('bridge dedupe events after: ' + $evAfter)
Sh 'cp -f /data/local/tmp/t5_bridge/work/events.jsonl /data/local/tmp/t5_bridge/work/events.c6_after.jsonl' | Out-Null
Sh 'cat /data/local/tmp/t5_bridge/work/bridge_status.json' | ForEach-Object { Log ('bridge status: ' + ($_ -replace '\s+', ' ')) }
Log ('core pid = ' + (CorePid))
Log '=== c6 end ==='
