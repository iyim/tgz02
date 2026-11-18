.class public Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "VisionClient.java"


# static fields
.field private static final METHOD_STATUS:I = 0x0

.field private static final OPEN_CAMERA_FAILED:I = -0x1

.field private static final OPEN_CAMERA_SUCCESS:I = 0x0

.field private static final RACE_CAMERA_FAILED:I = -0x2

.field private static final TAG:Ljava/lang/String; = "VisionSvr::VisionInfo"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

.field private mIAVEEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

.field private mIsStarted:Z

.field private mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;Landroid/os/Handler;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p4, p5}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    .line 41
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$1;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    .line 64
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient$2;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIAVEEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 34
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    .line 35
    iput-object p3, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance p1, Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 37
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIAVEEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    iget-object p3, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    const-string p4, "genieallinone"

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->init(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->notifyToClient(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private notifyToClient(Ljava/lang/String;)V
    .locals 3

    .line 78
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "business"

    .line 79
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AVEState"

    .line 80
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "data"

    .line 81
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "cameraState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "raceFailed"

    .line 84
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    const-string v0, "openFailed"

    .line 86
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "openSuccess"

    .line 88
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 93
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "d"

    .line 94
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->callBooleanMethod(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    return-object v0
.end method

.method public notifyConnectStatus(Z)V
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect isConnected= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionSvr::VisionInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 164
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "setSceneMode"

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getModeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setImageSurface(IILandroid/view/Surface;)Z

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable"

    goto :goto_0

    :cond_0
    const-string v0, "disable"

    :goto_0
    const-string v1, "GeniePeopleTrackVEngine"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 177
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->cleanImageSurface()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-void
.end method

.method public setHasCenter(Z)V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setCenter(Z)V

    .line 125
    iget-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    if-nez p1, :cond_0

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set has center, info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VisionSvr::VisionInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enable"

    goto :goto_0

    :cond_1
    const-string v0, "disable"

    :goto_0
    const-string v1, "GeniePeopleTrackVEngine"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setImageSurface(IILandroid/view/Surface;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setWidth(I)V

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setHeight(I)V

    .line 108
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setSurface(Landroid/view/Surface;)V

    .line 111
    iget-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    if-nez p1, :cond_0

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set image surface, info = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VisionSvr::VisionInfo"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getHeight()I

    move-result p3

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setImageSurface(IILandroid/view/Surface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMode(I)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setMode(I)V

    .line 146
    iget-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    if-nez p1, :cond_1

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set mode, info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VisionSvr::VisionInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v0, "setSceneMode"

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getModeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 192
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    const-string v1, "VisionSvr::VisionInfo"

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has start, info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionSvr::VisionInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->cleanImageSurface()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has stop, info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->mIsStarted:Z

    return-void
.end method
