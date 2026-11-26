# build.ps1 -- T9-UI-02: build the V2 kid-friendly product UI APK.
#
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# Same verified toolchain as T9-04..T9-08C: javac --release 8 + d8 (build-tools 35.0.1)
# + aapt2 + zipalign + apksigner.
#
# T9-UI-02 change: images ship in APK **assets/** (aapt2 link -A).  The project still has
# NO res/ tree -- aapt2 only links the manifest.  The asset payload is generated from the
# T9-UI-01-V2 design exports (evidence/t9-ui-01-v2/assets) into assets/ui/ before the
# link step; aapt2 embeds them under assets/ui/ inside the APK, and Ui3.java reads them
# with AssetManager.open("ui/<name>.png").
#
# Compiled sources: V2 shell + pages + the T9-08C model stack.  ConversationActivity /
# MoreActivity / SettingsActivity are no longer compiled (superseded by the V2 pages;
# code kept in the repo for reference).
#
#   -Test  also compiles src_test/ and links AndroidManifest.test.xml: that build contains
#          the automation driver. The default build has no test entry point at all.
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
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.IO.Compression

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
# T9-10-R1: the version lives in the manifest only -- one source of truth, so the committed
# manifest, the built APK and the delivery report can never disagree again.
$mfText = [IO.File]::ReadAllText($manifest, [Text.Encoding]::UTF8)
$vc = [regex]::Match($mfText, 'android:versionCode="(\d+)"').Groups[1].Value
$vn = [regex]::Match($mfText, 'android:versionName="([^"]+)"').Groups[1].Value
if (-not $vc -or -not $vn) { throw 'manifest has no versionCode/versionName' }
Write-Host ("== version: code={0} name={1} (from manifest)" -f $vc, $vn)
if ($Test) {
    $manifest = Join-Path $here 'AndroidManifest.test.xml'
    $apkName = 'voice_ui_test.apk'
    $vn = $vn + '-test'
    Write-Host "== TEST BUILD: src_test/ included, the automation driver is in this APK"
}

Write-Host "== assets (from the T9-UI-01-V2 design exports)"
$assetsDir = Join-Path $build 'assets\ui'
New-Item -ItemType Directory -Force $assetsDir | Out-Null
# android\t9_07_ui -> android -> 07_ai_bridge  (evidence lives under 07_ai_bridge)
$bridgeRoot = Split-Path -Parent (Split-Path -Parent $here)
$assetSrc = Join-Path $bridgeRoot 'evidence\t9-ui-01-v2\assets'
if (-not (Test-Path $assetSrc)) { throw "missing V2 asset exports: $assetSrc" }
$copyCount = 0
Get-ChildItem -Recurse -Filter *.png $assetSrc | ForEach-Object {
    $flavor = $_.Directory.Name          # character | illustrations
    if ($flavor -eq 'character') { $name = $_.Name } else { $name = $_.Name }
    Copy-Item $_.FullName (Join-Path $assetsDir $name) -Force
    $copyCount++
}
Write-Host ("   copied {0} PNGs into assets/ui/" -f $copyCount)
if ($copyCount -lt 16) { throw "asset payload looks wrong ($copyCount files)" }

# T9-14: V3 design assets (12 RGBA PNGs, downscaled to 640) go into assets/ui/v3/
# alongside the old set -- parallel import, no overwrite (handoff doc Q1).
$v3src = Join-Path $here 'assets_v3'
if (Test-Path $v3src) {
    $v3dst = Join-Path $build 'assets\ui\v3'
    New-Item -ItemType Directory -Force $v3dst | Out-Null
    $v3count = 0
    Get-ChildItem -Filter *.png $v3src | ForEach-Object {
        Copy-Item $_.FullName (Join-Path $v3dst $_.Name) -Force
        $v3count++
    }
    Write-Host ("   copied {0} V3 PNGs into assets/ui/v3/" -f $v3count)
    if ($v3count -lt 12) { throw "V3 asset payload looks wrong ($v3count files)" }
}

Write-Host "== aidl (T9-10 product backend interface)"
# One file per invocation: aidl 35.0.1 in this tree has overwritten another input when handed
# several files at once (see android/t9_09_binder_arch/build.ps1). Inputs are hashed so a mutated
# .aidl aborts the build instead of silently shipping the wrong interface.
$gen = Join-Path $build 'gen'
New-Item -ItemType Directory -Force $gen | Out-Null
$aidlRoot = Join-Path $here 'aidl'
$aidlFiles = @(Get-ChildItem -Recurse -Filter *.aidl $aidlRoot | ForEach-Object FullName) |
             Sort-Object { if ($_ -like '*Listener.aidl') { 0 } else { 1 } }
$before = @{}
foreach ($f in $aidlFiles) { $before[$f] = (Get-FileHash $f -Algorithm SHA256).Hash }
foreach ($f in $aidlFiles) {
    & (Join-Path $bt 'aidl.exe') "-o$gen" "-I$aidlRoot" $f
    if ($LASTEXITCODE -ne 0) { throw "aidl failed: $f" }
    if ((Get-FileHash $f -Algorithm SHA256).Hash -ne $before[$f]) { throw "aidl mutated its input: $f" }
}
$genFiles = @(Get-ChildItem -Recurse -Filter *.java $gen | ForEach-Object FullName)
$genFiles | ForEach-Object { Write-Host ("   gen " + $_.Substring($gen.Length + 1)) }

