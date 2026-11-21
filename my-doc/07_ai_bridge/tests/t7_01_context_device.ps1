# t7_01_context_device.ps1 -- T7-01 multi-turn context: incremental device acceptance
#
#   powershell -ExecutionPolicy Bypass -File t7_01_context_device.ps1 [-SkipVoice] [-SkipSynthetic]
#
# Phases
#   P0 deploy      : push ai_worker + run_ai_worker.sh + worker.conf, prove sha256, key hygiene
#   P1 synthetic   : deterministic mock-provider runs in /data/local/tmp/t7_01 (items 1-3,5-8)
#   P2 real voice  : real ASR -> worker -> local model proxy -> factory TTS, 3 continuous turns
#   P3 restart     : stop/start the real worker, prove the history comes back from disk
#   P4 hygiene     : no key material in any log/status/context artifact
#
# Only T7-01 is exercised; T2-T6 links are reused as-is and are not re-accepted here.
#
# Notes
#   - the real worker runs as root (Magisk su), so its files are read through su -c "cat ..."
#   - the synthetic worker runs as the shell user in its own sandbox dirs (own lock, own offset)
#   - the API key is never printed: only presence/mode/length and a boolean "appears in logs"
param(
    [string]$Device = '',
    [switch]$SkipVoice,
    [switch]$SkipSynthetic
)

$ErrorActionPreference = 'Stop'

# adb prints utf-8: decode native output as utf-8, otherwise CJK replies turn into mojibake
# as soon as stdout is redirected to a file (detached run)
$script:Utf8 = New-Object System.Text.UTF8Encoding($false)
try { [Console]::OutputEncoding = $script:Utf8 } catch { }
$OutputEncoding = $script:Utf8

$Adb   = 'D:\GreenSoft\platform-tools\adb.exe'
if ($Device -eq '') { $Device = '192.168.1.9:5555' }

$Here    = $PSScriptRoot
$Root    = Split-Path $Here -Parent
$Android = Join-Path $Root 'android'
$Ev      = Join-Path $Root 'evidence'
$LogPath = Join-Path $Ev 't7_01_device.log'
New-Item -ItemType Directory -Force $Ev | Out-Null

$D       = '/data/local/tmp/t5_bridge'
$SB      = '/data/local/tmp/t7_01'           # synthetic sandbox
$StimDir = 'D:\tgz02\OS\_analysis\t701'
$Wake    = 'D:\tgz02\OS\_analysis\t506d\stim2\s01_wake.wav'
$Player  = 'D:\tgz02\OS\_analysis\t502_play.ps1'
$Silence = 'D:\tgz02\OS\_analysis\t701\silence.wav'
$ConfLocal = Join-Path $Android 'conf\worker.conf.example'

$script:Pass = 0
$script:Fail = 0
$script:Phase = ''
$script:T0 = Get-Date

function Rec([string]$text) {
    $ts = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    $line = "[$ts] $text"
    Add-Content -Path $LogPath -Value $line -Encoding utf8
    Write-Host $line
}

function Step([string]$name) {
    $script:Phase = $name
    Rec ''
    Rec "=== $name ==="
}

function Assert([bool]$cond, [string]$what) {
    if ($cond) {
        $script:Pass++
        Rec "  ASSERT OK   $what"
    } else {
        $script:Fail++
        Rec "  ASSERT FAIL $what"
    }
}

function Skip([string]$what) {
    Rec "  ASSERT SKIP $what"
}

# ---------------------------------------------------------------- device helpers

function AdbRaw([string[]]$argv) {
    # native stderr must never become a terminating error: capture and move on
    $prev = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    try {
        $out = & $Adb -s $Device @argv 2>&1 | Out-String
        return $out
    } catch {
        # keep a stale $LASTEXITCODE from making the caller believe the command worked
        $global:LASTEXITCODE = 1
        return 'ADB_EXCEPTION'
    } finally {
        $ErrorActionPreference = $prev
    }
}

function Dev([string]$cmd) {
    for ($i = 0; $i -lt 4; $i++) {
        $out = AdbRaw @('shell', $cmd)
        if ($LASTEXITCODE -eq 0 -and $out -notmatch 'not found|error: closed|protocol fault|ADB_EXCEPTION') {
            return $out.TrimEnd()
        }
        Start-Sleep -Milliseconds 800
    }
    return ''
}

