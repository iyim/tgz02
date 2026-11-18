.class public Lcom/alibaba/ailabs/basedomain/common/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;,
        Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;,
        Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;,
        Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;
    }
.end annotation


# static fields
.field private static final LOCAL_RING_PLAY_SESSION_ID:I = 0x2773

.field private static final MAX_VOLUME:I = 0x3b

.field private static final MIN_VOLUME:I = 0x26

.field private static final NET_RING_PLAY_SESSION_ID:I = 0x2772

.field private static final TAG:Ljava/lang/String; = "MediaManager"

.field private static final TIME_NO_RESUME:I = 0x493e0

.field private static final TTS_PLAY_SESSION_ID:I = 0x2770

.field private static mAdjustVolumeHandler:Landroid/os/Handler; = null

.field private static mHandlerThread:Landroid/os/HandlerThread; = null

.field private static mManager:Lcom/alibaba/ailabs/basedomain/common/MediaManager; = null

.field private static mNeedChangeToUnmute:Z = false

.field private static sInitVolume:I = -0x1

.field public static sNeedFeedback:Z


# instance fields
.field private isStopAutoBigVolume:Z

.field mAfterOtherTtsDefaultMusicRunnable:Ljava/lang/Runnable;

.field protected mAgmcCallbackImpl:Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;

.field private mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoBigVolumeRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentVolume:I

.field private mIsRing:Z

.field private mLastPausedTime:J

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mOtherTtsBeginTime:J

.field mOtherTtsEndTime:J

.field private mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

.field private mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

