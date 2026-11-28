/*
 * MusicActivity.java -- T9-25: the native player screen (cover + lyrics + controls).
 *
 * Layout on the 1024x600 mdpi panel: a 340dp album column on the left (cover / title /
 * artist / quality chip), the lyric column filling the rest, and a 112dp control bar at the
 * bottom (progress + transport + volume). The right column swaps between 歌词 and the
 * current queue / cloud playlists, so one screen covers "listen", "browse" and "queue".
 *
 * Everything shown here is read from MusicService's static getters; the service pushes a
 * callback on every state change, and a 200ms tick keeps the progress and the lyric line in
 * sync (a lyric line typically lives 3-5s, so 200ms is smooth enough and costs nothing).
 */
package com.tgz02.voice;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public final class MusicActivity extends Activity implements MusicService.Ui {

    private static final int MODE_LYRIC = 0, MODE_QUEUE = 1, MODE_PLAYLIST = 2;

    private final Handler h = new Handler(Looper.getMainLooper());

    private ImageView cover;
    private TextView coverFallback;
    private TextView title, sub, chipQuality, hint;
    private LinearLayout lyricBox;
    private ScrollView rightScroll;
    private LinearLayout rightContent;
    private TextView rightHeader;
    private TextView timeCur, timeTot;
    private Bar seek;
    private Bar vol;
    private Glyph playGlyph;
    private TextView loopChip, shuffleChip;
    private LinearLayout listBox;

    private int mode = MODE_LYRIC;
    private String shownHash = "";
    private int shownLines = -1;
    private int highlight = -2;
    private long lastUserScroll;
    private boolean scrubbing;
    private long lastFullRefresh;

    /* ------------------------------------------------------------ lifecycle */

    @Override protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        Ui4.setTheme(SettingsHomeActivity.readTheme());
        setContentView(build());
        MusicService.addUi(this);
        String q = getIntent() == null ? null : getIntent().getStringExtra("q");
        if (q != null && q.trim().length() > 0) {
            MusicService.send(this, "play", q.trim(), -1);
            mode = MODE_LYRIC;
        }
        refreshAll();
    }

    @Override protected void onStart()
    {
        super.onStart();
        MusicService.addUi(this);
        h.post(tick);
    }

    @Override protected void onStop()
    {
        h.removeCallbacks(tick);
        MusicService.removeUi(this);
        super.onStop();
    }

    public void onMusic() { refreshAll(); }

    /* --------------------------------------------------------------- layout */

    private View build()
    {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Ui4.bg(this));

        root.addView(topBar(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 56)));

        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.HORIZONTAL);
        content.setPadding(Ui4.dp(this, 16), 0, Ui4.dp(this, 16), 0);
        root.addView(content, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        content.addView(albumColumn(), new LinearLayout.LayoutParams(
                Ui4.dp(this, 340), ViewGroup.LayoutParams.MATCH_PARENT));
        content.addView(lyricColumn(), new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));

        root.addView(controlBar(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 112)));
        return root;
    }

    private View topBar()
    {
        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(Ui4.dp(this, 16), 0, Ui4.dp(this, 16), 0);

        FrameLayout back = touchTarget();
        back.addView(new Glyph(this, Glyph.BACK, Ui4.text(this)), centerFull());
        back.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { finish(); }
        });
        bar.addView(back, new LinearLayout.LayoutParams(Ui4.dp(this, 40), Ui4.dp(this, 40)));

        TextView t = Ui4.textBold(this, "音乐", Ui4.T_H1, Ui4.text(this));
        t.setPadding(Ui4.dp(this, 12), 0, 0, 0);
        bar.addView(t);

        hint = Ui4.text(this, "", Ui4.T_AUX, Ui4.text3(this));
        hint.setPadding(Ui4.dp(this, 12), 0, 0, 0);
        bar.addView(hint);

        View flex = new View(this);
        bar.addView(flex, new LinearLayout.LayoutParams(0, 1, 1f));

        bar.addView(chip("歌词", new Runnable() { public void run() { setMode(MODE_LYRIC); } }));
        bar.addView(chip("队列", new Runnable() { public void run() { setMode(MODE_QUEUE); } }));
        bar.addView(chip("我的歌单", new Runnable() { public void run() { openPlaylists(); } }));
        return bar;
    }

    private View albumColumn()
    {
        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        col.setGravity(Gravity.CENTER_HORIZONTAL);
        col.setPadding(0, Ui4.dp(this, 4), 0, Ui4.dp(this, 4));

        FrameLayout host = new FrameLayout(this);
        host.setBackground(Ui4.grad(this, Ui4.gradMusic(this), 22f));

        coverFallback = Ui4.text(this, "♪", 96, 0x66FFFFFF);
        coverFallback.setGravity(Gravity.CENTER);
        host.addView(coverFallback, centerFull());

        cover = new ImageView(this);
        cover.setScaleType(ImageView.ScaleType.CENTER_CROP);
        cover.setClipToOutline(true);
        cover.setOutlineProvider(new ViewOutlineProvider() {
            @Override public void getOutline(View v, Outline o)
            {
                o.setRoundRect(0, 0, v.getWidth(), v.getHeight(), Ui4.dp(MusicActivity.this, 22));
            }
        });
        host.addView(cover, centerFull());

        int size = Ui4.dp(this, 288);
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(size, size);
        hlp.topMargin = Ui4.dp(this, 8);
        col.addView(host, hlp);

        title = Ui4.textBold(this, "还没有播放", Ui4.T_CARD, Ui4.text(this));
        title.setGravity(Gravity.CENTER);
        title.setMaxLines(2);
        title.setEllipsize(TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        tlp.topMargin = Ui4.dp(this, 12);
        tlp.leftMargin = Ui4.dp(this, 8);
        tlp.rightMargin = Ui4.dp(this, 8);
        col.addView(title, tlp);

        sub = Ui4.text(this, "说「播放晴天」或点右上角歌单", Ui4.T_BODY_SM, Ui4.text2(this));
        sub.setGravity(Gravity.CENTER);
        sub.setMaxLines(1);
        sub.setEllipsize(TextUtils.TruncateAt.END);
        col.addView(sub, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        chipQuality = Ui4.text(this, "", Ui4.T_CAP, Ui4.text3(this));
        chipQuality.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        clp.topMargin = Ui4.dp(this, 6);
        col.addView(chipQuality, clp);
        return col;
    }

    private View lyricColumn()
    {
        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        col.setPadding(Ui4.dp(this, 8), 0, 0, 0);

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        rightHeader = Ui4.textBold(this, "歌词", Ui4.T_BODY, Ui4.text2(this));
        head.addView(rightHeader);
        col.addView(head, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 34)));

        rightScroll = new ScrollView(this);
        rightScroll.setVerticalScrollBarEnabled(false);
        rightScroll.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View v, MotionEvent e)
            {
                lastUserScroll = System.currentTimeMillis();
                return false;
            }
        });

        /* a ScrollView takes exactly one child, so the lyric column and the list column
           live inside this container and are toggled by visibility (not add/remove) */
        rightContent = new LinearLayout(this);
        rightContent.setOrientation(LinearLayout.VERTICAL);

        lyricBox = new LinearLayout(this);
        lyricBox.setOrientation(LinearLayout.VERTICAL);
        lyricBox.setPadding(0, Ui4.dp(this, 12), 0, Ui4.dp(this, 12));
        rightContent.addView(lyricBox, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        listBox = new LinearLayout(this);
        listBox.setOrientation(LinearLayout.VERTICAL);
        listBox.setPadding(0, Ui4.dp(this, 6), 0, Ui4.dp(this, 6));
        listBox.setVisibility(View.GONE);
        rightContent.addView(listBox, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        rightScroll.addView(rightContent, new ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        col.addView(rightScroll, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        return col;
    }

    private View controlBar()
    {
        LinearLayout bar = new LinearLayout(this);
        bar.setOrientation(LinearLayout.VERTICAL);
        bar.setPadding(Ui4.dp(this, 20), Ui4.dp(this, 4), Ui4.dp(this, 20), Ui4.dp(this, 8));
        bar.setBackgroundColor(Ui4.surface(this));

        /* progress row */
        LinearLayout row1 = new LinearLayout(this);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.setGravity(Gravity.CENTER_VERTICAL);
        timeCur = Ui4.text(this, "0:00", Ui4.T_AUX, Ui4.text2(this));
        timeCur.setGravity(Gravity.RIGHT);
        timeTot = Ui4.text(this, "0:00", Ui4.T_AUX, Ui4.text2(this));
        row1.addView(timeCur, new LinearLayout.LayoutParams(Ui4.dp(this, 52),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        seek = new Bar(this, Ui4.primary(this), 4);
        seek.setOnChange(new Bar.OnChange() {
            public void onChange(Bar b, float p, boolean committed)
            {
                scrubbing = !committed;
                long dur = MusicService.durationMs();
                if (dur > 0) timeCur.setText(fmt((long) (dur * p)));
                if (committed) {
                    seekTo((int) (MusicService.durationMs() * p));
                    scrubbing = false;
                }
            }
        });
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(0,
                Ui4.dp(this, 26), 1f);
        slp.leftMargin = Ui4.dp(this, 8);
        slp.rightMargin = Ui4.dp(this, 8);
        row1.addView(seek, slp);
        row1.addView(timeTot, new LinearLayout.LayoutParams(Ui4.dp(this, 52),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        bar.addView(row1, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 34)));

        /* transport row */
        LinearLayout row2 = new LinearLayout(this);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.setGravity(Gravity.CENTER_VERTICAL);

        loopChip = Ui4.text(this, "循环", Ui4.T_CAP, Ui4.text2(this));
        loopChip.setGravity(Gravity.CENTER);
        loopChip.setBackground(Ui4.round(this, Ui4.surface2(this), 12f));
        loopChip.setPadding(Ui4.dp(this, 12), Ui4.dp(this, 6), Ui4.dp(this, 12), Ui4.dp(this, 6));
        loopChip.setClickable(true);
        loopChip.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { MusicService.send(MusicActivity.this, "loop", null, -1); }
        });
        row2.addView(loopChip);

        row2.addView(transport(Glyph.PREV, 48, new Runnable() {
            public void run() { MusicService.send(MusicActivity.this, "prev", null, -1); }
        }));

        FrameLayout big = touchTarget();
        big.setBackground(Ui4.round(this, Ui4.primary(this), 30f));
        LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(
                Ui4.dp(this, 56), Ui4.dp(this, 56));
        blp.leftMargin = Ui4.dp(this, 18);
        blp.rightMargin = Ui4.dp(this, 18);
        playGlyph = new Glyph(this, Glyph.PLAY, 0xFFFFFFFF);
        FrameLayout.LayoutParams glp = new FrameLayout.LayoutParams(
                Ui4.dp(this, 26), Ui4.dp(this, 26), Gravity.CENTER);
        big.addView(playGlyph, glp);
        big.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                MusicService.send(MusicActivity.this, "toggle", null, -1);
            }
        });
        row2.addView(big, blp);

        row2.addView(transport(Glyph.NEXT, 48, new Runnable() {
            public void run() { MusicService.send(MusicActivity.this, "next", null, -1); }
        }));

        shuffleChip = Ui4.text(this, "随机", Ui4.T_CAP, Ui4.text2(this));
        shuffleChip.setGravity(Gravity.CENTER);
        shuffleChip.setBackground(Ui4.round(this, Ui4.surface2(this), 12f));
        shuffleChip.setPadding(Ui4.dp(this, 12), Ui4.dp(this, 6), Ui4.dp(this, 12), Ui4.dp(this, 6));
        shuffleChip.setClickable(true);
        shuffleChip.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                MusicService.send(MusicActivity.this, "shuffle", null, -1);
            }
        });
        LinearLayout.LayoutParams shlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        shlp.leftMargin = Ui4.dp(this, 12);
        row2.addView(shuffleChip, shlp);

        View flex = new View(this);
        row2.addView(flex, new LinearLayout.LayoutParams(0, 1, 1f));

        Glyph volIcon = new Glyph(this, Glyph.VOL, Ui4.text2(this));
        row2.addView(volIcon, new LinearLayout.LayoutParams(Ui4.dp(this, 22), Ui4.dp(this, 22)));
        vol = new Bar(this, Ui4.accent2(this), 4);
        vol.setOnChange(new Bar.OnChange() {
            public void onChange(Bar b, float p, boolean committed)
            {
                /* the bar spans 0..MAX_VOLUME, not 0..100: the ceiling is a product rule */
                if (committed) MusicService.send(MusicActivity.this, "vol", null,
                        Math.round(p * MusicService.MAX_VOLUME));
            }
        });
        LinearLayout.LayoutParams vlp = new LinearLayout.LayoutParams(Ui4.dp(this, 130),
                Ui4.dp(this, 26));
        vlp.leftMargin = Ui4.dp(this, 8);
        row2.addView(vol, vlp);

        bar.addView(row2, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        return bar;
    }

    private TextView chip(String label, final Runnable r)
    {
        TextView t = Ui4.text(this, label, Ui4.T_CAP, Ui4.text2(this));
        t.setGravity(Gravity.CENTER);
        t.setBackground(Ui4.round(this, Ui4.surface2(this), 12f));
        t.setPadding(Ui4.dp(this, 12), Ui4.dp(this, 6), Ui4.dp(this, 12), Ui4.dp(this, 6));
        t.setClickable(true);
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { r.run(); }
        });
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = Ui4.dp(this, 8);
        t.setLayoutParams(lp);
        return t;
    }

    private View transport(int glyph, int sizeDp, final Runnable r)
    {
        FrameLayout f = touchTarget();
        f.addView(new Glyph(this, glyph, Ui4.text(this)), centerFull(22));
        f.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { r.run(); }
        });
        f.setLayoutParams(new LinearLayout.LayoutParams(Ui4.dp(this, sizeDp),
                Ui4.dp(this, sizeDp)));
        return f;
    }

    private FrameLayout touchTarget()
    {
        FrameLayout f = new FrameLayout(this);
        f.setClickable(true);
        return f;
    }

    private FrameLayout.LayoutParams centerFull()
    {
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        return lp;
    }

    private FrameLayout.LayoutParams centerFull(int sizeDp)
    {
        return new FrameLayout.LayoutParams(Ui4.dp(this, sizeDp), Ui4.dp(this, sizeDp),
                Gravity.CENTER);
    }

    /* -------------------------------------------------------------- refresh */

    private final Runnable tick = new Runnable() {
        public void run() {
            updateProgress();
            h.postDelayed(this, 200);
        }
    };

    private void updateProgress()
    {
        long dur = MusicService.durationMs();
        long pos = MusicService.positionMs();
        if (!scrubbing && dur > 0) {
            seek.setProgress(pos / (float) dur);
            timeCur.setText(fmt(pos));
        }
        if (dur > 0) timeTot.setText(fmt(dur));
        updateHighlight(pos);
        if (System.currentTimeMillis() - lastFullRefresh > 900) refreshAll();
    }

    private void refreshAll()
    {
        lastFullRefresh = System.currentTimeMillis();
        Music.Track t = MusicService.currentTrack();
        boolean playing = MusicService.isPlaying();
        boolean resolving = MusicService.isResolving();

        if (playGlyph != null) playGlyph.setType(playing ? Glyph.PAUSE : Glyph.PLAY);
        if (loopChip != null) {
            int lm = MusicService.loopNow();
            loopChip.setText(lm == 0 ? "不循环" : (lm == 1 ? "列表循环" : "单曲循环"));
            loopChip.setTextColor(lm == 0 ? Ui4.text2(this) : Ui4.primary(this));
            shuffleChip.setText(MusicService.shuffleNow() ? "随机开" : "随机");
            shuffleChip.setTextColor(MusicService.shuffleNow() ? Ui4.primary(this)
                    : Ui4.text2(this));
        }
        if (vol != null) vol.setProgress(MusicService.volumeNow()
                / (float) MusicService.MAX_VOLUME);

        String err = MusicService.errorNow();
        if (hint != null) {
            if (resolving) { hint.setText("正在找…"); hint.setTextColor(Ui4.text2(this)); }
            else if (err != null && err.length() > 0) {
                hint.setText(err); hint.setTextColor(Ui4.err(this));
            } else {
                hint.setText(MusicService.isPlaying() ? "播放中" : "");
                hint.setTextColor(Ui4.text3(this));
            }
        }

        if (t == null) {
            if (title != null) title.setText("还没有播放");
            if (sub != null) sub.setText("说「播放晴天」或点右上角歌单");
            if (chipQuality != null) chipQuality.setText("");
            if (cover != null) cover.setImageDrawable(null);
            if (coverFallback != null) coverFallback.setVisibility(View.VISIBLE);
            shownHash = "";
            return;
        }

        title.setText(t.title());
        sub.setText(t.sub());
        chipQuality.setText(MusicService.qualityNow());

        String key = t.hash == null ? "" : t.hash;
        if (!key.equals(shownHash)) {
            shownHash = key;
            loadCover(t.cover);
            rebuildLyric();
            if (mode == MODE_QUEUE) renderQueue();
        }
        if (mode == MODE_LYRIC) {
            Music.Lrc lrc = MusicService.lyricNow();
            if (lrc.size() != shownLines) rebuildLyric();
        }
    }

    private void loadCover(String url)
    {
        shownCoverUrl = url;
        final Bitmap mem = CoverCache.memory(url);
        if (mem != null) {
            cover.setImageBitmap(mem);
            coverFallback.setVisibility(View.GONE);
            return;
        }
        cover.setImageDrawable(null);
        coverFallback.setVisibility(View.VISIBLE);
        CoverCache.load(this, url, 360, new CoverCache.Callback() {
            public void onCover(String u, Bitmap bmp)
            {
                if (bmp == null || cover == null) return;
                if (u == null || !u.equals(shownCoverUrl)) return;   /* stale track */
                cover.setImageBitmap(bmp);
                coverFallback.setVisibility(View.GONE);
            }
        });
    }

    private String shownCoverUrl = "";

    private void rebuildLyric()
    {
        Music.Lrc lrc = MusicService.lyricNow();
        shownLines = lrc.size();
        highlight = -2;
        lyricBox.removeAllViews();
        if (lrc.isEmpty()) {
            TextView t = Ui4.text(this, "这首歌没有歌词", Ui4.T_BODY, Ui4.text3(this));
            t.setGravity(Gravity.CENTER);
            t.setPadding(0, Ui4.dp(this, 60), 0, 0);
            lyricBox.addView(t);
            return;
        }
        for (int i = 0; i < lrc.size(); i++) {
            String s = lrc.lines[i];
            TextView tv = Ui4.text(this, s.length() == 0 ? " " : s, Ui4.T_ACTION, Ui4.text3(this));
            tv.setPadding(0, Ui4.dp(this, 7), 0, Ui4.dp(this, 7));
            tv.setMaxLines(2);
            tv.setEllipsize(TextUtils.TruncateAt.END);
            lyricBox.addView(tv);
        }
    }

    private void updateHighlight(long pos)
    {
        if (mode != MODE_LYRIC) return;
        Music.Lrc lrc = MusicService.lyricNow();
        if (lrc.isEmpty() || lyricBox.getChildCount() != lrc.size()) return;
        int at = lrc.indexAt(pos);
        if (at == highlight) return;
        highlight = at;
        for (int i = 0; i < lyricBox.getChildCount(); i++) {
            TextView tv = (TextView) lyricBox.getChildAt(i);
            if (i == at) tv.setTextColor(Ui4.primary(this));
            else tv.setTextColor(Ui4.text3(this));
        }
        if (at >= 0 && at < lyricBox.getChildCount()
                && System.currentTimeMillis() - lastUserScroll > 4000) {
            View child = lyricBox.getChildAt(at);
            int y = child.getTop() - (rightScroll.getHeight() - child.getHeight()) / 2;
            rightScroll.scrollTo(0, Math.max(0, y));
        }
    }

    /* ---------------------------------------------------------------- panels */

    private void setMode(int m)
    {
        mode = m;
        if (m == MODE_LYRIC) {
            rightHeader.setText("歌词");
            listBox.setVisibility(View.GONE);
            lyricBox.setVisibility(View.VISIBLE);
            rebuildLyric();
            refreshAll();
            return;
        }
        if (m == MODE_QUEUE) {
            rightHeader.setText("播放队列");
            renderQueue();
            showList();
        }
    }

    private void showList()
    {
        lyricBox.setVisibility(View.GONE);
        listBox.setVisibility(View.VISIBLE);
        rightScroll.scrollTo(0, 0);
    }

    private void renderQueue()
    {
        listBox.removeAllViews();
        List<Music.Track> q = MusicService.queueSnapshot();
        if (q.isEmpty()) {
            listBox.addView(Ui4.text(this, "队列是空的", Ui4.T_BODY, Ui4.text3(this)));
            return;
        }
        int now = MusicService.indexNow();
        for (int i = 0; i < q.size(); i++) {
            listBox.addView(row(q.get(i), i == now, i));
        }
    }

    /** one queue row: tap plays it */
    private View row(final Music.Track t, boolean active, final int at)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(Ui4.dp(this, 10), Ui4.dp(this, 9), Ui4.dp(this, 10), Ui4.dp(this, 9));
        if (active) r.setBackground(Ui4.round(this, Ui4.primaryW(this), 12f));
        r.setClickable(true);
        r.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v)
            {
                MusicService.playTracks(MusicActivity.this, MusicService.queueSnapshot(), at);
            }
        });
        TextView idx = Ui4.text(this, String.valueOf(at + 1), Ui4.T_CAP,
                active ? Ui4.primary(this) : Ui4.text3(this));
        idx.setGravity(Gravity.CENTER);
        r.addView(idx, new LinearLayout.LayoutParams(Ui4.dp(this, 28),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        LinearLayout mid = new LinearLayout(this);
        mid.setOrientation(LinearLayout.VERTICAL);
        TextView name = Ui4.textBold(this, t.title(), Ui4.T_BODY_SM,
                active ? Ui4.primary(this) : Ui4.text(this));
        name.setSingleLine(true);
        name.setEllipsize(TextUtils.TruncateAt.END);
        mid.addView(name);
        TextView sg = Ui4.text(this, t.sub(), Ui4.T_CAP, Ui4.text3(this));
        sg.setSingleLine(true);
        sg.setEllipsize(TextUtils.TruncateAt.END);
        mid.addView(sg);
        r.addView(mid, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView dur = Ui4.text(this, t.durationSec > 0 ? fmt(t.durationSec * 1000L) : "",
                Ui4.T_CAP, Ui4.text3(this));
        r.addView(dur);
        return r;
    }

    /* -------------------------------------------------------------- playlists */

    private void openPlaylists()
    {
        mode = MODE_PLAYLIST;
        rightHeader.setText("我的歌单");
        showList();
        listBox.removeAllViews();
        listBox.addView(Ui4.text(this, "正在读取歌单…", Ui4.T_BODY, Ui4.text3(this)));
        new Thread(new Runnable() {
            public void run() {
                final List<Music.Playlist> pls = Music.Api.playlists(MusicActivity.this);
                final String who = Music.Api.sessionName(MusicActivity.this);
                h.post(new Runnable() {
                    public void run() { renderPlaylists(pls, who); }
                });
            }
        }, "t925-playlists").start();
    }

    private void renderPlaylists(List<Music.Playlist> pls, String who)
    {
        listBox.removeAllViews();
        if (!TextUtils.isEmpty(who)) {
            TextView u = Ui4.text(this, "账号：" + who, Ui4.T_CAP, Ui4.text3(this));
            u.setPadding(Ui4.dp(this, 10), Ui4.dp(this, 4), 0, Ui4.dp(this, 6));
            listBox.addView(u);
        }
        if (pls.isEmpty()) {
            listBox.addView(Ui4.text(this, "没有读到歌单（后端登录态可能过期）", Ui4.T_BODY,
                    Ui4.err(this)));
            return;
        }
        for (int i = 0; i < pls.size(); i++) {
            final Music.Playlist p = pls.get(i);
            LinearLayout r = new LinearLayout(this);
            r.setOrientation(LinearLayout.HORIZONTAL);
            r.setGravity(Gravity.CENTER_VERTICAL);
            r.setPadding(Ui4.dp(this, 10), Ui4.dp(this, 10), Ui4.dp(this, 10), Ui4.dp(this, 10));
            r.setBackground(Ui4.round(this, Ui4.surface(this), 14f));
            LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            rlp.topMargin = Ui4.dp(this, 6);
            r.setLayoutParams(rlp);
            r.setClickable(true);
            r.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { openTracks(p); }
            });
            ImageView iv = new ImageView(this);
            iv.setScaleType(ImageView.ScaleType.CENTER_CROP);
            iv.setBackground(Ui4.grad(this, Ui4.gradMusic(this), 10f));
            iv.setClipToOutline(true);
            iv.setOutlineProvider(new ViewOutlineProvider() {
                @Override public void getOutline(View v, Outline o)
                {
                    o.setRoundRect(0, 0, v.getWidth(), v.getHeight(),
                            Ui4.dp(MusicActivity.this, 10));
                }
            });
            final ImageView target = iv;
            CoverCache.load(this, p.cover, 96, new CoverCache.Callback() {
                public void onCover(String u, Bitmap b) { if (b != null) target.setImageBitmap(b); }
            });
            r.addView(iv, new LinearLayout.LayoutParams(Ui4.dp(this, 44), Ui4.dp(this, 44)));
            LinearLayout mid = new LinearLayout(this);
            mid.setOrientation(LinearLayout.VERTICAL);
            TextView name = Ui4.textBold(this, p.name, Ui4.T_BODY_SM, Ui4.text(this));
            name.setSingleLine(true);
            name.setEllipsize(TextUtils.TruncateAt.END);
            mid.addView(name);
            mid.addView(Ui4.text(this, p.count + " 首", Ui4.T_CAP, Ui4.text3(this)));
            LinearLayout.LayoutParams mlp = new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            mlp.leftMargin = Ui4.dp(this, 10);
            r.addView(mid, mlp);
            TextView go = Ui4.text(this, "播放全部 ›", Ui4.T_CAP, Ui4.primary(this));
            r.addView(go);
            listBox.addView(r);
        }
    }

    private void openTracks(final Music.Playlist p)
    {
        rightHeader.setText(p.name);
        listBox.removeAllViews();
        listBox.addView(Ui4.text(this, "正在读取曲目…", Ui4.T_BODY, Ui4.text3(this)));
        new Thread(new Runnable() {
            public void run() {
                final List<Music.Track> tracks = Music.Api.tracks(MusicActivity.this, p.gcid, 500);
                h.post(new Runnable() {
                    public void run() { renderTracks(p, tracks); }
                });
            }
        }, "t925-tracks").start();
    }

    private void renderTracks(final Music.Playlist p, final List<Music.Track> tracks)
    {
        listBox.removeAllViews();
        if (tracks.isEmpty()) {
            listBox.addView(Ui4.text(this, "这个歌单里没有可播的歌", Ui4.T_BODY, Ui4.text3(this)));
            return;
        }
        TextView all = Ui4.text(this, "▶ 播放全部（" + tracks.size() + " 首）", Ui4.T_BODY,
                Ui4.primary(this));
        all.setPadding(Ui4.dp(this, 10), Ui4.dp(this, 10), 0, Ui4.dp(this, 10));
        all.setClickable(true);
        all.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v)
            {
                MusicService.playTracks(MusicActivity.this, tracks, 0);
                setMode(MODE_LYRIC);
            }
        });
        listBox.addView(all);
        for (int i = 0; i < tracks.size(); i++) {
            final int at = i;
            View r = row(tracks.get(i), false, at);
            r.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v)
                {
                    MusicService.playTracks(MusicActivity.this, tracks, at);
                    setMode(MODE_LYRIC);
                }
            });
            listBox.addView(r);
        }
    }

    /* ---------------------------------------------------------------- helpers */

    private void seekTo(int ms) { MusicService.send(this, "seek", String.valueOf(ms), -1); }

    static String fmt(long ms)
    {
        if (ms < 0) ms = 0;
        long s = ms / 1000;
        return (s / 60) + ":" + (s % 60 < 10 ? "0" : "") + (s % 60);
    }

    /* ------------------------------------------------------------------- bar */

    /** a flat progress/volume bar: tap or drag, reports a preview then the committed value */
    static final class Bar extends View {

        interface OnChange { void onChange(Bar b, float progress, boolean committed); }

        private final int color;
        private float progress;
        private OnChange cb;
        private final int heightDp;

        Bar(android.content.Context c, int color, int heightDp)
        {
            super(c);
            this.color = color;
            this.heightDp = heightDp;
        }

        void setOnChange(OnChange c) { cb = c; }

        void setProgress(float v)
        {
            progress = Math.max(0f, Math.min(1f, v));
            invalidate();
        }

        @Override protected void onDraw(android.graphics.Canvas canvas)
        {
            int w = getWidth(), h = getHeight();
            float barH = heightDp * getResources().getDisplayMetrics().density;
            float cy = h / 2f;
            android.graphics.Paint paint = new android.graphics.Paint(
                    android.graphics.Paint.ANTI_ALIAS_FLAG);
            paint.setColor(0x22000000);
            canvas.drawRoundRect(0, cy - barH / 2, w, cy + barH / 2, barH / 2, barH / 2, paint);
            paint.setColor(color);
            canvas.drawRoundRect(0, cy - barH / 2, w * progress, cy + barH / 2, barH / 2,
                    barH / 2, paint);
            float knob = barH * 1.9f;
            paint.setColor(0xFFFFFFFF);
            canvas.drawCircle(w * progress, cy, knob / 2, paint);
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            paint.setStrokeWidth(barH * 0.35f);
            paint.setColor(color);
            canvas.drawCircle(w * progress, cy, knob / 2 - barH * 0.2f, paint);
        }

        @Override public boolean onTouchEvent(MotionEvent e)
        {
            if (e.getAction() == MotionEvent.ACTION_DOWN
                    || e.getAction() == MotionEvent.ACTION_MOVE) {
                float v = Math.max(0f, Math.min(1f, e.getX() / Math.max(1, getWidth())));
                progress = v;
                invalidate();
                if (cb != null) cb.onChange(this, v, false);
                return true;
            }
            if (e.getAction() == MotionEvent.ACTION_UP
                    || e.getAction() == MotionEvent.ACTION_CANCEL) {
                float v = Math.max(0f, Math.min(1f, e.getX() / Math.max(1, getWidth())));
                progress = v;
                invalidate();
                if (cb != null) cb.onChange(this, v, true);
                return true;
            }
            return super.onTouchEvent(e);
        }
    }
}
