# shoot.ps1 -- T9-UI-01: render every prototype screen to a PNG at the real device size.
#
#   powershell -ExecutionPolicy Bypass -File shoot.ps1
#
# Canvas is the device canvas: 1024x600, device scale factor 1 (mdpi, 1dp == 1px).
# Output: ../../evidence/t9-ui-01/<nn>_<screen>.png
#
# Notes
#  - Chrome headless prints Chinese with the Windows CJK font (Microsoft YaHei);
#    the device prints with Noto Sans CJK. Same metrics, slightly different glyph
#    shapes; that difference is expected and documented in the report.
#  - A screen that fails to render still produces a PNG (usually blank), so the
#    script also checks the file size and lists any suspicious shot.
param(
    [string]$Chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe",
    [string]$OutDir = "",
    [switch]$KeepOpen
)
$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
if ($OutDir -eq "") { $OutDir = Join-Path (Split-Path -Parent (Split-Path -Parent $here)) "evidence\t9-ui-01" }
if (-not (Test-Path $Chrome)) { throw "chrome not found: $Chrome" }
New-Item -ItemType Directory -Force $OutDir | Out-Null

$screens = @(
    "home.standby", "home.wake", "home.listening", "home.asr", "home.thinking",
    "home.speaking", "home.stopped", "home.cont", "home.error",
    "skills", "spec.skill", "skill.alarm", "skill.calendar", "skill.music",
    "memory", "settings", "settings.models", "settings.voice", "settings.appearance",
    "settings.system", "about", "home.light", "home.mini"
)

$i = 0
$bad = @()
foreach ($s in $screens) {
    $i++
    $nn = "{0:D2}" -f $i
    $name = ("$nn" + "_" + ($s -replace '\.', '_') + ".png")
    $dst = Join-Path $OutDir $name
    $url = "file:///" + ((Join-Path $here "app.html").Replace('\', '/')) + "?s=" + $s
    $tmp = Join-Path $env:TEMP ("tgz02_shot_" + $nn + ".png")
    if (Test-Path $tmp) { Remove-Item $tmp -Force }
    # --virtual-time-budget lets the JS build the DOM before the shot is taken
    # Chrome prints "N bytes written" on stderr and PS 5.1 turns native stderr into an
    # ErrorRecord. Do NOT redirect the stream: with a redirected stdout/stderr the
    # launcher exits before the renderer finishes and no file is written (verified).
    # Keep the console noise and relax the preference for exactly this call.
    $ErrorActionPreference = "Continue"
    & $Chrome --headless=new --disable-gpu --hide-scrollbars --no-first-run `
        --disable-extensions --force-device-scale-factor=1 `
        --window-size=1024,600 --virtual-time-budget=2500 `
        --screenshot="$tmp" "$url"
    $ErrorActionPreference = "Stop"
    for ($k = 0; $k -lt 40; $k++) {
        if (Test-Path $tmp) {
            $a = (Get-Item $tmp).Length
            Start-Sleep -Milliseconds 120
            $b = (Get-Item $tmp).Length
            if ($a -eq $b -and $a -gt 0) { break }
        }
        Start-Sleep -Milliseconds 120
    }
    if (-not (Test-Path $tmp)) { $bad += $name; Write-Host ("MISS  " + $name); continue }
    Copy-Item $tmp $dst -Force
    $len = (Get-Item $dst).Length
    $w = 0
    try {
        Add-Type -AssemblyName System.Drawing
        $img = [System.Drawing.Image]::FromFile($dst)
        $w = $img.Width; $h = $img.Height
        $img.Dispose()
    } catch { $h = 0 }
    $flag = ""
    if ($len -lt 8000) { $flag = "  <== suspicious (tiny)"; $bad += $name }
    if ($w -ne 1024) { $flag += "  <== width $w" ; $bad += $name }
    Write-Host ("{0,-28} {1,8:N0} B  {2}x{3}{4}" -f $name, $len, $w, $h, $flag)
}

Write-Host ""
Write-Host ("screens: " + $screens.Count + "   output: " + $OutDir)
if ($bad.Count -gt 0) {
    Write-Host ("SUSPICIOUS: " + ($bad -join ", "))
    exit 1
}
Write-Host "EXIT=0"
exit 0
