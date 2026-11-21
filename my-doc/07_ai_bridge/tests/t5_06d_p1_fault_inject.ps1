# t5_06d_p1_fault_inject.ps1 -- T5-06D-P1 故障注入（真机 TG-Z02）
#
# 两个阶段：
#   exec  执行器持久化故障注入（不出声）：recover / retry / failed / done 各注入点
#   real  真机闭环：真实模型（局域网代理）+ 原厂 TTS 播报 + 队列写失败/恢复/kill -9/done 失败
#
# 用法：
#   powershell -File t5_06d_p1_fault_inject.ps1                  # exec + real
#   powershell -File t5_06d_p1_fault_inject.ps1 -Only exec        # 只跑故障注入
#
# 前提：
#   - TG-Z02 在线；/data/local/tmp/t5_bridge/tts_exec.dex 已是最新构建
#   - /data/local/tmp/t5d06/bin/ai_worker 已是最新构建
#   - 密钥文件存在且 0600（内容不读、不打印、不进日志）
#   - 真阶段会真的出声播报（原厂扬声器），文本来自真实模型回答
param(
    [string]$Dev = "192.168.1.9:5555",
    [string]$Only = "exec,real",
    [string]$Log = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t5_06d_p1_device_fault.log"
)

$ErrorActionPreference = 'Continue'
$adb = 'D:\GreenSoft\platform-tools\adb.exe'
$repo = 'D:\tgz02\OS\system\my-doc\07_ai_bridge'
$hostTmp = 'D:\tgz02\OS\_analysis\t5p1'
$devSrc = 'D:\tgz02\OS\system\my-doc\07_ai_bridge\android\t5_06d_p1'
$devDir = '/data/local/tmp/t5p1'
$root = "$devDir/tts"          # 执行器故障注入用的根目录
$rwork = "$devDir/rwork"       # 真阶段：独立 work/state/queue
$rstate = "$devDir/rstate"
$rtts = "$devDir/rtts"
$blocked = "$devDir/rtts_blocked"
$script:LogPath = $Log
$script:Fails = 0
$script:Skips = 0
$script:PayloadLen = @{}
$script:EvLines = 0

function Rec([string]$t) { $t | Out-File -FilePath $script:LogPath -Encoding utf8 -Append }
function Note([string]$t) { Rec ("[i] " + $t); Write-Host ("[i] " + $t) -ForegroundColor DarkGray }
function Assert([bool]$cond, [string]$what) {
    if ($cond) { Rec ("PASS " + $what); Write-Host ("PASS " + $what) -ForegroundColor Green }
    else { $script:Fails++; Rec ("FAIL " + $what); Write-Host ("FAIL " + $what) -ForegroundColor Red }
}
function Skip([string]$what, [string]$why) {
    $script:Skips++; Rec ("SKIP " + $what + " :: " + $why); Write-Host ("SKIP " + $what + " :: " + $why) -ForegroundColor Yellow
}

function Adb([string[]]$argv) { (& $adb -s $Dev @argv 2>&1) -join "`n" }
function Sh([string]$c) { (Adb @('shell', $c)) -replace "`r", "" }
function Dev1([string]$c) { (Sh $c).Trim() }
function Su([string]$c) { Dev1 ("su -c 'PATH=/system/bin:/system/xbin:/sbin; " + $c + "'") }

function N([string]$dir) {
    $v = Su ("ls " + $dir + " 2>/dev/null | wc -l")
    $d = ($v -replace '[^0-9]', '')
    if ($d -eq '') { return 0 }
    return [int]$d
}
function Has([string]$p) { (Su ("test -f " + $p + " && echo yes || echo no")) -eq 'yes' }
function Md5([string]$p) {
    $v = Su ("md5sum " + $p + " 2>/dev/null")
    if ($v.Length -ge 32) { return $v.Substring(0, 32) }
    return ''
}
function Sha256([string]$p) {
    $v = Su ("sha256sum " + $p + " 2>/dev/null")
    if ($v.Length -ge 64) { return $v.Substring(0, 64) }
    return ''
}
function CatJson([string]$p) {
    $t = Su ("cat " + $p + " 2>/dev/null")
    if ($t -eq '') { return $null }
    try { return ($t | ConvertFrom-Json) } catch { return $null }
}
function Journal([string]$r) {
    $t = Su ("cat " + $r + "/journal.jsonl 2>/dev/null")
    if ($t -eq '') { return @() }
    $out = @()
    foreach ($ln in ($t -split "`n")) {
        if ($ln.Trim() -eq '') { continue }
        try { $out += ($ln | ConvertFrom-Json) } catch { }
    }
    return $out
}
function JFor([object[]]$j, [string]$eid) { return @($j | Where-Object { $_.event_id -eq $eid }) }
function Push([string]$local, [string]$remote) {
    $r = & $adb -s $Dev push $local $remote 2>&1
    Rec ("[push] " + $remote + " :: " + ($r -join ' '))
}

