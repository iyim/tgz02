param(
  [string]$FullText = 'D:\tgz02\OS\_analysis\t8_12_p3\full_text.asm.txt',
  [string]$So = 'D:\tgz02\OS\_analysis\t6\libsmartbox.so',
  [string]$PltMap = 'D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t8-12-p3\plt_map.txt',
  [string]$Symbol = 'Message6obtain',
  [int]$Back = 24,
  [string]$OutFile = ''
)

# Table of call sites of one PLT symbol: address, containing function, and the
# nearest preceding write to r1/r2/r3 (the arguments this library passes).

$readelf = 'D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\llvm-readelf.exe'

$ann = $null; $mangled = $null
foreach ($l in (Get-Content $PltMap)) {
  if ($l -match '^(0x[0-9a-f]+)\t(0x[0-9a-f]+)\t0x[0-9a-f]+\t(\S+)$') {
    if ($matches[3] -like "*$Symbol*") { $ann = $matches[2]; $mangled = $matches[3]; break }
  }
}
if ($null -eq $ann) { throw "no PLT entry matches '$Symbol'" }

$funcs = New-Object System.Collections.ArrayList
foreach ($l in (& $readelf -sW $So 2>$null)) {
  if ($l -match '^\s*\d+:\s+([0-9a-f]{8})\s+(\d+)\s+FUNC\s+\w+\s+\w+\s+\d+\s+(\S+)') {
    [void]$funcs.Add([pscustomobject]@{ addr=[Convert]::ToInt32($matches[1],16); size=[int]$matches[2]; name=$matches[3] })
  }
}
$funcs = $funcs | Sort-Object addr
function FuncOf([int]$t) {
  $best = $null
  foreach ($f in $funcs) { if ($f.addr -le $t) { $best = $f } else { break } }
  if ($null -ne $best -and $best.size -gt 0 -and $t -lt ($best.addr + $best.size)) { return $best.name }
  if ($null -ne $best) { return ('~' + $best.name + '+0x{0:x}' -f ($t - $best.addr)) }
  return '?'
}

$needle = '<.plt+' + $ann + '>'
$lines = Get-Content $FullText -ReadCount 0
$sb = New-Object System.Text.StringBuilder
$null = $sb.AppendLine("# $mangled  (plt annotation $ann)")
$null = $sb.AppendLine('# addr | containing function | r0 (what) | r1 (arg1/sid) | r2 (arg2) | r3 (arg3)')
$rows = 0
for ($i = 0; $i -lt $lines.Count; $i++) {
  if (-not $lines[$i].Contains($needle)) { continue }
  if ($lines[$i] -notmatch '^\s+([0-9a-f]+):\s+(bl|blx)\s') { continue }
  $addr = [Convert]::ToInt32($matches[1], 16)
  $r0 = ''; $r1 = ''; $r2 = ''; $r3 = ''
  for ($j = $i - 1; $j -ge [Math]::Max(0, $i - $Back); $j--) {
    if ($lines[$j] -notmatch '^\s+[0-9a-f]+:\s+(\S+)\s+(.*)$') { continue }
    $mn = $matches[1]; $ops = $matches[2]
    if ($r0 -eq '' -and $ops -match '^r0, (.*)$') { $r0 = "$mn $($matches[1])" }
    if ($r1 -eq '' -and $ops -match '^r1, (.*)$') { $r1 = "$mn $($matches[1])" }
    if ($r2 -eq '' -and $ops -match '^r2, (.*)$') { $r2 = "$mn $($matches[1])" }
    if ($r3 -eq '' -and $ops -match '^r3, (.*)$') { $r3 = "$mn $($matches[1])" }
  }
  $rows++
  $null = $sb.AppendLine(('0x{0:x}`t{1}`t{2}`t{3}`t{4}`t{5}' -f $addr, (FuncOf $addr), $r0, $r1, $r2, $r3))
}
$txt = $sb.ToString()
if ($OutFile -ne '') { [IO.File]::WriteAllText($OutFile, $txt, (New-Object System.Text.UTF8Encoding($false))); Write-Output "rows=$rows -> $OutFile" } else { Write-Output $txt }
