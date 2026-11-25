# gen_inventory.ps1 -- rebuild INVENTORY.tsv and SHA256SUMS.txt for milestone M2.
#
# Run from anywhere: paths are resolved relative to this script.
# Column 1-4: sha256, size, archive path (relative to milestone root), device path.
# Column 5: role, column 6: note.
#
# The device path column is the authority for restores: a file is only useful if you know
# where it has to land. Anything with device path "-" is host-only material (APK build input,
# stub server binary, evidence).
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot              # milestone_m2/ (this script lives in scripts/)
$root = (Resolve-Path $root).Path

# archive path prefix -> (device dir, role, note)
$rules = @(
    @{ p='apk/';                                d='/data/app/com.tgz02.voice-*/base.apk'; r='UI APK'; n='installed package pulled from the device (same bytes as dist build)' },
    @{ p='worker/ai_worker';                    d='/data/local/tmp/t5_bridge/bin/ai_worker'; r='worker'; n='running worker (pid 10991 at M2)' },
    @{ p='worker/tts_exec.dex';                 d='/data/local/tmp/t5_bridge/tts_exec.dex'; r='TTS executor dex'; n='the dex app_process actually loads (8c79c506)' },
    @{ p='worker/t9_08c_stub_server';           d='/data/local/tmp/t9/t9_08c/t9_08c_stub_server'; r='protocol stub'; n='no on-disk copy at M2 (process exe was deleted); push this to restore' },
    @{ p='device/db/';                          d='/data/data/com.tgz02.voice/databases/'; r='SQLite'; n='db + WAL + SHM must be restored together; data lives in -wal' },
    @{ p='device/models.json';                  d='/data/data/com.tgz02.voice/files/models.json'; r='model config'; n='plaintext keys, stub credentials at M2' },
    @{ p='device/ui_theme.json';                d='/data/data/com.tgz02.voice/files/ui_theme.json'; r='theme'; n='kid|calm' },
    @{ p='device/worker.conf';                  d='/data/local/tmp/t5_bridge/ai_worker/worker.conf'; r='worker config'; n='matches MANIFEST ./conf/worker.conf' },
    @{ p='device/snapshots/';                   d='/data/local/tmp/t9_ui/snapshots/'; r='DB snapshot'; n='App writes, worker reads; 0600 app uid on device' },
    @{ p='device/runtime/system_etc_init/';     d='/system/etc/init/'; r='boot rc'; n='tg_stack.rc is the rc that is actually loaded' },
    @{ p='device/runtime/t5_bridge/bin/';       d='/data/local/tmp/t5_bridge/bin/'; r='worker chain'; n='current worker plus historical AI_WORKER backups (rollback chain)' },
    @{ p='device/runtime/t5_bridge/';           d='/data/local/tmp/t5_bridge/'; r='runtime script'; n='boot_stack + launch wrappers; run_ai_worker.sh depends on .accepted' },
    @{ p='device/runtime/t6/';                  d='/data/local/tmp/t6/'; r='injector'; n='supervisor + injector + legacy hook; system_etc_init.before is the pre-T9 rc baseline' },
    @{ p='device/runtime/t7/';                  d='/data/local/tmp/t7/'; r='tts guard'; n='libtg_ttsguard_t8156.so is the accepted guard' },
    @{ p='device/runtime/t8/';                  d='/data/local/tmp/t8/'; r='hook'; n='accepted hook + injector for :core' },
    @{ p='device/runtime/t9/backup/';           d='/data/local/tmp/t9/backup/'; r='T9 baseline'; n='self-describing tree with its own MANIFEST.tsv' },
    @{ p='device/runtime/t9/rc_backup/';        d='/data/local/tmp/t9/rc_backup/'; r='rc baseline'; n='sha256.before = factory rc hash baseline; tg_supervisor.rc here is HISTORICAL (T6), do not deploy' },
    @{ p='scripts/';                            d='/data/local/tmp/'; r='deploy script'; n='host copy of the device-side deploy/restore scripts' },
    @{ p='MILESTONE_M2_README.md';              d='-'; r='doc'; n='deploy and rollback guide' },
    @{ p='INVENTORY.tsv';                       d='-'; r='doc'; n='this file' },
    @{ p='VERIFY_M2_20261125.txt';              d='-'; r='evidence'; n='verification run recorded at M2 close' }
)

function Classify([string]$rel) {
    foreach ($r in $rules) {
        if ($rel -like ($r.p + '*') -or $rel -eq $r.p) { return $r }
    }
    return @{ d='-'; r='unclassified'; n='' }
}

$files = Get-ChildItem $root -Recurse -File | Where-Object { $_.Name -ne 'SHA256SUMS.txt' } |
         Sort-Object FullName

$rows = New-Object System.Collections.Generic.List[string]
$rows.Add("# archive_path`tdevice_path`tsize`tsha256`trole`tnote")
foreach ($f in $files) {
    $rel = $f.FullName.Substring($root.Length + 1) -replace '\\', '/'
    $cls = Classify $rel
    $hash = (Get-FileHash $f.FullName -Algorithm SHA256).Hash.ToLower()
    $rows.Add(("{0}`t{1}`t{2}`t{3}`t{4}`t{5}" -f $rel, $cls.d, $f.Length, $hash, $cls.r, $cls.n))
}
[IO.File]::WriteAllLines("$root\INVENTORY.tsv", $rows, (New-Object Text.UTF8Encoding($false)))

$sums = foreach ($f in $files) {
    $rel = $f.FullName.Substring($root.Length + 1) -replace '\\', '/'
    $hash = (Get-FileHash $f.FullName -Algorithm SHA256).Hash.ToLower()
    "$hash  $rel"
}
[IO.File]::WriteAllLines("$root\SHA256SUMS.txt", $sums, (New-Object Text.UTF8Encoding($false)))

"files={0}" -f $files.Count
