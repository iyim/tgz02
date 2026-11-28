# run_t9_29_registry_tests.ps1 -- T9-29 P0：统一技能注册表（host 端到端，零设备）
#
#   powershell -ExecutionPolicy Bypass -File run_t9_29_registry_tests.ps1
#
# 证明三件事（对应 P0 交付要求的"默认关闭行为不变 + Shadow 只统计"）：
#   1) 注册表默认关闭：行为与 T9-26 一致（route=skill 照旧、TTS 入队照旧），
#      日志里**没有任何** registry 行；
#   2) 注册表打开且 Shadow：同样的输入产出同样的执行结果（队列文件数、route 计数一致），
#      但额外出现 registry 初始化行、SHADOW match 行，并写出 registry.public.json；
#   3) 清单把 time.query 关掉：注册表给出 diff(-reg)，而**生产路径仍然照旧执行**
#      —— 这就是 Shadow 的定义：只统计，不接管。
#
# 用 time.query 做样例的原因：它是纯本地计算（t8_skill_time_exec），不碰设备、不碰网络，
# 在 Windows host 上可完整跑通"意图 -> 技能 -> TTS 队列"这条链。
#
# NOTE: keep this file ASCII-only (PowerShell 5.1 reads a BOM-less file as ANSI).
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
$E2e = Join-Path $Out "t9_29"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null
New-Item -ItemType Directory -Force $E2e | Out-Null

$Log = Join-Path $Ev "t9_29_registry_host_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }

$script:Pass = 0
$script:Fail = 0
function Pass([string]$s) { $script:Pass++; Log ("  PASS " + $s) }
function Fail([string]$s) { $script:Fail++; Log ("  FAIL " + $s) }
function Check([bool]$cond, [string]$s) { if ($cond) { Pass $s } else { Fail $s } }

