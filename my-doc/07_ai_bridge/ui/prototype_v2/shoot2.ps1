# shoot2.ps1 -- T9-UI-01-V2: render V2 prototype screens to PNG at 1024x600
# plus export the character states and illustrations as PNG assets.
#
#   powershell -ExecutionPolicy Bypass -File shoot2.ps1
#
# Screenshots -> ../../evidence/t9-ui-01-v2/shots/
# Assets      -> ../../evidence/t9-ui-01-v2/assets/character + /illustrations
param(
    [string]$Chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe",
    [string]$OutDir = ""
)
$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$root = Split-Path -Parent (Split-Path -Parent $here)
if ($OutDir -eq "") { $OutDir = Join-Path $root "evidence\t9-ui-01-v2" }
if (-not (Test-Path $Chrome)) { throw "chrome not found: $Chrome" }
$shots = Join-Path $OutDir "shots"
$chars = Join-Path $OutDir "assets\character"
$ills  = Join-Path $OutDir "assets\illustrations"
New-Item -ItemType Directory -Force $shots, $chars, $ills | Out-Null

function Shot([string]$url, [string]$dst, [int]$w, [int]$h) {
    $tmp = Join-Path $env:TEMP ("v2_" + [IO.Path]::GetFileNameWithoutExtension($dst) + ".png")
    if (Test-Path $tmp) { Remove-Item $tmp -Force }
    $ErrorActionPreference = "Continue"
    & $Chrome --headless=new --disable-gpu --hide-scrollbars --no-first-run `
        --disable-extensions --force-device-scale-factor=1 `
        --window-size="$w,$h" --virtual-time-budget=2500 `
        --screenshot="$tmp" "$url"
    $ErrorActionPreference = "Stop"
    for ($k = 0; $k -lt 50; $k++) {
        if (Test-Path $tmp) {
            $a = (Get-Item $tmp).Length
            Start-Sleep -Milliseconds 100
            $b = (Get-Item $tmp).Length
            if ($a -eq $b -and $a -gt 0) { break }
        }
        Start-Sleep -Milliseconds 100
    }
    if (Test-Path $tmp) { Copy-Item $tmp $dst -Force; Remove-Item $tmp -Force }
    return (Test-Path $dst)
}

$base = "file:///" + ($here.Replace('\', '/'))

# ---- 1. screens (1024x600) -------------------------------------------------
$screens = @(
    @{ f = "01_home_standby_kid";    q = "s=home&state=standby" },
    @{ f = "02_home_wake";           q = "s=home&state=wake" },
    @{ f = "03_home_listening";      q = "s=home&state=listening" },
    @{ f = "04_home_asr";            q = "s=home&state=asr" },
    @{ f = "05_home_thinking";       q = "s=home&state=thinking" },
    @{ f = "06_home_speaking";       q = "s=home&state=speaking" },
    @{ f = "07_home_stopped";        q = "s=home&state=stopped" },
    @{ f = "08_home_cont";           q = "s=home&state=cont" },
    @{ f = "09_home_error";          q = "s=home&state=error" },
    @{ f = "10_home_standby_calm";   q = "s=home&state=standby&mode=calm" },
    @{ f = "11_skills_kid";          q = "s=skills" },
    @{ f = "12_skills_calm";         q = "s=skills&mode=calm" },
    @{ f = "13_skill_alarm";         q = "s=skill.alarm" },
    @{ f = "14_skill_calendar";      q = "s=skill.calendar" },
    @{ f = "15_skill_music";         q = "s=skill.music" },
    @{ f = "16_memory";              q = "s=memory" },
    @{ f = "17_settings";            q = "s=settings" },
    @{ f = "18_settings_models";     q = "s=models" },
    @{ f = "19_about";               q = "s=about" },
    @{ f = "20_about_calm";          q = "s=about&mode=calm" }
)
$bad = @()
foreach ($s in $screens) {
    $ok = Shot "$base/app2.html?$($s.q)" (Join-Path $shots ($s.f + ".png")) 1024 600
    $n = $s.f
    if (-not $ok) { $bad += $n; Write-Host "MISS  $n" } else { Write-Host "ok    $n" }
}

# ---- 2. character states (400x400) -----------------------------------------
$states = @{ idle="idle"; awake="awake"; listening="listening"; thinking="thinking";
             speaking="speaking"; happy="happy"; confused="confused"; sleep="sleep"; error="error" }
foreach ($k in $states.Keys) {
    # char_test.html renders one big sheet; render the single character via app2? -> use a tiny page
    $ok = Shot "$base/char_one.html?state=$k" (Join-Path $chars ("puddin_" + $k + ".png")) 400 400
    if (-not $ok) { $bad += "puddin_" + $k; Write-Host "MISS  puddin_$k" } else { Write-Host "ok    puddin_$k" }
}

# ---- 3. illustrations (800x600) ---------------------------------------------
foreach ($k in @("alarm","calendar","music","weather","device","memory","settings")) {
    $ok = Shot "$base/illus_one.html?name=$k" (Join-Path $ills ("illus_" + $k + ".png")) 800 600
    if (-not $ok) { $bad += "illus_" + $k; Write-Host "MISS  illus_$k" } else { Write-Host "ok    illus_$k" }
}

Write-Host ""
if ($bad.Count -gt 0) { Write-Host ("FAILED: " + ($bad -join ", ")); exit 1 }
Write-Host "ALL OK"
