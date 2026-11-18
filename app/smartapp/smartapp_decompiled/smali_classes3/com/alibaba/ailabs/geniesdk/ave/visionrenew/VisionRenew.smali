.class public Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;
.super Ljava/lang/Object;
.source "VisionRenew.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VisionRenew"


# instance fields
.field private mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNative:J

.field private mPackageName:Ljava/lang/String;

.field private mPageName:Ljava/lang/String;

.field private mRenewed:Z

.field private mStarted:Z

.field private mStopRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mPackageName:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mPageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStarted:Z

    .line 35
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mRenewed:Z

    .line 42
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$1;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStopRunnable:Ljava/lang/Runnable;

    .line 49
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew$2;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mContext:Landroid/content/Context;

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mRenewed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mRenewed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->onEventHit(Ljava/lang/String;Ljava/util/Map;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStopRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private onEventHit(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 122
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mPackageName:Ljava/lang/String;

    const-string v1, "packageName"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mPageName:Ljava/lang/String;

    const-string v1, "pageName"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "spm"

    const-string v1, "a1z3lt.b79258703"

    .line 126
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object v0

    const-string v1, "TmallGenie_Multimode_Page"

    invoke-interface {v0, p1, v1, p2}, Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public doStart()V
    .locals 5

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStarted:Z

    const-string v1, "VisionRenew"

    if-eqz v0, :cond_0

    const-string v0, "doStart: ave client already started"

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    const-string v0, "genieallinone"

    .line 78
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "enable"

    const-string v3, "GenieVisionRenewVEngine"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "TmallGenie_Multimode_FaceRecognize_AddTime_Open"

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, v0, v2}, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->onEventHit(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStarted:Z

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mRenewed:Z

    .line 84
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->setFullDuplexDialogRenewDuration(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStopRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStart: start failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public doStop()V
    .locals 4

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStarted:Z

    const-string v1, "VisionRenew"

    if-nez v0, :cond_0

    const-string v0, "doStop: ave client already stopped"

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "disable"

    const-string v3, "GenieVisionRenewVEngine"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->releaseAVEService(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mStarted:Z

    .line 101
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mRenewed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doStop: stop failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updatePackageInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mPackageName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/visionrenew/VisionRenew;->mPageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePackageInfo: invalid package info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VisionRenew"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
