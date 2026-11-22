param(
  [string]$FullText = 'D:\tgz02\OS\_analysis\t8_12_p3\full_text.asm.txt',
  [string]$PltMap  = 'D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t8-12-p3\plt_map.txt',
  [string]$Symbol   = 'Message6obtain',
  [int]$Back = 18,
  [string]$OutFile = ''
)

# Find every call site of a PLT-imported symbol in a full objdump listing and print
# the preceding instructions so the call's argument registers can be read.
# Usage example: -Symbol Message6obtain   (matches the mangled name in the PLT map)

$ann = $null
$mangled = $null
foreach ($l in (Get-Content $PltMap)) {
  if ($l -match '^(0x[0-9a-f]+)\t(0x[0-9a-f]+)\t0x[0-9a-f]+\t(\S+)$') {
    if ($matches[3] -like "*$Symbol*") {
      $ann = $matches[2]; $mangled = $matches[3]; break
    }
  }
}
if ($null -eq $ann) { throw "no PLT entry matches '$Symbol'" }
Write-Output ("symbol {0}  plt stub 0x{1:x}  annotation {2}" -f $mangled, ([Convert]::ToInt32($ann,16)), $ann)

$needle = '<.plt+' + $ann + '>'
$lines = Get-Content $FullText -ReadCount 0
$sb = New-Object System.Text.StringBuilder
$null = $sb.AppendLine("# call-site dump for $mangled")
$null = $sb.AppendLine("# plt annotation $ann ; context = previous $Back instructions")
$hits = 0
for ($i = 0; $i -lt $lines.Count; $i++) {
  if ($lines[$i].Contains($needle)) {
    $hits++
    $null = $sb.AppendLine('')
    $null = $sb.AppendLine(('=== call site #{0} ===' -f $hits))
    $from = [Math]::Max(0, $i - $Back)
    for ($j = $from; $j -le $i; $j++) { $null = $sb.AppendLine($lines[$j]) }
  }
}
Write-Output ("call sites: {0}" -f $hits)
$txt = $sb.ToString()
if ($OutFile -ne '') {
  [IO.File]::WriteAllText($OutFile, $txt, (New-Object System.Text.UTF8Encoding($false)))
  Write-Output ("wrote {0}" -f $OutFile)
} else { Write-Output $txt }