function SuDev([string]$cmd) {
    $wrapped = 'su -c "' + $cmd + '"'
    for ($i = 0; $i -lt 4; $i++) {
        $out = AdbRaw @('shell', $wrapped)
        if ($LASTEXITCODE -eq 0 -and $out -notmatch 'error: closed|protocol fault|ADB_EXCEPTION|error: device') {
            return $out.TrimEnd()
        }
        Start-Sleep -Milliseconds 800
    }
    return ''
}

function Push([string]$local, [string]$remote) {
    $out = AdbRaw @('push', $local, $remote)
    return ($out -match '1 file pushed')
}

function DevSha([string]$path) {
    $t = Dev "sha256sum $path"
    if ($t -eq '') { return '' }
    return ($t -split '\s+')[0]
}

function DevLines([string]$path) {
    $t = Dev "wc -l $path"
    if ($t -eq '') { return -1 }
    return [int](($t -split '\s+')[0])
}

function DevCat([string]$path) {
    return (Dev "cat $path")
}

function SuCat([string]$path) {
    return (SuDev "cat $path")
}

function WriteDevFile([string]$key, [string]$content) {
    # written through a host file + adb push (no shell quoting problems, keeps UTF-8)
    $tmp = Join-Path $env:TEMP ("t701_" + $key + '.txt')
    [System.IO.File]::WriteAllText($tmp, $content, (New-Object System.Text.UTF8Encoding($false)))
    return (Push $tmp "/data/local/tmp/t701_$key.bin")
}

function ToJson($text) {
    if ($text -eq $null) { return $null }
    $s = [string]$text
    # adb may prepend daemon lines to stdout; keep only the outermost json object
    $a = $s.IndexOf('{')
    $b = $s.LastIndexOf('}')
    if ($a -lt 0 -or $b -le $a) { return $null }
    $s = $s.Substring($a, $b - $a + 1)
    try { return ($s | ConvertFrom-Json) } catch { return $null }
}

# json artifacts are read as plain text with retries, then parsed (an adb hiccup must not fail a phase)
function ReadTextShell([string]$path) {
    for ($i = 0; $i -lt 8; $i++) {
        $txt = Dev "cat $path"
        if ($txt -ne '' -and $txt -ne $null) { return $txt }
        Start-Sleep -Milliseconds 400
    }
    return ''
}

function ReadTextRoot([string]$path) {
    for ($i = 0; $i -lt 8; $i++) {
        $txt = SuDev "cat $path"
        if ($txt -ne '' -and $txt -ne $null) { return $txt }
        Start-Sleep -Milliseconds 400
    }
    return ''
}

# ---------------------------------------------------------------- P0: deploy

Step 'P0 preflight and deploy'

$state = (AdbRaw @('get-state')).Trim()
Assert ($state -eq 'device') "device online (state=$state)"
Assert ((Dev 'getprop sys.boot_completed').Trim() -eq '1') 'boot_completed=1'

$bridge = Dev "sh $D/run_bridge.sh status"
Assert ($bridge -match '"state":"running"') 'native ASR bridge is running (events.jsonl producer)'
$core = Dev 'pidof com.alibaba.ailabs.genie.smartapp:core'
Assert ($core -ne '') "factory core process alive (pid=$core)"

$localSha = (Get-FileHash (Join-Path $Android 'out\ai_worker') -Algorithm SHA256).Hash.ToLower()

