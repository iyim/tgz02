# build.ps1 -- T9-04: build the AIDL probe as (a) a plain dex for `app_process` (root, uid 0)
# and (b) a signed APK for a normal unprivileged install.
#
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# The build refuses to continue if the transaction codes compiled into our Stub copies differ
# from the official artifact (read out of com.yunos.tv.alitvasr.IAliTVASR$Stub in the factory
# vdex). Nothing here guesses a transaction number or a Parcel layout.
param(
    [string]$Sdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$BuildTools = "35.0.1",
    [string]$Platform = "android-35",
    [string]$Jdk = "C:\Program Files\Java\jdk-21"
)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

$bt = Join-Path $Sdk "build-tools\$BuildTools"
$androidJar = Join-Path $Sdk "platforms\$Platform\android.jar"
$javac = Join-Path $Jdk 'bin\javac.exe'
$javap = Join-Path $Jdk 'bin\javap.exe'
foreach ($p in @($bt, $androidJar, $javac, $javap)) { if (-not (Test-Path $p)) { throw "missing $p" } }

$build = Join-Path $here 'build'
if (Test-Path $build) { Remove-Item -Recurse -Force $build }
$classes = Join-Path $build 'classes'
New-Item -ItemType Directory -Force $classes | Out-Null

Write-Host "== sources"
$srcFiles = Get-ChildItem -Recurse -Filter *.java (Join-Path $here 'src') | ForEach-Object FullName
$srcFiles | ForEach-Object { Write-Host ("   " + $_.Substring($here.Length + 1)) }

Write-Host "== javac (release 8, android.jar)"
& $javac --release 8 -nowarn -classpath $androidJar -d $classes @srcFiles
if ($LASTEXITCODE -ne 0) { throw "javac failed" }

Write-Host "== transaction code assertion (javap -constants vs the official artifact)"
$expect = @{
    'com.yunos.tv.alitvasr.IAliTVASR$Stub' = @{
        registerCallback = 1; unregisterCallback = 2; setAliTVASREnable = 3; playTTS = 4
        stopTTS = 5; setResultMode = 6; setASRMode = 7; showASRUI = 8; playTTSWithCallback = 9
        updateAppScene = 10; onFarDeviceData = 11; clientToAsr = 12; getService = 13
        sendEventToServer = 14
    }
    'com.yunos.tv.alitvasr.IAliTVASRTTSCallback$Stub' = @{
        onTtsStart = 1; onTtsStop = 2; onException = 3
    }
}
$assertRows = @()
$bad = 0
foreach ($cls in $expect.Keys) {
    $jv = & $javap -p -constants -classpath $classes $cls 2>&1 | Out-String
    foreach ($name in $expect[$cls].Keys) {
        $want = $expect[$cls][$name]
        $m = [regex]::Match($jv, "TRANSACTION_$name\s*=\s*(\d+)")
        $got = if ($m.Success) { [int]$m.Groups[1].Value } else { 'missing' }
        $ok = ($got -eq $want)
        if (-not $ok) { $bad++ }
        $assertRows += ("{0}  {1,-22} want={2,-3} got={3,-3} {4}" -f `
            $(if ($ok) { 'OK  ' } else { 'FAIL' }), $name, $want, $got, $cls)
    }
}
$assertRows | ForEach-Object { Write-Host "   $_" }
if ($bad -ne 0) { throw "$bad transaction code(s) differ from the official artifact" }

Write-Host "== d8 (min-api 27)"
$classFiles = Get-ChildItem -Recurse -Filter *.class $classes | ForEach-Object FullName
$dexOut = Join-Path $build 'dex'
New-Item -ItemType Directory -Force $dexOut | Out-Null
& (Join-Path $bt 'd8.bat') --min-api 27 --lib $androidJar --output $dexOut @classFiles
if ($LASTEXITCODE -ne 0) { throw "d8 failed" }
$dex = Join-Path $dexOut 'classes.dex'
Copy-Item $dex (Join-Path $build 'aidl_probe.dex') -Force
Write-Host ("   classes.dex {0:N0} B" -f (Get-Item $dex).Length)

Write-Host "== aapt2 link"
$baseApk = Join-Path $build 'base.apk'
& (Join-Path $bt 'aapt2.exe') link -o $baseApk -I $androidJar `
    --manifest (Join-Path $here 'AndroidManifest.xml') `
    --min-sdk-version 21 --target-sdk-version 27 --version-code 1 --version-name 1.0
if ($LASTEXITCODE -ne 0) { throw "aapt2 link failed" }

Write-Host "== add classes.dex"
$unsigned = Join-Path $build 'unsigned.apk'
Copy-Item $baseApk $unsigned -Force
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.IO.Compression
$zip = [System.IO.Compression.ZipFile]::Open($unsigned, [System.IO.Compression.ZipArchiveMode]::Update)
try {
    $entryName = 'classes.dex'
    $old = $zip.GetEntry($entryName)
    if ($old) { $old.Delete() }
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $dex, $entryName) | Out-Null
} finally { $zip.Dispose() }

Write-Host "== keystore"
# Persistent test key (outside build/): the probe APK keeps one signature across rebuilds, so
# `adb install -r` keeps working. This is a throw-away probe key, not a product key.
$ks = Join-Path $here 't9_04.keystore'
$keytool = Join-Path $Jdk 'bin\keytool.exe'
$ktOut = Join-Path $build 'keytool.log'
$ktErr = Join-Path $build 'keytool.err'
if (Test-Path $ks) {
    Write-Host "   reusing $ks"
} else {
    $ktArgs = @('-genkeypair', '-keystore', $ks, '-storepass', 'android', '-keypass', 'android',
        '-alias', 'probe', '-keyalg', 'RSA', '-keysize', '2048', '-validity', '10000',
        '-dname', 'CN=TGZ02-T904-probe,O=tgz02,C=CN')
    $kp = Start-Process -FilePath $keytool -ArgumentList $ktArgs -NoNewWindow -Wait -PassThru `
        -RedirectStandardOutput $ktOut -RedirectStandardError $ktErr
    if ($kp.ExitCode -ne 0 -or -not (Test-Path $ks)) {
        Get-Content $ktErr -ErrorAction SilentlyContinue | Write-Host
        throw "keytool failed (exit $($kp.ExitCode))"
    }
}

Write-Host "== zipalign + apksigner"
$aligned = Join-Path $build 'aligned.apk'
& (Join-Path $bt 'zipalign.exe') -f 4 $unsigned $aligned
if ($LASTEXITCODE -ne 0) { throw "zipalign failed" }
$signed = Join-Path $build 'aidl_probe.apk'
& (Join-Path $bt 'apksigner.bat') sign --ks $ks --ks-pass pass:android --key-pass pass:android `
    --min-sdk-version 21 --out $signed $aligned
if ($LASTEXITCODE -ne 0) { throw "apksigner failed" }

Write-Host "== artifacts"
foreach ($f in @((Join-Path $build 'aidl_probe.dex'), $signed)) {
    $h = (Get-FileHash $f -Algorithm SHA256).Hash.ToLower()
    Write-Host ("   {0}  {1,10:N0} B  sha256={2}" -f (Split-Path -Leaf $f), (Get-Item $f).Length, $h)
}
& (Join-Path $bt 'apksigner.bat') verify --print-certs $signed | Select-Object -First 4
Write-Host "EXIT=0"





