# run_t8_05_host_tests.ps1 -- T8-05: switch + patch transaction tests, plus source
# assertions for the two parts that cannot run on the host (hook agent wiring and
# injector control channel).
#
#   powershell -ExecutionPolicy Bypass -File run_t8_05_host_tests.ps1
#
# Host only (TDM-GCC + pthread). Does not re-run the older suites.
# Artifacts: tests/out/t8_05_switch_test.exe, tests/out/t8_05_patch_test.exe
#            evidence/t8_05_host_test.log
# NOTE: keep this file ASCII-only (PowerShell 5.1 reads a BOM-less file as ANSI).
$ErrorActionPreference = "Stop"

$Gcc = "C:\TDM-GCC-64\bin\gcc.exe"
if (-not (Test-Path $Gcc)) { throw "gcc not found: $Gcc" }

$Here = $PSScriptRoot
$Root = Split-Path $Here -Parent
$Android = Join-Path $Root "android"
$Ev = Join-Path $Root "evidence"
$Out = Join-Path $Here "out"
New-Item -ItemType Directory -Force $Out | Out-Null
New-Item -ItemType Directory -Force $Ev | Out-Null

$Log = Join-Path $Ev "t8_05_host_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }
$script:Fail = 0
function Fail([string]$why) { $script:Fail++; Log "FAIL $why" }
function Pass([string]$why) { Log "PASS $why" }

Log "# T8-05 host test log (switch + patch transaction)"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

# ---------------------------------------------------------------- build + run
$Cases = @(
    @{ name = "t8_05_switch_test"; src = @("t8_05_switch_test.c", "nlu_switch.c") },
    @{ name = "t8_05_patch_test";  src = @("t8_05_patch_test.c",  "nlu_patch.c")  }
)

foreach ($c in $Cases) {
    $Exe = Join-Path $Out ($c.name + ".exe")
    $Src = @()
    foreach ($s in $c.src) {
        if (Test-Path (Join-Path $Here $s)) { $Src += (Join-Path $Here $s) }
        else { $Src += (Join-Path $Android $s) }
    }
    $Argv = @("-O2", "-Wall", "-Wextra", "-std=gnu99", "-pthread", "-I", $Android, "-o", $Exe) + $Src

    Log ("=== build " + $c.name + " ===")
    Log ("gcc " + ($Argv -join " "))
    $build = & $Gcc @Argv 2>&1 | Out-String
    $brc = $LASTEXITCODE
    if ($build.Trim().Length -gt 0) { ($build.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ } }
    else { Log "(no compiler output: 0 warning, 0 error)" }
    if ($brc -ne 0) {
        Fail ("build failed: " + $c.name + " (exit " + $brc + ")")
        continue
    }
    if ($build -match 'warning\s*:') { Fail ("compiler warnings in " + $c.name) }
    else { Pass ($c.name + ": 0 warning / 0 error") }

    Log ""
    Log ("=== run " + $c.name + " ===")
    $run = & $Exe 2>&1 | Out-String
    $rrc = $LASTEXITCODE
    ($run.TrimEnd() -split "`r?`n") | ForEach-Object { Log $_ }
    Log ("exit : " + $rrc)
    if ($run -notmatch 'pass=(\d+) fail=(\d+)') { Fail ($c.name + ": unreadable summary") }
    elseif ([int]$Matches[2] -ne 0) { Fail ($c.name + ": " + $Matches[2] + " failing assertion(s)") }
    elseif ($rrc -ne 0) { Fail ($c.name + ": non-zero exit") }
    else { Pass ($c.name + ": " + $Matches[1] + " assertions, 0 failures") }
    Log ""
}

# ------------------------------------------------- source assertions: library
Log "=== source assertions (hook_agent/libtg_hook.c) ==="
$hook = Get-Content (Join-Path $Android "hook_agent\libtg_hook.c") -Raw

if ($hook -match 'if\s*\(\s*!nlu_want_enabled\(\)\s*\)\s*return\s+TG_E_DISABLED') {
    Fail "install/prepare is still gated by the takeover switch (TG_E_DISABLED)"
} else { Pass "no TG_E_DISABLED gate left: install is independent of the switch" }

if ($hook -match 'int\s+tg_nlu_install\s*\(\s*int\s+world_frozen\s*\)') {
    Pass "tg_nlu_install(int world_frozen) takes the freeze contract"
} else { Fail "tg_nlu_install signature is not the T8-05 one" }

if ($hook -match 'np_install\s*\(\s*&g_nlu_pp\s*,\s*world_frozen\s*\)') {
    Pass "install goes through the np_install transaction with world_frozen"
} else { Fail "np_install(&g_nlu_pp, world_frozen) missing" }

