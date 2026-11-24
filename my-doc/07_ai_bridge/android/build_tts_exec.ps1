# build_tts_exec.ps1 -- T5-06D 原厂 TTS 执行器构建（javac + d8 -> tts_exec.dex）
#
# 说明：执行器是独立 Java 程序，用 app_process 运行，不需要安装 APK、不需要改 system。
#   javac -> class (Java 8 字节码) -> d8 (--min-api 26) -> dex
#
# 用法： powershell -ExecutionPolicy Bypass -File build_tts_exec.ps1 [-LogName t5_06d_tts_build.log]
param(
    [string]$LogName = "t5_06d_tts_build.log"
)

$ErrorActionPreference = "Continue"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
# T9-08B-R2: tts_exec/ now holds TtsExec.java and StopControl.java (the stop decision table,
# Android-free so the host can test it). Compile every .java in that directory.
$srcs = @(Get-ChildItem (Join-Path $here "tts_exec") -Filter *.java | Sort-Object Name | ForEach-Object FullName)
$out = Join-Path $here "_build_tts"
$log = Join-Path $here $LogName

# 工具链：Android SDK build-tools 的 d8 + 任一 platform android.jar
$sdkRoots = @("D:\Android\Sdk", "$env:LOCALAPPDATA\Android\Sdk")
$sdk = $null
foreach ($r in $sdkRoots) { if (Test-Path $r) { $sdk = $r; break } }
if ($null -eq $sdk) { throw "Android SDK not found" }

$d8jar = Get-ChildItem (Join-Path $sdk "build-tools") -Recurse -Filter d8.jar -ErrorAction SilentlyContinue |
         Sort-Object FullName -Descending | Select-Object -First 1
if ($null -eq $d8jar) { throw "d8.jar not found under $sdk\build-tools" }

$androidJar = Get-ChildItem (Join-Path $sdk "platforms") -Recurse -Filter android.jar -Depth 1 -ErrorAction SilentlyContinue |
              Sort-Object FullName -Descending | Select-Object -First 1
if ($null -eq $androidJar) { throw "android.jar not found under $sdk\platforms" }

Write-Host "d8        : $($d8jar.FullName)"
Write-Host "android.jar: $($androidJar.FullName)"

if (Test-Path $out) { Remove-Item $out -Recurse -Force }
New-Item -ItemType Directory -Path $out | Out-Null
$classes = Join-Path $out "classes"
$dex = Join-Path $out "dex"
New-Item -ItemType Directory -Path $classes | Out-Null
New-Item -ItemType Directory -Path $dex | Out-Null

$lines = New-Object System.Collections.Generic.List[string]
function Rec([string]$s) { $lines.Add($s); Write-Host $s }

Rec "== T5-06D tts_exec build $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') =="

# 1) javac（对 android.jar 编译；ActivityThread 等隐藏 API 全部走反射，源码里不 import）
$jcArgs = @("-J-Duser.language=en", "-J-Duser.country=US", "-nowarn", "-Xlint:-options",
              "-encoding", "UTF-8", "-source", "8", "-target", "8",
              "-bootclasspath", $androidJar.FullName, "-d", $classes) + $srcs
$jcOut = & javac @jcArgs 2>&1
$jcRc = $LASTEXITCODE
$jcOut | ForEach-Object { Rec "javac: $_" }
if ($jcRc -ne 0) { Rec "# result: FAIL (javac $jcRc)"; $lines | Set-Content -Path $log -Encoding UTF8; exit 1 }

$classFiles = Get-ChildItem -Recurse (Join-Path $classes "*.class") | ForEach-Object { $_.FullName }
Rec "javac: $($classFiles.Count) class file(s)"

# 2) d8 -> dex
$d8Out = & java -cp $d8jar.FullName com.android.tools.r8.D8 --min-api 26 --release --output $dex @classFiles 2>&1
$d8Rc = $LASTEXITCODE
$d8Out | ForEach-Object { Rec "d8: $_" }
if ($d8Rc -ne 0) { Rec "# result: FAIL (d8 $d8Rc)"; $lines | Set-Content -Path $log -Encoding UTF8; exit 1 }

$dexFile = Join-Path $dex "classes.dex"
if (-not (Test-Path $dexFile)) { Rec "# result: FAIL (classes.dex missing)"; $lines | Set-Content -Path $log -Encoding UTF8; exit 1 }

Copy-Item $dexFile (Join-Path $here "tts_exec.dex") -Force
$h = Get-FileHash (Join-Path $here "tts_exec.dex") -Algorithm SHA256
$len = (Get-Item (Join-Path $here "tts_exec.dex")).Length
Rec "dex: tts_exec.dex bytes=$len sha256=$($h.Hash.ToLower())"
Rec "dex: min-api=26 target=android-8.1(arm32) entry=com.tgz02.tts.TtsExec"
Rec "# result: OK"
$lines | Set-Content -Path $log -Encoding UTF8
Write-Host "log: $log"
