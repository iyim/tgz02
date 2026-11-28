# t9_27_tool_probe.ps1 -- T9-27: does the endpoint in models.json really speak OpenAI tools?
#
# Why this exists:
#   The L2 layer of the unified skill dispatcher (cloud model picks a local skill through
#   structured tool calls) depends entirely on the models.json endpoint supporting the
#   OpenAI `tools` / `tool_calls` shape. That cannot be assumed from vendor docs; it has to be
#   measured on the exact base_url the device uses, with the raw request/response kept on disk.
#
# Usage (host, Windows PowerShell 5.1 or pwsh):
#   powershell -ExecutionPolicy Bypass -File t9_27_tool_probe.ps1
#   optional: -Base <url> -Key <key> -Model <model>
#
# This script is kept ASCII-only on purpose: PowerShell 5.1 mis-parses UTF-8 (no BOM) script
# files, so all Chinese text lives in tools.json / cases.json and is read as UTF-8 explicitly.
#
# Artifacts written next to this script:
#   req_<case>.json / resp_<case>.json   raw request and response per case
#   SUMMARY.txt                          one line per case, human readable
#
# The probe is read-only: it never executes a skill and never changes device state.

param(
    [string]$Base = "",
    [string]$Key = "",
    [string]$Model = "",
    [int]$TimeoutSec = 60
)

$ErrorActionPreference = "Stop"
$OutDir = $PSScriptRoot
$U8 = New-Object System.Text.UTF8Encoding($false)

function Read-Utf8([string]$path) { return [IO.File]::ReadAllText($path, [Text.Encoding]::UTF8) }
function Write-Utf8([string]$path, [string]$text) { [IO.File]::WriteAllText($path, $text, $U8) }

if (-not $Base -or -not $Key -or -not $Model) {
    $raw = adb shell "su -c 'cat /data/data/com.tgz02.voice/files/models.json'" 2>$null
    if (-not $raw) { throw "cannot read models.json from the device" }
    $mj = ($raw -join "`n") | ConvertFrom-Json
    $act = $mj.models | Where-Object { $_.id -eq $mj.default_id } | Select-Object -First 1
    if (-not $act) { $act = $mj.models[0] }
    if (-not $Base)  { $Base  = $act.base_url }
    if (-not $Key)   { $Key   = $act.api_key }
    if (-not $Model) { $Model = $act.model }
}
$Base = $Base.TrimEnd("/")
$url = "$Base/chat/completions"

$toolsRaw = Read-Utf8 (Join-Path $OutDir "tools.json")
$cases    = (Read-Utf8 (Join-Path $OutDir "cases.json")) | ConvertFrom-Json
$toolsObj = $toolsRaw | ConvertFrom-Json
$sys = [string]::new([char[]]@())  # filled below from UTF-8 literal file-free form

# System prompt kept in a UTF-8 string built from code points so this file stays ASCII.
$sys = [char]0x4F60 + [char]0x662F + [char]0x8BBE + [char]0x5907 + [char]0x8BED + [char]0x97F3 +
       [char]0x52A9 + [char]0x624B + [char]0xFF0C + [char]0x53EA + [char]0x80FD + [char]0x901A +
       [char]0x8FC7 + [char]0x5DE5 + [char]0x5177 + [char]0x8C03 + [char]0x7528 + [char]0x63A7 +
       [char]0x5236 + [char]0x672C + [char]0x673A + [char]0x6280 + [char]0x80FD + [char]0x3002

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("# T9-27 tool-call probe (" + (Get-Date -Format "yyyy-MM-dd HH:mm:ss") + ")")
$lines.Add("# endpoint=" + $url + " model=" + $Model)
$lines.Add("")

foreach ($c in $cases) {
    # The body is assembled as text on purpose: Windows PowerShell 5.1 re-serialises a JSON
    # array that went through ConvertFrom-Json as {"value":[...],"Count":N}, which is not a
    # valid `tools` array (the endpoint answered 400 "LinkedHashMap cannot be cast to List").
    # Keeping tools.json as raw text avoids that round trip entirely.
    $reqPath  = Join-Path $OutDir ("req_"  + $c.id + ".json")
    $respPath = Join-Path $OutDir ("resp_" + $c.id + ".json")
    $sysJs = ConvertTo-Json $sys -Compress
    $uttJs = ConvertTo-Json ([string]$c.utt) -Compress
    $json = '{"model":' + (ConvertTo-Json $Model -Compress) +
            ',"messages":[{"role":"system","content":' + $sysJs + '},' +
            '{"role":"user","content":' + $uttJs + '}],' +
            '"tools":' + $toolsRaw.Trim() +
            ',"tool_choice":"auto","max_tokens":200,"stream":false}'
    Write-Utf8 $reqPath $json

    $sw = [Diagnostics.Stopwatch]::StartNew()
    $resp = curl.exe -s -m $TimeoutSec -X POST $url `
        -H "Content-Type: application/json" `
        -H ("Authorization: Bearer " + $Key) `
        --data-binary ("@" + $reqPath)
    $sw.Stop()
    $respText = ($resp -join "`n")
    Write-Utf8 $respPath $respText

    $line = ""
    try {
        $j = $respText | ConvertFrom-Json
        $msg = $j.choices[0].message
        $calls = @()
        if ($msg.tool_calls) {
            foreach ($tc in $msg.tool_calls) { $calls += ($tc.function.name + "(" + $tc.function.arguments + ")") }
        }
        $content = ([string]$msg.content) -replace "\s+", " "
        if ($content.Length -gt 80) { $content = $content.Substring(0, 80) + "..." }
        $line = "{0,-12} finish={1,-12} tools=[{2}] content='{3}' took={4}ms  # {5}" -f `
                $c.id, $j.choices[0].finish_reason, ($calls -join " ; "), $content, $sw.ElapsedMilliseconds, $c.note
    } catch {
        $line = "{0,-12} PARSE-FAILED  took={1}ms  # {2}" -f $c.id, $sw.ElapsedMilliseconds, $c.note
    }
    $lines.Add($line)
    Write-Host $line
}

$summaryPath = Join-Path $OutDir "SUMMARY.txt"
Write-Utf8 $summaryPath ($lines -join "`r`n")
Write-Host ""
Write-Host ("saved: " + $summaryPath)
