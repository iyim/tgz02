.class public Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "AgisManager.java"


# static fields
.field protected static final METHOD_AGUI_STATUS_CALLBACK:I = 0x36

.field private static final METHOD_AUTHORIZE:I = 0x3b

.field private static final METHOD_ENABLE_WAKEUP:I = 0x1

.field private static final METHOD_GET_ACCOUNT_INFO:I = 0x33

.field private static final METHOD_GET_AGUI_STATUS:I = 0x37

.field private static final METHOD_GET_CURRENT_SCENE:I = 0x3a

.field private static final METHOD_GET_PREVIOUS_END_TTS:I = 0x2

.field private static final METHOD_REGISTER_AGUI_STATUS:I = 0x34

.field private static final METHOD_SEND_EVENT_DIRECT:I = 0x39

.field private static final METHOD_SEND_EVENT_TO_SERVER:I = 0x0

.field private static final METHOD_SEND_TRACE:I = 0x38

.field private static final METHOD_UNREGISTER_AGUI_STATUS:I = 0x35

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.agis"

.field private static final TAG:Ljava/lang/String; = "AgisManager"

.field private static sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;
    .locals 2

    .line 48
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sInstance:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    return-object p0
.end method


# virtual methods
.method public authorize(Ljava/lang/String;)I
    .locals 1

    .line 345
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x3b

    .line 347
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "d"

    .line 349
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/16 p1, 0x101

    return p1
.end method

.method public enableWakeup(Z)V
    .locals 1

    .line 187
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public getCurrentScene()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public getGatewayStatus()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "aguiStatusGateway"

    .line 239
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x37

    .line 240
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getMemberInfo()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "memberInfo"

    .line 294
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x33

    .line 295
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousEndTts()I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string/jumbo v2, "s"

    .line 200
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousEndTts sessionId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AgisManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getQrCode()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "qrCode"

    .line 283
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x33

    .line 284
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "userData"

    .line 272
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x33

    .line 273
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "userInfo"

    .line 261
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x33

    .line 262
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserStatus()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "aguiStatusUser"

    .line 250
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x37

    .line 251
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 60
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.agis"

    .line 62
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public registerAguiCommonCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x34

    .line 215
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public sendEventDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 160
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ens"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en"

    .line 163
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pl"

    .line 164
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v1, "ci"

    .line 167
    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p4, 0x39

    .line 170
    invoke-virtual {p0, p4, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    const/4 v0, -0x1

    if-eqz p4, :cond_1

    const-string/jumbo v1, "s"

    .line 172
    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 175
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEventDirect sessionId = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventNs = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", eventName = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", payLoad = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgisManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I
    .locals 8

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 133
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    move-result p1

    return p1
.end method

.method public sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 79
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    move-result p1

    return p1
.end method

.method public sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I
    .locals 8

    const-string v5, ""

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 146
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    move-result p1

    return p1
.end method

.method public sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I
    .locals 2

    .line 96
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/ResponseCallback;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/ResponseCallback;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)V

    .line 98
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/ResponseCallback;->getBinder()Landroid/os/IBinder;

    move-result-object p7

    const/4 v0, 0x0

    invoke-static {v0, v0, p7}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p7

    const-string v0, "ens"

    .line 100
    invoke-virtual {p7, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "en"

    .line 101
    invoke-virtual {p7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pl"

    .line 102
    invoke-virtual {p7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ap"

    .line 103
    invoke-virtual {p7, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mt"

    .line 104
    invoke-virtual {p7, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    const-string v0, "ci"

    .line 107
    invoke-virtual {p7, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p4, 0x0

    .line 110
    invoke-virtual {p0, p4, p7}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    const/4 p7, -0x1

    if-eqz p4, :cond_1

    const-string/jumbo v0, "s"

    .line 112
    invoke-virtual {p4, v0, p7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p7

    .line 115
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendEventToServer sessionId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", eventNs = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", eventName = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", payLoad = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", attachmentPath = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", messageType = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AgisManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p7
.end method

.method public sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 310
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "et"

    .line 312
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "en"

    .line 313
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "s"

    .line 314
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ci"

    .line 315
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ei"

    .line 316
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x38

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callAsynMethod(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterAguiCommonCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x35

    .line 229
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return-void
.end method