if ($hook -match 'np_uninstall\s*\(\s*&g_nlu_pp\s*,\s*world_frozen\s*\)') {
    Pass "uninstall goes through the np_uninstall transaction"
} else { Fail "np_uninstall(&g_nlu_pp, world_frozen) missing" }

if ($hook -match 'nls_set_takeover\s*\(\s*&g_nlu_sw') {
    Pass "runtime switch is written through nls_set_takeover"
} else { Fail "nls_set_takeover call missing" }

if ($hook -match 'nls_mode\s*\(\s*&g_nlu_sw') {
    Pass "callback decision uses nls_mode (pass / decide / failclosed)"
} else { Fail "nls_mode call missing" }

if ($hook -match 'mode\s*==\s*NLS_PASS\)\s*return\s+0') {
    Pass "callback returns 0 (factory passthrough) whenever the switch is off"
} else { Fail "no explicit NLS_PASS -> return 0 branch in the callback" }

foreach ($sym in @("tg_nlu_takeover_set", "tg_nlu_takeover_get", "tg_nlu_hook_installed",
                   "tg_nlu_entry_code", "tg_nlu_state_ready", "tg_nlu_last_error")) {
    if ($hook -match ("int\s+" + $sym + "\s*\(") -or $hook -match ("void\s+" + $sym + "\s*\(") -or
        $hook -match ("const\s+char\s*\*\s*" + $sym + "\s*\(")) {
        Pass ("export present: " + $sym)
    } else { Fail ("export missing: " + $sym) }
}

if ($hook -match 'rc\s*=\s*t8_to_init\(&g_to\);\s*\r?\n\s*if\s*\(rc\s*!=\s*0\)\s*g_nlu_init_failed\s*=\s*1;') {
    Pass "session table is initialised unconditionally at boot (runtime enable has a ready table)"
} else { Fail "unconditional t8_to_init at boot not found" }

if ($hook -match 'pthread_once\(&g_nlu_once,\s*nlu_boot_once\)') {
    Pass "boot gate still runs exactly once (T8-04 fix preserved)"
} else { Fail "pthread_once gate missing" }

if ($hook -match 'g_nlu_env_ignored') {
    Pass "env var is recorded as ignored instead of enabling takeover"
} else { Fail "no env_ignored marker" }

# ----------------------------------------------- source assertions: injector
Log ""
Log "=== source assertions (injector/tg_injector.c) ==="
$inj = Get-Content (Join-Path $Android "injector\tg_injector.c") -Raw

foreach ($opt in @("--nlu-install", "--nlu-uninstall", "--nlu-on", "--nlu-off", "--nlu-status")) {
    if ($inj -match [regex]::Escape('"' + $opt + '"')) { Pass ("option parsed: " + $opt) }
    else { Fail ("option not parsed: " + $opt) }
}

if ($inj -match '(?s)pause_and_check\(lo, hi, err.*?args\[0\] = 1;.*?rc_resume_all\(&g_paused\)') {
    Pass "patch write happens strictly between pause_and_check and rc_resume_all"
} else { Fail "pause/freeze/write/resume sequence not found" }

if ($inj -match 'world_frozen') {
    Pass "injector documents the world_frozen contract"
} else { Fail "world_frozen contract comment missing" }

if ($inj -match 'uint32_t fn = \(cmd == NLU_INSTALL\) \? g_nlu\.install : g_nlu\.uninstall;') {
    Pass "install/uninstall are dispatched through the resolved tg_nlu_* symbols"
} else { Fail "nlu install/uninstall dispatch missing" }

if ($inj -match 'installed_after=%d takeover=%d entry_code=%s') {
    Pass "install/uninstall print the post-state plus the machine-code record"
} else { Fail "post-state print missing" }

if ($inj -match 'takeover != want') {
    Pass "switch write is verified by readback (no fake success)"
} else { Fail "switch readback verification missing" }

if ($inj -match 'stage=nlu_pause cmd=%s rc=%d err=%s \(no byte written\)') {
    Pass "failed freeze aborts before writing and says so"
} else { Fail "nlu_pause abort message missing" }

if ($inj -match 'return 22;' -and $inj -match 'return 23;') {
    Pass "distinct exit codes for patch failure (22) and switch failure (23)"
} else { Fail "exit code 22/23 missing" }

Log ""
if ($script:Fail -ne 0) { Log ("# result: FAIL (" + $script:Fail + " problem(s))") }
else { Log "# result: OK (2 suites + source assertions)" }
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ""
Write-Host ("log : {0}" -f $Log)
if ($script:Fail -ne 0) { exit 1 }
exit 0
