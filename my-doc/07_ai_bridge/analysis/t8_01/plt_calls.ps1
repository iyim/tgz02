# plt_calls.ps1 -- resolve arm PLT calls in a libsmartbox.so disassembly range (T8-01)
#   .\plt_calls.ps1 -Start 0x11353c -Stop 0x113808
# Reads: dynsym/rel.plt via NDK readelf, disassembly via NDK llvm-objdump.
# Method: PLT0 at 0x8d39c (20 bytes), stubs start 0x8d3b0, 12 bytes each, stub k -> .rel.plt[k].
param(
    [string]$Start = "0x11353c",
    [string]$Stop  = "0x113808",
    [string]$So    = "libsmartbox.so",
    [string]$MapFile = "symbols_map.txt"
)
$ErrorActionPreference = "Stop"
$b = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin"
$ReadElf = Join-Path $b "arm-linux-androideabi-readelf.exe"
$Objdump = Join-Path $b "llvm-objdump.exe"

# --- 1) rel.plt -> ordered symbol list (mangled) ---
$rel = & $ReadElf -rW $So 2>$null
$inPlt = $false
$syms = New-Object System.Collections.Generic.List[string]
foreach ($line in $rel) {
    if ($line -match "^Relocation section '\.rel\.plt'") { $inPlt = $true; continue }
    if ($inPlt -and $line -match "^Relocation section") { $inPlt = $false }
    if (-not $inPlt) { continue }
    if ($line -match "^\s*([0-9a-f]{8})\s+([0-9a-f]{8})\s+R_ARM_\S+\s+([0-9a-f]+)\s+(\S+)") {
        $syms.Add($matches[4])
    }
}

# --- 2) demangled lookup (optional, best effort) ---
$dem = @{}
if (Test-Path $MapFile) {
    foreach ($l in Get-Content $MapFile -Encoding UTF8) {
        $p = $l -split "`t"
        if ($p.Count -ge 2) { $dem[$p[0]] = $p[1] }
    }
}

# --- 3) disassembly, resolve each bl that targets a PLT stub ---
$dis = & $Objdump -d --start-address=$Start --stop-address=$Stop $So 2>&1
$plt0 = 0x8d39c
$stub0 = 0x8d3b0
foreach ($line in $dis) {
    if ($line -notmatch "^\s*([0-9a-f]+):.*\b(bl|blx)\b.*<\.plt\+0x([0-9a-f]+)>") { continue }
    $at = [Convert]::ToInt64($matches[1], 16)
    $addr = $plt0 + [Convert]::ToInt64($matches[3], 16)
    $k = [int](($addr - $stub0) / 12.0)
    $rem = ($addr - $stub0) % 12
    $name = if ($k -ge 0 -and $k -lt $syms.Count -and $rem -eq 0) { $syms[$k] } else { "??k=$k rem=$rem" }
    $show = if ($dem.ContainsKey($name)) { $dem[$name] } else { $name }
    "{0:x6}: {1}" -f $at, $show
}