.field private mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x26

    .line 49
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isStopAutoBigVolume:Z

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    .line 52
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->LOCAL_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mLastPausedTime:J

    .line 67
    new-instance v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$1;-><init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 194
    new-instance v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$2;-><init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    .line 380
    iput-wide v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsBeginTime:J

    .line 381
    iput-wide v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsEndTime:J

    .line 385
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$3;-><init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAfterOtherTtsDefaultMusicRunnable:Ljava/lang/Runnable;

    .line 216
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->init()V

    .line 218
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->checkAutoBiggerVolumeReady()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100()Landroid/os/Handler;
    .locals 1

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isPlayingOtherTts()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playDefaultLocalRing()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->pause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetMediaPlayer()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/common/MediaManager;ILandroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->onPlayerEvent(ILandroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isStopAutoBigVolume:Z

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    return p0
.end method

.method static synthetic access$808(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)I
    .locals 2

    .line 31
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/basedomain/common/MediaManager;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->setVolume(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkAutoBiggerVolumeReady()V
    .locals 2

    .line 222
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "auto_bigger_volume"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 224
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 225
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private getAudioFocus()Z
    .locals 4

    .line 630
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const-string v1, "MediaManager"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "getAudioFocus true"

    .line 634
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v0, "getAudioFocus false"

    .line 637
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private getCurrentVolume()I
    .locals 5

    .line 611
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->isMute()Z

    move-result v0

    const-string v1, "MediaManager"

    if-eqz v0, :cond_0

    const-string v0, "getCurrentVolume is mute state"

    .line 612
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 616
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentVolume music current volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " max volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;
    .locals 3

    const-class v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    monitor-enter v0

    .line 230
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mManager:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    if-nez v1, :cond_0

    .line 231
    new-instance v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mManager:Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    .line 234
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mManager:Lcom/alibaba/ailabs/basedomain/common/MediaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isNeedFeedback()Z
    .locals 2

    .line 405
    sget-boolean v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sNeedFeedback:Z

    const/4 v1, 0x0

    .line 406
    sput-boolean v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sNeedFeedback:Z

    return v0
.end method

.method private isPlayingOtherTts()Z
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getTopAudioFocusPkg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlayingOtherTts audioFocusPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaManager"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private needPlayOtherTts(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 459
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null.mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    .line 460
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    .line 461
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->hasPendingOtherTts(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onPlayerEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step#5 player change event= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 148
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    sget-object p2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->TTS_URL:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    if-ne p1, p2, :cond_0

    const-string p1, "Step#5.1E Play ring error, and than play ring"

    .line 149
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->LOCAL_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    .line 151
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playRing()V

    goto/16 :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    sget-object p2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->ONLINE_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    if-ne p1, p2, :cond_1

    .line 153
    sget-object p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->LOCAL_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    .line 154
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->isAlarmRingUIShow()Z

    move-result p1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step#5.2E Play ring error, and than play local ring"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 157
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playDefaultLocalRing()V

    goto :goto_0

    :cond_1
    const-string p1, "Step#5.3E mState Listener on error"

    .line 160
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetMediaPlayer()V

    .line 162
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz p1, :cond_4

    .line 163
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object p2, p2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    sget-object p2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->TTS_URL:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    if-ne p1, p2, :cond_2

    const-string p1, "Step#5.1 on end but last TTS_URL and now continue play ring"

    .line 175
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->LOCAL_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    .line 177
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playRing()V

    goto :goto_0

    :cond_2
    const-string p1, "Step#5.2 on end mState Listener completed"

    .line 179
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetMediaPlayer()V

    .line 181
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz p1, :cond_3

    .line 182
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object p2, p2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onCompletion(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x0

    .line 184
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isStopAutoBigVolume:Z

    goto :goto_0

    .line 143
    :pswitch_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetMediaPlayer()V

    :cond_4
    :goto_0
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private pause()V
    .locals 2

    const-string v0, "MediaManager"

    const-string v1, "MediaPlayer pause"

    .line 501
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcPause()V

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    .line 506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mLastPausedTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v1, "pause but mMediaPlayer is null"

    .line 511
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method private playDefaultLocalRing()V
    .locals 6

    const-string v0, "MediaManager"

    const-string v1, "playDefaultLocalRing begin "

    .line 534
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-boolean v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->ignoreDefault:Z

    if-eqz v1, :cond_0

    const-string v1, "ignore playDefaultLocalRing, no default ring-------------"

    .line 536
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 539
    iput-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcStop()V

    .line 543
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/common/CacheManager;->readyLocalAlarmAudio(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 544
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is File exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " can read:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;-><init>()V

    .line 547
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v4, "audioUrl"

    .line 548
    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    if-eqz v4, :cond_1

    const-string v4, "alarmId"

    .line 550
    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v5, v5, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setExtraData(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setAudioUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 554
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setExclusive(Z)V

    .line 555
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcPlay(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playDefaultLocalRing before prepare mMediaPlayer.isPlaying():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    .line 557
    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "mState Listener playDefaultLocalRing err"

    .line 559
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetMediaPlayer()V

    .line 561
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play local ring err, e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 562
    invoke-interface {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    return-void

    .line 565
    :goto_1
    throw v0
.end method

.method private playMusic(Ljava/lang/String;)V
    .locals 5

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step#4.1.0 playMusic begin path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 575
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcStop()V

    .line 580
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;-><init>()V

    .line 581
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "audioUrl"

    .line 582
    invoke-virtual {v2, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    if-eqz v3, :cond_0

    const-string v3, "alarmId"

    .line 584
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v4, v4, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setExtraData(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setAudioUrl(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 588
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->setExclusive(Z)V

    .line 589
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcPlay(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;)V

    const-string v0, "Step#4.1.0  mMediaPlayer before prepare"

    .line 590
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step#4.1.0 mState Listener playMusic err, path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetMediaPlayer()V

    .line 594
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz p1, :cond_1

    .line 595
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMusic e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-interface {p1, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private playOtherDomainTts(Ljava/lang/String;I)V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getTtsByAlarmId(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playOtherDomainTts tts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " alarmId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaManager"

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsBeginTime:J

    const-wide/16 v1, 0x0

    .line 415
    iput-wide v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mOtherTtsEndTime:J

    .line 416
    sget-object p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAfterOtherTtsDefaultMusicRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 417
    sget-object p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAfterOtherTtsDefaultMusicRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 419
    aget-object v1, v0, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 420
    aget-object v1, v0, v1

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 421
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v2

    aget-object p1, v0, p1

    invoke-virtual {v2, p1, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->playTts(Ljava/lang/String;Z)I

    move-result p1

    move v0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 423
    :goto_0
    sput-boolean p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sNeedFeedback:Z

    if-eqz v0, :cond_2

    if-lez p2, :cond_1

    .line 427
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->setVolume(I)V

    .line 430
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object p2

    new-instance v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$4;-><init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;Z)V

    invoke-virtual {p2, v0, v1}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->registerTTSStatusCallback(ILcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;)V

    :cond_2
    return-void
.end method

.method private playRing()V
    .locals 3

    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    .line 646
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MediaManager"

    if-eqz v0, :cond_0

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step#4.2.1 playRing mRingPlayTask.url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playDefaultLocalRing()V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->needPlayOtherTts(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step#4.2.2 Ready play tts, mRingPlayTask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->volume:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playOtherDomainTts(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "Step#4.2.3 else but mPlay Type = ONLINE_ALARM"

    .line 653
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->ONLINE_ALARM:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    .line 655
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playMusic(Ljava/lang/String;)V

    const/16 v0, 0x26

    .line 656
    iput v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    .line 657
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private prepareForAudio()V
    .locals 5

    .line 672
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getCurrentVolume()I

    move-result v0

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareForAudio originVol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mResetVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaManager"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    sget v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    if-gez v1, :cond_0

    .line 675
    sput v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    .line 677
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->isMute()Z

    move-result v0

    .line 678
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->killBackgroundApp()V

    if-eqz v0, :cond_1

    const-string v1, "PrepareForAudio before play"

    .line 680
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sendUnmuteKey(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    .line 682
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "prepareForMute sleep err"

    .line 684
    invoke-static {v2, v3, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getCurrentVolume()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->updateInitVolume(I)V

    const/4 v1, 0x1

    .line 689
    sput-boolean v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mNeedChangeToUnmute:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 692
    sput-boolean v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mNeedChangeToUnmute:Z

    .line 694
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareForMute before isMute:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " after isMute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->isMute()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mNeedChangeToUnmute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mNeedChangeToUnmute:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeMuteState()V
    .locals 1

    const/4 v0, 0x0

    .line 278
    sput-boolean v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mNeedChangeToUnmute:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static removeVolumeState()V
    .locals 1

    const/4 v0, -0x1

    .line 274
    sput v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private resetMediaPlayer()V
    .locals 3

    const-string v0, "MediaManager"

    const-string v1, "resetMediaPlayer"

    .line 516
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 517
    iput-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    const-wide/16 v1, 0x0

    .line 518
    iput-wide v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mLastPausedTime:J

    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcStop()V

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcAbandonFocus(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "resetMediaPlayer exception"

    .line 529
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetUnmuteState(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MediaManager"

    const-string v1, "resetUnmuteState"

    .line 736
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->sendUnmuteKey(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private resetVolume()V
    .locals 2

    .line 623
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 624
    sget v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    if-ltz v0, :cond_0

    .line 625
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->setVolume(I)V

    :cond_0
    return-void
.end method

.method private resume()V
    .locals 8

    const-string v0, "MediaManager"

    const-string v1, "resume"

    .line 478
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-wide v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mLastPausedTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mLastPausedTime:J

    sub-long/2addr v1, v5

    const-wide/32 v5, 0x493e0

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    const-string v1, "resume REASON_STOP_BY_LOSS_FOCUS_EXCEED_TIME"

    .line 480
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REASON_STOP_BY_LOSS_FOCUS_EXCEED_TIME mLastPausedTime:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mLastPausedTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    const-string v2, "focus_loss"

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->stopRing(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->isAlarmRingUIShow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcResume()V

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    .line 492
    iput-wide v3, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mLastPausedTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const-string v1, "resume but mMediaPlayer is null or ui is not show"

    .line 496
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method private sendUnmuteKey(Ljava/lang/String;)V
    .locals 0

    .line 732
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->sendUnmuteKey(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setVolume(I)V
    .locals 5

    .line 602
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 603
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarm current volume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max volume:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " set Volume:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaManager"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private stopRingWithoutHandleException(Ljava/lang/String;)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop Ring alarm id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcStop()V

    .line 469
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const-string v0, "finish_by_other_clock"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 473
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    :cond_1
    return-void
.end method

.method public static updateInitVolume(I)V
    .locals 2

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInitVolume: currentVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , sInitVolume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    if-gez v0, :cond_0

    .line 667
    sput p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const-string v0, "MediaManager"

    const-string v1, "init media player"

    .line 263
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;-><init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcCallbackImpl:Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;

    .line 265
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcCallbackImpl:Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public isRing()Z
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    return v0
.end method

.method public killBackgroundApp()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public playAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 10

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step#4 playAlarm begin url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ttsUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " origin alarmTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isRing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->prepareForAudio()V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;->agmcIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    const-string v2, "finish_by_other_clock"

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->stopRing(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_1
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p5

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;-><init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    const/4 p1, 0x0

    .line 292
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isStopAutoBigVolume:Z

    const/16 p1, 0x26

    .line 295
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->setVolume(I)V

    .line 297
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/analytics/core/network/NetworkUtil;->isConnectInternet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playDefaultLocalRing()V

    return-void

    .line 302
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    const-string p1, "Step#4.1 playMusic ttsUrl has set mPlay Type= TTS_URL"

    .line 304
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;->TTS_URL:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mPlayType:Lcom/alibaba/ailabs/basedomain/common/MediaManager$PlayType;

    .line 306
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playMusic(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "Step#4.2 playRing ttsUrl null"

    .line 308
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->playRing()V

    :goto_0
    return-void
.end method

.method public resetAudio()V
    .locals 2

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetAudio mResetVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mNeedChangeToUnmute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mNeedChangeToUnmute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    if-ltz v0, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetVolume()V

    const/4 v0, -0x1

    .line 705
    sput v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->sInitVolume:I

    .line 707
    :cond_0
    sget-boolean v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mNeedChangeToUnmute:Z

    if-eqz v0, :cond_1

    const-string v0, "reset audio after play finish"

    .line 708
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetUnmuteState(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 709
    sput-boolean v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mNeedChangeToUnmute:Z

    :cond_1
    return-void
.end method

.method public setMediaPlayStateListener(Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    return-void
.end method

.method public stopAutoBigVolume()V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAutoBigVolume mAdjustVolumeHandler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public stopRing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "user_touch"

    const-string v4, "REASON_STOP_BY_WAKE_UP"

    const-string v5, "mState Listener stopRing call back reason:"

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media manager stop ring, new alarm id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " origin alarmTask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " reason:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaManager"

    invoke-static {v7, v6}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v6, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    if-nez v6, :cond_0

    const-string v0, "stopRing with no alarm task"

    .line 319
    invoke-static {v7, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    iget-object v6, v6, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v8, "play_finish"

    const-string v9, "finish_by_other_clock"

    const-string v10, "focus_loss"

    const-string v11, "finish_exception"

    if-nez v6, :cond_4

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mState Listener stopRing with unmatched alarm id: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " reason:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v6, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz v6, :cond_4

    .line 326
    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 327
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    invoke-interface {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onInterrupt(Ljava/lang/String;)V

    return-void

    .line 329
    :cond_1
    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 330
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    invoke-interface {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onReplace(Ljava/lang/String;)V

    return-void

    .line 332
    :cond_2
    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    invoke-interface {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onCompletion(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_3
    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 336
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    invoke-interface {v2, v0, v11}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 342
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->stopRingWithoutHandleException(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz v0, :cond_b

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v15, :cond_8

    if-eq v0, v14, :cond_8

    if-eq v0, v13, :cond_7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_6

    goto :goto_2

    .line 363
    :cond_6
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2, v11}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 360
    :cond_7
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onCompletion(Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :cond_8
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onStopByUser(Ljava/lang/String;)V

    goto :goto_2

    .line 353
    :cond_9
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onReplace(Ljava/lang/String;)V

    goto :goto_2

    .line 350
    :cond_a
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onInterrupt(Ljava/lang/String;)V

    .line 368
    :cond_b
    :goto_2
    iput-boolean v12, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v12, v0

    :try_start_1
    const-string v0, "stopRing exception"

    .line 344
    invoke-static {v7, v0, v12}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz v0, :cond_12

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_3

    :sswitch_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_4

    :sswitch_7
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_4

    :sswitch_8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    goto :goto_4

    :sswitch_9
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    goto :goto_4

    :sswitch_a
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_4

    :sswitch_b
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x5

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v0, -0x1

    :goto_4
    if-eqz v0, :cond_11

    if-eq v0, v6, :cond_10

    if-eq v0, v15, :cond_f

    if-eq v0, v14, :cond_f

    if-eq v0, v13, :cond_e

    const/4 v2, 0x5

    if-eq v0, v2, :cond_d

    goto :goto_5

    .line 363
    :cond_d
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2, v11}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 360
    :cond_e
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onCompletion(Ljava/lang/String;)V

    goto :goto_5

    .line 357
    :cond_f
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onStopByUser(Ljava/lang/String;)V

    goto :goto_5

    .line 353
    :cond_10
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onReplace(Ljava/lang/String;)V

    goto :goto_5

    .line 350
    :cond_11
    iget-object v0, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v2, v2, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onInterrupt(Ljava/lang/String;)V

    :cond_12
    :goto_5
    const/4 v2, 0x0

    .line 368
    iput-boolean v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    .line 371
    :goto_6
    sget-object v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 346
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v5, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    if-eqz v5, :cond_19

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 348
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    goto :goto_8

    :sswitch_c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    goto :goto_9

    :sswitch_d
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_9

    :sswitch_e
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto :goto_9

    :sswitch_f
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    goto :goto_9

    :sswitch_10
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_9

    :sswitch_11
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v2, -0x1

    :goto_9
    if-eqz v2, :cond_18

    if-eq v2, v6, :cond_17

    if-eq v2, v15, :cond_16

    if-eq v2, v14, :cond_16

    if-eq v2, v13, :cond_15

    const/4 v3, 0x5

    if-eq v2, v3, :cond_14

    goto :goto_a

    .line 363
    :cond_14
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v3, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v2, v3, v11}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 360
    :cond_15
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v3, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onCompletion(Ljava/lang/String;)V

    goto :goto_a

    .line 357
    :cond_16
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v3, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onStopByUser(Ljava/lang/String;)V

    goto :goto_a

    .line 353
    :cond_17
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v3, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onReplace(Ljava/lang/String;)V

    goto :goto_a

    .line 350
    :cond_18
    iget-object v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mStateListener:Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;

    iget-object v3, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mRingPlayTask:Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;

    iget-object v3, v3, Lcom/alibaba/ailabs/basedomain/common/MediaManager$RingPlayTask;->alarmId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;->onInterrupt(Ljava/lang/String;)V

    :cond_19
    :goto_a
    const/4 v2, 0x0

    .line 368
    iput-boolean v2, v1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mIsRing:Z

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7292045d -> :sswitch_5
        -0x3e188dd6 -> :sswitch_4
        -0x30204402 -> :sswitch_3
        -0x11445070 -> :sswitch_2
        -0x685649d -> :sswitch_1
        0x735ee9cb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7292045d -> :sswitch_b
        -0x3e188dd6 -> :sswitch_a
        -0x30204402 -> :sswitch_9
        -0x11445070 -> :sswitch_8
        -0x685649d -> :sswitch_7
        0x735ee9cb -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7292045d -> :sswitch_11
        -0x3e188dd6 -> :sswitch_10
        -0x30204402 -> :sswitch_f
        -0x11445070 -> :sswitch_e
        -0x685649d -> :sswitch_d
        0x735ee9cb -> :sswitch_c
    .end sparse-switch
.end method

.method public volumeAdjust(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, -0x6

    :goto_0
    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isStopAutoBigVolume:Z

    .line 245
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    .line 246
    sget-object p1, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAdjustVolumeHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mAutoBigVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->mCurrentVolume:I

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->setVolume(I)V

    return-void
.end method
