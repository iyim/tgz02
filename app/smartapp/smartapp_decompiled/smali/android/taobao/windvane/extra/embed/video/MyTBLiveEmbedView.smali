.class public Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;
.super Landroid/taobao/windvane/embed/BaseEmbedView;
.source "MyTBLiveEmbedView.java"

# interfaces
.implements Lcom/taobao/mediaplay/player/IMediaPlayLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;,
        Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
    }
.end annotation


# static fields
.field private static final Event_State:Ljava/lang/String; = "changeState"

.field private static final Event_error:Ljava/lang/String; = "error"

.field private static FIRST_FRAME:Ljava/lang/String; = "2006"

.field private static LOADING:Ljava/lang/String; = "2007"

.field public static final NAME:Ljava/lang/String; = "wvlivevideo"

.field private static PAUSED:Ljava/lang/String; = "2005"

.field private static PLAYING:Ljava/lang/String; = "2004"


# instance fields
.field private mAutoPlay:Z

.field private mBizCode:Ljava/lang/String;

.field private mComponentHostView:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mFeedId:Ljava/lang/String;

.field private mHeight:I

.field private mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

.field private mMediaType:Lcom/taobao/mediaplay/MediaType;

.field private mMuted:Z

.field private mObjectFit:Lcom/taobao/mediaplay/player/MediaAspectRatio;

.field private mScenarioType:I

.field private mSrc:Ljava/lang/String;

.field private mSubBizCode:Ljava/lang/String;