function CleanRoot([string]$r) { Su ("rm -rf " + $r + "; mkdir -p " + $r) | Out-Null }
function Seed([string]$r, [string]$eid, [string]$textFile, [int]$attempts, [string]$where) {
    $o = Su ("sh " + $devDir + "/seed_item.sh " + $r + " " + $eid + " " + $textFile + " " + $attempts + " " + $where)
    Rec ("[seed] " + $o)
    return $o
}
function RunExec([string]$r, [string]$extra) {
    $out = Su ("sh " + $devDir + "/run_exec.sh " + $r + " " + $extra)
    Rec ("[exec] " + $extra)
    foreach ($ln in ($out -split "`n")) { Rec ("    " + $ln) }
    return $out
}
function RunExecBg([string]$r, [string]$extra, [string]$logName) {
    Su ("rm -f " + $devDir + "/" + $logName) | Out-Null
    Su ("nohup sh " + $devDir + "/run_exec.sh " + $r + " " + $extra + " > " + $devDir + "/" + $logName + " 2>&1 &") | Out-Null
}

# ---------------------------------------------------------------- 预检

function Preflight() {
    Rec ""
    Rec ("=== T5-06D-P1 fault injection " + (Get-Date).ToString("yyyy-MM-dd HH:mm:ss") + " ===")
    $st = Dev1 "getprop ro.build.version.sdk"
    Assert ($st -eq '27') "device is TG-Z02 (sdk 27)"
    $core = Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core"
    Assert ($core -ne '') ("factory core is running (pid=" + $core + ")")
    Assert (Has '/data/local/tmp/t5_bridge/tts_exec.dex') "tts_exec.dex present"
    Assert (Has '/data/local/tmp/t5d06/bin/ai_worker') "ai_worker binary present"
    $kp = Su "ls -l /data/local/tmp/t5_bridge/secret/deepseek_api_key"
    Assert ($kp -match '^-rw-------') ("api key file is 0600 (content not read): " + $kp)
    foreach ($f in @('seed_item.sh', 'run_exec.sh', 'run_worker_p1.sh', 'dump_state.sh', 'pids.sh', 'kill_pid.sh', 'kill_during_play.sh')) {
        Push (Join-Path $devSrc $f) ($devDir + "/" + $f)
    }
    Su ("chmod 700 " + $devDir + "/*.sh") | Out-Null
    Assert ((N $devDir) -ge 7) "device helpers installed"
}

# ---------------------------------------------------------------- 阶段 exec

# E1 自检：目录 fsync 在这台机器上真的可用（持久化前提）
function E1_Selfcheck {
    CleanRoot $root
    $out = RunExec $root "--selfcheck"
    Assert ($out -match 'write=true dirfsync=true file=true') "E1 dir fsync + atomic write work on this device"
    Assert ((N "$root/queue") -eq 0) "E1 selfcheck leaves no queue item behind"
}

# E2 recoverInflight 写 queue 失败：inflight 原件必须保留
function E2_RecoverWrite {
    CleanRoot $root
    Seed $root 'ev-e2' "$devDir/e2.txt" 0 'inflight' | Out-Null
    $out = RunExec $root "--recover-only --fault recover_write"
    Assert ((N "$root/inflight") -eq 1) "E2 inflight source kept (queue write failed)"
    Assert ((N "$root/queue") -eq 0) "E2 no queue item created"
    Assert ((N "$root/done") -eq 0) "E2 nothing marked done"
    $st = CatJson "$root/state.json"
    Assert ([int]$st.recover_failed -eq 1) "E2 state.recover_failed = 1"
    $j = JFor (Journal $root) 'ev-e2'
    Assert ((@($j | Where-Object { $_.kind -eq 'recover_failure' }).Count) -eq 1) "E2 journal records recover_failure with event_id"
    Assert ((@($j | Where-Object { $_.kind -eq 'recover_failure' }).stage) -eq 'queue') "E2 failure stage = queue"
    Assert ($out -match 'inflight file kept') "E2 executor says the inflight file is kept"
    # 故障解除后同一条目恢复
    $out2 = RunExec $root "--once --fault fake_ok"
    Assert ((N "$root/inflight") -eq 0) "E2 after the fault clears: inflight empty"
    Assert ((N "$root/done") -eq 1) "E2 after the fault clears: done marker written"
    Assert ($out2 -match 'recovered inflight item ev-e2') "E2 recovery moves the item back to the queue"
}

