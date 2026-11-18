.class public Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "ChildFaceClient.java"


# static fields
.field private static final METHOD_STATUS:I = 0x0

.field private static final OPEN_CAMERA_FAILED:I = -0x1

.field private static final OPEN_CAMERA_SUCCESS:I = 0x0

.field private static final RACE_CAMERA_FAILED:I = -0x2

.field private static final TAG:Ljava/lang/String; = "ChildFaceClient"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

.field private mIAVEEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

.field private mIsStarted:Z

.field private mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;Landroid/os/Handler;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p4, p5}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    .line 40
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient$1;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    .line 63
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient$2;-><init>(Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIAVEEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 33
    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    .line 34
    iput-object p3, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mHandler:Landroid/os/Handler;

    .line 35
    new-instance p1, Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-direct {p1}, Lcom/alibaba/ailabs/avesdk/AVEClient;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 36
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIAVEEngineCallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    iget-object p3, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIAVEClientCallback:Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;

    const-string p4, "genieallinone"

    invoke-virtual {p1, p4, p2, p3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->init(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;Lcom/alibaba/ailabs/avesdk/IAVEClientCallback;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->notifyToClient(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private notifyToClient(Ljava/lang/String;)V
    .locals 2

    .line 77
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "business"

    .line 78
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "children_recognition"

    .line 79
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "d"

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->callBooleanMethod(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    return-object v0
.end method

.method public notifyConnectStatus(Z)V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect isConnected= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsStarted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    if-eqz v0, :cond_2

    .line 112
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "set Surface"

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;)Z

    goto :goto_0

    :cond_0
    const-string p1, "not set Surface"

    .line 116
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->isChildFace()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enable"

    goto :goto_1

    :cond_1
    const-string v0, "disable"

    :goto_1
    const-string v1, "GenieChildFaceVEngine"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 129
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :goto_3
    :try_start_2
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method

.method public setChildFace(Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->setChildFace(Z)V

    .line 93
    iget-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set has child face, info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChildFaceClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->isChildFace()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enable"

    goto :goto_0

    :cond_1
    const-string v0, "disable"

    :goto_0
    const-string v1, "GenieChildFaceVEngine"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public start()V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    const-string v1, "ChildFaceClient"

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has start, info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->setSurface(Landroid/view/Surface;)Z

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mVisionClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has stop, info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mInfo:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->mIsStarted:Z

    return-void
.end method
