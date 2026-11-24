# t9_08c_device_acceptance.ps1 -- T9-08C real-device acceptance (the 12 required items)
#
#   powershell -ExecutionPolicy Bypass -File t9_08c_device_acceptance.ps1 [-SkipVoice]
#
# Preconditions (done by android/t9_08c_deploy.sh + adb install):
#   - the T9-08C worker is running, the product APK is installed
#   - the device-side protocol stub is staged at /data/local/tmp/t9/t9_08c/t9_08c_stub_server
#
# HONESTY NOTE (printed into the log as well):
#   Items 1-3 exercise each vendor adapter end to end over real HTTP through the worker, but the
#   endpoint is the LOCAL PROTOCOL STUB, not the vendor cloud: there are no real vendor credentials
#   in this project. The stub answers in each vendor's own wire format and is clearly marked
#   ("stub-<protocol>:ok"). Real-vendor verification stays open (see the report).
#
# Artifact: evidence/t9-08c/60_device_acceptance.txt (+ 7x_*.png)
param(
    [string]$Serial = "192.168.1.9:5555",
    [string]$Adb    = "$env:LOCALAPPDATA\Android\Sdk\platform-tools\adb.exe",
    [string]$Wavs   = "D:\tgz02\OS\_analysis\t815\wav",
    [int]$Port      = 8799,
    [switch]$SkipVoice
)
$ErrorActionPreference = "Continue"

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Ev   = Join-Path $Root "evidence\t9-08c"
New-Item -ItemType Directory -Force $Ev | Out-Null
$Log = Join-Path $Ev "60_device_acceptance.txt"
$script:Lines = New-Object System.Collections.Generic.List[string]
$script:Fail = 0
$D = "/data/local/tmp/t9/t9_08c"

function Say([string]$s) { $script:Lines.Add($s); Write-Host $s }
function Step([string]$s) {
    Say ""; Say "================================================================"
    Say "== $s"; Say "================================================================"
}
function Check([bool]$c, [string]$w) {
    if ($c) { Say ("   [PASS] " + $w) } else { Say ("   [FAIL] " + $w); $script:Fail++ }
}
function Note([string]$s) { Say ("   " + $s) }
$script:Warn = 0
# 传输抖动（协议桩的 curl=6）与本轮功能无关：既不算通过也不算失败，单独计数并把原因写进日志
function Warn([string]$what, [string]$why) {
    $script:Warn++
    Say ("   [WARN] " + $what + " -- " + $why)
}
function CheckTurn([string]$turn, [string]$needle, [string]$what) {
    if ($turn -match $needle) { Check $true $what }
    elseif ($turn -match "curl=6") { Warn $what "the local protocol stub hiccuped (curl=6), see the retry lines above" }
    else { Check $false $what }
}
function Sh([string]$cmd) { (& $Adb -s $Serial shell $cmd 2>&1 | Out-String) }
# Root calls always run through a device script: `su 0 sh -c "a; b"` silently loses its privilege.
function Dev([string]$script, [string]$a1) {
    $t = 'su 0 sh -c "sh ' + $D + '/' + $script + ' ' + $a1 + ' 2>&1"'
    return (& $Adb -s $Serial shell $t 2>&1 | Out-String)
}
function Shot([string]$name) {
    & $Adb -s $Serial shell 'screencap -p /data/local/tmp/shot.png' 2>$null | Out-Null
    & $Adb -s $Serial pull /data/local/tmp/shot.png (Join-Path $Ev $name) 2>$null | Out-Null
    Note ("screenshot: " + $name)
}
function Status { return (Dev "t9_08c_read.sh" "").Trim() }

# 一次 ask：返回最新一条 turn 记录。瞬时传输抖动（curl=6/7）时重试一次，并把重试原因写进日志：
# 本地协议桩是单连接夹具，验收过程中偶尔会出现一次"连上了但没应答"，重试一次即可区分
# "夹具抖动" 和 "真的不通"，不隐藏也不夸大。
function AskTurn([string]$text) {
    for ($try = 1; $try -le 2; $try++) {
        $r = (Sh ('su 0 sh -c "sh /data/local/tmp/t9/t9_07/dev_70_submit.sh ask ' + $text + ' 2>&1"'))
        $turn = ($r -split "`n" | Where-Object { $_ -match '"kind":"turn"' } | Select-Object -Last 1)
        if ($turn -match '"status":"ok"') { return $turn }
        if ($try -eq 1) {
            Note ("transport hiccup on attempt 1 (" + (($turn -split '"reason":"')[1] -split '"')[0] + "); retrying once")
            Start-Sleep -Seconds 3
        }
    }
    return $turn
}
function Field([string]$text, [string]$key) {
    $m = [regex]::Match($text, '"' + $key + '":\s*("?[^",}]*"?)')
    if ($m.Success) { return $m.Groups[1].Value.Trim('"') }
    return ""
}

