# t8_12_xref.ps1 -- T8-12 audit: full-library xref of skill-execution related entry points
# ASCII only. Read-only. Writes dis_full.txt + xref report into evidence/t8-12.
param(
    [string]$So  = "D:\tgz02\OS\_analysis\t6\libsmartbox.so",
    [string]$Out = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t8-12",
    [string]$Dis = "D:\tgz02\OS\_analysis\t8_12_dis_full.txt"
)
$ErrorActionPreference = "Stop"
$b  = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin"
$RE = Join-Path $b "arm-linux-androideabi-readelf.exe"
$OD = Join-Path $b "llvm-objdump.exe"

# 1) rel.plt ordered symbols
$rel = & $RE -rW $So 2>$null
$inPlt = $false
$syms = New-Object System.Collections.Generic.List[string]
foreach ($line in $rel) {
    if ($line -match "^Relocation section '\.rel\.plt'") { $inPlt = $true; continue }
    if ($inPlt -and $line -match "^Relocation section") { $inPlt = $false }
    if (-not $inPlt) { continue }
    if ($line -match "^\s*([0-9a-f]{8})\s+([0-9a-f]{8})\s+R_ARM_\S+\s+([0-9a-f]+)\s+(\S+)") { $syms.Add($matches[4]) }
}

# 2) full disassembly (reuse if already generated)
if (-not (Test-Path $Dis)) {
    & $OD -d --demangle $So 2>&1 | Out-File -Encoding utf8 $Dis
}
"dis_full bytes = $((Get-Item $Dis).Length)" | Write-Output

# 3) target symbols -> plt annotation offset (12k + 20)
$targets = @(
  "_ZN9AliAiLabs4AGUI15SessionDispatch11onNlpResultEiiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI15SessionDispatch16onNlpResultInnerEiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI15SessionDispatch15onPushNlpResultEiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI15SessionDispatch18onSpecialNlpResultEiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI15SessionDispatch18onRouterDetailInfoEiiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI15SessionDispatch10playAudiosEiiPNS0_9NlpResultEPNS0_10ReturnCodeEPh",
  "_ZN9AliAiLabs4AGUI12AudioManager19processMediaCommandEPNS0_9NlpResultEPNS0_10ReturnCodeERh",
  "_ZN9AliAiLabs4AGUI12AudioManager17preProcessCommandEPNS0_12ProtocolDataEPcPNS0_10ReturnCodeE",
  "_ZN9AliAiLabs4AGUI15SessionDispatch14processCommandEiPNS0_12ProtocolDataEPcPKcPi",
  "_ZN9AliAiLabs4AGUI14SessionManager11onNlpResultEiiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI12SessionProxy11onNlpResultEiiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI14SessionManager16onNlpResultInnerEiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI12SessionProxy16onNlpResultInnerEiiPNS0_9NlpResultE",
  "_ZN9AliAiLabs4AGUI12SessionProxy16onNlpResultInnerEiPNS0_9NlpResultE"
)

$map = @{}
foreach ($t in $targets) {
    $idx = -1
    for ($i = 0; $i -lt $syms.Count; $i++) { if ($syms[$i] -eq $t) { $idx = $i; break } }
    if ($idx -ge 0) {
        $off = 12 * $idx + 20
        $map[("{0:x}" -f $off)] = $t
        "target plt[{0}] off=0x{1:x}  {2}" -f $idx, $off, $t | Write-Output
    } else {
        "target NOT IN rel.plt: $t" | Write-Output
    }
}

# 4) scan disassembly: track current function symbol, report hits
$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T8-12 xref report: every bl that targets a PLT stub of the listed symbols")
$lines.Add("# caller = nearest preceding 'section .text' function header (demangled)")
$cur = "(unknown)"
$encl = $null
$pattern = '<\.plt\+0x([0-9a-f]+)>'
foreach ($line in (Get-Content $Dis -Encoding UTF8)) {
    if ($line -match '^[0-9a-f]{8}\s+(.+):$') { $cur = $matches[1].Trim(); continue }
    if ($line -match $pattern) {
        $off = $matches[1]
        if ($map.ContainsKey($off)) {
            $at = if ($line -match '^\s*([0-9a-f]+):') { $matches[1] } else { "?" }
            if ($null -eq $encl) { $encl = $cur }
            $lines.Add(("{0}  {1}  ->  {2}" -f $at, $cur, $map[$off]))
        }
    }
}
[System.IO.File]::WriteAllLines((Join-Path $Out "xref_skill_entrypoints.txt"), $lines, (New-Object System.Text.UTF8Encoding($false)))
"xref lines = $($lines.Count - 1)" | Write-Output
$lines | Select-Object -Skip 2 | ForEach-Object { $_ }
