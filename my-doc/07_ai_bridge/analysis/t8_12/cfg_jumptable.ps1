# t8_12p2_cfg.ps1 -- T8-12 phase2: map SessionProxy::onHandler jump table to branches,
# then compute, per branch entry, the reachable PLT calls (BFS over the local CFG).
# BFS is an OVER-APPROXIMATION: "reachable" != "always executed".
# ASCII only. Read-only.
param(
    [string]$So  = "D:\tgz02\OS\_analysis\t6\libsmartbox.so",
    [string]$Out = "D:\tgz02\OS\system\my-doc\07_ai_bridge\evidence\t8-12-p2",
    [string]$FnStart = "0x11c238",
    [string]$FnStop  = "0x11cd9c",
    [string]$TblBase = "0x11c290",
    [string]$TblCount = "8",
    [string]$ExtraRoots = ""
)
$ErrorActionPreference = "Stop"
$b  = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin"
$RE = Join-Path $b "arm-linux-androideabi-readelf.exe"
$OD = Join-Path $b "llvm-objdump.exe"
New-Item -ItemType Directory -Force -Path $Out | Out-Null

# --- rel.plt ordered symbols ---
$rel = & $RE -rW $So 2>$null
$inPlt = $false
$syms = New-Object System.Collections.Generic.List[string]
foreach ($line in $rel) {
    if ($line -match "^Relocation section '\.rel\.plt'") { $inPlt = $true; continue }
    if ($inPlt -and $line -match "^Relocation section") { $inPlt = $false }
    if (-not $inPlt) { continue }
    if ($line -match "^\s*([0-9a-f]{8})\s+([0-9a-f]{8})\s+R_ARM_\S+\s+([0-9a-f]+)\s+(\S+)") { $syms.Add($matches[4]) }
}
$PLT0 = 0x8d39c; $STUB0 = 0x8d3b0
function PltName([int64]$target) {
    $k = [int](($target - $STUB0) / 12.0)
    $rem = ($target - $STUB0) % 12
    if ($rem -eq 0 -and $k -ge 0 -and $k -lt $syms.Count) { return "plt[$k] $($syms[$k])" }
    return ""
}

$fnBase = [Convert]::ToInt64($FnStart,16)
$dis = & $OD -d --demangle --start-address=$FnStart --stop-address=$FnStop $So 2>&1

$ins = @{}
$order = New-Object System.Collections.Generic.List[int64]
foreach ($line in $dis) {
    if ($line -notmatch '^\s*([0-9a-f]+):\s+[0-9a-f ]+\s+(\S+)\s*(.*)$') { continue }
    $a = [Convert]::ToInt64($matches[1],16)
    $mn = $matches[2].ToLower()
    $ops = $matches[3].Trim()
    $ins[$a] = @{ addr=$a; mn=$mn; ops=$ops; succ=(New-Object System.Collections.Generic.List[int64]) }
    $order.Add($a)
}

$cond = @('beq','bne','bhi','bls','bgt','ble','bcs','bcc','bmi','bpl','bvs','bvc','bhs','blo','cbz','cbnz')
foreach ($a in $order) {
    $i = $ins[$a]
    $next = $a + 4
    $s = $i.succ
    $mn = $i.mn
    if ($i.ops -match '<[^>]*\+0x([0-9a-f]+)>') {
        $tgt = $fnBase + [Convert]::ToInt64($matches[1],16)
        if ($mn -eq 'b') { $s.Add($tgt) }
        elseif ($cond -contains $mn) { $s.Add($tgt); $s.Add($next) }
        else { $s.Add($next) }
    }
    elseif ($i.ops -match '<\.plt\+0x') { $s.Add($next) }
    elseif ($mn -eq 'b') { }
    elseif ($mn -eq 'bl' -or $mn -eq 'blx') { $s.Add($next) }
    elseif ($cond -contains $mn) { $s.Add($next) }
    elseif ($mn -eq 'pop' -and $i.ops -match '\bpc\b') { }
    elseif ($mn -eq 'bx' -and $i.ops -match '\blr\b') { }
    elseif ($mn -eq 'ldr' -and $i.ops -match '^\s*pc,') { }
    elseif ($mn -eq 'add' -and $i.ops -match '^\s*pc,') { }
    elseif ($mn -eq 'mov' -and $i.ops -match '^\s*pc,') { }
    else { $s.Add($next) }
}

