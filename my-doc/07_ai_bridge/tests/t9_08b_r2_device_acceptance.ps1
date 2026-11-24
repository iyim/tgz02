# t9_08b_r2_device_acceptance.ps1 -- T9-08B-R2 real-device acceptance (items 1..8 of the task)
#
#   powershell -ExecutionPolicy Bypass -File t9_08b_r2_device_acceptance.ps1 [-SkipUiTap] [-SkipVoice]
#
# Requires: the device at $Serial with root, the R2 worker + executor already deployed
# (android/t9_08b_r2_deploy.sh), and the product APK installed (this script installs it).
#
# Everything is measured on the device: the executor journal (ids and outcomes only), play.public.json,
# state.json and the worker log. Nothing here is a host simulation of the code under test.
#
# Items:
#   1 normal playback is unaffected
#   2 one press of 停止播报 during playback stops it, immediately
#   3 nothing is spoken again within 10 s after the stop
#   4 three rapid presses do not stop the NEXT queued item
#   5 two queued items: stopping the first lets the second play normally
#   6 a REAL playback timeout still retries (the accepted retry path is untouched)
#   7 factory wake -> ASR -> AI -> TTS still complete
#   8 a voice interruption is not replayed afterwards
#
# Artifact: evidence/t9-08b-r2/60_device_acceptance.txt (+ 6x_*.png)
param(
    [string]$Serial = "192.168.1.9:5555",
    [string]$Adb    = "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe",
    [string]$Apk    = "",
    [string]$Wavs   = "D:\tgz02\OS\_analysis\t815\wav",
    [switch]$SkipUiTap,
    [switch]$SkipVoice
)
$ErrorActionPreference = "Continue"

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Ev   = Join-Path $Root "evidence\t9-08b-r2"
New-Item -ItemType Directory -Force $Ev | Out-Null
if ($Apk -eq "") { $Apk = Join-Path $Root "android\t9_07_ui\dist\voice_ui.apk" }
if (-not (Test-Path $Apk)) { throw "missing APK: $Apk" }
if (-not (Test-Path $Adb)) { throw "missing adb: $Adb" }

$Log = Join-Path $Ev "60_device_acceptance.txt"
# Every event id carries this stamp: the worker keeps a done marker per event_id, so re-using an id
# from an earlier run turns into an idempotent no-op instead of a playback.
$Tag = (Get-Date -Format "HHmmss")
$IdIdle      = "r2-$Tag-idle"
$IdNormal    = "r2-$Tag-normal"
$IdStopOnce  = "r2-$Tag-stoponce"
$IdTriA      = "r2-$Tag-triA"
$IdTriB      = "r2-$Tag-triB"
$IdPairA     = "r2-$Tag-pairA"
$IdPairB     = "r2-$Tag-pairB"
$IdTimeout   = "r2-$Tag-timeout"
$IdInterrupt = "r2-$Tag-interrupt"
$script:Lines = New-Object System.Collections.Generic.List[string]
$script:Fail = 0

function Say([string]$s) {
    $script:Lines.Add($s)
    Write-Host $s
}
function Step([string]$s) {
    Say ""
    Say "================================================================"
    Say "== $s"
    Say "================================================================"
}
function Check([bool]$cond, [string]$what) {
    if ($cond) { Say ("   [PASS] " + $what) }
    else { Say ("   [FAIL] " + $what); $script:Fail++ }
}
function Note([string]$s) { Say ("   " + $s) }

function Sh([string]$cmd) {
    $r = & $Adb -s $Serial shell $cmd 2>&1
    return ($r | Out-String)
}
# Every root call goes through a device script: `su 0 sh -c "a; b"` loses its privilege when the
# command line is assembled by the host, so nothing but "<script> <simple args>" is ever sent.
function Dev([string]$name, [string]$a1, [string]$a2) {
    $tmpl = 'su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/{0} {1} {2} 2>&1"'
    $cmd = $tmpl -f $name, $a1, $a2
    $r = & $Adb -s $Serial shell $cmd 2>&1
    return ($r | Out-String)
}
function Shot([string]$name) {
    & $Adb -s $Serial shell 'screencap -p /data/local/tmp/shot.png' 2>$null | Out-Null
    & $Adb -s $Serial pull /data/local/tmp/shot.png (Join-Path $Ev $name) 2>$null | Out-Null
    Note ("screenshot: " + $name)
}

