# t9_08b_voice_text_check.ps1 -- T9-08B: the two live checks, run on their own so the device
# state is fresh (voice turn on the home screen, and the migrated text ask / history / new session).
#
#   powershell -ExecutionPolicy Bypass -File t9_08b_voice_text_check.ps1
#
# Artifact: evidence/t9-08b/61_voice_text.txt (+ 90_voice_turn.png, 91_text_ask.png, 92_history.png)
param(
    [string]$Serial = "192.168.1.9:5555",
    [string]$Adb    = "D:\GreenSoft\platform-tools\adb.exe",
    [string]$Wavs   = "D:\tgz02\OS\_analysis\t815\wav"
)
$ErrorActionPreference = "Continue"
$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Ev   = Join-Path $Root "evidence\t9-08b"
New-Item -ItemType Directory -Force $Ev | Out-Null
$Log = Join-Path $Ev "61_voice_text.txt"
$script:Lines = New-Object System.Collections.Generic.List[string]
$script:Fail = 0

function Say([string]$s) { $script:Lines.Add($s); Write-Host $s }
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
    & $Adb -s $Serial pull /data/local/tmp/ui.xml (Join-Path $Ev "_ui2.xml") 2>$null | Out-Null
    return (Get-Content (Join-Path $Ev "_ui2.xml") -Raw -Encoding UTF8)
}
function Sessions {
    $o = RootCmd "ls /data/data/com.tgz02.voice/files/sessions"
    return (($o -split "`r?`n" | Where-Object { $_ -match "\.json$" }).Count)
}
function Silence {
    RootCmd "mkdir -p /data/local/tmp/t5_bridge/tts/control; echo check > /data/local/tmp/t5_bridge/tts/control/stop" | Out-Null
    Start-Sleep -Seconds 3
}

Say "# T9-08B live checks (voice turn on the home screen + the migrated text screens)"
Say ("# host time : " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))

# keep the panel awake: with the screen asleep the factory stops listening
$orig = (Sh "settings get system screen_off_timeout").Trim()
Sh "settings put system screen_off_timeout 1800000" | Out-Null
Sh "svc power stayon true" | Out-Null
& $Adb -s $Serial shell 'input keyevent 224' 2>$null | Out-Null
Start-Sleep -Milliseconds 500
& $Adb -s $Serial shell 'am force-stop app.orchard.tv' 2>$null | Out-Null
& $Adb -s $Serial shell 'am force-stop com.shere.assistivetouch' 2>$null | Out-Null
& $Adb -s $Serial shell 'am start -n com.tgz02.voice/.VoiceHomeActivity' 2>$null | Out-Null
Start-Sleep -Seconds 2
Silence
Check ((Snap) -match '"state"\s*:\s*"idle"') "the device is silent before the check"
Check ((Focus) -match "VoiceHomeActivity") "the voice home is in front"

# ---------------------------------------------------------------- voice
Say ""
Say "== voice turn on the home screen"
$wav = Join-Path $Wavs "r1.wake_time.wav"
$turn = ""
for ($try = 0; $try -lt 3; $try++) {
    (New-Object System.Media.SoundPlayer $wav).PlaySync()
    Start-Sleep -Seconds 7
    $s = Snap
    $newest = [regex]::Match($s, 'newest_json=(.*)').Groups[1].Value
    if ($newest -match '"kind":"turn"') { $turn = $newest; break }
    Say ("   (attempt " + $try + ": newest event was not a turn, retrying)")
    Start-Sleep -Seconds 2
}
Say ("   turn: " + $turn)
Check ($turn -ne "") "a turn was published"
Check ($turn -match '"session":"[0-9]+"') "it came from a factory ASR session"
$u = [regex]::Match($turn, '"user":"([^"]*)"').Groups[1].Value
$r = [regex]::Match($turn, '"reply":"([^"]*)"').Groups[1].Value
$xml = UiDump
Say ("   user=[" + $u + "] reply=[" + $r + "]")
Check ($u.Length -gt 0 -and $xml.Contains($u)) "the home screen shows the recognised text"
Check ($r.Length -gt 0 -and $xml.Contains($r)) "the home screen shows the answer"
Shot "90_voice_turn.png"

