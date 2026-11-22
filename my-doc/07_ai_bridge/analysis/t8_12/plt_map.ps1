param(
  [string]$So = 'D:\tgz02\OS\_analysis\t6\libsmartbox.so',
  [string]$Readelf = 'D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\llvm-readelf.exe',
  [string]$OutFile = 'D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t8-12-p3\plt_map.txt'
)

# Build a verified PLT map: stub address -> imported symbol.
# Method: scan the .plt vaddr range at 4-byte alignment, accept every position where
# the 3-instruction ARM PLT pattern appears, decode the GOT slot the stub jumps
# through, and resolve that GOT address against the .rel.plt offset column.
# This makes no assumption about stub spacing or ordering.

# .plt 的地址与长度从 readelf -SW 读取（不硬编码）
$secLine = (& $Readelf -SW $So 2>$null) | Where-Object { $_ -match '\.plt\s+PROGBITS' } | Select-Object -First 1
if ($null -eq $secLine) { throw "cannot locate .plt section in $So" }
if ($secLine -notmatch '\.plt\s+PROGBITS\s+([0-9a-f]{8})\s+([0-9a-f]{6,8})\s+([0-9a-f]{6,8})') {
  throw "cannot parse .plt section header: $secLine"
}
$PltStart = [Convert]::ToInt32($matches[1], 16)
$PltEnd   = $PltStart + [Convert]::ToInt32($matches[3], 16)
Write-Output ("plt section: 0x{0:x} .. 0x{1:x}" -f $PltStart, $PltEnd)

# --- GOT address -> imported symbol, from .rel.plt ---
$relLines = & $Readelf -rW $So 2>$null
$got = @{}
$relCount = 0
$inPlt = $false
foreach ($l in $relLines) {
  if ($l -match "Relocation section '\.rel\.plt'") { $inPlt = $true; continue }
  if ($l -match 'Relocation section') { $inPlt = $false; continue }
  if (-not $inPlt) { continue }
  if ($l -match '^\s*([0-9a-f]{8})\s+[0-9a-f]{8}\s+R_ARM_JUMP_SLOT\s+[0-9a-f]{8}\s+(\S+)') {
    $a = [Convert]::ToUInt32($matches[1], 16)
    if (-not $got.ContainsKey($a)) { $got[$a] = $matches[2] }
    $relCount++
  }
}

$bytes = [IO.File]::ReadAllBytes($So)
$phLines = & $Readelf -lW $So 2>$null
$segs = New-Object System.Collections.ArrayList
foreach ($l in $phLines) {
  if ($l -match '^\s*LOAD\s+0x([0-9a-f]+)\s+0x([0-9a-f]+)\s+0x[0-9a-f]+\s+0x([0-9a-f]+)') {
    [void]$segs.Add([pscustomobject]@{
      off = [Convert]::ToUInt32($matches[1], 16)
      va  = [Convert]::ToUInt32($matches[2], 16)
      fs  = [Convert]::ToUInt32($matches[3], 16)
    })
  }
}
$seg = $null
foreach ($s in $segs) { if ($PltStart -ge $s.va -and $PltStart -lt ($s.va + $s.fs)) { $seg = $s; break } }
if ($null -eq $seg) { throw 'no LOAD segment covers .plt' }
$delta = $seg.off - $seg.va

function Get-U32([int]$o) {
  return [uint32]([uint32]$bytes[$o] -bor ([uint32]$bytes[$o+1] -shl 8) -bor ([uint32]$bytes[$o+2] -shl 16) -bor ([uint32]$bytes[$o+3] -shl 24))
}
function RotImm([uint32]$instr) {
  $imm8 = [uint32]($instr -band 0xff)
  $rot = [int](($instr -shr 8) -band 0xf) * 2
  if ($rot -eq 0) { return $imm8 }
  return [uint32]((($imm8 -shr $rot) -bor ($imm8 -shl (32 - $rot))) -band 0xffffffff)
}

$map = @{}
$stubs = New-Object System.Collections.ArrayList
for ($va = $PltStart + 16; $va -lt $PltEnd; $va += 4) {
  $fo = $va + $delta
  $i1 = Get-U32 $fo
  $i2 = Get-U32 ($fo + 4)
  $i3 = Get-U32 ($fo + 8)
  if (($i1 -band 0x0fff0000) -ne 0x028f0000) { continue }   # add r12, pc, #imm
  if (($i2 -band 0x0fff0000) -ne 0x028c0000) { continue }   # add r12, r12, #imm
  if (($i3 -band 0x0fff0000) -ne 0x05bc0000) { continue }   # ldr pc, [r12, #imm]!
  $ip = [uint32]((($va + 8) + (RotImm $i1) + (RotImm $i2)) -band 0xffffffff)
  $gotAddr = [uint32](($ip + [uint32]($i3 -band 0xfff)) -band 0xffffffff)
  $nm = if ($got.ContainsKey($gotAddr)) { $got[$gotAddr] } else { '??0x{0:x}' -f $gotAddr }
  $map[$va] = $nm
  [void]$stubs.Add([pscustomobject]@{ va = $va; ann = $va - $PltStart; got = $gotAddr; name = $nm })
}

$sb = New-Object System.Text.StringBuilder
$null = $sb.AppendLine('# PLT map: stub vaddr -> imported symbol (verified by stub-byte decoding)')
$null = $sb.AppendLine(('# source: libsmartbox.so  .plt vaddr = 0x{0:x}   .rel.plt entries = {1}' -f $PltStart, $relCount))
$null = $sb.AppendLine(('# decoded stubs = {0}; distinct GOT slots used = {1}' -f $stubs.Count, ($stubs | ForEach-Object { $_.got } | Sort-Object -Unique).Count))
$null = $sb.AppendLine('# format: stub_vaddr<TAB>objdump_ann (.plt+N)<TAB>got<TAB>symbol')
foreach ($s in $stubs) {
  $null = $sb.AppendLine(('0x{0:x}`t0x{1:x}`t0x{2:x}`t{3}' -f $s.va, $s.ann, $s.got, $s.name))
}
$dir = Split-Path -Parent $OutFile
if (-not (Test-Path $dir)) { New-Item -ItemType Directory -Force -Path $dir | Out-Null }
$final = $sb.ToString().Replace([string][char]96 + "t", [string][char]9)
[IO.File]::WriteAllText($OutFile, $final, (New-Object System.Text.UTF8Encoding($false)))
Write-Output ('decoded stubs={0} relplt={1} -> {2}' -f $stubs.Count, $relCount, $OutFile)
Write-Output ('first stub va=0x{0:x} ann=0x{1:x} last va=0x{2:x} ann=0x{3:x}' -f $stubs[0].va, $stubs[0].ann, $stubs[$stubs.Count-1].va, $stubs[$stubs.Count-1].ann)
foreach ($t in 0x5fcc, 0x6008, 0x6014, 0x5ffc, 0x5498, 0x42ec, 0x6038) {
  $hit = $stubs | Where-Object { $_.ann -eq $t } | Select-Object -First 1
  if ($hit) { Write-Output ('ann 0x{0:x} -> va 0x{1:x} -> {2}' -f $t, $hit.va, $hit.name) } else { Write-Output ('ann 0x{0:x} -> <not a stub>' -f $t) }
}
