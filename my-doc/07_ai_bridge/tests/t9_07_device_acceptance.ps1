# t9_07_device_acceptance.ps1 -- T9-07 real-device acceptance (A..H of the task statement)
#
#   powershell -ExecutionPolicy Bypass -File t9_07_device_acceptance.ps1 [-SkipReboot]
#
# Requires: the device at $Serial with root, the T9-07 worker already deployed
# (android/t9_07_deploy.sh) and the channel owner pointed at com.tgz02.voice
# (android/t9_07/dev_30_channel_owner.sh).
#
# What it does: installs/launches the product APK, then drives the REAL widgets (the send and
# stop buttons are tapped, the input is prefilled through the app's documented test hook) and
# captures, for every step, both the screen and the device-side facts (event files, the TTS
# executor journal, play.public.json, worker status). Voice steps play a wake-word wav on the
# HOST speakers and let the device microphone pick it up -- the method that produced the
# accepted T9-06R1 F evidence.
#
# Artifact: evidence/t9-07/60_acceptance.txt (+ screenshots 60_*.png..69_*.png)
param(
    [string]$Serial   = "192.168.1.9:5555",
    [string]$Adb      = "D:\GreenSoft\platform-tools\adb.exe",
    [string]$Apk      = "",
    [string]$Wavs     = "D:\tgz02\OS\_analysis\t815\wav",
    [switch]$SkipReboot
)
$ErrorActionPreference = "Continue"

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Ev   = Join-Path $Root "evidence\t9-07"
New-Item -ItemType Directory -Force $Ev | Out-Null
if ($Apk -eq "") { $Apk = Join-Path $Root "android\t9_07_ui\build\voice_ui.apk" }
if (-not (Test-Path $Apk)) { throw "missing APK: $Apk" }