Log "# T9-29 P0 registry host test"
Log ("# host time: " + (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'))
Log ""

$Base = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-I", $Android)
$LibSrc = @(
    "worker_util.c", "event_reader.c", "consumer_state.c", "seq_gap.c", "conv_context.c",
    "worker_conf.c", "worker_status.c", "echo_filter.c", "intent_route.c", "utterance_gate.c",
    "conv_session.c", "t7_dup.c", "session_ctrl.c", "skill_dispatch.c", "dead_letter.c",
    "skill_registry.c", "skill_manifest.c", "skill_ownership.c", "own_token.c",
    "provider.c", "mock_provider.c", "deepseek_provider.c", "talk_tap.c", "tg_inbox.c",
    "ui_events.c", "alarm_skill.c", "tg_http.c", "model_provider.c", "model_cfg.c",
    "model_json.c", "doubao_provider.c", "openai_provider.c", "qwen_provider.c", "model_call.c"
) | ForEach-Object { Join-Path $Android $_ }
$WorkerSrc = @((Join-Path $Android "ai_worker.c")) + $LibSrc

function Build([string]$exe, [string[]]$sources) {
    $argv = $Base + @("-o", $exe) + $sources
    $text = & $Gcc @argv 2>&1 | Out-String
    if ($text.Trim().Length -gt 0) { Log $text.TrimEnd() }
    if ($LASTEXITCODE -ne 0) { throw "build failed: $exe (exit $LASTEXITCODE)" }
    if ($text.Trim().Length -eq 0) { Log ("  build ok (0 warning): " + (Split-Path $exe -Leaf)) }
}

Log "# --- build ---"
$WorkerExe = Join-Path $Out "ai_worker_t929.exe"
Build $WorkerExe $WorkerSrc

$UnitExe = Join-Path $Out "t9_29_registry_unit_test.exe"
Build $UnitExe @((Join-Path $Here "t9_29_registry_unit_test.c"),
                 (Join-Path $Android "skill_registry.c"),
                 (Join-Path $Android "skill_manifest.c"),
                 (Join-Path $Android "worker_util.c"),
                 (Join-Path $Android "model_json.c"),
                 (Join-Path $Android "intent_route.c"),
                 (Join-Path $Android "echo_filter.c"),
                 (Join-Path $Android "skill_dispatch.c"))

Log ""
Log "# --- C contract test ---"
Push-Location $Out
$unitOut = & $UnitExe 2>&1 | Out-String
Pop-Location
($unitOut.TrimEnd() -split "`r?`n") | ForEach-Object { Log ("  | " + $_) }
Check ($LASTEXITCODE -eq 0) "registry/manifest contract test exits 0"
Check ($unitOut -match "FAIL 0") "contract test reports FAIL 0"

# ---------------------------------------------------------------- helpers
function New-Event([int]$seq, [string]$eid, [string]$text, [string]$session) {
    $o = [ordered]@{
        version = 1; rec = "asr_final"; event_id = $eid; event_type = "asr_final"
        pid = 4242; session_id = $session; text = $text
        text_bytes = [Text.Encoding]::UTF8.GetByteCount($text); text_chars = $text.Length
        is_final = $true; received_at_ms = 1000 + $seq; recv_at_ms = 2000 + $seq
        stored_at_ms = 3000 + $seq; seq = $seq
    }
    return ($o | ConvertTo-Json -Compress -Depth 4)
}

function New-Case([string]$name, [string[]]$confLines, [string[]]$events) {
    $dir = Join-Path $E2e $name
    Remove-Item -Recurse -Force $dir -ErrorAction SilentlyContinue
    New-Item -ItemType Directory -Force (Join-Path $dir "work") | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $dir "tts\control") | Out-Null
    New-Item -ItemType Directory -Force (Join-Path $dir "state") | Out-Null
    $enc = New-Object Text.UTF8Encoding($false)
    $evText = if ($events.Count -gt 0) { ($events -join "`n") + "`n" } else { "" }
    [IO.File]::WriteAllText((Join-Path $dir "work\events.jsonl"), $evText, $enc)
    [IO.File]::WriteAllText((Join-Path $dir "worker.conf"), (($confLines -join "`n") + "`n"), $enc)
    return $dir
}

function Run-Case([string]$dir) {
    # 工作进程会往 stderr 打日志（这是正常输出，不是错误）；本函数必须让它们穿过
    $prev = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    try {
    $wargs = @("--conf", (Join-Path $dir "worker.conf"),
               "--work-dir", (Join-Path $dir "work"),
               "--state-dir", (Join-Path $dir "state"),
               "--provider", "mock",
               "--no-models",
               "--tts-queue-dir", (Join-Path $dir "tts"),
               "--gate", "0",
               "--poll-ms", "10",
               "--status-every-ms", "100",
               "--provider-retry-max", "3",
               "--provider-backoff-ms", "200",
               "--provider-backoff-max-ms", "400",
               "--idle-exit-ms", "900",
               "--max-runtime-ms", "9000")
    $out = & $WorkerExe @wargs 2>&1 | Out-String
    return $out
    } finally {
        $ErrorActionPreference = $prev
    }
}

function Count-Queue([string]$dir) {
    $q = Join-Path $dir "tts"
    return @(Get-ChildItem -Recurse $q -File -Filter *.json -ErrorAction SilentlyContinue |
             Where-Object { $_.DirectoryName -match 'queue$' }).Count
}

# "what time is it" built from code points so this script stays ASCII
$TimeText = [regex]::Unescape('\u73b0\u5728\u51e0\u70b9')

$Common = @(
    "provider=mock"
    "context_enabled=0"
    "route_native=1"
    "route_intents=volume,weather,screen_off,time,screen_on,media,stop,exit"
    "gate=0"
    "skill_dispatch_enabled=1"
    "skill_time_enabled=1"
    "echo_filter=0"
    "models_required=0"
)

# ---------------------------------------------------------------- case A: registry OFF
Log ""
Log "# --- case A: registry DISABLED (default) ---"
$dirA = New-Case "A_off" $Common @((New-Event 1 "e-a-1" $TimeText "s-a"))
$outA = Run-Case $dirA
($outA.TrimEnd() -split "`r?`n" | Where-Object { $_ -match 'skill|route=|registry' } |
    Select-Object -First 8) | ForEach-Object { Log ("  | " + $_) }

Check ($outA -match 'route=skill skill=time\.query') "A: time is claimed by the skill"
Check (-not ($outA -match 'registry SHADOW|registry: enabled=1')) `
    "A: no registry decision and no table (fully inert; only the DISABLED line)"
Check ((Count-Queue $dirA) -eq 1) "A: exactly one TTS item queued"
Check (-not (Test-Path (Join-Path $dirA "state\registry.public.json"))) "A: no registry snapshot written"

# ---------------------------------------------------------------- case B: registry ON + shadow
Log ""
Log "# --- case B: registry ENABLED + shadow ---"
$confB = $Common + @("skill_registry_enabled=1", "skill_registry_shadow=1")
$dirB = New-Case "B_shadow" $confB @((New-Event 1 "e-b-1" $TimeText "s-b"))
$outB = Run-Case $dirB
($outB.TrimEnd() -split "`r?`n" | Where-Object { $_ -match 'skill|route=|registry' } |
    Select-Object -First 14) | ForEach-Object { Log ("  | " + $_) }

Check ($outB -match 'registry: enabled=1 shadow=1') "B: registry initialised"
Check ($outB -match 'registry: time\.query\s+owner=local\s+on=1') "B: time.query registered as local/on"
Check ($outB -match 'registry SHADOW match: event=e-b-1') "B: shadow match logged for the event"
Check ($outB -match 'route=skill skill=time\.query') "B: execution path unchanged (still route=skill)"
Check ((Count-Queue $dirB) -eq 1) "B: same number of TTS items as A"
Check (Test-Path (Join-Path $dirB "state\registry.public.json")) "B: registry snapshot written"
if (Test-Path (Join-Path $dirB "state\registry.public.json")) {
    $snap = Get-Content (Join-Path $dirB "state\registry.public.json") -Raw | ConvertFrom-Json
    Check ($snap.count -ge 12) "B: snapshot lists the whole table"
    Check (($snap.skills | Where-Object { $_.id -eq "time.query" }).owner -eq "local") `
        "B: snapshot marks time.query local"
    Check (($snap.skills | Where-Object { $_.id -eq "weather.query" }).owner -eq "factory") `
        "B: snapshot keeps weather factory"
}

# ---------------------------------------------------------------- case C: manifest narrows
Log ""
Log "# --- case C: manifest disables time.query (shadow must NOT take over) ---"
$confC = $confB
$dirC = New-Case "C_manifest" $confC @((New-Event 1 "e-c-1" $TimeText "s-c"))
$enc = New-Object Text.UTF8Encoding($false)
[IO.File]::WriteAllText((Join-Path $dirC "state\skills.json"),
    '{"v":1,"skills":[{"id":"time.query","enabled":0,"desc":"manifest narrowed"}]}', $enc)
$outC = Run-Case $dirC
($outC.TrimEnd() -split "`r?`n" | Where-Object { $_ -match 'registry|route=' } |
    Select-Object -First 12) | ForEach-Object { Log ("  | " + $_) }

Check ($outC -match 'registry: manifest loaded') "C: manifest loaded from state dir"
Check ($outC -match 'registry SHADOW diff\(-reg\): event=e-c-1') `
    "C: shadow reports the disagreement (registry says no)"
Check ($outC -match 'route=skill skill=time\.query') "C: production path still executes (shadow only)"
Check ((Count-Queue $dirC) -eq 1) "C: still exactly one TTS item"
if (Test-Path (Join-Path $dirC "state\registry.public.json")) {
    $snapC = Get-Content (Join-Path $dirC "state\registry.public.json") -Raw | ConvertFrom-Json
    Check (($snapC.skills | Where-Object { $_.id -eq "time.query" }).on -eq 0) `
        "C: snapshot shows time.query off after manifest narrowing"
}

# Independent PowerShell re-implementation of own_token() (FNV-1a 64 over UTF-8 bytes).
# Why not call the C helper: PowerShell -> native argv goes through the ANSI code page,
# so a Chinese utterance would arrive mangled and the token would not match the worker.
function Get-OwnToken([string]$session, [string]$text, [long]$gen) {
    $u8 = [Text.Encoding]::UTF8
    $bytes = @()
    $bytes += $u8.GetBytes($session)
    $bytes += [byte]0x1f
    $t = $text
    $tb = $u8.GetBytes($t)
    if ($tb.Length -gt 511) { $tb = $tb[0..510] }
    $bytes += $tb
    $bytes += [byte]0x1f
    $bytes += $u8.GetBytes([string]$gen)
    $mask = [Numerics.BigInteger]::Pow(2, 64) - 1
    $h = [Numerics.BigInteger]1469598103934665603
    foreach ($b in $bytes) {
        $h = ($h -bxor [Numerics.BigInteger]$b) * [Numerics.BigInteger]1099511628211
        $h = $h -band $mask
    }
    $hex = $h.ToString("x")
    if ($hex.Length -gt 8) { $hex = $hex.Substring($hex.Length - 8) }
    return $hex.PadLeft(8, "0")
}
# ---------------------------------------------------------------- case D/E: ownership gate
function Invoke-OwnershipCase([string]$name, [string]$session, [string]$eid, [bool]$writeAck) {
    $conf = $Common + @("skill_registry_enabled=1", "skill_registry_shadow=1",
                        "skill_ownership_enabled=1",
                        ("ownership_dir=" + (Join-Path $E2e "$name\own")))
    $dir = New-Case $name $conf @()
    $prev = $ErrorActionPreference
    $ErrorActionPreference = "Continue"
    $proc = Start-Process -FilePath $WorkerExe -PassThru -NoNewWindow `
        -RedirectStandardOutput (Join-Path $dir "w.out") `
        -RedirectStandardError (Join-Path $dir "w.err") `
        -ArgumentList @("--conf", (Join-Path $dir "worker.conf"),
                       "--work-dir", (Join-Path $dir "work"),
                       "--state-dir", (Join-Path $dir "state"),
                       "--provider", "mock", "--no-models",
                       "--tts-queue-dir", (Join-Path $dir "tts"),
                       "--gate", "0", "--poll-ms", "20", "--status-every-ms", "100",
                       "--idle-exit-ms", "4000", "--max-runtime-ms", "15000")
    # 必须等过 not_before（1500ms 延迟生效），否则闸门以 lease 拒绝，测不到 ack 分支
    Start-Sleep -Milliseconds 1900
    $tablePath = Join-Path $dir "own\ownership.json"
    if ($writeAck -and (Test-Path $tablePath)) {
        $tbl = Get-Content $tablePath -Raw | ConvertFrom-Json
        $tok = Get-OwnToken $session $TimeText ([long]$tbl.gen)
        $ack = @{ v = 1; proto = 2; gen = $tbl.gen; state = "active"; build = "";
                  rules_hash = $tbl.rules_hash; boot_ms = $tbl.boot_ms;
                  decisions = @(@{ tok = $tok; d = "take"; t = $tbl.boot_ms }) } |
               ConvertTo-Json -Compress -Depth 6
        [IO.File]::WriteAllText((Join-Path $dir "own\ownership.ack.json"), $ack,
                                (New-Object Text.UTF8Encoding($false)))
        Log ("  ack: gen=" + $tbl.gen + " tok=" + $tok + " hash=" + $tbl.rules_hash)
    }
    [IO.File]::AppendAllText((Join-Path $dir "work\events.jsonl"),
        ((New-Event 1 $eid $TimeText $session) + "`n"), (New-Object Text.UTF8Encoding($false)))
    $proc.WaitForExit(12000) | Out-Null
    $out = ((Get-Content (Join-Path $dir "w.out") -Raw -ErrorAction SilentlyContinue) +
            (Get-Content (Join-Path $dir "w.err") -Raw -ErrorAction SilentlyContinue))
    $ErrorActionPreference = $prev
    ($out -split "`r?`n" | Where-Object { $_ -match 'ownership|route=|skill ok' } |
        Select-Object -First 12) | ForEach-Object { Log ("  | " + $_) }
    return @{ dir = $dir; out = $out }
}

Log ""
Log "# --- case D: ownership ON but no hook ack -> local skill must NOT execute ---"
$D = Invoke-OwnershipCase "D_noack" "s-d" "e-d-1" $false
Check ($D.out -match 'ownership: ACTIVE gen=') "D: ownership table written"
Check (Test-Path (Join-Path $D.dir "own\ownership.json")) "D: ownership.json exists"
Check ($D.out -match 'ownership GATE: event=e-d-1 skill=time\.query rejected \(no-ack\)') `
    "D: gate rejects without ack"
Check (-not ($D.out -match 'route=skill skill=time\.query')) "D: local skill NOT executed"
Check ((Count-Queue $D.dir) -eq 0) "D: nothing queued locally (no double answer)"
Check ($D.out -match 'route=native intent=time') "D: fell through to the factory (I2: not silent)"

Log ""
Log "# --- case E: ownership ON + matching ack (take token) -> execute ---"
$E = Invoke-OwnershipCase "E_ack" "s-e" "e-e-1" $true
Check (-not ($E.out -match 'ownership GATE')) "E: gate did NOT reject (ack + token match)"
Check ($E.out -match 'route=skill skill=time\.query') "E: local skill executed"
Check ((Count-Queue $E.dir) -eq 1) "E: exactly one TTS item queued"
# ---------------------------------------------------------------- summary
Log ""
Log ("# result: PASS " + $script:Pass + "  FAIL " + $script:Fail)
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ""
Write-Host ("log: " + $Log)
if ($script:Fail -ne 0) { exit 1 }
exit 0
