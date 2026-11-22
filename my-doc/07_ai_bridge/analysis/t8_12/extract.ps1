# t8_12_extract.ps1 -- T8-12 audit: pull disassembly ranges + resolve PLT calls
# ASCII only. Read-only: does not modify the .so or the repo.
param(
    [string]$So  = "D:\tgz02\OS\_analysis\t6\libsmartbox.so",
    [string]$Out = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t8-12"
)
$ErrorActionPreference = "Stop"
$b  = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin"
$RE = Join-Path $b "arm-linux-androideabi-readelf.exe"
$OD = Join-Path $b "llvm-objdump.exe"
New-Item -ItemType Directory -Force -Path $Out | Out-Null

# --- rel.plt ordered symbol list (PLT stub k <-> .rel.plt[k]) ---
$rel  = & $RE -rW $So 2>$null
$inPlt = $false
$syms = New-Object System.Collections.Generic.List[string]
foreach ($line in $rel) {
    if ($line -match "^Relocation section '\.rel\.plt'") { $inPlt = $true; continue }
    if ($inPlt -and $line -match "^Relocation section") { $inPlt = $false }
    if (-not $inPlt) { continue }
    if ($line -match "^\s*([0-9a-f]{8})\s+([0-9a-f]{8})\s+R_ARM_\S+\s+([0-9a-f]+)\s+(\S+)") { $syms.Add($matches[4]) }
}
"rel.plt entries = $($syms.Count)" | Write-Output

$PLT0  = 0x8d39c
$STUB0 = 0x8d3b0

function Dump-Range([string]$name, [string]$start, [string]$stop) {
    $f = Join-Path $Out ($name + ".asm.txt")
    & $OD -d --demangle --start-address=$start --stop-address=$stop $So 2>&1 | Out-File -Encoding utf8 $f
    "wrote $name  $start..$stop  bytes=$((Get-Item $f).Length)" | Write-Output
}

function Resolve-Calls([string]$name, [string]$start, [string]$stop) {
    $f = Join-Path $Out ($name + ".calls.txt")
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.Add("# $name  $start..$stop")
    $lines.Add("# 'at' = address of the bl; 'target' = .rel.plt symbol it calls")
    $dis = & $OD -d --start-address=$start --stop-address=$stop $So 2>&1
    $n = 0
    foreach ($line in $dis) {
        if ($line -notmatch "^\s*([0-9a-f]+):.*<\.plt\+0x([0-9a-f]+)>") { continue }
        $at  = [Convert]::ToInt64($matches[1], 16)
        $addr = $PLT0 + [Convert]::ToInt64($matches[2], 16)
        $k = [int](($addr - $STUB0) / 12.0)
        $rem = ($addr - $STUB0) % 12
        $nm = if ($k -ge 0 -and $k -lt $syms.Count -and $rem -eq 0) { $syms[$k] } else { "UNRESOLVED(k=$k rem=$rem)" }
        $n++
        $lines.Add(("{0:x6}  plt[{1}]  {2}" -f $at, $k, $nm))
    }
    $lines.Add("# total plt calls = $n")
    [System.IO.File]::WriteAllLines($f, $lines, (New-Object System.Text.UTF8Encoding($false)))
    "wrote $name calls=$n" | Write-Output
}

# raw disassembly of the small / argument-critical ranges
Dump-Range "proxy_onNlpResult_11d9b4"      "0x11d9b4" "0x11d9f8"
Dump-Range "proxy_onNlpResultInner_11d9f8" "0x11d9f8" "0x11da44"
Dump-Range "proxy_onStream_11d708"         "0x11d708" "0x11d7d4"
Dump-Range "disp_onNlpResultInner_11896c"  "0x11896c" "0x1189e0"
Dump-Range "mgr_onNlpResultInner_114b98"   "0x114b98" "0x114ba0"
Dump-Range "handler_dispatch_11cbb0"       "0x11cbb0" "0x11cc20"
Dump-Range "disp_onSpecial_1189e0"         "0x1189e0" "0x1189ec"

# resolved call lists of the big functions
Resolve-Calls "disp_onNlpResult_118ebc"    "0x118ebc" "0x11965c"
Resolve-Calls "mgr_onNlpResult_11489c"     "0x11489c" "0x114b98"
Resolve-Calls "mgr_onStream_11353c"        "0x11353c" "0x113808"
Resolve-Calls "disp_onStream_117a78"       "0x117a78" "0x117cec"
Resolve-Calls "disp_playAudios_117d40"     "0x117d40" "0x11802c"
