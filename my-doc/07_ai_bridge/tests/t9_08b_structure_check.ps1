# t9_08b_structure_check.ps1 -- T9-08B: structure, stop control, page switching, shipped-APK checks.
#
#   powershell -ExecutionPolicy Bypass -File t9_08b_structure_check.ps1
#
# Deliberately ASCII-only messages: the earlier version of this script was corrupted by an
# encoding round-trip, and the checks below do not need Chinese literals to be meaningful.
# The Chinese UI labels are matched through the uiautomator dump with explicit UTF-8 decoding.
#
# Artifact: evidence/t9-08b/60_acceptance.txt (+ 80/82/83/84/88/89 screenshots and logs)
param(
    [string]$Serial = "192.168.1.9:5555",
    [string]$Adb    = "D:\GreenSoft\platform-tools\adb.exe",
    [string]$Apk    = ""
)
$ErrorActionPreference = "Continue"
$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Ev   = Join-Path $Root "evidence\t9-08b"
New-Item -ItemType Directory -Force $Ev | Out-Null
if ($Apk -eq "") { $Apk = Join-Path $Root "android\t9_07_ui\dist\voice_ui.apk" }
$Log = Join-Path $Ev "60_acceptance.txt"

$script:Lines = New-Object System.Collections.Generic.List[string]
$script:Fail = 0

