# t9_19f_reapply_placeholders.ps1 -- put the appbox preinstall placeholders back.
#
#   powershell -ExecutionPolicy Bypass -File t9_19f_reapply_placeholders.ps1
#
# Why this exists: appbox's PreinstallManager.isPreinstall() asks
#   SystemUtil.isApkAvailable(pkg)  -> pm.getApplicationInfo(pkg,128) != null
# and SystemUtil.isApkShouldUpdate(pkg,ver) -> versionCode < manifest value.
# A same-name package with versionCode 2147483647 therefore makes the store skip both
# "preinstall this missing app" and "update it", without touching the CDN.
#
# Run this only if one of them shows up as the real app again (someone uninstalled the
# placeholder), or after a full image re-flash.
param(
    [string]$Serial = "192.168.1.9:5555",
    [string]$Repo = "D:\tgz02\OS"
)

$ErrorActionPreference = 'Continue'
adb connect $Serial | Out-Null

$map = @(
    @{ pkg = "com.alibaba.ailabs.genie.cook"; apk = "placeholder\cook\placeholder.apk" },
    @{ pkg = "com.anthouse.ayland";           apk = "placeholder\ayland\placeholder.apk" }
)

foreach ($m in $map) {
    $line = (adb -s $Serial shell "dumpsys package $($m.pkg) | grep -m1 versionName") -join ''
    if ($line -match 'placeholder') {
        Write-Host ("OK      {0}  ({1})" -f $m.pkg, $line.Trim())
        continue
    }
    Write-Host ("FIXING  {0}  -> {1}" -f $m.pkg, ($line.Trim()))
    adb -s $Serial uninstall $m.pkg | Out-Null
    $apk = Join-Path $Repo $m.apk
    if (-not (Test-Path $apk)) { Write-Host "   missing $apk"; continue }
    adb -s $Serial install $apk | Select-Object -Last 1
}
Write-Host "done"