Write-Host "== sources"
# V2 compiled set: shell + home + pages + skill stores + model stack + legacy helpers
$srcFiles = @(
    "src\com\tgz02\voice\Tgz02App.java",
    "src\com\tgz02\voice\AlarmScheduler.java",
    "src\com\tgz02\voice\AlarmReceiver.java",
    "src\com\tgz02\voice\AlarmBootReceiver.java",
    "src\com\tgz02\voice\AlarmRingingService.java",
    "src\com\tgz02\voice\AlarmRingingActivity.java",
    "src\com\tgz02\voice\AlarmRequestMonitor.java",
    "src\com\tgz02\voice\Ui3.java",
    "src\com\tgz02\voice\Ui4.java",
    "src\com\tgz02\voice\Toast2.java",
    "src\com\tgz02\voice\V2Shell.java",
    "src\com\tgz02\voice\V3Shell.java",
    "src\com\tgz02\voice\VoiceHomeActivity.java",
    "src\com\tgz02\voice\SkillsHomeActivity.java",
    "src\com\tgz02\voice\DataService.java",
    "src\com\tgz02\voice\Db.java",
    "src\com\tgz02\voice\MemoryCenterActivity.java",
    "src\com\tgz02\voice\SettingsHomeActivity.java",
    "src\com\tgz02\voice\AboutActivity.java",
    "src\com\tgz02\voice\ModelConfigActivity.java",
    "src\com\tgz02\voice\ModelStore.java",
    "src\com\tgz02\voice\VoiceBridgeClient.java",
    "src\com\tgz02\voice\BackendService.java",
    "src\com\tgz02\voice\BackendClient.java",
    "src\com\tgz02\voice\BackendJson.java",
    "src\com\tgz02\voice\RequestLedger.java"
) | ForEach-Object { Join-Path $here $_ }
foreach ($f in $srcFiles) { if (-not (Test-Path $f)) { throw "missing source $f" } }
if ($Test) {
    $srcFiles += @(Get-ChildItem -Recurse -Filter *.java (Join-Path $here 'src_test') | ForEach-Object FullName)
}
$srcFiles += $genFiles
$srcFiles | ForEach-Object { Write-Host ("   " + $_.Substring($here.Length + 1)) }

Write-Host "== javac (release 8, utf-8 sources, android.jar)"
& $javac --release 8 -encoding UTF-8 -nowarn -classpath $androidJar -d $classes $srcFiles
if ($LASTEXITCODE -ne 0) { throw "javac failed" }

Write-Host "== d8 (min-api 27)"
$classFiles = @(Get-ChildItem -Recurse -Filter *.class $classes | ForEach-Object FullName)
$dexOut = Join-Path $build 'dex'
New-Item -ItemType Directory -Force $dexOut | Out-Null
# a flat jar keeps the d8 command line short (Windows 32k limit) and feeds all classes at once
$jar = Join-Path $build 'classes.jar'
Add-Type -AssemblyName System.IO.Compression.FileSystem
$z = [System.IO.Compression.ZipFile]::Open($jar, [System.IO.Compression.ZipArchiveMode]::Create)
try {
    $rel = (Resolve-Path $classes).Path
    foreach ($cf in $classFiles) {
        $entryName = $cf.Substring($rel.Length + 1).Replace('\', '/')
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($z, $cf, $entryName) | Out-Null
    }
} finally { $z.Dispose() }
& (Join-Path $bt 'd8.bat') --min-api 27 --lib $androidJar --output $dexOut $jar
if ($LASTEXITCODE -ne 0) { throw "d8 failed" }
$dex = Join-Path $dexOut 'classes.dex'

Write-Host "== aapt2 link (manifest + assets, no res/)"
$baseApk = Join-Path $build 'base.apk'
& (Join-Path $bt 'aapt2.exe') link -o $baseApk -I $androidJar `
    --manifest $manifest `
    -A (Join-Path $build 'assets') `
    --min-sdk-version 21 --target-sdk-version 27 --version-code $vc --version-name $vn
if ($LASTEXITCODE -ne 0) { throw "aapt2 link failed" }

Write-Host "== verify assets inside the APK"
Add-Type -AssemblyName System.IO.Compression.FileSystem
Add-Type -AssemblyName System.IO.Compression
$check = [System.IO.Compression.ZipFile]::OpenRead($baseApk)
try {
    $inApk = @($check.Entries | Where-Object { $_.FullName -like 'assets*ui*' })
    Write-Host ("   assets/ui entries in APK: " + $inApk.Count)
    if ($inApk.Count -lt 16) { throw "assets were not embedded into the APK" }
} finally { $check.Dispose() }

Write-Host "== normalize asset entry names (aapt2 on Windows writes '\' inside assets/)"
# aapt2 -A on Windows can emit ZipEntries like "assets/ui\puddin_idle.png"; the runtime
# AssetManager only indexes forward slashes, so rewrite every entry name here.
$norm = Join-Path $build 'normalized.apk'
$zin  = [System.IO.Compression.ZipFile]::OpenRead($baseApk)
$zout = [System.IO.Compression.ZipFile]::Open($norm, [System.IO.Compression.ZipArchiveMode]::Create)
try {
    foreach ($e in $zin.Entries) {
        $name = $e.FullName.Replace('\', '/')
        $outEntry = $zout.CreateEntry($name)
        $ins = $e.Open()
        $outs = $outEntry.Open()
        $ins.CopyTo($outs)
        $outs.Close(); $ins.Close()
    }
} finally { $zout.Dispose(); $zin.Dispose() }
Copy-Item $norm $baseApk -Force
Remove-Item $norm -Force
$unsigned = Join-Path $build 'unsigned.apk'
Copy-Item $baseApk $unsigned -Force
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
