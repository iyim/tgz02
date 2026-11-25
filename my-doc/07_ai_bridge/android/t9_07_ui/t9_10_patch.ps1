# t9_10_patch.ps1 -- one-shot source patch for T9-10.
#
# Why a script instead of ad-hoc PowerShell: Get-Content/Set-Content use the system ANSI code
# page, which mangles the UTF-8 sources in this tree (it silently broke ModelConfigActivity once).
# Everything here reads and writes through [IO.File] with an explicit UTF-8 encoding, and every
# replacement is length-checked before it is written.
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$voice = Join-Path $here 'src\com\tgz02\voice'
$utf8 = New-Object System.Text.UTF8Encoding($false)

function Read-Utf8([string]$p) { return [IO.File]::ReadAllText($p, [Text.Encoding]::UTF8) }
function Write-Utf8([string]$p, [string]$t) { [IO.File]::WriteAllText($p, $t, $utf8) }

function Replace-Once([string]$text, [string]$old, [string]$new, [string]$label) {
    $i = $text.IndexOf($old)
    if ($i -lt 0) { throw "anchor not found: $label" }
    if ($text.IndexOf($old, $i + 1) -ge 0) { throw "anchor not unique: $label" }
    return $text.Substring(0, $i) + $new + $text.Substring($i + $old.Length)
}

# ---------------------------------------------------------------- 1) VoiceBridgeClient
$p = Join-Path $voice 'VoiceBridgeClient.java'
$raw = Read-Utf8 $p
$crlf = $raw.Contains("`r`n")
$t = $raw.Replace("`r`n", "`n")
$t = $t.Replace('    private static Turn parseTurn(String raw)', '    static Turn parseTurn(String raw)')
$t = $t.Replace('    private static Status parseStatus(String raw)', '    static Status parseStatus(String raw)')

$anchors = '    /* ------------------------------------------------------------------- helpers */'
$newParsers = @'
    /** T9-10: extracted so the backend service and the UI parse play.public.json identically */
    static Play parsePlay(String raw)
    {
        try {
            JSONObject o = new JSONObject(raw);
            Play p = new Play();
            p.eventId = o.optString("event_id", "");
            p.ttsId = o.optInt("tts_id", -1);
            p.state = o.optString("state", "");
            p.outcome = o.optString("last_outcome", "");
            p.durMs = o.optLong("dur_ms", -1);
            return p;
        } catch (Throwable t) {
            return null;
        }
    }

    /** T9-10: one result/<event_id>.json -> Receipt (both sides use this) */
    static Receipt parseReceipt(String eventId, String raw)
    {
        Receipt r = new Receipt();
        r.eventId = eventId;
        try {
            JSONObject o = new JSONObject(raw);
            r.ok = o.optBoolean("ok", false);
            r.stage = o.optString("stage", "");
            r.reason = o.optString("reason", "");
            r.tsMs = o.optLong("ts_ms", System.currentTimeMillis());
        } catch (Throwable t) {
            r.ok = false;
            r.reason = "unreadable receipt";
        }
        return r;
    }

'@
$t = Replace-Once $t $anchors ($newParsers + $anchors) 'parsers'