# --- jump table bytes ---
$sec = (& $RE -SW $So 2>$null) | Select-String -Pattern "\.text\s+PROGBITS" | Select-Object -First 1
if ($sec -match "PROGBITS\s+([0-9a-f]{8})\s+([0-9a-f]{6,8})\s+([0-9a-f]{6,8})") {
    $tvaddr = [Convert]::ToInt64($matches[1],16)
    $toff   = [Convert]::ToInt64($matches[2],16)
} else { throw "cannot locate .text" }
$tblBaseI = [Convert]::ToInt64($TblBase,16)
$cnt = [int]$TblCount
$fs = [IO.File]::OpenRead($So)
$fs.Position = $toff + ($tblBaseI - $tvaddr)
$buf = New-Object byte[] ($cnt*4)
$null = $fs.Read($buf,0,$cnt*4)
$fs.Close()

function Reach([int64]$root) {
    $seen = New-Object System.Collections.Generic.HashSet[int64]
    $q = New-Object System.Collections.Generic.Queue[int64]
    $q.Enqueue($root)
    while ($q.Count -gt 0) {
        $n = $q.Dequeue()
        if (-not $seen.Add($n)) { continue }
        if (-not $ins.ContainsKey($n)) { continue }
        foreach ($x in $ins[$n].succ) { if (-not $seen.Contains($x)) { $q.Enqueue($x) } }
    }
    return $seen
}

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T8-12 phase2: SessionProxy::onHandler jump table -> branch entries -> reachable PLT calls")
$lines.Add("# function 0x11c238..0x11cd9c   table base 0x11c290   entries 8   (what = idx + 1)")
$lines.Add("# dispatch: 0x11c278 sub r0,r8,#1 ; 0x11c27c cmp r0,#7 ; 0x11c280 bhi -> 0x11c5c0")
$lines.Add("#           0x11c284 add r1,pc,#4 (=0x11c290) ; 0x11c288 ldr r0,[r1,r0,lsl #2] ; 0x11c28c add pc,r1,r0")
$lines.Add("# NOTE: reachability is an over-approximation (both edges of every conditional branch are followed).")
for ($k = 0; $k -lt $cnt; $k++) {
    $v = [BitConverter]::ToUInt32($buf, $k*4)
    $tgt = $tblBaseI + $v
    $what = $k + 1
    $lines.Add("")
    $lines.Add([string]::Format("=== what={0}  idx={1}  table[0x{2:x}] = 0x{3:x8}  ->  branch 0x{4:x}", $what, $k, ($tblBaseI + $k*4), $v, $tgt))
    $seen = Reach $tgt
    $lines.Add("  reachable instructions: $($seen.Count)")
    foreach ($a in ($seen | Sort-Object)) {
        if (-not $ins.ContainsKey($a)) { continue }
        $i = $ins[$a]
        if ($i.mn -eq 'bl' -or $i.mn -eq 'blx') {
            if ($i.ops -match '<\.plt\+0x([0-9a-f]+)>') {
                $ptgt = $PLT0 + [Convert]::ToInt64($matches[1],16)
                $nm = PltName $ptgt
                if ($nm -ne "") { $lines.Add(("  0x{0:x}  {1}" -f $a, $nm)) }
            } elseif ($i.ops -match '<([^>+]+)>') {
                $lines.Add(("  0x{0:x}  direct {1}" -f $a, $matches[1]))
            }
        }
    }
}
if ($ExtraRoots -ne "") {
    foreach ($er in $ExtraRoots.Split(",")) {
        $tgt = [Convert]::ToInt64($er.Trim(),16)
        $lines.Add("")
        $lines.Add([string]::Format("=== EXTRA ROOT 0x{0:x}  (dispatch target used when what-1 > 7, or a shared tail)", $tgt))
        $seen = Reach $tgt
        $lines.Add("  reachable instructions: $($seen.Count)")
        foreach ($a in ($seen | Sort-Object)) {
            if (-not $ins.ContainsKey($a)) { continue }
            $i = $ins[$a]
            if ($i.mn -eq 'bl' -or $i.mn -eq 'blx') {
                if ($i.ops -match '<\.plt\+0x([0-9a-f]+)>') {
                    $ptgt = $PLT0 + [Convert]::ToInt64($matches[1],16)
                    $nm = PltName $ptgt
                    if ($nm -ne "") { $lines.Add(("  0x{0:x}  {1}" -f $a, $nm)) }
                }
            }
        }
    }
}
[System.IO.File]::WriteAllLines((Join-Path $Out "jump_table_branches.txt"), $lines, (New-Object System.Text.UTF8Encoding($false)))
"wrote jump_table_branches.txt  lines=$($lines.Count)" | Write-Output