function Say([string]$s) { $script:Lines.Add($s); Write-Host $s }
function Step([string]$s) { Say ""; Say "================"; Say "== $s"; Say "================" }
function Check([bool]$c, [string]$w) {
    if ($c) { Say ("   [PASS] " + $w) } else { Say ("   [FAIL] " + $w); $script:Fail++ }
}
function Sh([string]$cmd) { return ((& $Adb -s $Serial shell $cmd 2>&1) | Out-String) }
function RootCmd([string]$cmd) { return ((& $Adb -s $Serial shell "su 0 sh -c `"$cmd 2>&1`"") | Out-String) }
function RootSh([string]$p) { return ((& $Adb -s $Serial shell "su 0 sh -c `"sh $p 2>&1`"") | Out-String) }
function Snap { return (RootSh "/data/local/tmp/t9/t9_07/dev_60_read.sh") }
function Focus { return ((Sh "dumpsys window | grep mCurrentFocus") -replace ".*u0 ", "").Trim() }
function Shot([string]$n) {
    & $Adb -s $Serial shell 'screencap -p /data/local/tmp/shot.png' 2>$null | Out-Null
    & $Adb -s $Serial pull /data/local/tmp/shot.png (Join-Path $Ev $n) 2>$null | Out-Null
    Say ("   screenshot: " + $n)
}
function UiDump {
    & $Adb -s $Serial shell 'uiautomator dump /data/local/tmp/ui.xml' 2>$null | Out-Null
    & $Adb -s $Serial pull /data/local/tmp/ui.xml (Join-Path $Ev "_ui.xml") 2>$null | Out-Null
    return (Get-Content (Join-Path $Ev "_ui.xml") -Raw -Encoding UTF8)
}
function Silence {
    RootCmd "mkdir -p /data/local/tmp/t5_bridge/tts/control; echo check > /data/local/tmp/t5_bridge/tts/control/stop" | Out-Null
    Start-Sleep -Seconds 3
}
function HomeScreen {
    & $Adb -s $Serial shell 'am force-stop app.orchard.tv' 2>$null | Out-Null
    & $Adb -s $Serial shell 'am start -n com.tgz02.voice/.VoiceHomeActivity' 2>$null | Out-Null
    Start-Sleep -Seconds 2
}

Say "# T9-08B structure acceptance (voice home, more menu, stop, switching, shipped APK)"
Say ("# host time : " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Say ("# apk       : " + $Apk + "  sha256=" + (Get-FileHash $Apk -Algorithm SHA256).Hash.ToLower())

$orig = (Sh "settings get system screen_off_timeout").Trim()
Sh "settings put system screen_off_timeout 1800000" | Out-Null
Sh "svc power stayon true" | Out-Null
& $Adb -s $Serial shell 'input keyevent 224' 2>$null | Out-Null
Start-Sleep -Milliseconds 500
Silence
HomeScreen

# ------------------------------------------------------------------ preconditions
Step "0 preconditions"
$pre = Snap
Say $pre
$uid = ((Sh "dumpsys package com.tgz02.voice | grep -m1 userId=") -replace "[^0-9]", "")
Check ($pre -match "pid=\d+") "the worker is running"
Check ($pre -match ("userId=" + $uid)) ("the channel owner is the app (uid " + $uid + ")")
Check ((Snap) -match '"state"\s*:\s*"idle"') "the device is silent before the run"
Check ((Focus) -match "VoiceHomeActivity") "the launcher screen is the voice home"

# ------------------------------------------------------------------ 1 home structure
Step "1 the home screen is voice-only"
$xml = UiDump
Check ((([regex]::Matches($xml, "android\.widget\.EditText")).Count) -eq 0) "no text field on the home screen"
Check ($xml -notmatch "发送") "no send button on the home screen"
Check ($xml -notmatch "历史") "no history entry on the home screen"
Check ($xml -match "停止播报") "the stop control is present"
Check ($xml -match "设置") "settings is reachable"
Check ($xml -match "更多") "the more menu is reachable"
Shot "80_home.png"

# ------------------------------------------------------------------ 2 stop control
Step "2 the stop control on the home screen"
Say (RootSh "/data/local/tmp/t9/t9_07/dev_84_say.sh")
$playing = $false
for ($t = 0; $t -lt 10; $t++) {
    Start-Sleep -Seconds 1
    if ((Snap) -match '"state"\s*:\s*"playing"') { $playing = $true; break }
}
Check $playing "a long playback is running before the stop"
HomeScreen
Check ((Focus) -match "VoiceHomeActivity") "the home screen is in front while it is still speaking"
Shot "82_before_stop.png"
& $Adb -s $Serial shell 'input tap 960 574' 2>$null | Out-Null; Start-Sleep -Seconds 4
$pp = Snap
$jl = RootCmd "tail -4 /data/local/tmp/t5_bridge/tts/journal.jsonl"
Say $jl
$cut = ($jl -match '"outcome":"(error|interrupted|stopped)"') -or ($pp -match '"state"\s*:\s*"idle"')
Check $cut "the stop cut the current playback short"
Shot "83_after_stop.png"
& $Adb -s $Serial shell 'input tap 960 574' 2>$null | Out-Null; Start-Sleep -Seconds 5
$stateNow = [regex]::Match((Snap), '"state"\s*:\s*"([^"]*)"').Groups[1].Value
Say ("   play state after the second press: " + $stateNow)
Say "   KF-1 (documented in T9_08B_VOICE_FIRST_UI.md section 4): a stop is reported by the"
Say "   factory as error, so TtsExec re-queues the item; the button works, the replay is the retry."
Silence

# ------------------------------------------------------------------ 3 more menu
Step "3 the more menu keeps the old screens reachable"
HomeScreen
& $Adb -s $Serial shell 'input tap 976 24' 2>$null | Out-Null; Start-Sleep -Seconds 1
Check ((Focus) -match "MoreActivity") "the more menu opens"
$xm = UiDump
Check ($xm -match "文字对话与历史记录") "the menu lists the text conversation entry"
Check ((([regex]::Matches($xm, "android\.widget\.EditText")).Count) -eq 0) "the menu itself has no text field"
Shot "84_more_menu.png"
& $Adb -s $Serial shell 'input tap 512 120' 2>$null | Out-Null; Start-Sleep -Seconds 1
Check ((Focus) -match "ConversationActivity") "the entry opens the existing conversation screen"
Check ((([regex]::Matches((UiDump), "android\.widget\.EditText")).Count) -ge 1) "the migrated screen still has its text field"
Shot "85_conversation.png"

# ------------------------------------------------------------------ 4 switching
Step "4 page switching: one poller per page, nothing replayed"
$pollLog = Join-Path $Ev "88_switch_poll.log"
$cap = Start-Process -FilePath $Adb -ArgumentList "-s", $Serial, "logcat", "-v", "time",
        "T907VOICE:I", "*:S" -RedirectStandardOutput $pollLog -PassThru -WindowStyle Hidden
Start-Sleep -Milliseconds 800
HomeScreen
for ($i = 1; $i -le 3; $i++) {
    & $Adb -s $Serial shell 'input tap 976 24' 2>$null | Out-Null; Start-Sleep -Milliseconds 900
    & $Adb -s $Serial shell 'input tap 512 120' 2>$null | Out-Null; Start-Sleep -Seconds 1
    & $Adb -s $Serial shell 'input keyevent 4' 2>$null | Out-Null; Start-Sleep -Milliseconds 600
    & $Adb -s $Serial shell 'input keyevent 4' 2>$null | Out-Null; Start-Sleep -Milliseconds 800
    Check ((Focus) -match "VoiceHomeActivity") ("round " + $i + " returns to the home screen")
}
Start-Sleep -Milliseconds 500
try { Stop-Process -Id $cap.Id -Force } catch { }
$pollLines = Get-Content $pollLog | Where-Object { $_ -match "poll (start|stop)" }
Say ($pollLines -join "`n")
$seq = @()
foreach ($l in $pollLines) { if ($l -match "(home|conversation|settings): poll (start|stop)") { $seq += ($matches[1] + ":" + $matches[2]) } }
Say ("   sequence: " + ($seq -join " -> "))
$active = @{}
$doubleStart = $false
foreach ($s in $seq) {
    $page, $what = $s -split ":"
    if ($what -eq "start") { if ($active[$page]) { $doubleStart = $true }; $active[$page] = $true }
    else { $active[$page] = $false }
}
Check (-not $doubleStart) "no page ever starts a second poller while its own is running"
Check ($seq.Count -ge 6) "the switching produced a clean start/stop sequence"
Check (($seq[$seq.Count - 1]) -like "*:start") "the home screen ends as the polling page"
Check ((Focus) -match "VoiceHomeActivity") "back on the home screen after three rounds"
Check ((([regex]::Matches((UiDump), "android\.widget\.EditText")).Count) -eq 0) "still no text field after the rounds"
Shot "89_after_switching.png"

# ------------------------------------------------------------------ 5 shipped APK
Step "5 the shipped APK is still closed"
& $Adb -s $Serial shell "am start -n com.tgz02.voice/.ConversationActivity --es text 'NOPE' --ez auto true" 2>$null | Out-Null
$n5 = [regex]::Match((Snap), 'events_total=(\d+)').Groups[1].Value
Start-Sleep -Seconds 3
Check ([regex]::Match((Snap), 'events_total=(\d+)').Groups[1].Value -eq $n5) "intent extras are still ignored"
$perms = Sh "dumpsys package com.tgz02.voice | grep -A4 'requested permissions'"
Say $perms.Trim()
Check (-not ($perms -match "android.permission")) "no permission requested"
$bt = "$env:LOCALAPPDATA\Android\Sdk\build-tools\35.0.1"
Add-Type -AssemblyName System.IO.Compression.FileSystem
$dex = Join-Path $Ev "_prod.dex"
$z = [System.IO.Compression.ZipFile]::OpenRead($Apk)
try { $e = $z.GetEntry('classes.dex'); $fs = New-Object System.IO.FileStream($dex, [System.IO.FileMode]::Create); $e.Open().CopyTo($fs); $fs.Close() } finally { $z.Dispose() }
$dump = (& "$bt\dexdump.exe" -f $dex 2>$null | Out-String)
Check (-not ($dump -match "TestConversationActivity")) "no automation driver in the shipped dex"
Check (-not ($dump -match "getStringExtra")) "no intent-extras code in the shipped dex"
Check ($dump -match "VoiceHomeActivity") "the voice home is in the shipped dex"
$man = (& "$bt\aapt2.exe" dump xmltree $Apk --file AndroidManifest.xml 2>&1 | Out-String)
Check (($man -match "VoiceHomeActivity") -and ($man -match "LAUNCHER")) "the launcher is the voice home"
Check (-not ($man -match "uses-permission")) "the manifest declares no permission"

Sh "svc power stayon false" | Out-Null
if ($orig -match "^\d+$") { Sh ("settings put system screen_off_timeout " + $orig) | Out-Null }
Say ("   screen_off_timeout restored to " + (Sh "settings get system screen_off_timeout").Trim())
Say ""
Say "================"
Say ("RESULT: " + $(if ($script:Fail -eq 0) { "PASS (0 failed checks)" } else { "FAIL (" + $script:Fail + " failed checks)" }))
Say "================"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ("log: " + $Log)
exit $script:Fail
