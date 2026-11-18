.class public Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;
.super Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.source "GestureDetectService.java"


# static fields
.field private static final EVENT_CODE_GESTURE_RESULT:I = 0x111d4

.field private static final TAG:Ljava/lang/String; = "GestureDetectService"


# instance fields
.field private mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mGestureDetectCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mLastSceneMode:Ljava/lang/String;

.field private mSupportGesturePage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;-><init>()V

    const-string v0, "null"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mLastSceneMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.youku.iot"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mSupportGesturePage:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureDetectCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    return-void
.end method

.method private checkGestureDetectSettingStatus()Z
    .locals 1

    .line 134
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEUtils;->isGestureDetectOpen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private checkPageSupportGesture(Ljava/lang/String;)Z
    .locals 3

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mSupportGesturePage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public getServiceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "GestureDetectService"

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " args = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    nop

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCreate()V

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->startGestureDetectService()V

    const-string v0, "onCreate"

    .line 91
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onDestroy()V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->stopGestureDetect()V

    const-string v0, "onDestroy"

    .line 98
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onSceneModeChanged(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSceneModeChanged = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mLastSceneMode:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public onScreenChanged(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onWepAppVideoPlayChanged(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public startGestureDetect()V
    .locals 3

    const-string v0, "startGestureDetect"

    .line 150
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v0, :cond_0

    const-string v1, "enable"

    const-string v2, "GenieGestureVEngine"

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v0, "startGestureDetect:mGestureAveClient = null"

    .line 154
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    const-string v0, "startGestureDetect end"

    .line 156
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public startGestureDetectService()V
    .locals 2

    const-string v0, "startGestureDetectService"

    .line 160
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->checkGestureDetectSettingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureDetectCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    const-string v1, "genieallinone"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public stopGestureDetect()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "stopGestureDetect"

    .line 142
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v1, "disable"

    const-string v2, "GenieGestureVEngine"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/GestureDetectService;->mGestureAveClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "stopGestureDetect ... end"

    .line 146
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method