# the running worker maps bin/ai_worker, so it must be stopped before the file is replaced
$stopOut = SuDev "sh $D/run_ai_worker.sh stop"
Rec "  pre-deploy stop: $(($stopOut -split "`n")[0])"
Start-Sleep -Milliseconds 800

Assert ((Push (Join-Path $Android 'out\ai_worker') '/data/local/tmp/t701_ai_worker')) 'push new ai_worker'
Assert ((SuDev "cp /data/local/tmp/t701_ai_worker $D/bin/ai_worker") -eq '') 'install ai_worker into ' 
Assert ((SuDev "chmod 755 $D/bin/ai_worker") -eq '') 'chmod 755 ai_worker'
$devSha = DevSha "$D/bin/ai_worker"
Assert ($devSha -eq $localSha) "device ai_worker sha256 matches host build ($devSha)"

Assert ((Push (Join-Path $Android 'run_ai_worker.sh') '/data/local/tmp/t701_run_ai_worker.sh')) 'push run_ai_worker.sh'
Assert ((SuDev "cp /data/local/tmp/t701_run_ai_worker.sh $D/run_ai_worker.sh") -eq '') 'install run_ai_worker.sh'
Assert ((SuDev "chmod 755 $D/run_ai_worker.sh") -eq '') 'chmod 755 run_ai_worker.sh'

Assert ((Push $ConfLocal '/data/local/tmp/t701_worker.conf')) 'push worker.conf'
Assert ((SuDev "mkdir -p $D/ai_worker") -eq '') 'ensure state dir'
Assert ((SuDev "cp /data/local/tmp/t701_worker.conf $D/ai_worker/worker.conf") -eq '') 'install worker.conf'
Assert ((SuDev "chmod 600 $D/ai_worker/worker.conf") -eq '') 'chmod 600 worker.conf'
$confText = SuCat "$D/ai_worker/worker.conf"
Assert ($confText -match 'context_enabled=1') 'conf enables the context switch'
Assert ($confText -match 'context_max_messages=\d+') 'conf sets the message limit'
Assert ($confText -match 'base_url=http://192\.168\.1\.13:8790/v1') 'conf points at the device local model proxy'
Assert ($confText -match 'model=deepseek-flash') 'conf uses model deepseek-flash'
Assert ($confText -notmatch '(?m)^\s*api_key\s*=') 'conf has no inline api_key line'
$confMode = (SuDev "ls -l $D/ai_worker/worker.conf") -replace '\s+', ' '
Assert ($confMode -match '^-rw-------') "worker.conf is 0600 (got: $confMode)"

$keyPath = '/data/local/tmp/t5_bridge/secret/deepseek_api_key'
$keyMode = (SuDev "ls -l $keyPath") -replace '\s+', ' '
Assert ($keyMode -match '^-rw-------') "api key file is 0600 (got: $keyMode)"
$keyText = (SuCat $keyPath).Trim()
Assert ($keyText.Length -ge 8) "api key file is not empty (length=$($keyText.Length), content not printed)"

$tts = SuDev "sh $D/run_tts_exec.sh status"
if ($tts -notmatch 'executor=(\d+)/alive') {
    Rec '  (tts executor was not alive; starting it)'
    $null = SuDev "sh $D/run_tts_exec.sh start"
    Start-Sleep -Seconds 3
    $tts = SuDev "sh $D/run_tts_exec.sh status"
}
Assert ($tts -match 'executor=(\d+)/alive') 'factory TTS executor is alive'

# ---------------------------------------------------------------- P1: synthetic

Step 'P1 synthetic events (mock provider, own sandbox dirs)'

function MakeEvents([int]$count, [string]$tag) {
    # event shape is the one the native bridge writes (see event_reader.c field table)
    $sb = New-Object System.Text.StringBuilder
    $now = [DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds()
    for ($i = 1; $i -le $count; $i++) {
        $text = "T7 $tag event $i"
        $bytes = [System.Text.Encoding]::UTF8.GetByteCount($text)
        $line = '{"version":1,"rec":"asr_final","event_id":"t7-' + $tag + '-' + $i + '",' +
                '"event_type":"asr_final","pid":4242,"session_id":"s1","text":"' + $text + '",' +
                '"text_bytes":' + $bytes + ',"text_chars":' + $text.Length + ',"is_final":true,' +
                '"received_at_ms":' + ($now + $i) + ',"recv_at_ms":' + ($now + $i) +
                ',"stored_at_ms":' + ($now + $i) + ',"seq":' + $i + '}'
        [void]$sb.AppendLine($line)
    }
    return $sb.ToString()
}

function ResetSandbox([string]$name, [int]$events) {
    $dir = "$SB/$name"
    $null = Dev "rm -rf $dir"
    $null = Dev "mkdir -p $dir/work $dir/state"
    $null = WriteDevFile ("ev_" + $name) (MakeEvents $events $name)
    $null = Dev "cp /data/local/tmp/t701_ev_$name.bin $dir/work/events.jsonl"
    $null = Dev "chmod 644 $dir/work/events.jsonl"
    return $dir
}

function RunMock([string]$dir, [string]$extra) {
    $cmd = "$D/bin/ai_worker --work-dir $dir/work --state-dir $dir/state " +
           "--provider mock --poll-ms 50 --idle-exit-ms 4000 --max-runtime-ms 40000 $extra"
    return (Dev $cmd)
}

function MsgCounts([string]$text) {
    $m = [regex]::Matches($text, 'req_msgs=(\d+)')
    $list = @()
    foreach ($x in $m) { $list += [int]$x.Groups[1].Value }
    return $list
}

# --- items 1-3: single / two / three turns
$dir = ResetSandbox 'turn1' 1
$out = RunMock $dir '--context 1 --context-max-messages 12'
$c = MsgCounts $out
Assert ($c.Count -ge 1 -and $c[0] -eq 1) "1) single turn sends exactly one message (msgs=$($c -join ','))"
Assert ($out -match 'context commit') '1) the turn was committed after a successful reply'

$dir2 = ResetSandbox 'turn2' 2
$out = RunMock $dir2 '--context 1 --context-max-messages 12'
$c = MsgCounts $out
Assert ($c.Count -ge 2 -and $c[0] -eq 1 -and $c[1] -eq 3) "2) two turns send 1 then 3 messages (got $($c -join ','))"

$dir3 = ResetSandbox 'turn3' 3
$out = RunMock $dir3 '--context 1 --context-max-messages 12'
$c = MsgCounts $out
Assert ($c.Count -ge 3 -and $c[0] -eq 1 -and $c[1] -eq 3 -and $c[2] -eq 5) `
    "3) three turns send 1,3,5 messages (got $($c -join ','))"
