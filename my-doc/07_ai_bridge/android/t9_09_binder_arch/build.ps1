# build.ps1 -- T9-09 architecture experiment.
#
#   powershell -ExecutionPolicy Bypass -File build.ps1
#
# Produces, into build/:
#   svc.apk / ui.apk          AIDL service (own process) + UI client (separate package)
#   tg_echo_daemon            ARM32 native child process used by the service
#   binder_probe              ARM32 C probe: can a plain C program reach /dev/binder?
#   binderd.dex               root app_process program that registers a GLOBAL binder service
#   binderd_client.dex        root app_process program that finds and calls it
#
# Nothing here touches the accepted voice stack; the APKs request zero permissions.
param(
    [string]$Sdk = "$env:LOCALAPPDATA\Android\Sdk",
    [string]$BuildTools = "35.0.1",
    [string]$Platform = "android-35",
    [string]$Jdk = "C:\Program Files\Java\jdk-21",
    [string]$Ndk = "D:\tgz02\OS\_analysis\tools\android-ndk-r21e"
)
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

$bt = Join-Path $Sdk "build-tools\$BuildTools"
$androidJar = Join-Path $Sdk "platforms\$Platform\android.jar"
$javac = Join-Path $Jdk 'bin\javac.exe'
$log = Join-Path $here 'build\build.log'
New-Item -ItemType Directory -Force (Join-Path $here 'build') | Out-Null
Set-Content $log "" -Encoding UTF8
function L([string]$s) { Write-Host $s; Add-Content $log $s }

foreach ($p in @($bt, $androidJar, $javac)) { if (-not (Test-Path $p)) { throw "missing $p" } }

$build = Join-Path $here 'build'
if (Test-Path $build) { Remove-Item -Recurse -Force $build }
New-Item -ItemType Directory -Force $build | Out-Null

# ---------------------------------------------------------------- 1) AIDL
L "== aidl"
$gen = Join-Path $build 'gen'
New-Item -ItemType Directory -Force $gen | Out-Null
$aidlFiles = Get-ChildItem -Recurse -Filter *.aidl (Join-Path $here 'aidl') | ForEach-Object FullName
# One file per invocation, dependency order. Passing several files at once made aidl 35.0.1 write
# a generated .java over another input's .aidl in this tree, so each source is also hashed before
# and after the call and any mutation aborts the build.
$aidlFiles = $aidlFiles | Sort-Object { if ($_ -like '*Callback.aidl') { 0 } else { 1 } }
$before = @{}
foreach ($f in $aidlFiles) { $before[$f] = (Get-FileHash $f -Algorithm SHA256).Hash }
foreach ($f in $aidlFiles) {
    & (Join-Path $bt 'aidl.exe') "-o$gen" "-I$(Join-Path $here 'aidl')" $f
    if ($LASTEXITCODE -ne 0) { throw "aidl failed: $f" }
    if ((Get-FileHash $f -Algorithm SHA256).Hash -ne $before[$f]) { throw "aidl mutated its input: $f" }
}
Get-ChildItem -Recurse -Filter *.java $gen | ForEach-Object { L ("   gen " + $_.FullName.Substring($gen.Length + 1)) }

