# build the throwaway capability probe APK
param(
    [string]$Sdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$BuildTools = "35.0.1",
    [string]$Platform = "android-35",
    [string]$Jdk = "C:\Program Files\Java\jdk-21",
    [string]$Keystore = "D:\tgz02\OS\system\my-doc\07_ai_bridge\android\t9_04_aidl\t9_04.keystore"
)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.IO.Compression

$bt = Join-Path $Sdk "build-tools\$BuildTools"
$androidJar = Join-Path $Sdk "platforms\$Platform\android.jar"
$javac = Join-Path $Jdk 'bin\javac.exe'
$build = Join-Path $here 'build'
if (Test-Path $build) { Remove-Item -Recurse -Force $build }
$classes = Join-Path $build 'classes'
New-Item -ItemType Directory -Force $classes | Out-Null

$srcs = Get-ChildItem -Recurse -Filter *.java (Join-Path $here 'src') | ForEach-Object { $_.FullName }
$ErrorActionPreference = 'Continue'
& $javac --release 8 -classpath $androidJar -nowarn -d $classes $srcs 2>&1 | Out-String | Write-Host
if ($LASTEXITCODE -ne 0) { throw 'javac failed' }
$ErrorActionPreference = 'Stop'

$dexdir = Join-Path $build 'dex'
New-Item -ItemType Directory -Force $dexdir | Out-Null
& (Join-Path $bt 'd8.bat') --min-api 25 --output $dexdir (Get-ChildItem -Recurse -Filter *.class $classes | ForEach-Object { $_.FullName }) 2>&1 | Out-String | Write-Host
if ($LASTEXITCODE -ne 0) { throw 'd8 failed' }

$base = Join-Path $build 'base.apk'
& (Join-Path $bt 'aapt2.exe') link -o $base -I $androidJar --manifest (Join-Path $here 'AndroidManifest.xml') --min-sdk-version 25 --target-sdk-version 27 2>&1 | Out-String | Write-Host
if ($LASTEXITCODE -ne 0) { throw 'aapt2 link failed' }

Copy-Item (Join-Path $dexdir 'classes.dex') (Join-Path $build 'classes.dex') -Force
$zip = [System.IO.Compression.ZipFile]::Open($base, 'Update')
[System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, (Join-Path $build 'classes.dex'), 'classes.dex') | Out-Null
$zip.Dispose()

$aligned = Join-Path $build 'aligned.apk'
& (Join-Path $bt 'zipalign.exe') -f 4 $base $aligned
$signed = Join-Path $here 'musicprobe.apk'
if (Test-Path $signed) { Remove-Item $signed -Force }
& (Join-Path $bt 'apksigner.bat') sign --ks $Keystore --ks-pass pass:android --key-pass pass:android --min-sdk-version 25 --out $signed $aligned 2>&1 | Out-String | Write-Host
if ($LASTEXITCODE -ne 0) { throw 'apksigner failed' }
Write-Host ("OK {0} ({1} bytes)" -f $signed, (Get-Item $signed).Length)