# E3 recoverInflight 目录 fsync 失败：queue 文件已存在但 inflight 也不能删
function E3_RecoverDirfsync {
    CleanRoot $root
    Seed $root 'ev-e3' "$devDir/e3.txt" 0 'inflight' | Out-Null
    RunExec $root "--recover-only --fault recover_dirfsync" | Out-Null
    Assert ((N "$root/queue") -eq 1) "E3 queue item exists (rename already happened)"
    Assert ((N "$root/inflight") -eq 1) "E3 inflight source still kept (dir fsync failed)"
    $st = CatJson "$root/state.json"
    Assert ([int]$st.recover_failed -eq 1) "E3 state.recover_failed = 1"
    $j = JFor (Journal $root) 'ev-e3'
    Assert ((@($j | Where-Object { $_.kind -eq 'recover_failure' }).stage) -eq 'queue') "E3 failure stage = queue"
    $q = CatJson "$root/queue/ev-e3.json"
    Assert ($q.event_id -eq 'ev-e3') "E3 queue item carries the same event_id"
    Assert ($q.text -eq 'p1 recover dirfsync payload three') "E3 queue item text is byte-identical"
    $out2 = RunExec $root "--once --fault fake_ok"
    Assert ((N "$root/queue") -eq 0) "E3 after the fault clears: queue drained"
    Assert ((N "$root/inflight") -eq 0) "E3 after the fault clears: inflight cleaned up"
    Assert ((N "$root/done") -eq 1) "E3 after the fault clears: single done marker"
    Assert ($out2 -match 'recovered inflight item ev-e3') "E3 recovery re-runs over the same item id"
}

# E4 drainOnce 重试写入失败：claimed 条目保留在 inflight，不静默丢
function E4_RetryWrite {
    CleanRoot $root
    Seed $root 'ev-e4' "$devDir/e4.txt" 0 'queue' | Out-Null
    RunExec $root "--once --fault provider_fail,retry_write --max-attempts 3" | Out-Null
    Assert ((N "$root/queue") -eq 0) "E4 no queue item (write failed)"
    Assert ((N "$root/inflight") -eq 1) "E4 claimed payload kept in inflight"
    Assert ((N "$root/failed") -eq 0) "E4 nothing parked in failed"
    $st = CatJson "$root/state.json"
    Assert ([int]$st.persist_failed -eq 1) "E4 state.persist_failed = 1"
    $j = JFor (Journal $root) 'ev-e4'
    $pf = @($j | Where-Object { $_.kind -eq 'persist_failure' })
    Assert ($pf.Count -eq 1) "E4 journal records persist_failure"
    Assert ($pf.stage -eq 'queue') "E4 persist_failure stage = queue"
    Assert ($pf.outcome -eq 'provider_error') "E4 persist_failure carries the outcome"
    # 故障解除：恢复后 attempts 继续前进，正文一字不差
    $out2 = RunExec $root "--once --fault fake_ok"
    Assert ((N "$root/inflight") -eq 0) "E4 after the fault clears: inflight empty"
    Assert ((N "$root/done") -eq 1) "E4 after the fault clears: played and marked done"
    Assert ($out2 -match 'recovered inflight item ev-e4') "E4 recovery re-runs over the same item id"
    $ok = @(JFor (Journal $root) 'ev-e4' | Where-Object { $_.outcome -eq 'ok' })
    Assert ($ok.Count -eq 1) "E4 exactly one successful playback after recovery"
    Assert ([int]$ok[0].attempts -eq 2) "E4 attempts advanced to 2 after recovery"
    Assert ([int]$ok[0].text_bytes -eq $script:PayloadLen['e4.txt']) "E4 recovered payload keeps its byte length"
}

# E5 parkFailed 写入失败：原回答保留，不丢
function E5_FailedWrite {
    CleanRoot $root
    Seed $root 'ev-e5' "$devDir/e5.txt" 0 'queue' | Out-Null
    RunExec $root "--once --fault provider_fail,failed_write --max-attempts 1" | Out-Null
    Assert ((N "$root/failed") -eq 0) "E5 failed/ write did not happen"
    Assert ((N "$root/inflight") -eq 1) "E5 payload kept in inflight"
    $st = CatJson "$root/state.json"
    Assert ([int]$st.persist_failed -eq 1) "E5 state.persist_failed = 1"
    $j = JFor (Journal $root) 'ev-e5'
    Assert ((@($j | Where-Object { $_.kind -eq 'persist_failure' }).stage) -eq 'failed') "E5 persist_failure stage = failed"
    # 故障解除：park 成功后才删原件
    RunExec $root "--once --fault provider_fail --max-attempts 1" | Out-Null
    Assert ((N "$root/failed") -eq 1) "E5 after the fault clears: parked in failed/"
    Assert ((N "$root/inflight") -eq 0) "E5 after the fault clears: inflight empty"
    $f = CatJson "$root/failed/ev-e5.json"
    Assert ($f.text -eq 'p1 failed write payload five') "E5 parked answer text is byte-identical"
    $j2 = JFor (Journal $root) 'ev-e5'
    Assert ((@($j2 | Where-Object { $_.kind -eq 'give_up' }).Count) -eq 1) "E5 give_up recorded once"
}