# ---------------------------------------------------------------- 2) javac + d8 + apk, twice
function Build-Apk([string]$name, [string]$srcDir, [string]$manifest) {
    L "== $name : javac"
    $cls = Join-Path $build "$name\classes"
    New-Item -ItemType Directory -Force $cls | Out-Null
    $files = @()
    $files += Get-ChildItem -Recurse -Filter *.java $srcDir | ForEach-Object FullName
    $files += Get-ChildItem -Recurse -Filter *.java $gen | ForEach-Object FullName
    & $javac --release 8 -nowarn -classpath $androidJar -d $cls @files
    if ($LASTEXITCODE -ne 0) { throw "$name javac failed" }

    L "== $name : d8"
    $dexOut = Join-Path $build "$name\dex"
    New-Item -ItemType Directory -Force $dexOut | Out-Null
    $classFiles = Get-ChildItem -Recurse -Filter *.class $cls | ForEach-Object FullName
    & (Join-Path $bt 'd8.bat') --min-api 26 --lib $androidJar --output $dexOut @classFiles
    if ($LASTEXITCODE -ne 0) { throw "$name d8 failed" }
    $dex = Join-Path $dexOut 'classes.dex'
    L ("   dex {0:N0} B" -f (Get-Item $dex).Length)

    L "== $name : aapt2"
    $baseApk = Join-Path $build "$name\base.apk"
    & (Join-Path $bt 'aapt2.exe') link -o $baseApk -I $androidJar --manifest $manifest `
        --min-sdk-version 26 --target-sdk-version 27 --version-code 1 --version-name 1.0
    if ($LASTEXITCODE -ne 0) { throw "$name aapt2 failed" }

    L "== $name : dex into apk"
    $unsigned = Join-Path $build "$name\unsigned.apk"
    Copy-Item $baseApk $unsigned -Force
    Add-Type -AssemblyName System.IO.Compression.FileSystem
    Add-Type -AssemblyName System.IO.Compression
    $zip = [System.IO.Compression.ZipFile]::Open($unsigned, [System.IO.Compression.ZipArchiveMode]::Update)
    try {
        $old = $zip.GetEntry('classes.dex'); if ($old) { $old.Delete() }
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $dex, 'classes.dex') | Out-Null
    } finally { $zip.Dispose() }

    L "== $name : zipalign + sign"
    $ks = Join-Path $here '..\t9_04_aidl\t9_04.keystore'
    if (-not (Test-Path $ks)) { throw "keystore missing: $ks" }
    $aligned = Join-Path $build "$name\aligned.apk"
    & (Join-Path $bt 'zipalign.exe') -f 4 $unsigned $aligned
    if ($LASTEXITCODE -ne 0) { throw "$name zipalign failed" }
    $signed = Join-Path $build "$name.apk"
    & (Join-Path $bt 'apksigner.bat') sign --ks $ks --ks-pass pass:android --key-pass pass:android `
        --min-sdk-version 26 --out $signed $aligned
    if ($LASTEXITCODE -ne 0) { throw "$name apksigner failed" }
    $h = (Get-FileHash $signed -Algorithm SHA256).Hash.ToLower()
    L ("   {0}.apk {1:N0} B sha256={2}" -f $name, (Get-Item $signed).Length, $h)
}

Build-Apk 'svc' (Join-Path $here 'service\src') (Join-Path $here 'service\AndroidManifest.xml')
Build-Apk 'ui'  (Join-Path $here 'client\src')  (Join-Path $here 'client\AndroidManifest.xml')

# ---------------------------------------------------------------- 3) native ARM32
L "== native (NDK clang, armv7a, api 26)"
$cc = Join-Path $Ndk 'toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd'
if (-not (Test-Path $cc)) { throw "NDK clang not found: $cc" }
& $cc '-O2' '-Wall' '-static' '-o' (Join-Path $build 'tg_echo_daemon') (Join-Path $here 'native\tg_echo_daemon.c')
if ($LASTEXITCODE -ne 0) { throw "clang daemon failed" }
& $cc '-O2' '-Wall' '-static' '-o' (Join-Path $build 'binder_probe') (Join-Path $here 'native\binder_probe.c')
if ($LASTEXITCODE -ne 0) { throw "clang binder_probe failed" }
foreach ($f in @('tg_echo_daemon', 'binder_probe')) {
    $p = Join-Path $build $f
    L ("   {0} {1:N0} B sha256={2}" -f $f, (Get-Item $p).Length, (Get-FileHash $p -Algorithm SHA256).Hash.ToLower())
}

# ---------------------------------------------------------------- 4) root app_process programs
L "== binderd (java, app_process)"
$bdCls = Join-Path $build 'binderd\classes'
New-Item -ItemType Directory -Force $bdCls | Out-Null
$bdSrcs = @(Get-ChildItem -Recurse -Filter *.java (Join-Path $here 'binderd') | ForEach-Object FullName)
$bdArgs = @('--release', '8', '-nowarn', '-classpath', $androidJar, '-d', $bdCls) + $bdSrcs
& $javac @bdArgs
if ($LASTEXITCODE -ne 0) { throw "binderd javac failed" }
$bdDex = Join-Path $build 'binderd\dex'
New-Item -ItemType Directory -Force $bdDex | Out-Null
$bdClass = (Get-ChildItem -Recurse -Filter *.class $bdCls | ForEach-Object FullName)
& (Join-Path $bt 'd8.bat') --min-api 26 --lib $androidJar --output $bdDex @bdClass
if ($LASTEXITCODE -ne 0) { throw "binderd d8 failed" }
Copy-Item (Join-Path $build 'binderd\dex\classes.dex') (Join-Path $build 'binderd.dex') -Force
L ("   binderd.dex {0:N0} B sha256={1}" -f (Get-Item (Join-Path $build 'binderd.dex')).Length,
   (Get-FileHash (Join-Path $build 'binderd.dex') -Algorithm SHA256).Hash.ToLower())

L "EXIT=0"