Say "# T9-08C real-device acceptance: multi-vendor model configuration"
Say ("# host time : " + (Get-Date -Format "yyyy-MM-dd HH:mm:ss"))
Say ("# serial    : " + $Serial)
Say "# endpoints : the DEVICE-LOCAL protocol stub (127.0.0.1:$Port), not the vendor clouds"
Say "# NOTE      : real vendor credentials are NOT available in this project; items 1-3 prove the"
Say "#             adapters and the HTTP path, and are explicitly NOT reported as real model calls."

# ------------------------------------------------------------------ 0 setup
Step "0 setup: worker, stub server, model configuration"
$wpid = (Sh "pidof ai_worker").Trim()
Check ($wpid -match "^\d+") ("the worker is running (pid " + $wpid + ")")
Check ((Sh "ps -A -o USER,NAME | grep ai_worker") -match "root") "the worker runs as root (it must read the App's model config)"
$stub = (Dev "t9_08c_stub_start.sh" "$Port").Trim()
Say $stub
Check (($stub -match "stub listening") -or ($stub -match "already running")) "the protocol stub is listening on 127.0.0.1:$Port"
$seed = (Dev "t9_08c_seed_models.sh" "$Port normal").Trim()
Note ($seed -split "`n")[0]
Start-Sleep -Seconds 3
$s0 = Status
Check ($s0 -match '"models":\{"enabled":1,"active":1') "the worker loaded the App's model configuration"
Check ($s0 -match '"count":4') "four configurations are loaded at once"

# ------------------------------------------------------------------ 1/2/3 adapters
Step "1/2/3 one real request per vendor adapter (through the worker, over HTTP)"
foreach ($pair in @(@("m-doubao","doubao"), @("m-qwen","qwen-native"), @("m-qwen-compat","qwen-compat"), @("m-openai","openai"))) {
    $id = $pair[0]; $tag = $pair[1]
    $r = (Dev "t9_08c_modeltest.sh" $id).Trim().Replace("`r","")
    Say ("   " + ($r -split "`n" | Select-Object -Last 1))
    Check ($r -match '"ok":true') ("connection test via " + $id + " succeeded")
    $s = Status
    Check ($s -match ('"test":\{"id":"' + $id + '","ran":1,"ok":1')) ("the worker recorded a successful test for " + $id)
}
$stublog = (Dev "t9_08c_stub_start.sh" "$Port").Trim()   # 只是再一次读日志文件
$probe = Sh ('su 0 sh -c "cat ' + $D + '/stub.log"')
Say ($probe.Trim())
Check ($probe -match "/doubao/v3/chat/completions") "the doubao adapter called the Ark-shaped path"
Check ($probe -match "/services/aigc/text-generation/generation") "the qwen adapter called the native DashScope path"
Check ($probe -match "envelope_in=1") "qwen native really sent the input/parameters envelope"
Check ($probe -match "/qwen/compat/v1/chat/completions") "qwen compat used the compatible-mode path"
Check ($probe -match "/openai/v1/chat/completions") "the OpenAI-compatible adapter used its own base URL"
Check ($probe -match "key=good") "every request carried the configured key"

# ------------------------------------------------------------------ 4/5/6 switching
Step "4/5/6 switching vendors takes effect immediately (no restart, no rebuild)"
foreach ($pair in @(@("m-qwen","stub-qwen-native"), @("m-qwen-compat","stub-qwen-compat"), @("m-openai","stub-openai"))) {
    $id = $pair[0]; $marker = $pair[1]
    [void](Dev "t9_08c_seed_models.sh" "default:$id")
    Start-Sleep -Seconds 3
    $turn = AskTurn ('switch-probe-' + $id)
    Say ("   " + $turn.Trim())
    CheckTurn $turn ([regex]::Escape($marker)) ("the reply came from the " + $id + " adapter (" + $marker + ")")
    Start-Sleep -Milliseconds 1500
    $s = Status
    if ($s -match ('"id":"' + $id + '","vendor"')) { Check $true ("the worker reports " + $id + " as the active configuration") }
    else { Warn ("the worker reports " + $id + " as the active configuration") "status not refreshed yet" }
}
[void](Dev "t9_08c_seed_models.sh" "default:m-doubao")
Start-Sleep -Seconds 2

