# who_calls.ps1 -- reverse PLT map: find callers of an exported symbol in libsmartbox.so (T8-01)
#   .\who_calls.ps1 -Symbol "_ZN9AliAiLabs4AGUI15SessionDispatch11onNlpResultEiiPNS0_9NlpResultE"
# Needs dis_full.txt (llvm-objdump -d --demangle) and libsmartbox.so next to this script.
param([Parameter(Mandatory=$true)][string]$Symbol, [int]$Max = 12)
$ErrorActionPreference = "Stop"
$b = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin"
$ReadElf = Join-Path $b "arm-linux-androideabi-readelf.exe"

$rel = & $ReadElf -rW libsmartbox.so 2>$null
$inPlt = $false
$syms = New-Object System.Collections.Generic.List[string]
foreach ($line in $rel) {
    if ($line -match "^Relocation section '\.rel\.plt'") { $inPlt = $true; continue }
    if ($inPlt -and $line -match "^Relocation section") { $inPlt = $false }
    if (-not $inPlt) { continue }
    if ($line -match "^\s*[0-9a-f]{8}\s+[0-9a-f]{8}\s+R_ARM_\S+\s+[0-9a-f]+\s+(\S+)") { $syms.Add($matches[1]) }
}
$idx = -1
for ($i = 0; $i -lt $syms.Count; $i++) { if ($syms[$i] -eq $Symbol) { $idx = $i; break } }
if ($idx -lt 0) { "symbol not found in .rel.plt: $Symbol"; exit 1 }
$stub = 0x8d3b0 + 12 * $idx
$anno = $stub - 0x8d39c
"symbol : $Symbol"
"plt idx: $idx  stub: 0x{0:x}  annotation: .plt+0x{1:x}" -f $stub, $anno

$pat = "\.plt\+0x0*" + $anno.ToString("x") + ">"
$lines = Get-Content dis_full.txt -Encoding UTF8
$found = 0
$cur = ""
for ($i = 0; $i -lt $lines.Count; $i++) {
    $l = $lines[$i]
    if ($l -match "^[0-9a-f]{6,8} (.+):$") { $cur = $matches[1]; continue }
    if ($l -match $pat -and $l -match "\bbl\b") {
        "  caller: $cur"
        "$(($l -split '\s+')[0].TrimEnd(':'))  ->  $($l.Trim())"
        $found++
        if ($found -ge $Max) { break }
    }
}
if ($found -eq 0) { "  (no direct bl callers found)" }