# E6/E7/E8 done 标记三种失败：播报完成后原始回答必须保留
function DoneCase([string]$name, [string]$eid, [string]$textFile, [string]$fault, [bool]$markerAppears) {
    CleanRoot $root
    Seed $root $eid "$devDir/$textFile" 0 'queue' | Out-Null
    $payload = (Su ("cat " + $devDir + "/" + $textFile)).Trim()
    RunExec $root "--once --fault fake_ok,$fault" | Out-Null
    $st = CatJson "$root/state.json"
    Assert ([int]$st.done_marker_failed -eq 1) ("$name state.done_marker_failed = 1")
    Assert ((N "$root/inflight") -eq 1) ("$name payload kept in inflight")
    if ($markerAppears) {
        Assert ((N "$root/done") -eq 1) ("$name done marker reached done/ but was not durable")
    } else {
        Assert ((N "$root/done") -eq 0) ("$name no done marker written")
    }
    $j = JFor (Journal $root) $eid
    Assert ((@($j | Where-Object { $_.kind -eq 'done_marker_failure' }).Count) -eq 1) ("$name journal records done_marker_failure")
    $item = CatJson ("$root/inflight/" + $eid + ".json")
    Assert ($item.text -eq $payload) ("$name inflight payload text unchanged")
    # 故障解除：重放一次，done 标记落盘，inflight 清空（允许重复播报，不允许丢失）
    $out2 = RunExec $root "--once --fault fake_ok"
    Assert ((N "$root/inflight") -eq 0) ("$name after the fault clears: inflight empty")
    Assert ((N "$root/done") -eq 1) ("$name after the fault clears: exactly one done marker")
    $j2 = JFor (Journal $root) $eid
    $oks = @($j2 | Where-Object { $_.outcome -eq 'ok' })
    Assert ($oks.Count -ge 2) ("$name replay happened (at-least-once boundary: " + $oks.Count + " ok outcomes)")
    Assert ($out2 -match ('recovered inflight item ' + $eid)) ("$name recovery replays the same event id")
}

function E6_DoneWrite   { DoneCase 'E6' 'ev-e6' 'e6.txt' 'done_write'    $false }
function E7_DoneRename  { DoneCase 'E7' 'ev-e7' 'e7.txt' 'done_rename'   $false }
function E8_DoneDirsync { DoneCase 'E8' 'ev-e8' 'e8.txt' 'done_dirfsync' $true }

# E9 无故障对照：正常路径仍然一次播报 + 一个 done 标记
function E9_NoFault {
    CleanRoot $root
    Seed $root 'ev-e9' "$devDir/e9.txt" 0 'queue' | Out-Null
    $out = RunExec $root "--once --fault fake_ok"
    Assert ((N "$root/queue") -eq 0) "E9 queue drained"
    Assert ((N "$root/inflight") -eq 0) "E9 inflight empty"
    Assert ((N "$root/done") -eq 1) "E9 done marker written"
    $st = CatJson "$root/state.json"
    Assert ([int]$st.ok -eq 1) "E9 played exactly once"
    Assert ([int]$st.done_marker_failed -eq 0) "E9 no done failure"
    Assert ([int]$st.persist_failed -eq 0) "E9 no persist failure"
    Assert ($out -match 'exit played=1 ok=1') "E9 summary line reports one successful playback"
}

# ---------------------------------------------------------------- 阶段 real

function MakeEvents([string]$path, [string]$eid, [string]$text, [int]$seq) {
    $o = [ordered]@{
        version = 1; rec = 'asr_final'; event_id = $eid; event_type = 'asr_final'
        pid = 4242; session_id = '1000'; text = $text
        text_bytes = [Text.Encoding]::UTF8.GetByteCount($text); text_chars = $text.Length
        is_final = $true; received_at_ms = 1000 + $seq; recv_at_ms = 2000 + $seq
        stored_at_ms = 3000 + $seq; seq = $seq
    }
    $line = (ConvertTo-Json $o -Compress) + "`n"
    $full = Join-Path $hostTmp ("run_" + $eid + ".jsonl")
    [IO.File]::WriteAllText($full, $line, (New-Object Text.UTF8Encoding($false)))
    # 先推到 shell 可写的 devDir，再由 root 追加到 worker 的 work 目录（目录属 root）
    $stage = $devDir + "/_seed_" + $eid + ".jsonl"
    Push $full $stage
    Su ("test -d " + $path + " || mkdir -p " + $path) | Out-Null
    $n = Dev1 ("su -c 'cat " + $stage + " >> " + $path + "/events.jsonl; rm -f " + $stage + "; wc -l < " + $path + "/events.jsonl'")
    $lines = [int](($n -replace '[^0-9]', ''))
    $script:EvLines = $script:EvLines + 1
    Rec ("[events] appended " + $eid + " -> lines=" + $lines)
    Assert ($lines -eq $script:EvLines) ("event " + $eid + " appended (events.jsonl now " + $lines + " lines)")
    return $n
}

function RunWorker([string]$work, [string]$state, [string]$tts, [string]$maxEvents, [string]$idle, [string]$outName, [string]$faultEnv, [string]$extra) {
    $env = ''
    if ($faultEnv -ne '') { $env = "T6B_FAULT_TTSQ=" + $faultEnv + " " }
    $cmd = $env + "sh " + $devDir + "/run_worker_p1.sh " + $work + " " + $state + " " + $tts + " " + $maxEvents + " " + $idle + " " + $devDir + "/" + $outName
    if ($extra -ne '') { $cmd = $cmd + " " + $extra }
    $out = Su $cmd
    Rec ("[worker] tts=" + $tts + " fault=" + $faultEnv + " extra=" + $extra + " out=" + $outName)
    foreach ($ln in ($out -split "`n")) { Rec ("    " + $ln) }
    $log = Su ("cat " + $devDir + "/" + $outName + " 2>/dev/null")
    foreach ($ln in ($log -split "`n")) { Rec ("    | " + $ln) }
    return $log
}