$oldSubmit = @'
    private String submitKind(String text, String kind)
    {
        String eventId = newEventId("ui");
'@
$newSubmit = @'
    private String submitKind(String text, String kind)
    {
        return submitKind(text, kind, null);
    }

    /**
     * T9-10: the backend service supplies the event_id, so a retried submit (UI crash, rebind,
     * duplicate tap) is written once instead of twice.
     *
     * The id becomes a file name, so it is validated here: [A-Za-z0-9_-], 1..64 chars.
     */
    String submitKind(String text, String kind, String forcedEventId)
    {
        String eventId = newEventId("ui");
        if (forcedEventId != null && forcedEventId.length() > 0) {
            if (!validEventId(forcedEventId)) return null;
            eventId = forcedEventId;
        }
'@
$t = Replace-Once $t $oldSubmit $newSubmit 'submitKind'

$poller = '    /* ------------------------------------------------------------------- poller */'
$newIdApi = @'
    static boolean validEventId(String id)
    {
        if (id == null || id.length() == 0 || id.length() > 64) return false;
        for (int i = 0; i < id.length(); i++) {
            char c = id.charAt(i);
            boolean ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                      || (c >= '0' && c <= '9') || c == '_' || c == '-';
            if (!ok) return false;
        }
        return true;
    }

    /** T9-10: stop request carrying a caller-supplied id */
    String requestStop(String eventIdIn, int ttsId)
    {
        if (ttsId <= 0) return "\u73b0\u5728\u6ca1\u6709\u5728\u64ad\u62a5";
        String eventId = eventIdIn;
        if (eventId == null || eventId.length() == 0) eventId = newEventId("stop");
        if (!validEventId(eventId)) return "\u8bf7\u6c42\u7f16\u53f7\u4e0d\u5408\u6cd5";
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("kind", "stop");
            o.put("event_id", eventId);
            o.put("tts_id", ttsId);
            byte[] body = o.toString().getBytes("UTF-8");
            if (!writeInbox(eventId, body)) return "\u8bf7\u6c42\u6ca1\u6709\u5199\u8fdb\u53bb";
            Pending p = new Pending();
            p.eventId = eventId;
            p.deadlineMs = System.currentTimeMillis() + RECEIPT_WAIT_MS;
            synchronized (stopPending) { stopPending.put(eventId, p); }
            diag("stop requested tts_id=" + ttsId + " event=" + eventId);
            return null;
        } catch (Throwable t) {
            diag("stop request failed: " + t);
            return "\u8bf7\u6c42\u6ca1\u6709\u5199\u8fdb\u53bb";
        }
    }

    /** T9-10: model-test request carrying a caller-supplied id */
    String requestModelTest(String eventIdIn, String modelId)
    {
        String eventId = eventIdIn;
        if (eventId == null || eventId.length() == 0) eventId = newEventId("mt");
        if (!validEventId(eventId)) return "\u8bf7\u6c42\u7f16\u53f7\u4e0d\u5408\u6cd5";
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("kind", "modeltest");
            o.put("event_id", eventId);
            if (modelId != null && modelId.length() > 0) o.put("model_id", modelId);
            byte[] body = o.toString().getBytes("UTF-8");
            if (!writeInbox(eventId, body)) return "\u8bf7\u6c42\u6ca1\u6709\u5199\u8fdb\u53bb";
            diag("model test requested id=" + (modelId == null ? "(active)" : modelId)
                    + " event=" + eventId);
            return null;
        } catch (Throwable t) {
            diag("model test request failed: " + t);
            return "\u8bf7\u6c42\u6ca1\u6709\u5199\u8fdb\u53bb";
        }
    }

'@
$t = Replace-Once $t $poller ($newIdApi + $poller) 'id api'
if ($crlf) { $t = $t.Replace("`n", "`r`n") }
Write-Utf8 $p $t
Write-Host "patched VoiceBridgeClient.java"

# ---------------------------------------------------------------- 2) the three screens
foreach ($name in @('V2Shell.java', 'VoiceHomeActivity.java', 'ModelConfigActivity.java')) {
    $q = Join-Path $voice $name
    $s = Read-Utf8 $q
    $s = $s.Replace('VoiceBridgeClient client;', 'BackendClient client;')
    $s = $s.Replace('new VoiceBridgeClient(this, navId())', 'new BackendClient(this, navId())')
    $s = $s.Replace('new VoiceBridgeClient(this, "home")', 'new BackendClient(this, "home")')
    $s = $s.Replace('new VoiceBridgeClient(this, "models")', 'new BackendClient(this, "models")')
    Write-Utf8 $q $s
    Write-Host "patched $name"
}
Write-Host "EXIT=0"