$rawCtx = ReadTextShell "$dir3/state/context.json"; $ctx = ToJson $rawCtx
Rec "  read context: chars=$($rawCtx.Length)"
if ($ctx -eq $null) {
    Rec ("  raw head = " + $rawCtx.Substring(0, [Math]::Min(160, $rawCtx.Length)))
    [System.IO.File]::WriteAllText((Join-Path $env:TEMP 't701_rawfail.txt'), $rawCtx, (New-Object System.Text.UTF8Encoding($false)))
}
$m3 = @()
if ($ctx -ne $null -and $ctx.messages -ne $null) { $m3 = @($ctx.messages) }
Assert ($m3.Count -eq 6) "3) context file holds 3 complete turns (messages=$($m3.Count))"
if ($m3.Count -eq 6) {
    Assert ($m3[0].role -eq 'user' -and $m3[1].role -eq 'assistant') `
        '3) the file is written as user/assistant pairs in order'
    Assert ($m3[0].content -match 'event 1' -and $m3[2].content -match 'event 2' -and `
            $m3[4].content -match 'event 3') '3) the three questions are stored in order'
}
$mode = (Dev "ls -l $dir3/state/context.json") -replace '\s+', ' '
Assert ($mode -match '^-rw-------') "3) context file is 0600 (got: $mode)"

# --- item 4: restart restores the history
$out = RunMock $dir3 '--context 1 --context-max-messages 12 --max-events 0 --max-runtime-ms 1500'
Assert ($out -match 'restored_msgs=6') '4) restart reports restored_msgs=6'
Assert ($out -match 'restored_turns=3') '4) restart reports restored_turns=3'
Assert ($out -match 'load=restored') '4) restart reports load=restored'

# --- item 5: eviction drops whole turns, never an orphan reply
$dir = ResetSandbox 'evict' 5
$null = Dev "rm -f $dir/state/context.json"
$c = @()
for ($i = 1; $i -le 5; $i++) {
    $out = RunMock $dir '--context 1 --context-max-messages 4 --max-events 1'
    $c += (MsgCounts $out)
}
$flat = $c | ForEach-Object { $_ }
Assert ($flat[0] -eq 1 -and $flat[1] -eq 3) "5) messages grow 1,3 then stop at the limit (got $($flat -join ','))"
Assert ($flat[-1] -eq 5) "5) after the limit every request sends 5 messages = 4 kept + current (got $($flat[-1]))"
$rawCtx = ReadTextShell "$dir/state/context.json"; $ctx = ToJson $rawCtx; Rec "  read context: chars=$($rawCtx.Length)"
$m5 = @()
if ($ctx -ne $null -and $ctx.messages -ne $null) { $m5 = @($ctx.messages) }
Assert ($m5.Count -eq 4) "5) only 4 messages are kept (messages=$($m5.Count))"
if ($m5.Count -eq 4) {
    Assert ($m5[0].role -eq 'user') '5) the oldest kept message is a user message (no orphan assistant)'
    Assert ($m5[0].content -match 'event 4') '5) the oldest turn (event 1,2,3) was evicted first'
}
$out2 = RunMock $dir '--context 1 --context-max-messages 4 --max-events 0 --max-runtime-ms 1500'
Assert ($out2 -match 'context: enabled=1 max_msgs=4') '5) the limit survives a restart'

