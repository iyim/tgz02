# t9_07r1_device_acceptance.ps1 -- T9-07R1 real-device acceptance (A..F of the task statement)
#
#   powershell -ExecutionPolicy Bypass -File t9_07r1_device_acceptance.ps1 [-SkipVoice] [-SkipTestBuild]
#
# A..E run against the PRODUCTION APK: the question is typed with the real keyboard, the send is
# a real tap on 发送, and every assertion is made against the worker's own published facts.
# The device keyboard is a Pinyin IME, which sometimes converts typed Latin words into Chinese
# syllables, so every question is verified against the text the worker actually received and the
# gesture is repeated when the keyboard mangled it (the check says so, nothing is hidden).
#
# A  typed question -> AI provider -> factory TTS, question + answer in the UI, one event_id
# B  two questions where the second needs the first (context)
# C  voice regression: wake word -> ASR -> answer -> TTS
# D  a real provider failure (worker restarted with a 100 ms timeout): the UI shows the failure
# E  the production APK ignores test intents, has no permission, and the inbox stays closed
# F  the automation driver exists only in the test build (static + runtime + one real round)
#
# Artifact: evidence/t9-07r1/60_acceptance.txt (+ 70_*.png .. 79_*.png)
param(
    [string]$Serial = "192.168.1.9:5555",
    [string]$Adb    = "D:\GreenSoft\platform-tools\adb.exe",
    [string]$Apk    = "",
    [string]$TestApk = "",
    [string]$Wavs   = "D:\tgz02\OS\_analysis\t815\wav",
    [switch]$SkipVoice,
    [switch]$SkipTestBuild
)
$ErrorActionPreference = "Continue"

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Ev   = Join-Path $Root "evidence\t9-07r1"
New-Item -ItemType Directory -Force $Ev | Out-Null
if ($Apk -eq "")     { $Apk = Join-Path $Root "android\t9_07_ui\dist\voice_ui.apk" }
if ($TestApk -eq "") { $TestApk = Join-Path $Root "android\t9_07_ui\dist\voice_ui_test.apk" }

$Log = Join-Path $Ev "60_acceptance.txt"
$script:Lines = New-Object System.Collections.Generic.List[string]
$script:Fail = 0

