# run_t8_06_host_tests.ps1 -- T8-06: CAS switch storm, page-protection restore matrix,
# plus the two T8-05 suites that this round's changes directly touch, plus source
# assertions for the parts that only exist inside :core.
#
#   powershell -ExecutionPolicy Bypass -File run_t8_06_host_tests.ps1
#
# Only this round's affected suites are run (old suites are not re-run wholesale).
# Artifacts: tests/out/t8_0{5,6}_*.exe, evidence/t8_06_host_test.log
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

$Log = Join-Path $Ev "t8_06_host_test.log"
$script:Lines = New-Object System.Collections.Generic.List[string]
function Log([string]$s) { $script:Lines.Add($s); Write-Host $s }
$script:Fail = 0
function Fail([string]$why) { $script:Fail++; Log "FAIL $why" }
function Pass([string]$why) { Log "PASS $why" }

Log "# T8-06 host test log (CAS switch + page-protection restore)"
Log "# host time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Log ""

# ---------------------------------------------------------------- build + run
$Cases = @(
    @{ name = "t8_06_switch_test";     src = @("t8_06_switch_test.c", "nlu_switch.c") },
    @{ name = "t8_06_reprotect_test";  src = @("t8_06_reprotect_test.c", "nlu_patch.c") },
    @{ name = "t8_05_switch_test";     src = @("t8_05_switch_test.c", "nlu_switch.c") },
    @{ name = "t8_05_patch_test";      src = @("t8_05_patch_test.c", "nlu_patch.c") }
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

# ------------------------------------------- source assertions: nlu_switch
Log "=== source assertions (nlu_switch.h / nlu_switch.c) ==="
$swh = Get-Content (Join-Path $Android "nlu_switch.h") -Raw
$swc = Get-Content (Join-Path $Android "nlu_switch.c") -Raw

if ($swh -match 'volatile\s+unsigned\s+int\s+state;') {
    Pass "switch state is one atomic word"
} else { Fail "single atomic state word missing" }

if ($swh -match 'NLS_BIT_INSTALLED' -and $swh -match 'NLS_BIT_TAKEOVER') {
    Pass "both bits are defined on the same word"
} else { Fail "bit definitions missing" }

if ($swh -match '(?s)typedef struct \{(?:(?!\}).)*volatile\s+int\s+installed(?:(?!\}).)*\}' ) {
    Fail "an old 'volatile int installed' field is still present"
} else { Pass "no separate installed/takeover fields (two-variable design is gone)" }

if ($swc -match '__atomic_compare_exchange_n') {
    Pass "state changes are linearised with CAS"
} else { Fail "no CAS in nlu_switch.c" }

if ($swc -match 'newv = oldv & ~\(NLS_BIT_INSTALLED \| NLS_BIT_TAKEOVER\);') {
    Pass "uninstall clears both bits in one CAS"
} else { Fail "single-CAS uninstall not found" }

if ($swc -match '(?s)if \(!\(state & NLS_BIT_TAKEOVER\)\) return NLS_PASS;(?:(?!\n\}).)*if \(!\(state & NLS_BIT_INSTALLED\)\) return NLS_PASS;') {
    Pass "nls_mode has the defensive installed check before DECIDE"
} else { Fail "defensive mode check missing" }

# ------------------------------------------- source assertions: hook library
Log ""
Log "=== source assertions (hook_agent/libtg_hook.c) ==="
$hook = Get-Content (Join-Path $Android "hook_agent\libtg_hook.c") -Raw

if ($hook -match 'static\s+pthread_mutex_t\s+g_nlu_ctl_lock\s*=\s*PTHREAD_MUTEX_INITIALIZER;') {
    Pass "control mutex is statically initialised (no init failure path)"
} else { Fail "control mutex definition missing" }

if ($hook -match 'pthread_mutex_trylock\(&g_nlu_ctl_lock\)') {
    Pass "control lock uses trylock with bounded retries (no unbounded wait)"
} else { Fail "trylock missing" }

if (([regex]::Matches($hook, 'nlu_ctl_lock\(')).Count -ge 5) {
    Pass "every control entry point takes the lock (>=5 call sites)"
} else { Fail "control lock is not used by all control paths" }

if (([regex]::Matches($hook, 'nlu_ctl_unlock\(\);')).Count -ge 5) {
    Pass "every locked path unlocks (>=5 unlock sites)"
} else { Fail "unlock coverage insufficient" }

if ($hook -match '(?s)int\s+tg_nlu_uninstall\(int world_frozen\).*?\(void\)nls_set_takeover\(&g_nlu_sw, 0\);.*?rc = np_uninstall\(&g_nlu_pp, world_frozen\);.*?nls_set_installed\(&g_nlu_sw, 0\)') {
    Pass "uninstall order: disable takeover -> restore entry -> mark uninstalled"
} else { Fail "uninstall ordering does not match the required sequence" }

if ($hook -match 't8_to_enabled_set\(&g_to, 1\) != 0' -and $hook -match 'TG_E_NOT_READY') {
    Pass "table-init failure returns TG_E_NOT_READY (not a normal enable)"
} else { Fail "not-ready path missing" }

if ($hook -match '(?s)sw = nls_takeover\(&g_nlu_sw\);\s*tbl = t8_to_enabled\(&g_to\);\s*if \(sw != tbl') {
    Pass "switch and session-table states are cross-checked inside the lock"
} else { Fail "consistency self-check missing" }

if ($hook -match 'static int nlu_pp_reprotect\(void \*ud, char \*err, size_t cap\)') {
    Pass "nlu_pp_reprotect returns an error code"
} else { Fail "reprotect signature not updated" }

if ($hook -match 'mprotect restore failed page=0x%08x prot=%d errno=%d') {
    Pass "mprotect restore failure is reported with page/prot/errno"
} else { Fail "reprotect error text missing" }

foreach ($sym in @("tg_nlu_prot_state", "tg_nlu_prot_restore", "tg_nlu_prot_text")) {
    if ($hook -match ("int\s+" + $sym + "\s*\(") -or $hook -match ("void\s+" + $sym + "\s*\(")) {
        Pass ("export present: " + $sym)
    } else { Fail ("export missing: " + $sym) }
}

if ($hook -match '(?s)int tg_nlu_prot_restore\(void\).*?nlu_pp_reprotect\(NULL, perr, sizeof\(perr\)\)') {
    Pass "prot retry calls the same production restore function"
} else { Fail "prot retry wiring missing" }

# ------------------------------------------- source assertions: patch module
Log ""
Log "=== source assertions (nlu_patch.c / nlu_patch.h) ==="
$ph = Get-Content (Join-Path $Android "nlu_patch.h") -Raw
$pc = Get-Content (Join-Path $Android "nlu_patch.c") -Raw

if ($ph -match 'int\s+\(\*reprotect\)\(void \*ud, char \*err, size_t cap\);') {
    Pass "reprotect hook now returns int (failure is reportable)"
} else { Fail "reprotect hook signature not updated" }

if ($ph -match '#define NP_E_REPROTECT\s+\(-11\)') {
    Pass "NP_E_REPROTECT defined"
} else { Fail "NP_E_REPROTECT missing" }

if ($pc -match 'case NP_E_REPROTECT:\s+return "reprotect";') {
    Pass "np_err_name maps NP_E_REPROTECT"
} else { Fail "np_err_name case missing" }

if (([regex]::Matches($pc, 'page protection restore FAILED')).Count -ge 2) {
    Pass "both transactions report the restore failure (install + uninstall)"
} else { Fail "restore failure text missing in one transaction" }

if ($pc -match '(?s)if \(p->reprotect\(p->ud, perr, sizeof\(perr\)\) != 0\) \{\s*p->reprotect_fails\+\+;\s*p->prot_dirty = 1;\s*rc = NP_E_REPROTECT;') {
    Pass "restore failure forces NP_E_REPROTECT and marks prot_dirty"
} else { Fail "restore failure handling not found" }

if ($pc -match 'unprotected \|\| p->prot_dirty') {
    Pass "pending restore is retried on the next transaction"
} else { Fail "prot_dirty retry path missing" }

if ($pc -match 'entry_restored \? "IS restored to the original prologue"') {
    Pass "uninstall distinguishes 'entry restored' from 'protection failed'"
} else { Fail "uninstall distinction text missing" }

Log ""
if ($script:Fail -ne 0) { Log ("# result: FAIL (" + $script:Fail + " problem(s))") }
else { Log "# result: OK (4 suites + source assertions)" }
$script:Lines | Out-File -FilePath $Log -Encoding utf8
Write-Host ""
Write-Host ("log : {0}" -f $Log)
if ($script:Fail -ne 0) { exit 1 }
exit 0
