param(
    [string]$Sdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$BuildTools = "35.0.1",
    [string]$Platform = "android-35",
    [string]$Keystore = "D:\tgz02\OS\system\my-doc\07_ai_bridge\android\t9_04_aidl\t9_04.keystore"
)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$bt = Join-Path $Sdk "build-tools\$BuildTools"
$androidJar = Join-Path $Sdk "platforms\$Platform\android.jar"
foreach ($p in @($bt, $androidJar, $Keystore)) { if (-not (Test-Path $p)) { throw "missing $p" } }

# --- package list: name -> package id (versionCode is always the int max) ---
$targets = @(
    @{ dir = "cook";   pkg = "com.alibaba.ailabs.genie.cook" },
    @{ dir = "ayland"; pkg = "com.anthouse.ayland" },
    @{ dir = "camera"; pkg = "com.alibaba.ailabs.genie.camera" }
)

foreach ($t in $targets) {
    $d = Join-Path $here $t.dir
    New-Item -ItemType Directory -Force $d | Out-Null
    $mf = Join-Path $d 'AndroidManifest.xml'
    $xml = @"
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="$($t.pkg)"
    android:versionCode="2147483647"
    android:versionName="9.9.9-placeholder">
    <uses-sdk android:minSdkVersion="21" android:targetSdkVersion="27" />
    <application android:label="$($t.dir)" android:hasCode="false" android:allowBackup="false" />
</manifest>
"@
    [IO.File]::WriteAllText($mf, $xml, (New-Object Text.UTF8Encoding($false)))

    $base = Join-Path $d 'base.apk'
    $signed = Join-Path $d 'placeholder.apk'
    if (Test-Path $base) { Remove-Item $base -Force }
    if (Test-Path $signed) { Remove-Item $signed -Force }

    & (Join-Path $bt 'aapt2.exe') link -o $base -I $androidJar --manifest $mf `
        --min-sdk-version 21 --target-sdk-version 27 `
        --version-code 2147483647 --version-name 9.9.9-placeholder
    if ($LASTEXITCODE -ne 0) { throw "aapt2 failed for $($t.pkg)" }

    & (Join-Path $bt 'apksigner.bat') sign --ks $Keystore --ks-pass pass:android --key-pass pass:android `
        --min-sdk-version 21 --out $signed $base
    if ($LASTEXITCODE -ne 0) { throw "apksigner failed for $($t.pkg)" }

    $h = (Get-FileHash $signed -Algorithm SHA256).Hash.ToLower()
    Write-Host ("{0,-42} {1,6:N0} B  sha256={2}" -f $t.pkg, (Get-Item $signed).Length, $h.Substring(0,12))
}
Write-Host "done"