function Say([string]$s) { $script:Lines.Add($s); Write-Host $s }
function Step([string]$s) {
    Say ""; Say "================================================================"
    Say "== $s"; Say "================================================================"
}
function Check([bool]$cond, [string]$what) {
    if ($cond) { Say ("   [PASS] " + $what) } else { Say ("   [FAIL] " + $what); $script:Fail++ }
}
function Sh([string]$cmd) { return ((& $Adb -s $Serial shell $cmd 2>&1) | Out-String) }
function RootCmd([string]$cmd) { return ((& $Adb -s $Serial shell "su 0 sh -c `"$cmd 2>&1`"") | Out-String) }
function RootSh([string]$path) { return ((& $Adb -s $Serial shell "su 0 sh -c `"sh $path 2>&1`"") | Out-String) }
function RootScript([string]$path, [string]$arg) {
    return ((& $Adb -s $Serial shell "su 0 sh -c `"sh $path $arg 2>&1`"") | Out-String)
}
function Snap { return (RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh") }
function Probe([string]$eid) { return (RootScript "/data/local/tmp/t9/t9_07/dev_82_probe.sh" $eid) }
function Shot([string]$name) {
    & $Adb -s $Serial shell 'screencap -p /data/local/tmp/shot.png' 2>$null | Out-Null
    & $Adb -s $Serial pull /data/local/tmp/shot.png (Join-Path $Ev $name) 2>$null | Out-Null
    Say ("   screenshot: " + $name)
}
function Focused { return ((Sh "dumpsys window | grep mCurrentFocus") -match "com.tgz02.voice") }
function EnsureFocus {
    for ($i = 0; $i -lt 4; $i++) {
        if (Focused) { return $true }
        & $Adb -s $Serial shell 'am force-stop app.orchard.tv' 2>$null | Out-Null
        & $Adb -s $Serial shell 'am force-stop com.shere.assistivetouch' 2>$null | Out-Null
        & $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" 2>$null | Out-Null
        Start-Sleep -Milliseconds 1000
    }
    return (Focused)
}
function EventTotal {
    $m = [regex]::Match((Snap), 'events_total=(\d+)')
    if ($m.Success) { return [int]$m.Groups[1].Value }
    return -1
}
# The device keyboard is a Pinyin IME: it may split or convert Latin words ("codeword" becomes
# "code word", a sentence may get a 。 appended). Compare only the alphanumeric content, and
# treat a leftover previous attempt in the field as a mismatch so the gesture is repeated.
function Norm([string]$s) {
    if ($null -eq $s) { return "" }
    return (($s.ToLower() -replace '[^a-z0-9]', ''))
}
function ClearField {
    & $Adb -s $Serial shell 'input keyevent 123' 2>$null | Out-Null
    Start-Sleep -Milliseconds 200
    $del = (@(67) * 60) -join ' '
    & $Adb -s $Serial shell "input keyevent $del" 2>$null | Out-Null
    Start-Sleep -Milliseconds 400
}
function AskRaw([string]$text) {
    # a trailing space commits the last word the Pinyin IME is still composing; without it the
    # final word is silently dropped when the keyboard is closed
    $typed = ($text -replace ' ', '%s') + '%s'
    [void](EnsureFocus)
    & $Adb -s $Serial shell 'input tap 300 570' 2>$null | Out-Null
    Start-Sleep -Milliseconds 1200
    ClearField
    & $Adb -s $Serial shell "input text '$typed'" 2>$null | Out-Null
    Start-Sleep -Milliseconds 800
    & $Adb -s $Serial shell 'input keyevent 4' 2>$null | Out-Null
    Start-Sleep -Milliseconds 1200
    & $Adb -s $Serial shell 'input tap 900 570' 2>$null | Out-Null
    Start-Sleep -Seconds 2
}
# send a question without insisting on the exact text (used for the failure path, where only
# the worker's outcome matters)
function AskAny([string]$text, [int]$timeoutSec) {
    for ($try = 0; $try -lt 3; $try++) {
        $before = EventTotal
        AskRaw $text
        $ev = WaitNewest $before '"kind":"turn".*"route":"ai"' $timeoutSec
        if ($ev -ne "") { return $ev }
        Say "   (attempt ${try}: nothing came back, retrying)"
    }
    return ""
}
function WaitNewest([int]$from, [string]$pattern, [int]$timeoutSec) {
    for ($i = 0; $i -lt $timeoutSec; $i++) {
        $s = Snap
        $m = [regex]::Match($s, 'events_total=(\d+)')
        if ($m.Success -and [int]$m.Groups[1].Value -gt $from) {
            $j = [regex]::Match($s, 'newest_json=(.*)')
            if ($j.Success -and $j.Groups[1].Value -match $pattern) { return $j.Groups[1].Value }
        }
        Start-Sleep -Seconds 1
    }
    return ""
}
# ask a question and make sure the worker received exactly that text
function AskVerified([string]$text, [int]$timeoutSec) {
    for ($try = 0; $try -lt 3; $try++) {
        $before = EventTotal
        AskRaw $text
        $ev = WaitNewest $before '"kind":"turn".*"route":"ai"' $timeoutSec
        if ($ev -eq "") { Say "   (attempt ${try}: nothing came back, retrying)"; continue }
        $got = [regex]::Match($ev, '"user":"([^"]*)"').Groups[1].Value
        if ((Norm $got) -eq (Norm $text)) { return $ev }
        Say ("   (attempt " + $try + ": the keyboard delivered [" + $got + "] instead, retrying)")
        $before = EventTotal
        Start-Sleep -Milliseconds 500
    }
    return ""
}
function WaitPlayed([string]$eid, [int]$timeoutSec) {
    for ($i = 0; $i -lt $timeoutSec; $i++) {
        $p = Probe $eid
        $m = [regex]::Match($p, '== journal_eid\r?\n(.*)')
        if ($m.Success -and $m.Groups[1].Value -match '"outcome":"') { return $p }
        Start-Sleep -Seconds 1
    }
    return (Probe $eid)
}

Say "# T9-07R1 real-device acceptance (text AI + production APK hardening)"
Say ("# host time : " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Say ("# serial    : " + $Serial)
Say ("# apk       : " + $Apk + "  sha256=" + (Get-FileHash $Apk -Algorithm SHA256).Hash.ToLower())

# ------------------------------------------------------------------ 0 preconditions
Step "0 precondition: worker, channel owner, production APK installed"
Say (Sh "getprop ro.product.model")
$pre = Snap
Say $pre
$uid = ((Sh "dumpsys package com.tgz02.voice | grep -m1 userId=") -replace "[^0-9]", "")
Check ($pre -match "pid=\d+") "worker is running"
Check ($pre -match ("userId=" + $uid)) ("the channel owner is the installed app (uid " + $uid + ")")
$inst = & $Adb -s $Serial install -r $Apk 2>&1 | Out-String
Say $inst.Trim()
Check ($inst -match "Success") "the production APK installs"
& $Adb -s $Serial shell 'am force-stop app.orchard.tv' 2>$null | Out-Null
& $Adb -s $Serial shell 'am force-stop com.shere.assistivetouch' 2>$null | Out-Null
& $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" 2>$null | Out-Null
Start-Sleep -Seconds 3
Check (Focused) "the conversation screen is foreground"
Shot "70_start.png"

# ------------------------------------------------------------------ A text -> AI
Step "A typed question -> AI provider -> factory TTS -> both sides in the UI (production APK)"
$evA = AskVerified "What is the capital of France" 40
Check ($evA -ne "") "the question reached the worker with the typed text"
$eidA = [regex]::Match($evA, '"event_id":"([^"]*)"').Groups[1].Value
$replyA = [regex]::Match($evA, '"reply":"([^"]*)"').Groups[1].Value
$statusA = [regex]::Match($evA, '"status":"([^"]*)"').Groups[1].Value
Say ("   event_id=" + $eidA + "  status=" + $statusA + "  reply=[" + $replyA + "]")
Check ($statusA -eq "ok") "the turn succeeded"
Check ($replyA.Length -gt 3) "the turn carries a real answer"
Check ((Norm $replyA) -ne (Norm "What is the capital of France")) "the answer is not the question read back"
$pA = WaitPlayed $eidA 25
Say $pA
Check ($pA -match "text turn ok") "the worker answered it as a text turn"
Check ($pA -match "provider=deepseek") "the real DeepSeek provider produced it (not mock, not verbatim)"
Check ($pA -match ('"event_id":"' + [regex]::Escape($eidA) + '"')) "the same event_id reached the TTS journal"
Check ($pA -match '"outcome":"ok"') "the factory TTS spoke that answer (journal ok)"
Check ($pA -match '"tts_id":\d+') "the journal records the tts_id of that answer"
$sess = RootCmd "cat /data/data/com.tgz02.voice/files/sessions/*.json"
Check (($sess -match '"role":"user"') -and ($sess -match '"role":"assistant"') -and ($sess -match [regex]::Escape($eidA))) "the UI stored the question and the answer under that event_id"
Shot "71_a_text_ai.png"

# ------------------------------------------------------------------ B context
Step "B two questions: the second needs the first (context)"
$evB1 = AskVerified "Remember the codeword ORANGE." 40
Check ($evB1 -ne "") "the first question reached the worker"
$evB2 = AskVerified "What is the codeword" 40
Check ($evB2 -ne "") "the second question reached the worker"
$replyB2 = [regex]::Match($evB2, '"reply":"([^"]*)"').Groups[1].Value
$eidB2 = [regex]::Match($evB2, '"event_id":"([^"]*)"').Groups[1].Value
Say ("   second answer: [" + $replyB2 + "]")
Check ($replyB2 -match "ORANGE|orange|橘子|橙色") "the second answer uses the codeword from the first turn"
$pB = WaitPlayed $eidB2 25
Check ($pB -match '"outcome":"ok"') "the second answer was spoken as well"
$eidB1 = [regex]::Match($evB1, '"event_id":"([^"]*)"').Groups[1].Value
Check ($eidB1 -ne $eidB2) "the two turns are two distinct events (order preserved)"
Shot "72_b_context.png"

# ------------------------------------------------------------------ C voice regression
Step "C voice regression: wake word -> factory ASR -> answer -> factory TTS"
if ($SkipVoice) {
    Say "   (skipped by -SkipVoice)"
} else {
    $wav = Join-Path $Wavs "r1.wake_time.wav"
    if (-not (Test-Path $wav)) { Say ("   missing wav: " + $wav); $script:Fail++ }
    $n3 = EventTotal
    (New-Object System.Media.SoundPlayer $wav).PlaySync()
    $evC = WaitNewest $n3 '"kind":"turn"' 30
    Say $evC
    Check ($evC -ne "") "a voice turn was published"
    Check ($evC -match '"session":"[0-9]+"') "the turn came from a factory ASR session"
    Check ($evC -match '"user":"[^"]+"') "the turn carries the recognised text"
    Check ($evC -match '"reply":"[^"]+"') "the turn carries the answer"
    Shot "73_c_voice.png"
}

# ------------------------------------------------------------------ D failure
Step "D a real provider failure is shown as a failure, never as an answer"
Say (RootSh "/data/local/tmp/t9/t9_07/dev_80_timeout.sh 2>&1")
$evD = AskAny "Tell me a story about the sea" 60
Check ($evD -ne "") "the question reached the worker (with the broken provider)"
Say ("   record: " + $evD)
$statusD = [regex]::Match($evD, '"status":"([^"]*)"').Groups[1].Value
$replyD = [regex]::Match($evD, '"reply":"([^"]*)"').Groups[1].Value
$reasonD = [regex]::Match($evD, '"reason":"([^"]*)"').Groups[1].Value
Check ($statusD -eq "failed") "the turn is published as failed"
Check ($replyD -eq "") "a failed turn publishes no answer"
Check ($reasonD.Length -gt 3) ("the record carries the real reason [" + $reasonD + "]")
$pD = Probe ""
Check (-not ($pD -match ('"event_id":"' + [regex]::Escape([regex]::Match($evD,'"event_id":"([^"]*)"').Groups[1].Value) + '"'))) "a failed turn was never queued for playback"
Shot "74_d_failure.png"
Say (RootSh "/data/local/tmp/t9/t9_07/dev_81_normal.sh 2>&1")

# ------------------------------------------------------------------ E hardening
Step "E the production APK has no test entry point and no extra privileges"
$nE = EventTotal
& $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity --es text 'SHOULD_NOT_APPEAR' --ez auto true" 2>&1 | Out-Null
Start-Sleep -Seconds 6
$nE2 = EventTotal
Say ("   events before=" + $nE + " after=" + $nE2)
Check ($nE2 -eq $nE) "passing --es text/--ez auto to the production APK produced no request"
$sess2 = RootCmd "cat /data/data/com.tgz02.voice/files/sessions/*.json"
Check (-not ($sess2 -match "SHOULD_NOT_APPEAR")) "that text never entered the conversation"
& $Adb -s $Serial shell "am start -n com.tgz02.voice/.TestConversationActivity --es text 'x' --ez auto true" 2>&1 | Out-Null
Start-Sleep -Seconds 2
$nE3 = EventTotal
Check ($nE3 -eq $nE) "the driver activity does not exist in the production APK"
Shot "75_e_no_hook.png"

$perms = Sh "dumpsys package com.tgz02.voice | grep -A5 'requested permissions'"
Say $perms.Trim()
Check (-not ($perms -match "android.permission")) "the installed APK requests no permission at all"
$bt = "$env:LOCALAPPDATA\Android\Sdk\build-tools\35.0.1"
if (Test-Path "$bt\aapt2.exe") {
    $dump = & "$bt\aapt2.exe" dump permissions $Apk 2>&1 | Out-String
    Say $dump.Trim()
    Check (-not ($dump -match "uses-permission")) "aapt2 finds no uses-permission in the shipped APK"
}

$w1 = Sh "echo test > /data/local/tmp/t9_ui/inbox/evil.json"
Say ("   shell uid write attempt: " + $w1.Trim())
Check ($w1 -match "Permission denied") "another uid cannot write into the inbox"
$nF = EventTotal
Say (RootCmd "printf '{\"v\":1,\"kind\":\"ask\",\"event_id\":\"evil-owner\",\"text\":\"hack\"}' > /data/local/tmp/t9_ui/inbox/evil-owner.json; chown 0:0 /data/local/tmp/t9_ui/inbox/evil-owner.json; ls -l /data/local/tmp/t9_ui/inbox/evil-owner.json")
Start-Sleep -Seconds 3
$afterF = Snap
Say $afterF
Check ($afterF -notmatch "evil-owner") "a request owned by a foreign uid is dropped, not answered"
Check ((EventTotal) -eq $nF) "it produced no event either"
Shot "76_e_inbox_closed.png"

# ------------------------------------------------------------------ F test build only
Step "F the automation driver exists only in the test build"

Say ("   production APK : " + (Split-Path -Leaf $Apk) + "  (build.ps1 without -Test)")
Say ("   test APK       : " + (Split-Path -Leaf $TestApk) + "  (build.ps1 -Test)")
$prodJar = Join-Path $Ev "_prod_dex.txt"
$testJar = Join-Path $Ev "_test_dex.txt"
Add-Type -AssemblyName System.IO.Compression.FileSystem
function DexClasses([string]$apk, [string]$out) {
    $z = [System.IO.Compression.ZipFile]::OpenRead($apk)
    try {
        $e = $z.GetEntry('classes.dex')
        $fs = New-Object System.IO.FileStream($out, [System.IO.FileMode]::Create)
        $e.Open().CopyTo($fs); $fs.Close()
    } finally { $z.Dispose() }
}
if (Test-Path "$bt\dexdump.exe") {
    DexClasses $Apk $prodJar
    DexClasses $TestApk $testJar
    $pl = (& (Join-Path $bt 'dexdump.exe') -f $prodJar 2>$null | Out-String)
    $tl = (& (Join-Path $bt 'dexdump.exe') -f $testJar 2>$null | Out-String)
    Check (-not ($pl -match "TestConversationActivity")) "the production dex contains no driver class"
    Check ($tl -match "TestConversationActivity") "the test dex does contain it"
}

if (-not $SkipTestBuild) {
    $ti = & $Adb -s $Serial uninstall com.tgz02.voice 2>&1 | Out-String
    Say $ti.Trim()
    $ti = & $Adb -s $Serial install $TestApk 2>&1 | Out-String
    Say $ti.Trim()
    Check ($ti -match "Success") "the test APK installs"
    Say (RootSh "/data/local/tmp/t9/t9_07/dev_30_channel_owner.sh 2>&1")
    $nT = EventTotal
    & $Adb -s $Serial shell "am start -n com.tgz02.voice/.TestConversationActivity --es text '请用一句话介绍巴黎' --ez auto true" 2>$null | Out-Null
    $evT = WaitNewest $nT '"kind":"turn".*"route":"ai"' 40
    Say $evT
    Check ($evT -ne "") "in the test build the driver prefills and sends (Chinese included)"
    Shot "77_f_test_build.png"

    Say "   (restoring the production build and re-binding the channel)"
    & $Adb -s $Serial uninstall com.tgz02.voice 2>&1 | Out-Null
    $pi = & $Adb -s $Serial install $Apk 2>&1 | Out-String
    Say $pi.Trim()
    Check ($pi -match "Success") "the production APK is installed again"
    Say (RootSh "/data/local/tmp/t9/t9_07/dev_30_channel_owner.sh 2>&1")
    & $Adb -s $Serial shell 'am force-stop app.orchard.tv' 2>$null | Out-Null
    & $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity" 2>$null | Out-Null
    Start-Sleep -Seconds 3
    $nG = EventTotal
    & $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity --es text 'STILL_NOT' --ez auto true" 2>$null | Out-Null
    Start-Sleep -Seconds 5
    Check ((EventTotal) -eq $nG) "after the reinstall the production APK still ignores test intents"
    Check (Focused) "the production conversation screen is up again"
    Shot "78_g_prod_restored.png"
}

# ------------------------------------------------------------------ G inbox protocol on device
Step "G inbox protocol on the device: legacy say, non-string kind, uid protection"
$legacy = RootScript "/data/local/tmp/t9/t9_07/dev_70_submit.sh" "say legacy-say-request"
Say $legacy
Check ($legacy -match '"ok":true') "a legacy request (no kind) is still accepted"
Check ($legacy -match '"stage":"queue"') "and it is still a plain speak request (stage=queue)"
$bad = RootScript "/data/local/tmp/t9/t9_07/dev_83_bad_kind.sh" "true"
Say $bad
Check ($bad -match '"ok":false') "kind:true is refused"
Check ($bad -match "kind must be a string") "the refusal names the real problem"
Check ($bad -match "rejected: 1") "the bad request is parked in rejected/"
$bad2 = RootScript "/data/local/tmp/t9/t9_07/dev_83_bad_kind.sh" "null"
Say $bad2
Check ($bad2 -match '"ok":false') "kind:null is refused as well"
$nG = EventTotal
Start-Sleep -Seconds 2
Check ((EventTotal) -eq $nG) "none of the refused requests produced a conversation event"
Shot "79_g_inbox_protocol.png"
Say ""
Say "================================================================"
Say ("RESULT: " + $(if ($script:Fail -eq 0) { "PASS (0 failed checks)" } else { "FAIL (" + $script:Fail + " failed checks)" }))
Say "================================================================"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ("log: " + $Log)
exit $script:Fail
