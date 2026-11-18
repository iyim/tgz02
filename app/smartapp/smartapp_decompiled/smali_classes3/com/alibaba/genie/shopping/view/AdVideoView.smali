.class public Lcom/alibaba/genie/shopping/view/AdVideoView;
.super Landroid/widget/FrameLayout;
.source "AdVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdVideoView"


# instance fields
.field private mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioFocused:Z

.field private mCloseView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

.field private mContext:Landroid/content/Context;

.field private mCurrentSecond:J

.field private mPlayCurrentPosition:J

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTryPlay:Z

.field private mVideoPlaceholderLayout:Landroid/widget/FrameLayout;

.field private mVideoPlayIcon:Landroid/widget/ImageView;

.field private mVideoUrl:Ljava/lang/String;

.field private mVideoView:Landroid/widget/VideoView;

.field private mVideoViewHolder:Landroid/widget/ImageView;

.field private mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onPlayCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/genie/shopping/view/AdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTryPlay:Z

    const-wide/16 p2, 0x0

    .line 48
    iput-wide p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCurrentSecond:J

    .line 210
    new-instance p2, Lcom/alibaba/genie/shopping/view/AdVideoView$3;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/view/AdVideoView$3;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V

    iput-object p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->onPlayCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 232
    new-instance p2, Lcom/alibaba/genie/shopping/view/AdVideoView$4;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/view/AdVideoView$4;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V

    iput-object p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    const/4 p2, 0x0

    .line 445
    iput-object p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 p2, 0x1

    .line 446
    iput-boolean p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocused:Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 485
    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/VideoView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoPlaceholderLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/alibaba/genie/shopping/view/AdVideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/VideoWidgetView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/genie/shopping/view/AdVideoView;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mPlayCurrentPosition:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/alibaba/genie/shopping/view/AdVideoView;)Landroid/os/CountDownTimer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/alibaba/genie/shopping/view/AdVideoView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alibaba/genie/shopping/view/AdVideoView;)Lcom/alibaba/genie/shopping/view/VideoWidgetView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCloseView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/genie/shopping/view/AdVideoView;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCurrentSecond:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/alibaba/genie/shopping/view/AdVideoView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocused:Z

    return p0
.end method

.method static synthetic access$902(Lcom/alibaba/genie/shopping/view/AdVideoView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocused:Z

    return p1
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "audio"

    const-string v4, "AdVideoView"

    if-nez v0, :cond_0

    const-string v0, " request audio focus"

    .line 451
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 453
    new-instance v3, Lcom/alibaba/genie/shopping/view/AdVideoView$7;

    invoke-direct {v3, p0}, Lcom/alibaba/genie/shopping/view/AdVideoView$7;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V

    iput-object v3, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    :cond_0
    const-string v0, " request audio focus again "

    .line 475
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 477
    iget-object v3, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentSecond()Ljava/lang/String;
    .locals 3

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCurrentSecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public pauseVideo()V
    .locals 2

    const-string v0, "AdVideoView"

    const-string v1, "playerStopped..."

    .line 398
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 402
    :cond_0
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mPlayCurrentPosition:J

    .line 404
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 406
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    .line 413
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTryPlay:Z

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTryPlay:Z

    .line 417
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    if-eqz v0, :cond_3

    .line 418
    invoke-interface {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;->onAutoStartPlay()V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    if-eqz v0, :cond_3

    .line 422
    invoke-interface {v0}, Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;->onPlayPause()V

    :cond_3
    :goto_0
    return-void
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 2

    .line 302
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoUrl:Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->onPlayCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 325
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/alibaba/genie/shopping/view/AdVideoView$5;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/view/AdVideoView$5;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 332
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 335
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->requestAudioFocus()V

    return-void
.end method

.method public releaseVideo()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 343
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 344
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->abandonAudioFocus()V

    .line 345
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->release()V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCloseView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->release()V

    :cond_2
    return-void
.end method

.method public resumeVideo()V
    .locals 8

    const-string v0, "AdVideoView"

    const-string v1, "playerResume..."

    .line 355
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-wide v1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mPlayCurrentPosition:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 362
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 365
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 372
    iget-wide v2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mPlayCurrentPosition:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    sub-long/2addr v0, v2

    :cond_2
    move-wide v4, v0

    .line 375
    new-instance v0, Lcom/alibaba/genie/shopping/view/AdVideoView$6;

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/genie/shopping/view/AdVideoView$6;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView;JJ)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    .line 389
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 390
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/view/AdVideoView;->requestAudioFocus()V

    :cond_3
    return-void
.end method

.method public setAdVideoViewListener(Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mAdVideoViewListener:Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;

    return-void
.end method

.method public setCloseListener(Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCloseView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->setListener(Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;)V

    return-void
.end method

.method public setVolumeListener(Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->setListener(Lcom/alibaba/genie/shopping/view/VideoWidgetView$IVideoWidgetListener;)V

    return-void
.end method

.method public showAd(Z)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$layout;->layout_ad_lanscape:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 81
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->video_placeholder_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoPlaceholderLayout:Landroid/widget/FrameLayout;

    .line 82
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->video_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    .line 83
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 84
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->video_placeholder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoViewHolder:Landroid/widget/ImageView;

    .line 85
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_video_play_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoPlayIcon:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->ad_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    .line 87
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->ad_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCloseView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    .line 88
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->showVolume()V

    return-void
.end method

.method public showTimeRemain(Ljava/lang/String;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mCloseView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->showClose(I)V

    return-void
.end method

.method public showVideoPlaceHolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoPlaceHolder..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdVideoView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    new-instance p1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 128
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 134
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoViewHolder:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 144
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p2

    .line 149
    :cond_2
    iget-object p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoViewHolder:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 167
    :goto_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoViewHolder:Landroid/widget/ImageView;

    new-instance p2, Lcom/alibaba/genie/shopping/view/AdVideoView$1;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/view/AdVideoView$1;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVideoPlayIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/alibaba/genie/shopping/view/AdVideoView$2;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/view/AdVideoView$2;-><init>(Lcom/alibaba/genie/shopping/view/AdVideoView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public toggleVolume()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->toggleVolume()V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mVolumeView:Lcom/alibaba/genie/shopping/view/VideoWidgetView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/view/VideoWidgetView;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/AdVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
