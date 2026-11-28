package com.tgz02.musicprobe;

import android.app.Activity;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.util.Log;

/**
 * Capability probe: can this device stream+decode a KuGou CDN url with MediaPlayer,
 * on STREAM_MUSIC, while the factory voice stack keeps running?
 *
 * am start -n com.tgz02.musicprobe/.Probe --es url "http://..." --ei seconds 12 --ez focus true
 */
public class Probe extends Activity {
    private static final String TAG = "kgprobe";
    private MediaPlayer mp;
    private AudioManager am;
    private int seconds = 12;
    private boolean wantFocus = true;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        String url = getIntent() == null ? null : getIntent().getStringExtra("url");
        if (getIntent() != null) {
            seconds = getIntent().getIntExtra("seconds", 12);
            wantFocus = getIntent().getBooleanExtra("focus", true);
        }
        Log.i(TAG, "onCreate url=" + url + " seconds=" + seconds + " focus=" + wantFocus);
        if (url == null) { finish(); return; }

        am = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
        int vol = getIntent() == null ? -1 : getIntent().getIntExtra("volume", -1);
        if (vol >= 0) {
            am.setStreamVolume(AudioManager.STREAM_MUSIC, vol, 0);
            Log.i(TAG, "setStreamVolume(" + vol + ") -> "
                    + am.getStreamVolume(AudioManager.STREAM_MUSIC));
        }
        if (wantFocus) {
            int r = am.requestAudioFocus(null, AudioManager.STREAM_MUSIC,
                    AudioManager.AUDIOFOCUS_GAIN);
            Log.i(TAG, "requestAudioFocus=" + r);
        }
        try {
            mp = new MediaPlayer();
            mp.setAudioAttributes(new AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_MEDIA)
                    .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC).build());
            mp.setDataSource(url);
            mp.setOnPreparedListener(new MediaPlayer.OnPreparedListener() {
                @Override public void onPrepared(MediaPlayer p) {
                    Log.i(TAG, "prepared duration=" + p.getDuration() + "ms");
                    p.start();
                    Log.i(TAG, "started");
                }
            });
            mp.setOnErrorListener(new MediaPlayer.OnErrorListener() {
                @Override public boolean onError(MediaPlayer p, int what, int extra) {
                    Log.e(TAG, "error what=" + what + " extra=" + extra);
                    return true;
                }
            });
            mp.setOnInfoListener(new MediaPlayer.OnInfoListener() {
                @Override public boolean onInfo(MediaPlayer p, int what, int extra) {
                    Log.i(TAG, "info what=" + what + " extra=" + extra);
                    return false;
                }
            });
            mp.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override public void onCompletion(MediaPlayer p) { Log.i(TAG, "completed"); }
            });
            Log.i(TAG, "prepareAsync");
            mp.prepareAsync();
        } catch (Throwable t) {
            Log.e(TAG, "prepare failed: " + t, t);
            finish();
            return;
        }

        Thread tick = new Thread(new Runnable() {
            @Override public void run() {
                int last = -1;
                for (int i = 0; i < seconds; i++) {
                    try { Thread.sleep(1000); } catch (InterruptedException e) { return; }
                    try {
                        MediaPlayer p = mp;
                        if (p == null) { Log.w(TAG, "t=" + (i + 1) + "s player gone"); continue; }
                        if (!p.isPlaying()) {
                            Log.w(TAG, "t=" + (i + 1) + "s not playing");
                        } else {
                            int pos = p.getCurrentPosition();
                            Log.i(TAG, "t=" + (i + 1) + "s pos=" + pos + " delta=" + (pos - last)
                                    + " vol=" + am.getStreamVolume(AudioManager.STREAM_MUSIC)
                                    + "/" + am.getStreamMaxVolume(AudioManager.STREAM_MUSIC));
                            last = pos;
                        }
                    } catch (Throwable t) { Log.w(TAG, "tick: " + t); }
                }
                try { MediaPlayer p = mp; if (p != null) { p.stop(); p.release(); mp = null; } }
                catch (Throwable ignored) { }
                if (wantFocus) am.abandonAudioFocus(null);
                Log.i(TAG, "done");
            }
        }, "ktick");
        tick.setDaemon(true);
        tick.start();
    }

    @Override
    protected void onDestroy() {
        try { if (mp != null) { mp.release(); mp = null; } } catch (Throwable ignored) { }
        super.onDestroy();
    }
}
