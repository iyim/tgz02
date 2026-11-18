.class public Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;
.super Landroid/app/Service;
.source "AVEProxyService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final EVENT_CODE_DISTANCE_RESULT:I = 0x111d5

.field private static final EVENT_CODE_GESTURE_RESULT:I = 0x111d4

.field private static final EVENT_CODE_VISION_CTRL:I = 0x11170

.field private static final EVENT_CODE_VISION_FEATURE_RESULT:I = 0x111d6

.field private static final EVENT_CODE_VOICE_FEATURE_RESULT:I = 0x111d9

.field private static final TAG:Ljava/lang/String; = "AVEProxyService"


# instance fields
.field private mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mHandler:Landroid/os/Handler;

.field private mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;",
            ">;"
        }
    .end annotation
.end field

.field private mVisionCtrlId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionCtrlId:J

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private dumpVisionClientInfo()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "engine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->getAVEEngineList()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "cmd"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "client"

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg1"

    .line 56
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg2"

    .line 57
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "arg3"

    .line 58
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage client : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cmd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " arg1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " arg2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " arg3 = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string p1, "Panic client is empty"

    .line 62
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return v3

    .line 66
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_a

    const/4 p1, -0x1

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4d6ada7d

    const-string v7, "disable"

    const-string v8, "enable"

    if-eq v5, v6, :cond_2

    const v3, 0x639e22e8

    if-eq v5, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    :goto_0
    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_4

    goto/16 :goto_2

    .line 81
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p1, v7, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->rmAVEngine(Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->isAVEEngineEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 88
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " disable not enable engine : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 91
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    goto :goto_2

    .line 69
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    .line 70
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p1, v8, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 72
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->addAVEngine(Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :cond_8
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;-><init>()V

    .line 75
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/VisionClient;->addAVEngine(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionClientList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->dumpVisionClientInfo()V

    :cond_a
    return v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 156
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mHandler:Landroid/os/Handler;

    const-string v0, "onCreate"

    .line 158
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    const-string v1, "genieallinone"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 160
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Panic AiLabsCore.getInstance = null"

    .line 162
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    const v1, 0x11170

    .line 164
    new-instance v2, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService$2;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerEventDispatcher(ILcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionCtrlId:J

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 215
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mCommonAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->releaseAVEService(Lcom/alibaba/ailabs/avesdk/AVEClient;)V

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 218
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEProxyService;->mVisionCtrlId:J

    const v3, 0x11170

    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterEventDispatcher(IJ)V

    return-void
.end method
