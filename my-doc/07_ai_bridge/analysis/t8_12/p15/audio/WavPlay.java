/*
 * WavPlay.java -- T8-12.15 真机音频注入器（只读测试工具，不碰生产代码）
 *
 * 用途：把一段 PCM16 WAV 通过 Android AudioTrack（STREAM_MUSIC / USAGE_MEDIA）播出来。
 * 为什么不用 tinyplay：直接写 ALSA 时 HAL 不会替我们打开扬声器路由
 * （实测 HPOUT/LINEOUT Mux 都是 OPEN，所以 tinyplay 不报错但没声音）；
 * AudioTrack 走正常音频栈，路由/功放由 HAL 负责。
 *
 * 用法（设备上，root）：
 *   CLASSPATH=/data/local/tmp/t8/wavplay.dex app_process /system \
 *       com.tgz02.audio.WavPlay /data/local/tmp/t8/wake_clock48.wav
 * 退出码：0 = 播完；1 = 参数/文件/格式错误；2 = AudioTrack 初始化失败。
 */
package com.tgz02.audio;

import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class WavPlay {

    private static int le16(byte[] b, int o) {
        return (b[o] & 0xFF) | ((b[o + 1] & 0xFF) << 8);
    }

    private static long le32(byte[] b, int o) {
        return (b[o] & 0xFFL) | ((b[o + 1] & 0xFFL) << 8)
                | ((b[o + 2] & 0xFFL) << 16) | ((b[o + 3] & 0xFFL) << 24);
    }

    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println("usage: WavPlay <file.wav>");
            System.exit(1);
        }
        File f = new File(args[0]);
        byte[] all;
        try {
            FileInputStream in = new FileInputStream(f);
            all = new byte[(int) f.length()];
            int off = 0;
            while (off < all.length) {
                int n = in.read(all, off, all.length - off);
                if (n <= 0) break;
                off += n;
            }
            in.close();
        } catch (IOException e) {
            System.err.println("read failed: " + e);
            System.exit(1);
            return;
        }

        if (all.length < 44 || all[0] != 'R' || all[1] != 'I' || all[2] != 'F' || all[3] != 'F') {
            System.err.println("not a RIFF/WAVE file");
            System.exit(1);
        }

        int channels = 0, rate = 0, bits = 0;
        int dataOff = -1, dataLen = 0;

        int p = 12;
        while (p + 8 <= all.length) {
            String id = "" + (char) all[p] + (char) all[p + 1] + (char) all[p + 2] + (char) all[p + 3];
            long sz = le32(all, p + 4);
            int body = p + 8;

            if (id.equals("fmt ")) {
                channels = le16(all, body + 2);
                rate = (int) le32(all, body + 4);
                bits = le16(all, body + 14);
            } else if (id.equals("data")) {
                dataOff = body;
                dataLen = (int) sz;
                if (dataOff + dataLen > all.length) dataLen = all.length - dataOff;
                break;
            }
            p = body + (int) sz + (int) (sz & 1);
        }

        if (channels <= 0 || rate <= 0 || bits != 16 || dataOff < 0 || dataLen <= 0) {
            System.err.println("unsupported wav: ch=" + channels + " rate=" + rate
                    + " bits=" + bits + " data=" + dataLen);
            System.exit(1);
        }

        int chMask = (channels == 1) ? AudioFormat.CHANNEL_OUT_MONO : AudioFormat.CHANNEL_OUT_STEREO;
        int minBuf = AudioTrack.getMinBufferSize(rate, chMask, AudioFormat.ENCODING_PCM_16BIT);
        if (minBuf <= 0) {
            System.err.println("getMinBufferSize failed: " + minBuf);
            System.exit(2);
        }
        /* 流式播放：缓冲只要够小（几倍 minBuffer），不要按文件长度开 */
        int bufSize = Math.max(minBuf * 2, 8192);
        AudioTrack track = null;

        try {
            track = new AudioTrack.Builder()
                    .setAudioAttributes(new android.media.AudioAttributes.Builder()
                            .setUsage(android.media.AudioAttributes.USAGE_MEDIA)
                            .setContentType(android.media.AudioAttributes.CONTENT_TYPE_SPEECH)
                            .build())
                    .setAudioFormat(new AudioFormat.Builder()
                            .setEncoding(AudioFormat.ENCODING_PCM_16BIT)
                            .setSampleRate(rate)
                            .setChannelMask(chMask)
                            .build())
                    .setTransferMode(AudioTrack.MODE_STREAM)
                    .setBufferSizeInBytes(bufSize)
                    .build();
        } catch (Throwable e) {
            System.err.println("AudioTrack.Builder failed: " + e);
            track = null;
        }
        if (track == null) {
            /* 退化到老的构造器，某些 app_process 环境里 Builder 不可用 */
            track = new AudioTrack(AudioManager.STREAM_MUSIC, rate, chMask,
                    AudioFormat.ENCODING_PCM_16BIT, bufSize, AudioTrack.MODE_STREAM);
        }
        if (track.getState() != AudioTrack.STATE_INITIALIZED) {
            System.err.println("AudioTrack not initialized (state=" + track.getState()
                    + " ch=" + channels + " rate=" + rate + " buf=" + bufSize + ")");
            System.exit(2);
        }

        System.out.println("WavPlay: " + f.getName() + " ch=" + channels + " rate=" + rate
                + " bits=" + bits + " bytes=" + dataLen + " minBuf=" + minBuf);

        int written = 0;
        int chunk = Math.max(minBuf, 4096);
        try {
            track.play();
            while (written < dataLen) {
                int n = Math.min(chunk, dataLen - written);
                int w = track.write(all, dataOff + written, n);
                if (w <= 0) break;
                written += w;
            }
            /* 等缓冲区放完，避免进程退出把最后一段掐掉 */
            try { Thread.sleep(400); } catch (InterruptedException ignored) { }
            track.stop();
        } finally {
            track.release();
        }
        System.out.println("WavPlay: done written=" + written + "/" + dataLen);
        System.exit(0);
    }
}