# ---------------------------------------------------------------- text ask
Say ""
Say "== text ask through 更多功能"
Silence
& $Adb -s $Serial shell 'am start -n com.tgz02.voice/.VoiceHomeActivity' 2>$null | Out-Null
Start-Sleep -Seconds 2
& $Adb -s $Serial shell 'input tap 976 24' 2>$null | Out-Null; Start-Sleep -Seconds 1
Check ((Focus) -match "MoreActivity") "更多 opens the menu"
& $Adb -s $Serial shell 'input tap 512 120' 2>$null | Out-Null; Start-Sleep -Seconds 1
Check ((Focus) -match "ConversationActivity") "the entry opens the conversation screen"
$ask = ""
for ($try = 0; $try -lt 3; $try++) {
    & $Adb -s $Serial shell 'input tap 300 570' 2>$null | Out-Null; Start-Sleep -Milliseconds 1200
    & $Adb -s $Serial shell 'input keyevent 123' 2>$null | Out-Null
    $del = (@(67) * 60) -join ' '
    & $Adb -s $Serial shell "input keyevent $del" 2>$null | Out-Null; Start-Sleep -Milliseconds 400
    & $Adb -s $Serial shell "input text 'What%sis%sthe%scapital%sof%sFrance%s'" 2>$null | Out-Null
    Start-Sleep -Milliseconds 900
    & $Adb -s $Serial shell 'input keyevent 4' 2>$null | Out-Null; Start-Sleep -Milliseconds 1000
    & $Adb -s $Serial shell 'input tap 900 570' 2>$null | Out-Null; Start-Sleep -Seconds 9
    $s = Snap
    $newest = [regex]::Match($s, 'newest_json=(.*)').Groups[1].Value
    if ($newest -match '"route":"ai"') { $ask = $newest; break }
    Say ("   (attempt " + $try + ": no AI turn yet, retrying)")
}
Say ("   turn: " + $ask)
Check ($ask -match '"route":"ai".*"status":"ok"') "the text ask still goes through the AI"
Check (([regex]::Match($ask, '"reply":"([^"]*)"').Groups[1].Value).Length -gt 3) "and produces a real answer"
Shot "91_text_ask.png"

# ---------------------------------------------------------------- history / new session
Say ""
Say "== history and new session"
$before = Sessions
$xh = ""
for ($t = 0; $t -lt 3; $t++) {
    & $Adb -s $Serial shell 'input tap 200 24' 2>$null | Out-Null
    Start-Sleep -Milliseconds 1200
    $xh = UiDump
    if ($xh -match "历史会话") { break }
}
Check ($xh -match "历史会话") "the history dialog still opens"
Shot "92_history.png"
& $Adb -s $Serial shell 'input keyevent 4' 2>$null | Out-Null; Start-Sleep -Milliseconds 900
if (-not ((Focus) -match "ConversationActivity")) {
    & $Adb -s $Serial shell 'am start -n com.tgz02.voice/.ConversationActivity' 2>$null | Out-Null
    Start-Sleep -Seconds 1
}
& $Adb -s $Serial shell 'input tap 136 24' 2>$null | Out-Null; Start-Sleep -Seconds 2
$after = Sessions
Say ("   sessions " + $before + " -> " + $after)
Check ($after -gt $before) "new session still creates a local session"

# back to the product screen, restore the screen timeout
& $Adb -s $Serial shell 'am start -n com.tgz02.voice/.VoiceHomeActivity' 2>$null | Out-Null
Start-Sleep -Seconds 1
Sh "svc power stayon false" | Out-Null
if ($orig -match "^\d+$") { Sh ("settings put system screen_off_timeout " + $orig) | Out-Null }
Say ("   screen_off_timeout restored to " + (Sh "settings get system screen_off_timeout").Trim())

Say ""
Say ("RESULT: " + $(if ($script:Fail -eq 0) { "PASS (0 failed checks)" } else { "FAIL (" + $script:Fail + " failed checks)" }))
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ("log: " + $Log)
exit $script:Fail
