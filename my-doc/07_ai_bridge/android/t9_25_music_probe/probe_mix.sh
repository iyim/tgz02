#!/system/bin/sh
# music + factory TTS concurrency probe
#  usage: sh /data/local/tmp/probe_mix.sh "<url>" <seconds>
URL="$1"
SECS="${2:-40}"
INBOX=/data/local/tmp/t9_ui/inbox

echo "=== clear logcat"
logcat -c

echo "=== start player (volume 60) for ${SECS}s"
am start -n com.tgz02.musicprobe/.Probe --es url "$URL" --ei seconds "$SECS" --ei volume 60 >/dev/null

sleep 8
echo "=== t+8s: media state"
dumpsys media.player 2>/dev/null | grep -i -E "state|player" | head -8

echo "=== t+8s: inject factory say"
ts=$(date +%s)
tmp="$INBOX/.say-$ts.tmp"
printf '{"v":1,"kind":"say","event_id":"mix-say-%s","text":"现在是晚上八点"}' "$ts" > "$tmp"
mv "$tmp" "$INBOX/say-$ts.json" 2>/dev/null
echo "say injected ts=$ts"

sleep 6
echo "=== t+14s: audio focus stack"
dumpsys audio 2>/dev/null | sed -n '/Audio Focus stack/,/Notify on duck/p' | head -20

sleep 22
echo "=== done, dump kgprobe"
logcat -d -s kgprobe:V | tail -50
echo "=== factory wake / tts markers in this window"
logcat -d | grep -i -E "onStartTalk|onTtsStart|wake_type|T8_TO_|AudioIn|FocusMgr|requestAudioFocus" | tail -40