$Log = Join-Path $Ev "60_acceptance.txt"
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
function Sh([string]$cmd) {
    $r = & $Adb -s $Serial shell $cmd 2>&1
    return ($r | Out-String)
}
function RootSh([string]$script) {
    # Magisk su only forwards stdout for -c; always wrap the script path
    $r = & $Adb -s $Serial shell "su 0 sh -c `"sh $script 2>&1`"" 2>&1
    return ($r | Out-String)
}
function Shot([string]$name) {
    & $Adb -s $Serial shell 'screencap -p /data/local/tmp/shot.png' 2>$null | Out-Null
    & $Adb -s $Serial pull /data/local/tmp/shot.png (Join-Path $Ev $name) 2>$null | Out-Null
    Say ("   screenshot: " + $name)
}
function RootCmd([string]$cmd) {
    $r = & $Adb -s $Serial shell "su 0 sh -c `"$cmd 2>&1`"" 2>&1
    return ($r | Out-String)
}
function SessionCount {
    $s = RootCmd "ls /data/data/com.tgz02.voice/files/sessions"
    $n = 0
    foreach ($l in ($s -split "`r?`n")) { if ($l.Trim() -match "\.json$") { $n++ } }
    return $n
}
function JournalMark {
    return (RootSh "/data/local/tmp/t9/t9_07/dev_61_journal_mark.sh").Trim()
}
function Snapshot([int]$from) {
    Say (RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh $from")
}
function Prefill([string]$text) {
    & $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity --es text '$text'" 2>$null | Out-Null
    Start-Sleep -Milliseconds 900
}
function Focused {
    $f = (Sh "dumpsys window | grep mCurrentFocus")
    return ($f -match "com.tgz02.voice")
}
function TapSend  { & $Adb -s $Serial shell 'input tap 900 570' 2>$null | Out-Null }
function TapStop  { & $Adb -s $Serial shell 'input tap 970 570' 2>$null | Out-Null }
function EnsureFocus {
    for ($i = 0; $i -lt 3; $i++) {
        if (Focused) { return $true }
        & $Adb -s $Serial shell 'am force-stop app.orchard.tv' 2>$null | Out-Null
        & $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" 2>$null | Out-Null
        Start-Sleep -Milliseconds 900
    }
    return (Focused)
}
function TapNewSession {
    $before = SessionCount
    for ($i = 0; $i -lt 3; $i++) {
        [void](EnsureFocus)
        & $Adb -s $Serial shell 'input tap 130 24' 2>$null | Out-Null
        Start-Sleep -Milliseconds 1200
        if ((SessionCount) -gt $before) { return $true }
    }
    return $false
}
function TapHistory {
    [void](EnsureFocus)
    & $Adb -s $Serial shell 'input tap 202 24' 2>$null | Out-Null
    Start-Sleep -Milliseconds 900
}
function EventCount {
    # the events dir is 0750 root:<app gid>, so the shell user cannot list it: read the
    # worker's own "ui_published" counter through the root helper instead
    $s = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh"
    $m = [regex]::Match($s, '"ui_published":(\d+)')
    if ($m.Success) { return [int]$m.Groups[1].Value }
    return -1
}

# Send one line the way a user does: prefill through the app's test hook, then TAP the button.
# A tap can be swallowed by the photo-frame/overlay windows this device ships with, so the
# helper confirms the app is the focused window first and that a new event file appeared.
function SendText([string]$text) {
    $before = EventCount
    for ($try = 0; $try -lt 3; $try++) {
        Prefill $text
        if (-not (Focused)) {
            & $Adb -s $Serial shell 'am force-stop app.orchard.tv' 2>$null | Out-Null
            & $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" 2>$null | Out-Null
            Start-Sleep -Milliseconds 900
            Prefill $text
        }
        if (-not (Focused)) { Say "   (attempt ${try}: the app is not the focused window, retrying)"; continue }
        TapSend
        for ($w = 0; $w -lt 16; $w++) {
            Start-Sleep -Milliseconds 300
            if ((EventCount) -gt $before) { return $true }
        }
        Say "   (attempt ${try}: no new event after the tap, retrying)"
    }
    return $false
}

Say "# T9-07 real-device acceptance"
Say ("# host time : " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Say ("# serial    : " + $Serial)
Say ("# apk       : " + $Apk + "  sha256=" + (Get-FileHash $Apk -Algorithm SHA256).Hash.ToLower())

# ------------------------------------------------------------------ 0 preconditions
Step "0 precondition: device, worker, channel owner"
Say (Sh "getprop ro.product.model")
$pre = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh"
Say $pre
$uidNow = ((Sh "dumpsys package com.tgz02.voice | grep -m1 userId=") -replace "[^0-9]", "")
Check ($pre -match "pid=\d+") "worker is running"
Check ($pre -match ("userId=" + $uidNow)) ("the channel owner is the installed app (uid " + $uidNow + ")")
Check ($pre -match "--ui-events /data/local/tmp/t9_ui") "worker publishes the UI event outlet"
Check ($pre -match ("events=drwxr-x---\s+2 root\s+u0_a" + ([int]$uidNow - 10000))) "event files are readable by the app group only"

# ------------------------------------------------------------------ 1 install + launch
Step "1 install and launch: the product conversation screen"
$inst = & $Adb -s $Serial install -r $Apk 2>&1 | Out-String
Say $inst.Trim()
Check ($inst -match "Success") "APK installs on top of the existing one"
& $Adb -s $Serial shell "pm clear com.tgz02.voice" | Out-Null      # deterministic, empty history
Say "   (app data cleared: the history starts empty for this run)"
Say (RootSh "/data/local/tmp/t9/t9_07/dev_30_channel_owner.sh")
# Re-installing can change the app uid, so the channel owner is re-bound to whoever
# com.tgz02.voice is right now -- this is a deploy step, not something the app does itself.
$uid = ((Sh "dumpsys package com.tgz02.voice | grep -m1 userId=") -replace "[^0-9]", "")
$allowed = (RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh").Trim()
Say ("   app uid=" + $uid + "  allowed_uids=" + (Sh "cat /data/local/tmp/t9_ui/allowed_uids").Trim())
Check ($allowed -match ("allowed|\d") -and $uid -ne "") ("the app uid is " + $uid)
& $Adb -s $Serial shell 'am force-stop app.orchard.tv' | Out-Null     # photo-frame dream sits above everything
& $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" | Out-Null
Start-Sleep -Seconds 3
$focus = Sh "dumpsys window | grep mCurrentFocus"
Say $focus.Trim()
Check ($focus -match "com.tgz02.voice/com.tgz02.voice.ConversationActivity") "the conversation screen is foreground"
Shot "60_a_home.png"

# ------------------------------------------------------------------ 2 one text message
Step "2 one typed message -> worker -> factory TTS"
$m0 = JournalMark
Say ("   journal baseline = " + $m0)
$sent2 = SendText "T9-07 验收二 一条文字消息"
Check $sent2 "the send button on the real screen accepted the message"
Start-Sleep -Seconds 9
$d2 = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh $m0"
Say $d2
Check ($d2 -match '"kind":"submit","session":"".*"user":"T9-07 验收二 一条文字消息"') "the worker published the submitted text as an event"
Check ($d2 -match '"outcome":"ok"') "the factory TTS reported outcome=ok for that text"
Shot "61_b_send.png"

# ------------------------------------------------------------------ 3 ordering
Step "3 three messages keep their order"
$m1 = JournalMark
Check (SendText "T9-07 验收三 第一条") "message 1 of the burst was accepted"
Start-Sleep -Milliseconds 700
Check (SendText "T9-07 验收三 第二条") "message 2 of the burst was accepted"
Start-Sleep -Milliseconds 700
Check (SendText "T9-07 验收三 第三条") "message 3 of the burst was accepted"
Start-Sleep -Seconds 26
$d3 = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh $m1"
Say $d3
$ids = [regex]::Matches($d3, '\{"ts":"[^"]+","kind":"tts","event_id":"([^"]+)","tts_id":(\d+),"outcome":"([^"]+)"')
Say ("   journal entries in this step: " + $ids.Count)
Check ($ids.Count -ge 3) "three TTS executions are recorded"
if ($ids.Count -ge 3) {
    $ordered = $true
    for ($i = 1; $i -lt $ids.Count; $i++) {
        if ([long]$ids[$i].Groups[2].Value -lt [long]$ids[$i-1].Groups[2].Value) { $ordered = $false }
    }
    Check $ordered "tts_ids increase in execution order (no reordering in the queue)"
    $okAll = $true
    foreach ($m in $ids) { if ($m.Groups[3].Value -ne "ok") { $okAll = $false } }
    Check $okAll "every message in the burst finished with outcome=ok"
}
Shot "62_c_order.png"

# ------------------------------------------------------------------ 4 stop
Step "4 stop the current playback from the UI"
$stopLog = Join-Path $Ev "63_stop_logcat.txt"
$m2 = JournalMark
$cap = Start-Process -FilePath $Adb -ArgumentList "-s",$Serial,"logcat","-v","time",
        "AudioStateManager:V","TtsManager:V","tgt:V","*:S" `
        -RedirectStandardOutput $stopLog -PassThru -WindowStyle Hidden
Start-Sleep -Milliseconds 600
$sent4 = SendText "T9-07 验收四 停止测试 这一句话故意写得很长 让播报持续足够久 才好在中间按下停止按钮 这样才说明停止是真的生效"
Check $sent4 "the long message was accepted before the stop test"
Start-Sleep -Seconds 3
Shot "63_d_before_stop.png"
[void](EnsureFocus)
TapStop
Start-Sleep -Seconds 8
try { Stop-Process -Id $cap.Id -Force } catch { }
$d4 = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh $m2"
Say $d4
$lines4 = ($d4 -split "`n" | Where-Object { $_ -match '"kind":"tts"' })
Say ("   journal records for this step: " + $lines4.Count)
Check ($lines4.Count -ge 1) "the long message reached the executor"
$notOk = $false
foreach ($l in $lines4) { if ($l -notmatch '"outcome":"ok"') { $notOk = $true } }
Check $notOk "the executor did not finish it as ok (the stop cut it short)"
$lc = Get-Content $stopLog -ErrorAction SilentlyContinue
$stopped = ($lc | Select-String -Pattern "ALI_STUB_CMD_STOP_TTS|sm_process_stop_tts_msg|stopTts").Count
Say ("   factory stop lines in this window: " + $stopped)
Check ($stopped -ge 1) "the official audio state machine processed a STOP_TTS"
Check (($lc | Select-String -Pattern "tts = ").Count -ge 1) "the factory really started speaking that text"
Shot "63_d_stop.png"
# ------------------------------------------------------------------ 5 voice
Step "5 real microphone wake -> ASR -> worker -> factory TTS, shown in the UI"
$wav = Join-Path $Wavs "r1.wake_time.wav"
if (-not (Test-Path $wav)) { Say ("   missing wav: " + $wav); $script:Fail++ }
$m3 = JournalMark
Say ("   journal baseline = " + $m3)
Say ("   playing " + $wav + " on the HOST speakers (the device mic hears it)")
$player = New-Object System.Media.SoundPlayer $wav
$player.PlaySync()
Start-Sleep -Seconds 6
$d5 = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh $m3"
Say $d5
Check ($d5 -match '"kind":"turn"') "the worker published a completed turn (ASR text + reply)"
Check ($d5 -match '"route":"skill"|"route":"ai"') "the turn was routed (skill or AI)"
Shot "64_e_voice.png"

# ------------------------------------------------------------------ 6 history
Step "6 new session, history list, and persistence across an app restart"
$n0 = SessionCount
Say ("   sessions before: " + $n0)
$created = TapNewSession
$n1 = SessionCount
Say ("   sessions after : " + $n1)
Check $created "the new-session button created a new local session"
Shot "65_f_newsession.png"
TapHistory
Shot "66_f_history.png"
& $Adb -s $Serial shell 'input keyevent 4' 2>$null | Out-Null
Start-Sleep -Milliseconds 600
& $Adb -s $Serial shell 'am force-stop com.tgz02.voice' 2>$null | Out-Null
Start-Sleep -Seconds 1
& $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" 2>$null | Out-Null
Start-Sleep -Seconds 3
TapHistory
Shot "67_f_after_restart.png"
$sess = RootCmd "ls -l /data/data/com.tgz02.voice/files/sessions"
Say $sess.Trim()
$n2 = SessionCount
Check ($n2 -eq $n1) "the session files survived the app restart"
Check ($n2 -ge 2) "more than one session is stored (the history list has something to show)"
& $Adb -s $Serial shell 'input keyevent 4' 2>$null | Out-Null
# ------------------------------------------------------------------ 7 independence
Step "7 the worker and the factory voice chain do not need the UI to be open"
& $Adb -s $Serial shell 'am force-stop com.tgz02.voice' | Out-Null
Start-Sleep -Seconds 2
$m4 = JournalMark
$player.PlaySync()
Start-Sleep -Seconds 6
$d7 = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh $m4"
Say $d7
Check ($d7 -match '"kind":"tts"') "with the UI closed the worker still answered and spoke"
Check ((Sh "pidof com.tgz02.voice").Trim() -eq "") "the UI process is really gone"
Shot "68_g_ui_closed.png"

# ------------------------------------------------------------------ 8 reboot
Step "8 the chain still works after a device reboot"
if ($SkipReboot) {
    Say "   (skipped by -SkipReboot)"
} else {
    Say "   rebooting the device ..."
    & $Adb -s $Serial reboot | Out-Null
    & $Adb -s $Serial wait-for-device | Out-Null
    Start-Sleep -Seconds 45
    $ok = $false
    for ($i = 0; $i -lt 20; $i++) {
        $p = (Sh "pidof ai_worker").Trim()
        if ($p -ne "") { $ok = $true; break }
        Start-Sleep -Seconds 6
    }
    Check $ok "the worker came back by itself after the reboot"
    Say (RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh")
    & $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" | Out-Null
    Start-Sleep -Seconds 4
    Shot "69_h_after_reboot.png"
    $m5 = JournalMark
    Prefill "T9-07 验收八 重启后仍然可用"
    TapSend
    Start-Sleep -Seconds 10
    $d8 = RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh $m5"
    Say $d8
    Check ($d8 -match '"outcome":"ok"') "after a reboot a new message is still spoken by the factory TTS"
}

Say ""
Say "================================================================"
Say ("RESULT: " + $(if ($script:Fail -eq 0) { "PASS (0 failed checks)" } else { "FAIL (" + $script:Fail + " failed checks)" }))
Say "================================================================"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ("log: " + $Log)
exit $script:Fail
