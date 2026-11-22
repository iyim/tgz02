param(
  [string]$So = 'D:\tgz02\OS\_analysis\t6\libsmartbox.so',
  [int]$Start = 0x118900,
  [int]$Stop  = 0x119700,
  [string]$OutFile = '',
  [switch]$BranchesOnly
)

# Dump a vaddr range and annotate every branch/call with a resolved target name.
# Resolution order: PLT map (imported symbol) -> FUNC symbol containing the target
# -> raw address. Nothing is guessed; unresolvable targets stay as bare addresses.

$ndk = 'D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin'
$objdump = Join-Path $ndk 'llvm-objdump.exe'
$readelf = Join-Path $ndk 'llvm-readelf.exe'
$pltMap = 'D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t8-12-p3\plt_map.txt'

$plt = @{}
if (Test-Path $pltMap) {
  foreach ($l in (Get-Content $pltMap)) {
    if ($l -match '^(0x[0-9a-f]+)\t0x[0-9a-f]+\t0x[0-9a-f]+\t(.+)$') {
      $plt[[Convert]::ToInt32($matches[1], 16)] = $matches[2]
    }
  }
}

$funcs = New-Object System.Collections.ArrayList
foreach ($l in (& $readelf -sW $So 2>$null)) {
  if ($l -match '^\s*\d+:\s+([0-9a-f]{8})\s+(\d+)\s+FUNC\s+\w+\s+\w+\s+\d+\s+(\S+)') {
    [void]$funcs.Add([pscustomobject]@{
      addr = [Convert]::ToInt32($matches[1], 16)
      size = [int]$matches[2]
      name = $matches[3]
    })
  }
}
$funcs = $funcs | Sort-Object addr

function Resolve-Target([int]$t) {
  if ($plt.ContainsKey($t)) { return 'PLT:' + $plt[$t] }
  $best = $null
  foreach ($f in $funcs) {
    if ($f.addr -le $t -and ($f.size -eq 0 -or $t -lt ($f.addr + $f.size))) { $best = $f }
    if ($f.addr -gt $t) { break }
  }
  if ($null -ne $best) {
    $d = $t - $best.addr
    if ($d -eq 0) { return 'FUNC:' + $best.name }
    return ('FUNC:{0}+0x{1:x}' -f $best.name, $d)
  }
  return ('ADDR:0x{0:x}' -f $t)
}

$raw = & $objdump -d --start-address=$Start --stop-address=$Stop $So 2>&1
$sb = New-Object System.Text.StringBuilder
$null = $sb.AppendLine(('# annotated disassembly 0x{0:x}..0x{1:x} of {2}' -f $Start, $Stop, (Split-Path -Leaf $So)))
$null = $sb.AppendLine('# branch annotation: <target> then resolved name')
$curFunc = ''
foreach ($line in $raw) {
  if ($line -match '^([0-9a-f]{8}) (\S+):$') {
    $a = [Convert]::ToInt32($matches[1], 16)
    $curFunc = (Resolve-Target $a) -replace '^FUNC:', ''
    $null = $sb.AppendLine('')
    $null = $sb.AppendLine(('==== {0} @ 0x{1:x} ====' -f $matches[2], $a))
    continue
  }
  if ($line -notmatch '^\s+([0-9a-f]+):\s+([0-9a-f ]{11})\s+(\S+)\s*(.*)$') {
    if ($line.Trim() -ne '') { $null = $sb.AppendLine($line) }
    continue
  }
  $addrHex = $matches[1]
  $bytesTxt = $matches[2].Trim()
  $mnem = $matches[3]
  $ops = $matches[4].Trim()
  $addr = [Convert]::ToInt32($addrHex, 16)
  $isBranch = $mnem -match '^(bl|blx|b|bx|cbz|cbnz)$'
  if ($BranchesOnly -and -not $isBranch) { continue }
  $ann = ''
  if ($isBranch) {
    if ($ops -match '^#(-?\d+)') {
      $imm = [int]$matches[1]
      $t = $addr + 8 + $imm
      $ann = '  ; -> 0x{0:x} {1}' -f $t, (Resolve-Target $t)
    }
    elseif ($ops -match '^(r\d+|lr|pc)$') {
      $ann = '  ; -> indirect via ' + $matches[1]
    }
  }
  # also annotate pc-relative literal loads for GOT/vtable pointers
  if ($mnem -eq 'ldr' -and $ops -match '\[pc, #(\d+)\]') {
    $litAddr = $addr + 8 + [int]$matches[1]
  }
  $null = $sb.AppendLine(('{0}  {1,-9} {2,-7} {3}{4}' -f $addrHex, $bytesTxt, $mnem, $ops, $ann))
}
$txt = $sb.ToString()
if ($OutFile -ne '') {
  $dir = Split-Path -Parent $OutFile
  if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
  [IO.File]::WriteAllText($OutFile, $txt, (New-Object System.Text.UTF8Encoding($false)))
  Write-Output ('wrote {0} ({1} bytes)' -f $OutFile, $txt.Length)
} else {
  Write-Output $txt
}