function JournalLen { return [int]((Dev "t9_08b_r2_dev_jlen.sh" "" "").Trim()) }
function JournalFrom([int]$from) { return (Dev "t9_08b_r2_dev_journal.sh" "$from" "") }
function PlayRaw { return (Dev "t9_08b_r2_dev_play.sh" "" "") }

function PlayState {
    $raw = PlayRaw
    $o = @{ state = "?"; event = ""; ttsId = -1; outcome = "" }
    $m = [regex]::Match($raw, '"state":\s*"([^"]*)"')
    if ($m.Success) { $o.state = $m.Groups[1].Value }
    $m = [regex]::Match($raw, '"event_id":\s*"([^"]*)"')
    if ($m.Success) { $o.event = $m.Groups[1].Value }
    $m = [regex]::Match($raw, '"tts_id":\s*(-?\d+)')
    if ($m.Success) { $o.ttsId = [int]$m.Groups[1].Value }
    $m = [regex]::Match($raw, '"last_outcome":\s*"([^"]*)"')
    if ($m.Success) { $o.outcome = $m.Groups[1].Value }
    return $o
}

function WaitPlaying([int]$ms) {
    $t = 0
    while ($t -lt $ms) {
        $p = PlayState
        if ($p.state -eq "playing" -and $p.ttsId -gt 0) { return $p }
        Start-Sleep -Milliseconds 200
        $t += 200
    }
    return $null
}
function WaitIdle([int]$ms) {
    $t = 0
    while ($t -lt $ms) {
        $p = PlayState
        if ($p.state -eq "idle") { return $p }
        Start-Sleep -Milliseconds 200
        $t += 200
    }
    return $null
}
function SubmitSay([string]$id, [string]$which) {
    $out = Dev "t9_08b_r2_dev_say.sh" $id $which
    Note ($out.Trim())
    return ($out -match "submitted")
}
function SendStop([int]$ttsId) {
    $out = Dev "t9_08b_r2_dev_stop.sh" "$ttsId" ""
    Note ($out.Trim().Replace("`r", "").Replace("`n", " | "))
    return ($out -match '"ok":true')
}
# A journal line carries its own device timestamp ("...T22:38:18.562+0800"): the two records of a
# stop let the run measure the executor's own reaction, without host clock skew or adb latency.
function TsOf([string]$line) {
    $m = [regex]::Match($line, 'T(\d\d:\d\d:\d\d\.\d\d\d)')
    if ($m.Success) { return [TimeSpan]::Parse($m.Groups[1].Value) }
    return $null
}
function DurOf([string]$line) {
    $m = [regex]::Match($line, '"dur_ms":(\d+)')
    if ($m.Success) { return [int]$m.Groups[1].Value }
    return -1
}
function LineWith([string]$body, [string]$needle) {
    $hit = ($body -split "`n" | Where-Object { $_ -match $needle } | Select-Object -First 1)
    return $hit
}
function Settle {
    # wait until nothing is playing and the queue is empty, so every step starts from a known state
    [void](WaitIdle 20000)
    Start-Sleep -Milliseconds 600
}