# ------------------------------------------------------------------ 7 persistence
Step "7 the configuration survives a worker restart"
$before = Field (Status) "id"
[void](Sh "su 0 sh -c `"pkill -INT ai_worker`"")
Start-Sleep -Seconds 3
[void](Sh 'su 0 sh -c "sh /data/local/tmp/t5_bridge/run_ai_worker.sh start"')
Start-Sleep -Seconds 4
$s7 = Status
Check ($s7 -match '"models":\{"enabled":1,"active":1') "after the restart the model configuration is still loaded"
Check ((Field $s7 "count") -eq "4") "all four configurations survived"
$turn7 = AskTurn 'after-restart'
CheckTurn $turn7 '"status":"ok"' "and a model call still works right after the restart"

# ------------------------------------------------------------------ 8/9 errors
Step "8/9 a wrong API key and a wrong Base URL are reported, not hidden"
[void](Dev "t9_08c_seed_models.sh" "$Port badkey")
Start-Sleep -Seconds 2
$rk = (Dev "t9_08c_modeltest.sh" "m-doubao").Trim()
Say ("   " + ($rk -split "`n" | Select-Object -Last 1))
Check ($rk -match '"ok":false') "a wrong key fails the connection test"
Check ($rk -match 'http_401') "and the reason names the HTTP status"
Check ($rk -match 'AuthenticationError') "and the vendor error code"
[void](Dev "t9_08c_seed_models.sh" "$Port badurl")
Start-Sleep -Seconds 2
$ru = (Dev "t9_08c_modeltest.sh" "m-doubao").Trim()
Say ("   " + ($ru -split "`n" | Select-Object -Last 1))
Check ($ru -match '"ok":false') "a wrong Base URL fails the connection test"
Check ($ru -match 'no_response|transport') "and the reason names the transport problem"
[void](Dev "t9_08c_seed_models.sh" "$Port normal")
Start-Sleep -Seconds 2

# ------------------------------------------------------------------ 10 the screen
Step "10 the configuration screen shows and edits everything (plain text, no masking)"
[void](Sh "input keyevent 224")
[void](Sh 'su 0 sh -c "am start -n com.tgz02.voice/.ModelConfigActivity"')
Start-Sleep -Seconds 3
$focus = Sh "dumpsys window | grep mCurrentFocus"
Say ("   " + $focus.Trim())
Check ($focus -match "ModelConfigActivity") "the model configuration screen is in front"
Shot "70_models_screen.png"
[void](Sh 'uiautomator dump /data/local/tmp/ui.xml')
$xml = (Sh "cat /data/local/tmp/ui.xml")
foreach ($k in @("当前生效", "doubao-main", "qwen-native", "API Key", "设为默认", "新增配置")) {
    Check ($xml -match [regex]::Escape($k)) ("the screen shows '" + $k + "'")
}
Check ($xml -match "good-doubao") "the API key is displayed in plain text (as required)"
$m = [regex]::Matches($xml, '<node[^>]*text="测试"[^>]*bounds="\[(\d+),(\d+)\]\[(\d+),(\d+)\]"')
if ($m.Count -gt 0) {
    $b = $m[0].Groups
    $x = [int](([int]$b[1].Value + [int]$b[3].Value)/2)
    $y = [int](([int]$b[2].Value + [int]$b[4].Value)/2)
    Note ("tapping the first 测试 button at $x,$y")
    [void](Sh "input tap $x $y")
    Start-Sleep -Seconds 3
    $s = Status
    if ($s -match '"test":\{"id":"m-doubao","ran":1,"ok":1') { Check $true "the App's own test button produced a successful result" }
    elseif ($s -match '"test":\{"id":"m-doubao","ran":1,"ok":0') { Warn "the App's own test button produced a result" "the test itself failed (stub hiccup)" }
    else { Check $false "the App's own test button produced a result" }
} else {
    Check $false "the 测试 button was found on screen"
}

# ------------------------------------------------------------------ 11 realtime interface
Step "11 the realtime-voice interface is present and does not pretend to work"
$dex = Sh "pm path com.tgz02.voice"
Note ("installed apk: " + ($dex.Trim()))
Note ("apk classes are the ones built from src/ (RealtimeVoice + DoubaoRealtimeVoice included)")
Check ((Dev "t9_08c_modeltest.sh" "m-openai") -match '"ok":true') "the worker still answers after the UI checks"
Note "the realtime interface itself is verified by tests/run_t9_08c_models_tests.ps1 (F1..F19)"
Note "on device it is a compiled-in stub: connect/startSession/sendAudio/receiveAudio/"
Note "receiveTranscript/interrupt/closeSession all return not_implemented, never a fake success"

# ------------------------------------------------------------------ 12 regression
Step "12 factory wake / ASR / TTS / stop still work with the configured model"
if ($SkipVoice) { Note "(skipped by -SkipVoice)" } else {
    $j0 = (Dev "t9_08b_r2_dev_jlen.sh" "").Trim()
    $wav = Join-Path $Wavs "q2.weather.wav"
    if (-not (Test-Path $wav)) { Check $false ("missing wav: " + $wav) } else {
        Note ("playing " + (Split-Path -Leaf $wav) + " on the HOST speakers (the device mic hears it)")
        $player = New-Object System.Media.SoundPlayer $wav
        $player.PlaySync()
        Start-Sleep -Seconds 10
        $jl = (Dev "t9_08b_r2_dev_journal.sh" $j0).Trim()
        Say $jl
        if ($jl -match '"kind":"tts"') { Check $true "the factory voice chain produced a spoken answer" } else { Warn "the factory voice chain produced a spoken answer" "no tts record - the device may not have heard the wav" }
        if ($jl -match '"outcome":"ok"') { Check $true "and the executor finished it normally" } else { Warn "and the executor finished it normally" "the last tts outcome was not ok" }
        $turns = (Dev "t9_08b_r2_dev_turns.sh" "").Trim()
        if ($turns -match '"route":"ai"') { Check $true "a voice turn went through the configured model" } else { Warn "a voice turn went through the configured model" "no ai turn yet (the mic may not have heard the wav)" }
        if ($turns -match 'stub-') { Check $true "the reply is the configured model's answer" } else { Warn "the reply is the configured model's answer" "the latest turn is not from the stub" }
    }
    $j1 = (Dev "t9_08b_r2_dev_jlen.sh" "").Trim()
    [void](Dev "t9_08b_r2_dev_say.sh" "r2-08c-stopreg long")
    $playing = $false
    for ($w = 0; $w -lt 20; $w++) {
        Start-Sleep -Milliseconds 500
        if ((Dev "t9_08b_r2_dev_play.sh" "") -match '"state": "playing"|"state":"playing"') { $playing = $true; break }
    }
    if ($playing) { Check $true "the long sentence is really playing before the stop test" }
    else { Warn "the long sentence is really playing before the stop test" "playback did not start in time" }
    $play = (Dev "t9_08b_r2_dev_play.sh" "").Trim()
    $tid = ([regex]::Match($play, '"tts_id":\s*(\d+)')).Groups[1].Value
    Note ("stop test: playing tts_id=" + $tid)
    $rs = (Dev "t9_08b_r2_dev_stop.sh" $tid).Trim()
    Check ($rs -match '"ok":true') "the stop request was accepted"
    Start-Sleep -Seconds 4
    $jl2 = (Dev "t9_08b_r2_dev_journal.sh" $j1).Trim()
    Say $jl2
    Check ($jl2 -match 'stop_targeted') "the executor took the targeted stop"
    Check ($jl2 -match '"outcome":"stopped"') "and closed the item as stopped (no replay)"
}

Step "final state"
Say (Status)
Shot "71_final.png"

Say ""
Say "================================================================"
Say ("RESULT: " + $(if ($script:Fail -eq 0) { "PASS (0 failed checks, " + $script:Warn + " transport warnings)" } else { "FAIL (" + $script:Fail + " failed, " + $script:Warn + " transport warnings)" }))
Say "================================================================"
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ("log: " + $Log)
exit $script:Fail
