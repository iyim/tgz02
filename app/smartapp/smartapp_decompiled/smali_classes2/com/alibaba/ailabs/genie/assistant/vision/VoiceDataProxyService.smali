.class public Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;
.super Landroid/app/Service;
.source "VoiceDataProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$VoiceDataProxyServiceBinder;
    }
.end annotation


# static fields
.field private static final EVENT_CODE_FRONT_VOICE_DATA:I = 0x57a


# instance fields
.field private mFrontVoiceDataEventId:J

.field private mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mFrontVoiceDataEventId:J

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;)Lcom/alibaba/ailabs/avesdk/AVEClient;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 87
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$VoiceDataProxyServiceBinder;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$VoiceDataProxyServiceBinder;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "onCreate"

    .line 43
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    const-string v1, "genieallinone"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;)V

    const/16 v2, 0x57a

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->registerEventDispatcher(ILcom/alibaba/ailabs/agui/event/OnMmiEventCallback;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mFrontVoiceDataEventId:J

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    .line 78
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 79
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 80
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mFrontVoiceDataEventId:J

    const/16 v3, 0x57a

    invoke-virtual {v0, v3, v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->unregisterEventDispatcher(IJ)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/VoiceDataProxyService;->mVisionWakeUpAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    return-void
.end method
