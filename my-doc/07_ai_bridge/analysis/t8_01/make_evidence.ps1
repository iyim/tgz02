# make_evidence.ps1 -- build evidence/t8_01_callchain_extract.txt from the analysis artifacts (T8-01)
$ErrorActionPreference = "Stop"
$Here = $PSScriptRoot
Set-Location $Here

$L = New-Object System.Collections.Generic.List[string]
$L.Add("# T8-01 libsmartbox.so static evidence extract (ARM32, 2 047 772 bytes)")
$L.Add("# target : /system/app/smartapp/lib/arm/libsmartbox.so")
$L.Add("# sha256 : f6e3c3543ff6da5b59bf60b884b6ce4332897c75aa6b89b8dccc0c266df80940")
$L.Add("# method : readelf -sW / -rW (.dynsym 5653 entries, .rel.plt in PLT order) + llvm-objdump -d")
$L.Add("#          PLT0 = 0x8d39c, stub base = 0x8d3b0, 12 bytes per stub, stub k <-> .rel.plt[k]")
$L.Add("")

$L.Add("## key symbols (address / size)")
$keys = @(
    "_ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh",
    "_ZN9AliAiLabs4AGUI14SessionManager11onNlpResultEiiPNS0_9NlpResultE",
    "_ZN9AliAiLabs4AGUI14SessionManager16onNlpResultInnerEiPNS0_9NlpResultE",
    "_ZN9AliAiLabs4AGUI14SessionManager8exitTalkEih",
    "_ZN9AliAiLabs4AGUI15SessionDispatch8onStreamEiPKch",
    "_ZN9AliAiLabs4AGUI15SessionDispatch11onNlpResultEiiPNS0_9NlpResultE",
    "_ZN9AliAiLabs4AGUI15SessionDispatch18onRouterDetailInfoEiiPNS0_9NlpResultE",
    "_ZN9AliAiLabs4AGUI15SessionDispatch10playAudiosEiiPNS0_9NlpResultEPNS0_10ReturnCodeEPh",
    "_ZN9AliAiLabs4AGUI13RouterManager10onResponseEiP11json_object",
    "_ZN9AliAiLabs4AGUI13RouterManager12onTextStreamEiPKchP11json_object",
    "_ZN9AliAiLabs4AGUI13RouterManager9getRouterEPcS2_RNSt6__ndk14listINS3_10shared_ptrINS0_7IRouter15IRouterListenerEEENS3_9allocatorIS8_EEEERNS4_IiNS9_IiEEEE",
    "_ZN9AliAiLabs4AGUI10GcsManager8onResultEihhPKai",
    "_ZN9AliAiLabs4AGUI12SessionProxy11onNlpResultEiiPNS0_9NlpResultE",
    "_ZN9AliAiLabs4AGUI12SessionProxy17onSendTextRequestEiPKc",
    "_ZN9AliAiLabs4AGUI12AudioManager19processMediaCommandEPNS0_9NlpResultEPNS0_10ReturnCodeERh"
)
foreach ($k in $keys) {
    $hit = Select-String -Path dynsym.txt -Pattern ([regex]::Escape($k)) -SimpleMatch | Select-Object -First 1
    if ($hit) { $L.Add(($hit.Line -replace '^\s*', '')) }
}

$fn = @(
    @("SessionManager::onStream",            "0x11353c", "0x113808"),
    @("SessionProxy::onStream",              "0x11d708", "0x11d7d4"),
    @("SessionProxy::onSendTextRequest",     "0x11d7d4", "0x11d83c"),
    @("SessionDispatch::onStream",           "0x117a78", "0x117cec"),
    @("RouterManager::onResponse",           "0x10fe3c", "0x1103cc"),
    @("SessionDispatch::onNlpResult",        "0x118ebc", "0x11965c"),
    @("SessionDispatch::onRouterDetailInfo", "0x118830", "0x11896c"),
    @("SessionDispatch::playAudios",         "0x117d40", "0x11802c")
)
foreach ($f in $fn) {
    $L.Add("")
    $L.Add("## callees of $($f[0])  ($($f[1]) .. $($f[2]))")
    $cap = & powershell -ExecutionPolicy Bypass -File (Join-Path $Here "plt_calls.ps1") -Start $f[1] -Stop $f[2] 2>&1
    foreach ($c in $cap) { if ($c -match '^[0-9a-f]{6}:') { $L.Add("  $c") } }
}

$L.Add("")
$L.Add("## callers (reverse PLT lookup)")
$rev = @(
    "_ZN9AliAiLabs4AGUI15SessionDispatch11onNlpResultEiiPNS0_9NlpResultE",
    "_ZN9AliAiLabs4AGUI15SessionDispatch8onStreamEiPKch",
    "_ZN9AliAiLabs4AGUI13RouterManager10onResponseEiP11json_object",
    "_ZN9AliAiLabs4AGUI14SessionManager16onNlpResultInnerEiPNS0_9NlpResultE"
)
foreach ($s in $rev) {
    $L.Add("")
    $cap = & powershell -ExecutionPolicy Bypass -File (Join-Path $Here "who_calls.ps1") -Symbol $s 2>&1
    foreach ($c in $cap) { $L.Add("  $c") }
}

$target = Join-Path (Join-Path (Split-Path (Split-Path $Here -Parent) -Parent) "evidence") "t8_01_callchain_extract.txt"
[IO.File]::WriteAllLines($target, $L, (New-Object Text.UTF8Encoding($false)))
"written: $target ($($L.Count) lines)"