function WorkerStatus([string]$state) { return (CatJson ($state + "/ai_worker_status.json")) }
function Offset([string]$state) {
    $s = CatJson ($state + "/consumer_state.json")
    if ($null -eq $s) { return 0 }
    return [int]$s.offset
}

function RealPhase() {
    Rec ""
    Rec "--- real phase: real model via LAN proxy + factory TTS on the speaker ---"
    Su ("rm -rf " + $rwork + " " + $rstate + " " + $rtts + " " + $blocked) | Out-Null
    Su ("mkdir -p " + $rwork) | Out-Null
    $script:EvLines = 0

    # ---- R1a：队列目录真的写不进去（路径被普通文件占住）→ 不提交偏移 ----
    $eid1 = 'p1r1a-' + (Get-Date -Format 'HHmmss')
    MakeEvents $rwork $eid1 '请用一句话回答：你现在的状态正常吗' 1 | Out-Null
    Su ("printf x > " + $blocked + "; chmod 600 " + $blocked) | Out-Null
    Assert (((Su ("test -f " + $blocked + " && echo yes || echo no")) -eq 'yes')) "R1a queue path blocked by a regular file (real mkdir failure)"
    $log1 = RunWorker $rwork $rstate $blocked '0' '0' 'r1a_fault.log' '' '--max-runtime-ms 9000 --provider-retry-max 3'
    Assert ($log1 -match 'deepseek ok: model=deepseek-flash http=200') "R1a real model answered (http 200 via 192.168.1.13:8790)"
    Assert ($log1 -match 'tts enqueue FAILED') "R1a queue failure is loud in the worker log"
    Assert ($log1 -match 'cannot create TTS queue directories') "R1a failure reason = the queue dir cannot be created"
    $st1 = WorkerStatus $rstate
    Assert ([int]$st1.counters.events_processed -eq 0) "R1a event NOT committed while the answer is not durable"
    Assert ([int]$st1.counters.tts_enqueue_failed -ge 1) "R1a enqueue failure counted"
    Assert ((Offset $rstate) -eq 0) "R1a consumer offset still 0"
    Assert ((Su ("test -d " + $blocked + "/queue && echo yes || echo no")) -eq 'no') "R1a no queue directory was created"

    # ---- R1b：解除占用后同一事件重新回答、只入队一次、提交偏移 ----
    Su ("rm -f " + $blocked) | Out-Null
    $log2 = RunWorker $rwork $rstate $rtts '1' '2500' 'r1b_retry.log' '' ''
    Assert ($log2 -match 'deepseek ok: model=deepseek-flash http=200') "R1b the same event is answered again after the fault clears"
    Assert ($log2 -match ('tts queued: event=' + $eid1)) "R1b answer is queued once the dir works"
    Assert ((N "$rtts/queue") -eq 1) "R1b exactly one queue item on the device"
    $item1 = CatJson ("$rtts/queue/" + $eid1 + ".json")
    Assert ($null -ne $item1) "R1b queue item is readable JSON"
    Assert ($item1.event_id -eq $eid1) "R1b queue item carries the same event_id"
    $st2 = WorkerStatus $rstate
    Assert ([int]$st2.counters.events_processed -eq 1) "R1b event committed exactly once after the queue write"
    Assert ((Offset $rstate) -gt 0) "R1b offset advanced only after the item existed"

    # ---- R1c：目录 fsync 注入（真实模型）→ 文件已 rename 可见但不得提交 ----
    $eid1c = 'p1r1c-' + (Get-Date -Format 'HHmmss')
    MakeEvents $rwork $eid1c '请用一句话回答：第二次测试正常吗' 2 | Out-Null
    $offBefore = Offset $rstate
    $log3 = RunWorker $rwork $rstate $rtts '0' '0' 'r1c_dirsync.log' 'dirfsync' '--max-runtime-ms 14000 --provider-retry-max 3'
    Assert ($log3 -match 'tts enqueue FAILED') "R1c dirfsync fault is reported"
    Assert ($log3 -match 'queue directory fsync failed after rename') "R1c new-item failure reason = dir fsync after rename"
    Assert ($log3 -match 'injected dirfsync failure for queue') "R1c idempotent retry also hits its own dir fsync"
    $st3 = WorkerStatus $rstate
    Assert ([int]$st3.counters.tts_enqueue_failed -ge 1) "R1c enqueue failure counted"
    Assert ([int]$st3.counters.tts_skipped -eq 0) "R1c a hit without a durable dir fsync is NOT counted as a skip"
    Assert ([int]$st3.counters.events_processed -eq 0) "R1c nothing committed while the dir fsync fails"
    Assert ((Offset $rstate) -eq $offBefore) ("R1c offset unchanged (" + $offBefore + " -> " + (Offset $rstate) + ")")
    $item1c = CatJson ("$rtts/queue/" + $eid1c + ".json")
    Assert ($null -ne $item1c) "R1c the item written before the dirfsync failure is still there"
    Assert ($item1c.text.Length -gt 0) "R1c item text is intact"
    $sha1c = Sha256 ("$rtts/queue/" + $eid1c + ".json")
    Assert ($sha1c.Length -eq 64) "R1c queue item sha256 captured"

    # ---- R1c2：故障解除后重启 → 幂等命中重新 fsync 成功 → 只提交一次 ----
    $log3b = RunWorker $rwork $rstate $rtts '1' '2500' 'r1c_retry.log' '' ''
    Assert ($log3b -match ('tts skip \(already queued/played\): event=' + $eid1c)) "R1c2 the hit is recognised by event_id"
    $st3b = WorkerStatus $rstate
    Assert ([int]$st3b.counters.tts_skipped -ge 1) "R1c2 idempotent hit counted"
    Assert ([int]$st3b.counters.tts_queued -eq 0) "R1c2 no new item is written"
    Assert ([int]$st3b.counters.events_processed -eq 1) "R1c2 committed exactly once after the dir fsync works"
    Assert ((Offset $rstate) -gt $offBefore) "R1c2 offset advanced only after the durable hit"
    Assert ((Sha256 ("$rtts/queue/" + $eid1c + ".json")) -eq $sha1c) "R1c2 queue item sha256 unchanged across failure and retry"
    Assert ((N "$rtts/queue") -eq 2) "R1c2 no duplicate item for the same event id"

    # ---- R1d：执行器真实播报 + done 标记 + worker 重启不重复入队 ----
    $out1 = RunExec $rtts "--once --timeout-ms 60000"
    Assert ((N "$rtts/done") -eq 2) "R1d executor wrote a done marker for both items"
    Assert ((N "$rtts/inflight") -eq 0) "R1d inflight empty after playback"
    $j1 = JFor (Journal $rtts) $eid1
    $ok1 = @($j1 | Where-Object { $_.outcome -eq 'ok' })
    Assert ($ok1.Count -eq 1) "R1d exactly one successful playback for the first event"
    Assert ([int]$ok1[0].tts_id -gt 0) ("R1d factory accepted a real tts id (" + $ok1[0].tts_id + ")")
    Assert ([int]$ok1[0].text_bytes -eq [int]$item1.reply_bytes) "R1d played text is byte-identical to the answered text"
    $m1 = Md5 ("$rtts/queue/" + $eid1c + ".json")
    $log4 = RunWorker $rwork $rstate $rtts '1' '1200' 'r1d_after.log' '' ''
    Assert ((N "$rtts/queue") -eq 0) "R1d worker restart queues nothing new"
    Assert ((N "$rtts/done") -eq 2) "R1d worker restart keeps two done markers"
    Rec ("[i] worker restart tail: " + (($log4 -split "`n" | Select-Object -Last 2) -join ' / '))

    # ---- R2：播报中 kill -9 执行器 → inflight 恢复后重播，回答不丢 ----
    $eid2 = 'p1r2-' + (Get-Date -Format 'HHmmss')
    MakeEvents $rwork $eid2 '请用一句话回答：恢复测试是否正常' 3 | Out-Null
    RunWorker $rwork $rstate $rtts '1' '2500' 'r2_seed.log' '' '' | Out-Null
    Assert ((N "$rtts/queue") -eq 1) "R2 second event queued by the real worker"
    $bodyBefore = Md5 ("$rtts/queue/" + $eid2 + ".json")
    Assert ($bodyBefore.Length -eq 32) "R2 queued payload digest captured"
    $item2 = CatJson ("$rtts/queue/" + $eid2 + ".json")
    $rb2 = [int]$item2.reply_bytes
    Assert ($rb2 -gt 0) "R2 queued payload byte count captured"
    RunExecBg $rtts "--idle-ms 30000 --timeout-ms 60000" 'r2_exec.log'
    # 一次设备侧调用完成"等 inflight → 立刻 kill -9 → 立刻核对"，避免主机往返把播报等完
    $kout = Su ("sh " + $devDir + "/kill_during_play.sh " + $rtts + " " + $eid2 + " 90")
    Rec ("[kill] " + ($kout -replace "`n", ' / '))
    Assert ($kout -match 'md5_before=([0-9a-f]{32})') "R2 playback started (item in inflight)"
    Assert ($kout -match 'done_before=0') "R2 killed before the playback completed"
    Assert ($kout -match 'pid_gone=yes') "R2 kill -9 actually terminated the executor"
    Assert ($kout -match 'KEPT') "R2 after kill -9 the payload stays in inflight/"
    Assert ($kout -match ('md5_after=' + $bodyBefore)) "R2 payload bytes untouched by the crash"
    Assert ((N "$rtts/inflight") -eq 1) "R2 inflight still holds exactly one item"
    Assert ((Md5 ("$rtts/inflight/" + $eid2 + ".json")) -eq $bodyBefore) "R2 inflight payload digest still matches"
    $out2 = RunExec $rtts "--once --timeout-ms 60000"
    Assert ($out2 -match ('recovered inflight item ' + $eid2)) "R2 restart recovers the inflight item"
    Assert ((N "$rtts/inflight") -eq 0) "R2 inflight empty after the replayed playback"
    $j2 = JFor (Journal $rtts) $eid2
    $ok2 = @($j2 | Where-Object { $_.outcome -eq 'ok' })
    Assert ($ok2.Count -ge 1) "R2 replays and completes (at-least-once)"
    Assert ([int]$ok2[-1].tts_id -gt 0) "R2 replay used a real factory tts id"
    Assert ([int]$ok2[-1].text_bytes -eq $rb2) "R2 replay kept the answered payload size"

    # R3 done 标记失败（真实播报）→ 回答保留
    $eid3 = 'p1r3-' + (Get-Date -Format 'HHmmss')
    MakeEvents $rwork $eid3 '请只回答四个字：持久化正常' 3 | Out-Null
    RunWorker $rwork $rstate $rtts '1' '2500' 'r3_seed.log' '' '' | Out-Null
    Assert ((N "$rtts/queue") -eq 1) "R3 third event queued"
    $out3 = RunExec $rtts "--once --fault done_write --timeout-ms 60000"
    Assert ($out3 -match 'done marker NOT persisted') "R3 executor reports the done marker failure"
    Assert ((N "$rtts/done") -ge 1) "R3 earlier done markers are untouched"
    Assert ((N "$rtts/inflight") -eq 1) "R3 payload kept in inflight/ (answer preserved)"
    $st3 = CatJson "$rtts/state.json"
    Assert ([int]$st3.done_marker_failed -eq 1) "R3 state.done_marker_failed = 1"
    $j3 = JFor (Journal $rtts) $eid3
    Assert ((@($j3 | Where-Object { $_.outcome -eq 'ok' }).Count) -ge 1) "R3 real playback happened before the marker failed"
    Assert ((@($j3 | Where-Object { $_.kind -eq 'done_marker_failure' }).Count) -eq 1) "R3 journal records done_marker_failure"
    $out4 = RunExec $rtts "--once --timeout-ms 60000"
    Assert ($out4 -match ('recovered inflight item ' + $eid3)) "R3 restart replays the preserved answer"
    Assert ((N "$rtts/inflight") -eq 0) "R3 inflight empty after the replay"

    # ---- R5：stat 无法检查（自指 symlink → ELOOP）→ 失败关闭，不提交偏移 ----
    $eid5 = 'p1r5-' + (Get-Date -Format 'HHmmss')
    MakeEvents $rwork $eid5 '请用一句话回答：错误分类测试一' 5 | Out-Null
    Su ("mkdir -p " + $rtts + "/done") | Out-Null
    Su ("ln -s " + $eid5 + ".ok " + $rtts + "/done/" + $eid5 + ".ok") | Out-Null
    $linkOk = Su ("test -L " + $rtts + "/done/" + $eid5 + ".ok && echo yes || echo no")
    Assert ($linkOk -eq 'yes') "R5 self-referential symlink created at the done stage"
    $off5 = Offset $rstate
    $log5 = RunWorker $rwork $rstate $rtts '0' '0' 'r5_statlog.log' '' '--max-runtime-ms 12000 --provider-retry-max 3'
    Assert ($log5 -match 'cannot inspect existing done item \(errno=\d+\)') "R5 a stat error other than ENOENT/ENOTDIR fails closed"
    Assert (-not ($log5 -match 'tts skip \(already queued/played\)')) "R5 the broken record is never treated as an idempotent hit"
    $st5 = WorkerStatus $rstate
    Assert ([int]$st5.counters.tts_enqueue_failed -ge 1) "R5 failure counted"
    Assert ([int]$st5.counters.events_processed -eq 0) "R5 event not committed while the stat fails"
    Assert ((Offset $rstate) -eq $off5) ("R5 offset unchanged (" + $off5 + " -> " + (Offset $rstate) + ")")
    Assert ((N "$rtts/queue") -eq 0) "R5 no queue item is created for the un-inspectable event"
    # 移除坏对象 → 变成 ENOENT → 正常入队并提交一次
    Su ("rm -f " + $rtts + "/done/" + $eid5 + ".ok") | Out-Null
    $log5b = RunWorker $rwork $rstate $rtts '1' '2500' 'r5_retry.log' '' ''
    Assert ($log5b -match ('tts queued: event=' + $eid5)) "R5 after the bad record is gone the event is queued (ENOENT = absent)"
    $st5b = WorkerStatus $rstate
    Assert ([int]$st5b.counters.events_processed -eq 1) "R5 committed exactly once"
    Assert ((Offset $rstate) -gt $off5) "R5 offset advanced after the durable enqueue"

    # ---- R6：条目路径是目录（S_ISREG 失败）→ 失败关闭，不提交偏移 ----
    $eid6 = 'p1r6-' + (Get-Date -Format 'HHmmss')
    MakeEvents $rwork $eid6 '请用一句话回答：错误分类测试二' 6 | Out-Null
    Su ("mkdir -p " + $rtts + "/queue/" + $eid6 + ".json") | Out-Null
    $dirOk = Su ("test -d " + $rtts + "/queue/" + $eid6 + ".json && echo yes || echo no")
    Assert ($dirOk -eq 'yes') "R6 a directory occupies the queue item path"
    $off6 = Offset $rstate
    $log6 = RunWorker $rwork $rstate $rtts '0' '0' 'r6_statlog.log' '' '--max-runtime-ms 12000 --provider-retry-max 3'
    Assert ($log6 -match 'existing queue item is not a regular file') "R6 a non-regular record is rejected"
    $st6 = WorkerStatus $rstate
    Assert ([int]$st6.counters.tts_enqueue_failed -ge 1) "R6 failure counted"
    Assert ([int]$st6.counters.events_processed -eq 0) "R6 event not committed"
    Assert ((Offset $rstate) -eq $off6) ("R6 offset unchanged (" + $off6 + " -> " + (Offset $rstate) + ")")
    Assert ((Su ("test -d " + $rtts + "/queue/" + $eid6 + ".json && echo yes || echo no")) -eq 'yes') "R6 the offending directory is left untouched"
    Su ("rmdir " + $rtts + "/queue/" + $eid6 + ".json") | Out-Null
    $log6b = RunWorker $rwork $rstate $rtts '1' '2500' 'r6_retry.log' '' ''
    Assert ($log6b -match ('tts queued: event=' + $eid6)) "R6 after cleanup the event is queued (ENOENT = absent)"
    Assert ([int](WorkerStatus $rstate).counters.events_processed -eq 1) "R6 committed exactly once"
    Assert ((Offset $rstate) -gt $off6) "R6 offset advanced after the durable enqueue"

    # 播报 R5/R6 的真实回答（顺带确认原厂 TTS 正常）
    $out5 = RunExec $rtts "--once --timeout-ms 60000"
    Assert ((N "$rtts/inflight") -eq 0) "R6 replay queue drained"
    $j5 = JFor (Journal $rtts) $eid5
    Assert ((@($j5 | Where-Object { $_.outcome -eq 'ok' }).Count) -ge 1) "R5 answered text was played by factory TTS"
    Assert ((@(JFor (Journal $rtts) $eid6 | Where-Object { $_.outcome -eq 'ok' }).Count) -ge 1) "R6 answered text was played by factory TTS"

    # ---- R4 原厂 ASR / 模型代理 / 原厂 TTS 存活 ----
    $core = Dev1 "pidof com.alibaba.ailabs.genie.smartapp:core"
    Assert ($core -ne '') "R4 factory core still running"
    $all = (Su ("cat " + $rtts + "/journal.jsonl"))
    Assert ($all -match '"outcome":"ok"') "R4 factory TTS reported complete at least once"
    Assert ($log1 -match 'deepseek ok: model=deepseek-flash http=200 curl=0') "R4 model proxy healthy (http 200, curl=0)"
    Rec "[i] real ASR coverage is provided by t5_06d_device_e2e.ps1 -Only s8 (see evidence log)"
}