.field mUsePlayerManager:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    .line 31
    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mSrc:Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mScenarioType:I

    .line 33
    sget-object v2, Lcom/taobao/mediaplay/MediaType;->LIVE:Lcom/taobao/mediaplay/MediaType;

    iput-object v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaType:Lcom/taobao/mediaplay/MediaType;

    .line 34
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mAutoPlay:Z

    .line 35
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMuted:Z

    .line 36
    sget-object v2, Lcom/taobao/mediaplay/player/MediaAspectRatio;->DW_CENTER_CROP:Lcom/taobao/mediaplay/player/MediaAspectRatio;

    iput-object v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mObjectFit:Lcom/taobao/mediaplay/player/MediaAspectRatio;

    .line 37
    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mBizCode:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mSubBizCode:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mFeedId:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mUsePlayerManager:Z

    .line 49
    iput v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mWidth:I

    .line 50
    iput v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mHeight:I

    return-void
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->setSrc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;ZZ)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->setMuted(ZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->setAutoPlay(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mute(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->play()V

    return-void
.end method

.method static synthetic access$700(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->pause()V

    return-void
.end method

.method static synthetic access$800(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->seekTo(I)V

    return-void
.end method

.method private declared-synchronized destroyInner()V
    .locals 1

    monitor-enter p0

    .line 353
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 354
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Embed Video destroy"

    .line 357
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->log(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->release()V

    .line 359
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->destroy()V

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->log(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "code"

    .line 388
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, p1, v0}, Landroid/taobao/windvane/extra/embed/video/EmbedViewEvent;->firevent(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private genVideoView()Landroid/view/View;
    .locals 4

    .line 89
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;-><init>(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    .line 101
    :cond_0
    new-instance v0, Lcom/taobao/mediaplay/MediaPlayCenter;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    .line 102
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setMediaUrl(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    iget v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mScenarioType:I

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setScenarioType(I)V

    .line 104
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaType:Lcom/taobao/mediaplay/MediaType;

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setMediaType(Lcom/taobao/mediaplay/MediaType;)V

    .line 105
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    iget-boolean v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMuted:Z

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setMute(Z)V

    .line 107
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mObjectFit:Lcom/taobao/mediaplay/player/MediaAspectRatio;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v1, v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->setMediaAspectRatio(Lcom/taobao/mediaplay/player/MediaAspectRatio;)V

    .line 112
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mBizCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mBizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setBusinessId(Ljava/lang/String;)V

    .line 116
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mSubBizCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mSubBizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setBizCode(Ljava/lang/String;)V

    .line 120
    :cond_3
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mFeedId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mFeedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setMediaId(Ljava/lang/String;)V

    .line 124
    :cond_4
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    const-string v1, "MediaLive"

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setConfigGroup(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->hideController()V

    .line 126
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setNeedPlayControlView(Z)V

    .line 127
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v0, p0}, Lcom/taobao/mediaplay/MediaPlayCenter;->setMediaLifecycleListener(Lcom/taobao/mediaplay/player/IMediaPlayLifecycleListener;)V

    .line 128
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setPlayerType(I)V

    .line 129
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->setup()V

    .line 131
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v1}, Lcom/taobao/mediaplay/MediaPlayCenter;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mWidth:I

    iget v3, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mHeight:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 132
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mAutoPlay:Z

    if-eqz v0, :cond_5

    .line 133
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->LOADING:Ljava/lang/String;

    const-string v1, "changeState"

    invoke-direct {p0, v1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->start()V

    :cond_5
    const-string v0, "init EmbedLive View"

    .line 136
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->log(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mComponentHostView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private mute(Z)V
    .locals 1

    .line 486
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0, p1}, Lcom/taobao/mediaplay/MediaPlayCenter;->mute(Z)V

    :cond_0
    return-void
.end method

.method private parseParam()V
    .locals 7

    .line 65
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->setWidth(IZ)V

    .line 66
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    invoke-direct {p0, v0, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->setHeight(IZ)V

    .line 68
    invoke-static {}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->values()[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    move-result-object v0

    .line 69
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 70
    iget-object v5, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->params:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v5, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v4, p0, v5, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/Object;Z)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pause()V
    .locals 3

    .line 509
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    iget v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mScenarioType:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 513
    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->release()V

    .line 514
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->PAUSED:Ljava/lang/String;

    const-string v1, "changeState"

    invoke-direct {p0, v1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 516
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->pause()V

    :goto_0
    return-void
.end method

.method private play()V
    .locals 3

    .line 498
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    iget v1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mScenarioType:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 502
    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->setup()V

    const/16 v0, 0x7d7

    .line 503
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "changeState"

    invoke-direct {p0, v1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 505
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {v0}, Lcom/taobao/mediaplay/MediaPlayCenter;->start()V

    return-void
.end method

.method private seekTo(I)V
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0, p1}, Lcom/taobao/mediaplay/MediaPlayCenter;->seekTo(I)V

    :cond_0
    return-void
.end method

.method private setAutoPlay(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mAutoPlay:Z

    return-void
.end method

.method private setHeight(IZ)V
    .locals 0

    .line 80
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mHeight:I

    return-void
.end method

.method private setMuted(ZZ)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMuted:Z

    if-eqz p2, :cond_0

    .line 308
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    if-eqz p2, :cond_0

    .line 309
    invoke-virtual {p2, p1}, Lcom/taobao/mediaplay/MediaPlayCenter;->setMute(Z)V

    .line 310
    iget-object p2, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mMediaPlayCenter:Lcom/taobao/mediaplay/MediaPlayCenter;

    invoke-virtual {p2, p1}, Lcom/taobao/mediaplay/MediaPlayCenter;->mute(Z)V

    :cond_0
    return-void
.end method

.method private setSrc(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mSrc:Ljava/lang/String;

    return-void
.end method

.method private setWidth(IZ)V
    .locals 0

    .line 84
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mWidth:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    .line 396
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, p0, p2, p3}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->doSomething(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result p1

    return p1

    .line 404
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/taobao/windvane/embed/BaseEmbedView;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result p1

    return p1
.end method

.method protected generateView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 59
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->parseParam()V

    .line 61
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->genVideoView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected getViewType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wvlivevideo"

    return-object v0
.end method

.method log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "wvlivevideo"

    .line 546
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 378
    invoke-super {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;->onDestroy()V

    .line 379
    invoke-direct {p0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->destroyInner()V

    return-void
.end method

.method public onMediaClose()V
    .locals 0

    return-void
.end method

.method public onMediaComplete()V
    .locals 0

    return-void
.end method

.method public onMediaError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)V
    .locals 0

    const/16 p1, -0x1f4

    const/16 p3, -0x190

    if-le p3, p2, :cond_0

    if-le p2, p1, :cond_0

    const/16 p1, 0x456

    goto :goto_1

    :cond_0
    if-lt p1, p2, :cond_1

    const/16 p1, -0x258

    if-le p2, p1, :cond_1

    const/16 p1, 0x457

    goto :goto_1

    :cond_1
    const/4 p1, -0x5

    if-ne p2, p1, :cond_2

    const/16 p1, 0x3f0

    goto :goto_1

    :cond_2
    const/16 p1, -0x2716

    if-eq p2, p1, :cond_4

    const/16 p1, -0x2710

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x3ff

    goto :goto_1

    :cond_4
    :goto_0
    const/16 p1, 0xbba

    .line 185
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "error"

    invoke-direct {p0, p2, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;JJJLjava/lang/Object;)V
    .locals 0

    const-wide/16 p4, 0x3

    cmp-long p1, p2, p4

    if-nez p1, :cond_0

    .line 191
    sget-object p1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->FIRST_FRAME:Ljava/lang/String;

    const-string p2, "changeState"

    invoke-direct {p0, p2, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMediaPause(Z)V
    .locals 1

    .line 147
    sget-object p1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->PAUSED:Ljava/lang/String;

    const-string v0, "changeState"

    invoke-direct {p0, v0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaPlay()V
    .locals 2

    .line 152
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->PLAYING:Ljava/lang/String;

    const-string v1, "changeState"

    invoke-direct {p0, v1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onMediaProgressChanged(III)V
    .locals 0

    return-void
.end method

.method public onMediaScreenChanged(Lcom/taobao/mediaplay/MediaPlayScreenType;)V
    .locals 0

    return-void
.end method

.method public onMediaSeekTo(I)V
    .locals 0

    return-void
.end method

.method public onMediaStart()V
    .locals 2

    .line 142
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->PLAYING:Ljava/lang/String;

    const-string v1, "changeState"

    invoke-direct {p0, v1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onParamChanged([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 522
    invoke-super {p0, p1, p2}, Landroid/taobao/windvane/embed/BaseEmbedView;->onParamChanged([Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 523
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 529
    aget-object p1, p1, v0

    .line 530
    aget-object p2, p2, v0

    .line 533
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 541
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParamChanged key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Value : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->log(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 542
    invoke-virtual {v0, p0, p2, p1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/Object;Z)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 368
    invoke-super {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 373
    invoke-super {p0}, Landroid/taobao/windvane/embed/BaseEmbedView;->onResume()V

    return-void
.end method

.method public setBizCode(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mBizCode:Ljava/lang/String;

    return-void
.end method

.method public setFeedId(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mFeedId:Ljava/lang/String;

    return-void
.end method

.method public setObjectFit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fill"

    .line 319
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 320
    sget-object p1, Lcom/taobao/mediaplay/player/MediaAspectRatio;->DW_CENTER_CROP:Lcom/taobao/mediaplay/player/MediaAspectRatio;

    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mObjectFit:Lcom/taobao/mediaplay/player/MediaAspectRatio;

    goto :goto_0

    .line 322
    :cond_0
    sget-object p1, Lcom/taobao/mediaplay/player/MediaAspectRatio;->DW_FIT_CENTER:Lcom/taobao/mediaplay/player/MediaAspectRatio;

    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mObjectFit:Lcom/taobao/mediaplay/player/MediaAspectRatio;

    :goto_0
    return-void
.end method

.method public setScenarioType(I)V
    .locals 0

    .line 339
    iput p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mScenarioType:I

    return-void
.end method

.method public setSubBizCode(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mSubBizCode:Ljava/lang/String;

    return-void
.end method

.method public setUsePlayerManager(Z)V
    .locals 0

    .line 335
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->mUsePlayerManager:Z

    return-void
.end method