Say "# T9-08B-R2 real-device acceptance: the controlled stop path"
Say ("# host time : " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Say ("# serial    : " + $Serial)
Say ("# apk       : " + $Apk)
Say ("# apk sha256: " + (Get-FileHash $Apk -Algorithm SHA256).Hash.ToLower())

# ------------------------------------------------------------------ 0 preconditions
Step "0 preconditions: device, worker, executor, deployed artifacts"
Say (Sh "getprop ro.product.model").Trim()
$wpid = (Sh "pidof ai_worker").Trim()
$epre = PlayRaw
$epid = ""
$m = [regex]::Match($epre, '"pid":\s*(\d+)'); if ($m.Success) { $epid = $m.Groups[1].Value }
Check ($wpid -match "^\d+") ("the worker is running (pid " + $wpid + ")")
Check ($epid -match "^\d+") ("the TTS executor is running (pid " + $epid + ")")

$deployFacts = Dev "t9_08b_r2_dev_read.sh" "0" ""
Say ($deployFacts.Trim())
Check ($deployFacts -match '"inbox_stops":\s*\d+') "the worker publishes the stop counter"

& $Adb -s $Serial install -r $Apk 2>&1 | Out-Null
Note ("APK installed; app uid=" + ((Sh "dumpsys package com.tgz02.voice | grep -m1 userId=") -replace "[^0-9]", ""))
& $Adb -s $Serial shell 'settings put system screen_off_timeout 1800000' | Out-Null
& $Adb -s $Serial shell 'svc power stayon true' | Out-Null
& $Adb -s $Serial shell 'input keyevent 224' | Out-Null
& $Adb -s $Serial shell 'am force-stop app.orchard.tv' | Out-Null

# a stop that names an id which is not playing must be dropped, and must not eat the next item
Step "0b a stop request with no matching playback does not cancel the next item"
Settle
$j0 = JournalLen
$junk = PlayState
$idleStopOk = SendStop (100)
Check $idleStopOk "the worker accepts a well-formed stop request (receipt ok, stage stop)"
Check (SubmitSay $IdIdle "short") "a short request submitted right after that stop"
$p = WaitIdle 25000
$jl = JournalFrom $j0
Say $jl.Trim()
Check ($jl -match ('"event_id":"' + $IdIdle + '".*"outcome":"ok"')) "the following item still played normally"
Check ($jl -notmatch '"kind":"cancel"') "the unrelated stop did not cancel it"

# ------------------------------------------------------------------ 1 normal playback
Step "1 normal playback is unaffected"
Settle
$j1 = JournalLen
Check (SubmitSay $IdNormal "long") "one long say request was accepted by the inbox"
$p = WaitIdle 60000
$jl = JournalFrom $j1
Say $jl.Trim()
$lineNormal = LineWith $jl ('"kind":"tts","event_id":"' + $IdNormal + '"')
$naturalDur = DurOf $lineNormal
Note ("its natural duration on this device: " + $naturalDur + " ms")
Check ($jl -match ('"event_id":"' + $IdNormal + '".*"outcome":"ok"')) "it played through with outcome=ok"
Check ($jl -match ('"event_id":"' + $IdNormal + '".*"attempts":1')) "and it was played on its first attempt (no retry)"
Check ($jl -notmatch 'stop_targeted|stop_stale') "no stop was involved"
Check ($naturalDur -gt 8000) "the sentence is long enough to press stop against"

# ------------------------------------------------------------------ 2/3 stop once, no replay
Step "2 press 停止播报 once during playback (real button), it stops immediately"
Settle
# the app is brought forward BEFORE the sentence starts, so the press happens a second into the
# playback and not after it would have ended by itself
$btn = "0 0"
if (-not $SkipUiTap) {
    & $Adb -s $Serial shell 'am start -n com.tgz02.voice/.VoiceHomeActivity' | Out-Null
    Start-Sleep -Milliseconds 900
    $focus = Sh "dumpsys window | grep mCurrentFocus"
    Say ("   focus: " + $focus.Trim())
    $btn = (Dev "t9_08b_r2_dev_stop_button.sh" "" "").Trim()
    Note ("stop button centre: " + $btn)
}
$j2 = JournalLen
$uiUsed = $false
Check (SubmitSay $IdStopOnce "long") "a long sentence is playing"
$p = WaitPlaying 15000
Check ($p -ne $null) "the executor reports state=playing with a tts_id"
if ($p -ne $null) {
    $targetId = $p.ttsId
    Note ("playing event=" + $p.event + " tts_id=" + $targetId)
    $probe = Dev "t9_08b_r2_dev_ui_probe.sh" "" ""
    $receiptsBefore = -1
    $m = [regex]::Match($probe, "stop_receipts=(\d+)"); if ($m.Success) { $receiptsBefore = [int]$m.Groups[1].Value }

    if (-not $SkipUiTap -and $btn -match "^(\d+) (\d+)$" -and $btn -notmatch "^0 0") {
        $bx = $Matches[1]; $by = $Matches[2]
        Start-Sleep -Milliseconds 500      # the screen polls play.public.json every 250 ms
        $t0 = Get-Date
        & $Adb -s $Serial shell ("input tap " + $bx + " " + $by) | Out-Null
        Start-Sleep -Milliseconds 1500
        $probe = Dev "t9_08b_r2_dev_ui_probe.sh" "" ""
        $m = [regex]::Match($probe, "stop_receipts=(\d+)")
        if ($m.Success -and [int]$m.Groups[1].Value -gt $receiptsBefore) {
            $uiUsed = $true
            Note ("the app itself wrote the stop request (" + $probe.Trim().Split("`n")[0] + ")")
            Check $true "the stop request the APP wrote was accepted"
        } else {
            Note "the tap did not produce a stop request from the app; falling back to the inbox write"
        }
    } elseif (-not $SkipUiTap) {
        Note "the stop button is not on screen; falling back to the inbox write"
    }
    if (-not $uiUsed) {
        $t0 = Get-Date
        Check (SendStop $targetId) "the stop request was accepted (stage stop)"
    }

    $p2 = WaitIdle 10000
    $elapsed = ((Get-Date) - $t0).TotalMilliseconds
    Note ("wall clock from the press to the UI showing idle: " + [int]$elapsed + " ms (includes adb round trips)")
    Check ($p2 -ne $null) "playback ended"
    if ($p2 -ne $null) {
        Check ($p2.outcome -eq "stopped") ("the outcome is stopped (got " + $p2.outcome + ")")
    }
    Shot "61_b_ui_stop.png"
    $jl2 = JournalFrom $j2
    Say $jl2.Trim()
    $lineStopReq = LineWith $jl2 '"kind":"stop_targeted"'
    $lineStopTts = LineWith $jl2 ('"kind":"tts","event_id":"' + $IdStopOnce + '"')
    $stoppedDur = DurOf $lineStopTts
    $reaction = -1
    if ($lineStopReq -ne $null -and $lineStopTts -ne $null) {
        $reaction = ((TsOf $lineStopTts) - (TsOf $lineStopReq)).TotalMilliseconds
    }
    Note ("the sentence needs " + $naturalDur + " ms; it was cut at " + $stoppedDur + " ms")
    Note ("the executor's own reaction (stop file -> stopped record): " + [int]$reaction + " ms")
    Check ($stoppedDur -gt 0 -and $naturalDur -gt 0 -and $stoppedDur -lt ($naturalDur - 3000)) "it stopped long before the sentence would have ended"
    Check ($reaction -ge 0 -and $reaction -lt 600) "the executor acted on the stop within a fraction of a second"

    Step "3 nothing is spoken again within 10 s after the stop"
    $jAfterStop = JournalLen
    Note "waiting 10 s without touching anything ..."
    Start-Sleep -Seconds 10
    $jl3 = JournalFrom $j2
    Say $jl3.Trim()
    $mine = @([regex]::Matches($jl3, ('"kind":"tts","event_id":"' + $IdStopOnce + '"')))
    Check ($mine.Count -eq 1) ("exactly one playback record for the stopped event (got " + $mine.Count + ")")
    Check ($jl3 -notmatch ('"kind":"retry","event_id":"' + $IdStopOnce + '"')) "it was not requeued"
    Check ($jl3 -notmatch ('"event_id":"' + $IdStopOnce + '".*"outcome":"ok"')) "it was not replayed to the end"
    Check ([int](JournalLen) -eq $jAfterStop) "the journal did not grow during those 10 s"
    $st = Dev "t9_08b_r2_dev_read.sh" "0" ""
    Check ($st -match 'queue=0 inflight=0') "nothing is left in queue/ or inflight/"
    Check ($st -match 'control=\[\]') "the stop control file was consumed"
}

# ------------------------------------------------------------------ 4 three rapid presses
Step "4 three rapid presses do not stop the next queued item"
Settle
$j4 = JournalLen
Check (SubmitSay $IdTriA "long") "the first (long) item is submitted"
Start-Sleep -Milliseconds 700
Check (SubmitSay $IdTriB "short") "the second (short) item is queued behind it"
$p = WaitPlaying 15000
if ($p -ne $null) {
    $targetId = $p.ttsId
    Note ("playing " + $p.event + " tts_id=" + $targetId + "; pressing stop three times")
    [void](SendStop $targetId); Start-Sleep -Milliseconds 200
    [void](SendStop $targetId); Start-Sleep -Milliseconds 200
    [void](SendStop $targetId)
    $p = WaitIdle 40000
    Start-Sleep -Seconds 2
    $jl = JournalFrom $j4
    Say $jl.Trim()
    Check ($jl -match ('"event_id":"' + $IdTriA + '".*"outcome":"stopped"')) "the first item was stopped"
    Check ($jl -match ('"event_id":"' + $IdTriB + '".*"outcome":"ok"')) "the second item still played to the end"
    Check ($jl -notmatch '"kind":"cancel"') "no queued item was cancelled by the extra presses"
} else { Check $false "playback of the first item could not be observed" }
Shot "62_c_triple.png"

# ------------------------------------------------------------------ 5 two items, stop the first
Step "5 two queued items: stop the first, the second plays normally"
Settle
$j5 = JournalLen
Check (SubmitSay $IdPairA "long") "item A (long) is submitted"
Start-Sleep -Milliseconds 700
Check (SubmitSay $IdPairB "short") "item B (short) is queued behind A"
$p = WaitPlaying 15000
if ($p -ne $null) {
    $targetId = $p.ttsId
    Note ("stopping A only (tts_id=" + $targetId + ")")
    Check (SendStop $targetId) "the stop for A was accepted"
    $p = WaitIdle 40000
    Start-Sleep -Seconds 2
    $jl = JournalFrom $j5
    Say $jl.Trim()
    Check ($jl -match ('"event_id":"' + $IdPairA + '".*"outcome":"stopped"')) "A was stopped"
    Check ($jl -match ('"event_id":"' + $IdPairB + '".*"outcome":"ok"')) "B played to the end afterwards"
    $order = [regex]::Matches($jl, ('"kind":"tts","event_id":"(r2-' + $Tag + '-pair[AB])"'))
    Check ($order.Count -eq 2) ("both items were executed once each (got " + $order.Count + ")")
} else { Check $false "playback of A could not be observed" }

# ------------------------------------------------------------------ 6 real timeout still retries
Step "6 a REAL playback timeout still retries (the stop fix must not swallow failures)"
Settle
$fix = Dev "t9_08b_r2_dev_timeout_fixture.sh" "start" "1500"
Say $fix.Trim()
Check ($fix -match "timeout_ms=1500") "a real executor deadline of 1.5 s is running (no injected fault)"
Start-Sleep -Seconds 1
$j6 = JournalLen
Check (SubmitSay $IdTimeout "long") "a long sentence is submitted"
Note "waiting for the attempts to expire (3 attempts + 2 s backoff each) ..."
Start-Sleep -Seconds 26
$jl = JournalFrom $j6
Say $jl.Trim()
$attempts = @([regex]::Matches($jl, ('"kind":"tts","event_id":"' + $IdTimeout + '","tts_id":\d+,"outcome":"timeout"')))
Check ($attempts.Count -ge 2) ("it was retried after the real timeout (" + $attempts.Count + " attempts recorded)")
Check ($jl -match ('"kind":"retry","event_id":"' + $IdTimeout + '"')) "the accepted retry path ran (journal kind=retry)"
Check ($jl -match ('"kind":"give_up","event_id":"' + $IdTimeout + '"|"attempts":3')) "it ended as a failure after the accepted number of attempts"
$stopWord = $jl -match '"kind":"stop_targeted"'
Check (-not $stopWord) "no stop was involved in this path"
$rest = Dev "t9_08b_r2_dev_timeout_fixture.sh" "stop" ""
Say $rest.Trim()
Check ($rest -match "timeout-ms 60000") "the accepted executor configuration is back (--timeout-ms 60000)"
Settle

# ------------------------------------------------------------------ 7 full voice chain
Step "7 factory wake -> ASR -> AI -> TTS still completes"
if ($SkipVoice) {
    Note "(skipped by -SkipVoice)"
} else {
    Settle
    $j7 = JournalLen
    $wav = Join-Path $Wavs "r1.wake_time.wav"
    if (-not (Test-Path $wav)) { Say ("   missing wav: " + $wav); $script:Fail++ }
    else {
        Note ("playing " + (Split-Path -Leaf $wav) + " on the HOST speakers (the device mic hears it)")
        $player = New-Object System.Media.SoundPlayer $wav
        $player.PlaySync()
        Start-Sleep -Seconds 9
        $jl = JournalFrom $j7
        Say $jl.Trim()
        Check ($jl -match '"kind":"tts"') "the factory voice chain produced a spoken answer"
        Check ($jl -match '"outcome":"ok"|"outcome":"interrupted"') "and the executor reported it"
        $uiState = Dev "t9_08b_r2_dev_turns.sh" "" ""
        Say ("   newest turn records: " + ($uiState.Trim().Length))
        Check ($uiState -match '"kind":"turn"') "the turn was published to the UI channel"
    }
    Shot "63_d_voice.png"
}

# ------------------------------------------------------------------ 8 interruption not replayed
Step "8 a voice interruption is not replayed afterwards"
if ($SkipVoice) {
    Note "(skipped by -SkipVoice)"
} else {
    Settle
    $j8 = JournalLen
    Check (SubmitSay $IdInterrupt "long") "a long sentence is playing"
    $p = WaitPlaying 15000
    Check ($p -ne $null) "playback is running"
    $wav2 = Join-Path $Wavs "r1.wake_time.wav"
    Note "waking the device while it speaks (the factory takes the audio channel)"
    $player2 = New-Object System.Media.SoundPlayer $wav2
    $player2.PlaySync()
    Start-Sleep -Seconds 12
    $jl = JournalFrom $j8
    Say $jl.Trim()
    $recs = @([regex]::Matches($jl, ('"kind":"tts","event_id":"' + $IdInterrupt + '"')))
    Check ($recs.Count -eq 1) ("the interrupted sentence was executed exactly once (got " + $recs.Count + ")")
    Check ($jl -match ('"event_id":"' + $IdInterrupt + '".*"outcome":"interrupted"|"event_id":"' + $IdInterrupt + '".*"outcome":"stopped"')) "it was closed as interrupted, not retried"
    Shot "64_e_interrupt.png"
}

# ------------------------------------------------------------------ 9 summary of the channel
Step "9 final state"
$final = Dev "t9_08b_r2_dev_read.sh" "0" ""
Say $final.Trim()
Shot "65_f_final.png"

& $Adb -s $Serial shell 'settings put system screen_off_timeout 60000' | Out-Null

Say ""
Say "================================================================"
Say ("RESULT: " + $(if ($script:Fail -eq 0) { "PASS (0 failed checks)" } else { "FAIL (" + $script:Fail + " failed checks)" }))
Say "================================================================"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ("log: " + $Log)
exit $script:Fail
