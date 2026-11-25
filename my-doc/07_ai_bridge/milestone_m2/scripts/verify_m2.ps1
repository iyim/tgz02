# verify_m2.ps1 -- verify the milestone M2 backup against SHA256SUMS.txt and, when a device
# is reachable, against the artifacts that are actually live on it.
#
#   .\verify_m2.ps1              # host-only integrity check
#   .\verify_m2.ps1 -Device      # also compare live device hashes (needs adb + root)
#
# Exit code 0 = everything matched, 1 = at least one mismatch (details are printed).
param([switch]$Device, [string]$Serial = '192.168.1.9:5555')

$ErrorActionPreference = 'Continue'
$root = Split-Path $PSScriptRoot
$root = (Resolve-Path $root).Path
$fail = 0

Write-Host "== host integrity ($root)" -ForegroundColor Cyan
$sumsPath = Join-Path $root 'SHA256SUMS.txt'
if (-not (Test-Path $sumsPath)) { Write-Host "MISSING SHA256SUMS.txt" -ForegroundColor Red; exit 1 }

$total = 0; $bad = 0; $missing = 0
foreach ($line in Get-Content $sumsPath) {
    if ($line -notmatch '^([0-9a-f]{64})\s+\*?(.+)$') { continue }
    $total++
    $exp = $Matches[1]; $rel = $Matches[2].Trim()
    $p = Join-Path $root ($rel -replace '/', '\')
    if (-not (Test-Path $p)) { Write-Host "MISSING  $rel" -ForegroundColor Red; $missing++; continue }
    $act = (Get-FileHash $p -Algorithm SHA256).Hash.ToLower()
    if ($act -ne $exp) { Write-Host "MISMATCH $rel`n  expected $exp`n  actual   $act" -ForegroundColor Red; $bad++ }
}
Write-Host ("  files={0} mismatched={1} missing={2}" -f $total, $bad, $missing)
if ($bad -or $missing) { $fail = 1 }

if ($Device) {
    Write-Host "== device live comparison ($Serial)" -ForegroundColor Cyan
    adb connect $Serial | Out-Null
    $state = (adb -s $Serial get-state 2>$null)
    if ($state -ne 'device') { Write-Host "device not reachable: $state" -ForegroundColor Red; exit 1 }

    # archive path -> device path that is expected to hold the same bytes at M2
    $pairs = @(
        @('device/runtime/t5_bridge/bin/ai_worker',            '/data/local/tmp/t5_bridge/bin/ai_worker'),
        @('device/runtime/t5_bridge/tts_exec.dex',             '/data/local/tmp/t5_bridge/tts_exec.dex'),
        @('device/runtime/system_etc_init/tg_stack.rc',        '/system/etc/init/tg_stack.rc'),
        @('device/runtime/t6/tg_supervisor',                   '/data/local/tmp/t6/tg_supervisor'),
        @('device/runtime/t8/libtg_hook.so',                   '/data/local/tmp/t8/libtg_hook.so'),
        @('device/runtime/t7/libtg_ttsguard_t8156.so',         '/data/local/tmp/t7/libtg_ttsguard_t8156.so'),
        @('device/models.json',                                '/data/data/com.tgz02.voice/files/models.json'),
        @('device/worker.conf',                                '/data/local/tmp/t5_bridge/ai_worker/worker.conf'),
        @('device/snapshots/memory.public.json',               '/data/local/tmp/t9_ui/snapshots/memory.public.json'),
        @('device/snapshots/alarms.public.json',               '/data/local/tmp/t9_ui/snapshots/alarms.public.json'),
        @('device/snapshots/skills.public.json',               '/data/local/tmp/t9_ui/snapshots/skills.public.json')
    )
    foreach ($pr in $pairs) {
        $local = Join-Path $root ($pr[0] -replace '/', '\')
        if (-not (Test-Path $local)) { Write-Host "SKIP     $($pr[0]) (not in backup)"; continue }
        $expHash = (Get-FileHash $local -Algorithm SHA256).Hash.ToLower()
        $out = adb -s $Serial shell "su 0 sh -c 'sha256sum $($pr[1])'" 2>$null
        $actHash = if ($out -match '^([0-9a-f]{64})') { $Matches[1] } else { '' }
        if ($actHash -eq $expHash) { Write-Host ("OK       {0}" -f $pr[1]) }
        else { Write-Host ("DIFFERS  {0}`n  backup {1}`n  device {2}" -f $pr[1], $expHash, $(if ($actHash) { $actHash } else { '<unreadable>' })) -ForegroundColor Yellow; $fail = 1 }
    }

    # the installed APK lives in an app-private path that changes between installations
    $apkPath = (adb -s $Serial shell 'pm path com.tgz02.voice') -replace 'package:', '' -replace "`r", '' | Select-Object -First 1
    if ($apkPath) {
        $expHash = (Get-FileHash (Join-Path $root 'apk\voice_ui_installed.apk') -Algorithm SHA256).Hash.ToLower()
        $out = adb -s $Serial shell "su 0 sh -c 'sha256sum $apkPath'" 2>$null
        $actHash = if ($out -match '^([0-9a-f]{64})') { $Matches[1] } else { '' }
        if ($actHash -eq $expHash) { Write-Host ("OK       {0} (installed APK)" -f $apkPath) }
        else { Write-Host ("DIFFERS  installed APK`n  backup {0}`n  device {1}" -f $expHash, $(if ($actHash) { $actHash } else { '<unreadable>' })) -ForegroundColor Yellow; $fail = 1 }
    }

    # the stub server's on-disk copy was deleted at M2; only the process remains
    $stub = adb -s $Serial shell 'su 0 sh -c "ls -l /proc/*/exe 2>/dev/null"' 2>$null | Select-String 't9_08c'
    Write-Host ("NOTE     stub server process exe: {0}" -f ($stub -join '').Trim())
}

if ($fail) { Write-Host "RESULT: FAIL" -ForegroundColor Red } else { Write-Host "RESULT: PASS" -ForegroundColor Green }
exit $fail