# ---------------------------------------------------------------- main

if (Test-Path $script:LogPath) { Remove-Item $script:LogPath -Force }
Preflight

# 文本文件（设备侧读取，避免 shell 里的中文引号问题）
foreach ($pair in @(@('e2.txt', 'p1 recover write payload two'), @('e3.txt', 'p1 recover dirfsync payload three'),
                    @('e4.txt', 'p1 retry write payload four'), @('e5.txt', 'p1 failed write payload five'),
                    @('e6.txt', 'p1 done write payload six'), @('e7.txt', 'p1 done rename payload seven'),
                    @('e8.txt', 'p1 done dirfsync payload eight'), @('e9.txt', 'p1 no fault payload nine'))) {
    [IO.File]::WriteAllText((Join-Path $hostTmp $pair[0]), $pair[1], (New-Object Text.UTF8Encoding($false)))
    $script:PayloadLen[$pair[0]] = [Text.Encoding]::UTF8.GetByteCount($pair[1])
    Push (Join-Path $hostTmp $pair[0]) ($devDir + "/" + $pair[0])
}

if ($Only -match 'exec') {
    Rec ""
    Rec "--- exec phase: executor persistence fault injection ---"
    E1_Selfcheck
    E2_RecoverWrite
    E3_RecoverDirfsync
    E4_RetryWrite
    E5_FailedWrite
    E6_DoneWrite
    E7_DoneRename
    E8_DoneDirsync
    E9_NoFault
}

if ($Only -match 'real') { RealPhase }

Rec ""
if ($script:Fails -eq 0) { Rec ("RESULT: PASS (fails=0 skips=" + $script:Skips + ")"); Write-Host "`nRESULT: PASS" -ForegroundColor Green }
else { Rec ("RESULT: FAIL (fails=" + $script:Fails + ")"); Write-Host "`nRESULT: FAIL" -ForegroundColor Red }
Write-Host ("log: " + $script:LogPath)
if ($script:Fails -eq 0) { exit 0 } else { exit 1 }