# --- item 6: context off = every turn independent
$dir = ResetSandbox 'off' 3
$out = RunMock $dir '--context 0'
$c = MsgCounts $out
Assert ($c.Count -ge 3 -and ($c | Where-Object { $_ -ne 1 }).Count -eq 0) `
    "6) every request sends exactly one message (got $($c -join ','))"
Assert ($out -notmatch 'context commit') '6) nothing is committed to the history'
$hasCtx = Dev "ls $dir/state/context.json 2>/dev/null"
Assert ($hasCtx -eq '') '6) no context file is created when the switch is off'

# --- item 7: provider failures never pollute the history
$dir = ResetSandbox 'fail' 3
$out = RunMock $dir '--context 1 --context-max-messages 12 --mock-fail-from 2 --max-runtime-ms 6000'
$rawCtx = ReadTextShell "$dir/state/context.json"; $ctx = ToJson $rawCtx; Rec "  read context: chars=$($rawCtx.Length)"
Assert ($out -match 'stuck after \d+ attempts|mock failure at call') '7) the second event really failed at the provider'
$m7 = @()
if ($ctx -ne $null -and $ctx.messages -ne $null) { $m7 = @($ctx.messages) }
Assert ($m7.Count -eq 2) "7) only the successful turn is stored (messages=$($m7.Count))"
if ($m7.Count -eq 2) {
    Assert ($m7[1].content -notmatch 'error|failed') '7) no error text leaked into the assistant reply'
}
Assert ($out -match 'keeping it|offset kept at') '7) the failed event is kept and retried, not skipped'

# --- item 8: corrupt context file is recovered, the worker still starts
$dir = ResetSandbox 'corrupt' 2
$null = Dev "mkdir -p $dir/state"
$null = WriteDevFile 'corrupt' '{"version":1,"messages":[{"role":"user","content":'
$null = Dev "cp /data/local/tmp/t701_corrupt.bin $dir/state/context.json"
$out = RunMock $dir '--context 1 --context-max-messages 12'
Assert ($out -match 'load=recovered') '8) the corrupt file is reported as recovered'
Assert ($out -match 'previous file unusable') '8) the reason is logged (no crash, no exit)'
Assert ($out -match 'context commit') '8) the worker keeps working after the recovery'
$rawCtx = ReadTextShell "$dir/state/context.json"; $ctx = ToJson $rawCtx; Rec "  read context: chars=$($rawCtx.Length)"
$m8 = @()
if ($ctx -ne $null -and $ctx.messages -ne $null) { $m8 = @($ctx.messages) }
Assert ($m8.Count -eq 4) "8) a fresh file was written (2 new turns, messages=$($m8.Count))"
$backup = Dev "ls $dir/state/context.json.corrupt"
Assert ($backup -ne '') '8) the broken file was kept as context.json.corrupt'

# ---------------------------------------------------------------- P2: real voice

if ($SkipVoice) {
    Step 'P2/P3 real voice: SKIPPED by -SkipVoice'
} else {
    Step 'P2 real voice: three continuous turns through ASR -> model -> TTS'

    # the worker is stopped here (P0 stopped it): clear through the offline path first
    $clear0 = SuDev "sh $D/run_ai_worker.sh clear-context"
    Rec "  clear-context (worker stopped): $clear0"
    Assert ($clear0 -match 'context cleared: file=') 'the context can be cleared while the worker is stopped'

    # 12 = up to 6 turns, so a stray ASR artefact cannot push the three intended turns out
    $run1 = SuDev "sh $D/run_ai_worker.sh start-deepseek --context-max-messages 12"
    Rec "  start: $(($run1 -split "`n")[0])"
    Assert ($run1 -match 'context: enabled=1') 'the real worker starts with the context switch on'
    Assert ($run1 -match 'load=empty') 'the context starts empty for this run'
    Assert ($run1 -match 'max_msgs=12') 'the CLI limit overrides the config file'

    $clear = SuDev "sh $D/run_ai_worker.sh clear-context"
    Rec "  clear-context (worker running): $clear"
    Assert ($clear -match 'context cleared \(running worker') 'the context can be cleared while the worker runs'
    $wlogClear = SuCat "$D/ai_worker/ai_worker.log"
    Assert ($wlogClear -match 'context cleared on request') 'the running worker logged the clear request'
    Start-Sleep -Seconds 1
    $afterClear = ReadTextRoot "$D/ai_worker/context.json"
    $afterCtx = ToJson $afterClear
    $afterMsgs = 0
    if ($afterCtx -ne $null -and $afterCtx.messages -ne $null) { $afterMsgs = @($afterCtx.messages).Count }
    Rec "  context after clear: chars=$($afterClear.Length) messages=$afterMsgs"
    $oldTurn = $false
    if ($afterCtx -ne $null -and $afterCtx.messages -ne $null) {
        foreach ($m in @($afterCtx.messages)) {
            if ($m.role -eq 'user' -and $m.content -match '东京有什么好玩|有什么好吃的|推荐个景点') { $oldTurn = $true }
        }
    }
    Assert (-not $oldTurn) 'no turn from the previous conversation survives the clear'

    function TtsIdle {
        for ($i = 0; $i -lt 60; $i++) {
            $q = SuDev "ls $D/tts/queue $D/tts/inflight"
            $n = (@($q -split "`n" | Where-Object { $_ -match '\.wav' })).Count
            if ($n -eq 0) { return $true }
            Start-Sleep -Seconds 1
        }
        return $false
    }

    # the command clips already start with the wake phrase, so they are played alone:
    # playing wake + command as two clips makes the factory ASR finalise "天猫精灵" as its own event
    # the command clip already contains the wake phrase; a real silent clip keeps the mic stream
    # alive after the phrase so the factory ASR can finalise instead of cutting the tail
    function PlayTurn([string]$wav, [int]$postGap = 3000) {
        $plan = "$Wake`:3000,$wav`:200,$Silence`:$postGap"
        $null = & powershell.exe -NoProfile -STA -File $Player -Plan $plan 2>&1 | Out-String
    }

    function ContextState {
        $raw = ReadTextRoot "$D/ai_worker/context.json"
        return (ToJson $raw)
    }

    # several phrasings per turn: the factory ASR is acoustic, so a failed take is retried
    # with a different wording instead of repeating the same clip
    # wake clip, 3 s pause, then the command clip (the clips carry no wake phrase)
    $turns = @(
        @{ key = '东京'; name = 'turn 1 (Tokyo intro)'
           wavs = @((Join-Path $StimDir 'k1.wav'), (Join-Path $StimDir 'k1b.wav')) },
        @{ key = '好吃'; name = 'turn 2 (food, city not named)'
           wavs = @((Join-Path $StimDir 'k2.wav'), (Join-Path $StimDir 'k2b.wav')) },
        @{ key = '景点'; name = 'turn 3 (attraction, city not named)'
           wavs = @((Join-Path $StimDir 'k3.wav'), (Join-Path $StimDir 'k3b.wav')) }
    )

    $evPath = "$D/work/events.jsonl"
    $idx = 0
    foreach ($t in $turns) {
        $idx++
        $before = DevLines $evPath
        $beforeCtx = ContextState
        $beforeTurns = 0
        if ($beforeCtx -ne $null) { $beforeTurns = [int](@($beforeCtx.messages | Where-Object { $_.role -eq 'user' }).Count) }
        $got = $false
        for ($try = 1; $try -le 8 -and -not $got; $try++) {
            $null = TtsIdle
            Start-Sleep -Seconds 8
            $clip = $t.wavs[($try - 1) % $t.wavs.Count]
            PlayTurn $clip
            Start-Sleep -Seconds 16
            $now = DevLines $evPath
            if ($now -gt $before) {
                $last = ToJson (Dev "tail -1 $evPath")
                $txt = [string]$last.text
                if ($txt -match $t.key) {
                    $got = $true
                    Rec "  spoke $($t.name): ASR text = '$txt' (attempt ${try})"
                } else {
                    Rec "  attempt ${try} produced unrelated ASR text '$txt' (want '$($t.key)')"
                }
            } else {
                Rec "  attempt ${try}: no new ASR event"
            }
        }
        Assert $got "$($t.name) recognised by the factory ASR"

        if ($got) {
            $ok = $false
            for ($w = 0; $w -lt 40; $w++) {
                $ctx = ContextState
                if ($ctx -ne $null) {
                    $u = [int](@($ctx.messages | Where-Object { $_.role -eq 'user' }).Count)
                    if ($u -gt $beforeTurns) { $ok = $true; break }
                }
                Start-Sleep -Seconds 1
            }
            Assert $ok "$($t.name) committed to the context"
            $null = TtsIdle
        }
    }

    $ctx = ContextState
    Assert ($ctx -ne $null) 'context file parses after the three turns'
    if ($ctx -ne $null) {
        $msgs = @($ctx.messages)
        $users = @($msgs | Where-Object { $_.role -eq 'user' })
        $assist = @($msgs | Where-Object { $_.role -eq 'assistant' })
        Rec "  stored: $($msgs.Count) messages, $($users.Count) user / $($assist.Count) assistant"
        Assert ($users.Count -eq $assist.Count) 'user and assistant messages are balanced (no half turn)'
        Assert ($msgs.Count -le 12) 'the stored history respects the configured limit'

        # build explicit (user, assistant) pairs: a stray ASR artefact must not shift the mapping
        $pairs = @()
        for ($k = 0; $k -lt $msgs.Count - 1; $k++) {
            if ($msgs[$k].role -eq 'user' -and $msgs[$k + 1].role -eq 'assistant') {
                $pairs += , @(@{ u = [string]$msgs[$k].content; a = [string]$msgs[$k + 1].content })
            }
        }
        Assert ($pairs.Count -ge 3) "at least three complete (user, assistant) pairs are stored (got $($pairs.Count))"

        $p1 = -1; $p2 = -1; $p3 = -1
        for ($k = 0; $k -lt $pairs.Count; $k++) {
            if ($p1 -lt 0 -and $pairs[$k].u -match '东京') { $p1 = $k }
            elseif ($p1 -ge 0 -and $p2 -lt 0 -and $pairs[$k].u -match '好吃') { $p2 = $k }
            elseif ($p2 -ge 0 -and $p3 -lt 0 -and $pairs[$k].u -match '景点') { $p3 = $k }
        }
        Assert ($p1 -ge 0) 'turn 1 question (Tokyo) is stored'
        Assert ($p2 -gt $p1) 'turn 2 question (food) is stored after turn 1'
        Assert ($p3 -gt $p2) 'turn 3 question (attraction) is stored after turn 2'

        if ($p1 -ge 0 -and $p2 -ge 0 -and $p3 -ge 0) {
            Assert ($pairs[$p2].u -notmatch '东京') 'turn 2 never names the city (history was required)'
            Assert ($pairs[$p3].u -notmatch '东京') 'turn 3 never names the city (history was required)'
            Rec "  turn 1: Q='$($pairs[$p1].u)'"
            Rec "          A='$($pairs[$p1].a)'"
            Rec "  turn 2: Q='$($pairs[$p2].u)'"
            Rec "          A='$($pairs[$p2].a)'"
            Rec "  turn 3: Q='$($pairs[$p3].u)'"
            Rec "          A='$($pairs[$p3].a)'"
            Assert ($pairs[$p1].a -ne '') 'turn 1 reply is stored'
            Assert ($pairs[$p2].a -ne '') 'turn 2 reply is stored'
            Assert ($pairs[$p3].a -ne '') 'turn 3 reply is stored'
            Assert ($pairs[$p2].a -match '东京|日本|寿司|拉面|海鲜|天妇罗|烧肉|料理|吃') `
                'reply 2 talks about Tokyo food (turn 1 context was used)'
            Assert ($pairs[$p3].a -match '东京|日本|明治|原宿|浅草|涩谷|新宿|上野|塔|迪士尼|神社|公园|博物馆|台场|秋叶原') `
                'reply 3 names a Tokyo place although turn 3 never said the city'
        }
    }
    $wlog = SuCat "$D/ai_worker/ai_worker.log"
    $c = MsgCounts $wlog
    Rec "  req_msgs sequence: $($c -join ',')"
    Assert ($c.Count -ge 3) 'the worker logged at least three provider requests'
    Assert ($c[0] -eq 1) "the first request carried no history (req_msgs=$($c[0]))"
    Assert (($c[-1]) -ge 3) "the last request carried history (req_msgs=$($c[-1]))"
    Assert ($wlog -match 'http=200') 'the local model proxy answered with HTTP 200'
    Assert ($wlog -match 'tts queued') 'each answer was handed to the factory TTS queue'

    $journal = SuCat "$D/tts/journal.jsonl"
    $okLines = @(($journal -split "`n") | Where-Object { $_ -match '"outcome":"ok"' })
    Assert ($okLines.Count -ge 3) "the factory TTS played at least three answers (outcome ok x$($okLines.Count))"

    # ------------------------------------------------------------ P3: restart
    Step 'P3 restart: history is restored from disk'

    $preCtx = ContextState
    $preMsgs = 0
    $preTurns = 0
    if ($preCtx -ne $null) {
        $preMsgs = @($preCtx.messages).Count
        $preTurns = @($preCtx.messages | Where-Object { $_.role -eq 'user' }).Count
    }
    Rec "  before restart: messages=$preMsgs turns=$preTurns"
    Assert ($preTurns -ge 3) "at least three turns are on disk before the restart ($preTurns)"

    $null = SuDev "sh $D/run_ai_worker.sh stop"
    Start-Sleep -Seconds 2
    $startOut = SuDev "sh $D/run_ai_worker.sh start-deepseek --context-max-messages 12"
    Rec "  start: $(($startOut -split "`n")[0])"
    Assert ($startOut -match 'context: enabled=1') 'the restarted worker has the context switch on'
    Assert ($startOut -match "restored_msgs=$preMsgs") "restart restored all $preMsgs messages"
    Assert ($startOut -match "restored_turns=$preTurns") "restart restored all $preTurns turns"
    Assert ($startOut -match 'load=restored') 'restart load state is "restored"'

    Start-Sleep -Seconds 2
    $rawSt = ReadTextRoot "$D/ai_worker/ai_worker_status.json"; $status = ToJson $rawSt; Rec "  read status: chars=$($rawSt.Length)"
    Assert ($status -ne $null) 'status file parses'
    if ($status -ne $null) {
        Assert ($status.context.enabled -eq 1) 'status: context.enabled = 1'
        Assert ($status.context.turns -eq $preTurns) "status: context.turns = $preTurns"
        Assert ($status.context.messages -eq $preMsgs) "status: context.messages = $preMsgs"
        Assert ($status.context.load_state -eq 2) 'status: context.load_state = 2 (restored)'
        Assert ($status.context.save_errors -eq 0) 'status: no context save errors'
    }
}

Step 'P4 credential hygiene'

$wlog  = SuCat "$D/ai_worker/ai_worker.log"
$st    = SuCat "$D/ai_worker/ai_worker_status.json"
$ctx   = SuCat "$D/ai_worker/context.json"
$conf  = SuCat "$D/ai_worker/worker.conf"
Assert (-not $wlog.Contains($keyText)) 'the api key does not appear in the worker log'
Assert (-not $st.Contains($keyText)) 'the api key does not appear in the status file'
Assert (-not $ctx.Contains($keyText)) 'the api key does not appear in the context file'
Assert (-not $conf.Contains($keyText)) 'the api key does not appear in the config file'
Assert (($wlog + $st) -notmatch 'Authorization|Bearer ') 'no Authorization header is logged'
Assert ($wlog -notmatch 'sk-[A-Za-z0-9]{8}') 'no key-shaped token is logged'

$elapsed = [int]((Get-Date) - $script:T0).TotalSeconds
Rec ''
Rec "SUMMARY: pass=$($script:Pass) fail=$($script:Fail) elapsed=${elapsed}s"
if ($script:Fail -eq 0) {
    Rec 'RESULT: PASS'
    exit 0
}
Rec 'RESULT: FAIL'
exit 1
