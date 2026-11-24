# build.ps1 -- T9-07: build the product UI APK (ordinary unprivileged app).
#
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# Same verified toolchain as T9-04/T9-06: javac --release 8 + d8 (build-tools 35.0.1) +
# aapt2 + zipalign + apksigner. No res/ tree by design, so aapt2 only links the manifest.
# The signing key is the shared probe key (one throw-away key covers all local builds).
#   -Test  also compiles src_test/ and links AndroidManifest.test.xml: that build contains the
#          automation driver (TestConversationActivity). The default build has no test entry
#          point at all -- ConversationActivity never reads an Intent.
param(
    [string]$Sdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$BuildTools = "35.0.1",
    [string]$Platform = "android-35",
    [string]$Jdk = "C:\Program Files\Java\jdk-21",
    [string]$Keystore = "",
    [switch]$Test
)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

$bt = Join-Path $Sdk "build-tools\$BuildTools"
$androidJar = Join-Path $Sdk "platforms\$Platform\android.jar"
$javac = Join-Path $Jdk 'bin\javac.exe'
foreach ($p in @($bt, $androidJar, $javac)) { if (-not (Test-Path $p)) { throw "missing $p" } }

if ($Keystore -eq "") { $Keystore = Join-Path (Split-Path -Parent $here) 't9_04_aidl\t9_04.keystore' }
if (-not (Test-Path $Keystore)) { throw "missing signing key $Keystore" }

$build = Join-Path $here 'build'
if (Test-Path $build) { Remove-Item -Recurse -Force $build }
$classes = Join-Path $build 'classes'
New-Item -ItemType Directory -Force $classes | Out-Null

$manifest = Join-Path $here 'AndroidManifest.xml'
$apkName = 'voice_ui.apk'
$vn = '1.1.0'
if ($Test) {
    $manifest = Join-Path $here 'AndroidManifest.test.xml'
    $apkName = 'voice_ui_test.apk'
    $vn = '1.1.0-test'
    Write-Host "== TEST BUILD: src_test/ included, the automation driver is in this APK"
}

Write-Host "== sources"
$srcFiles = @(Get-ChildItem -Recurse -Filter *.java (Join-Path $here 'src') | ForEach-Object FullName)
if ($Test) {
    $srcFiles += @(Get-ChildItem -Recurse -Filter *.java (Join-Path $here 'src_test') | ForEach-Object FullName)
}
$srcFiles | ForEach-Object { Write-Host ("   " + $_.Substring($here.Length + 1)) }

Write-Host "== javac (release 8, utf-8 sources, android.jar)"
& $javac --release 8 -encoding UTF-8 -nowarn -classpath $androidJar -d $classes $srcFiles
if ($LASTEXITCODE -ne 0) { throw "javac failed" }

Write-Host "== d8 (min-api 27)"
$classFiles = @(Get-ChildItem -Recurse -Filter *.class $classes | ForEach-Object FullName)
$dexOut = Join-Path $build 'dex'
New-Item -ItemType Directory -Force $dexOut | Out-Null
& (Join-Path $bt 'd8.bat') --min-api 27 --lib $androidJar --output $dexOut $classFiles
if ($LASTEXITCODE -ne 0) { throw "d8 failed" }
$dex = Join-Path $dexOut 'classes.dex'

Write-Host "== aapt2 link"
$baseApk = Join-Path $build 'base.apk'
& (Join-Path $bt 'aapt2.exe') link -o $baseApk -I $androidJar `
    --manifest $manifest `
    --min-sdk-version 21 --target-sdk-version 27 --version-code 2 --version-name $vn
if ($LASTEXITCODE -ne 0) { throw "aapt2 link failed" }

Write-Host "== add classes.dex"
$unsigned = Join-Path $build 'unsigned.apk'
Copy-Item $baseApk $unsigned -Force
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.IO.Compression
$zip = [System.IO.Compression.ZipFile]::Open($unsigned, [System.IO.Compression.ZipArchiveMode]::Update)
try {
    $old = $zip.GetEntry('classes.dex')
    if ($old) { $old.Delete() }
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $dex, 'classes.dex') | Out-Null
} finally { $zip.Dispose() }

Write-Host "== zipalign + apksigner"
$aligned = Join-Path $build 'aligned.apk'
& (Join-Path $bt 'zipalign.exe') -f 4 $unsigned $aligned
if ($LASTEXITCODE -ne 0) { throw "zipalign failed" }
$signed = Join-Path $build $apkName
& (Join-Path $bt 'apksigner.bat') sign --ks $Keystore --ks-pass pass:android --key-pass pass:android `
    --min-sdk-version 21 --out $signed $aligned
if ($LASTEXITCODE -ne 0) { throw "apksigner failed" }

Write-Host "== artifacts"
# keep a copy outside build/ so "production" and "test" APKs can coexist (build/ is wiped)
$dist = Join-Path $here 'dist'
New-Item -ItemType Directory -Force $dist | Out-Null
Copy-Item $signed (Join-Path $dist $apkName) -Force
foreach ($f in @($dex, $signed, (Join-Path $dist $apkName))) {
    $h = (Get-FileHash $f -Algorithm SHA256).Hash.ToLower()
    Write-Host ("   {0}  {1,8:N0} B  sha256={2}" -f (Split-Path -Leaf $f), (Get-Item $f).Length, $h)
}
& (Join-Path $bt 'apksigner.bat') verify --print-certs $signed | Select-Object -First 2
Write-Host "EXIT=0"
