.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "ASRManager.java"


# static fields
.field private static final METHOD_CLIENT_TO_ASR:I = 0x8

.field private static final METHOD_OLD_ASR_CLIENT:I = 0x9

.field private static final METHOD_REGISTER:I = 0x0

.field private static final METHOD_RESULT_MODE:I = 0x6

.field private static final METHOD_SERVER_MODE:I = 0x5

.field private static final METHOD_SET_BACKGROUND_SERVICE:I = 0x4

.field private static final METHOD_SET_ENABLE:I = 0x2

.field private static final METHOD_SET_WINDOW_TYPE:I = 0x3

.field private static final METHOD_SHOW_ASR_UI:I = 0x7

.field private static final METHOD_UNREGISTER:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.asr"

.field private static sASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->sASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->sASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->sASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->sASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.asr"

    return-object v0
.end method


# virtual methods
.method clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p2, :cond_0

    .line 163
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "id"

    .line 166
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x8

    .line 168
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getOldAsrClient()Landroid/os/IBinder;
    .locals 2

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x9

    .line 175
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callBinderMethod(ILandroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 44
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.asr"

    .line 46
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public registerClient(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;Landroid/os/IBinder;)Z
    .locals 2

    const/4 v0, 0x0

    .line 60
    invoke-static {v0, v0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p2

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->isShowUI()Z

    move-result v0

    const-string/jumbo v1, "su"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->isEnable()Z

    move-result v0

    const-string v1, "e"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->isBackgroundService()Z

    move-result v0

    const-string v1, "bs"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->isWindowType()Z

    move-result v0

    const-string/jumbo v1, "wt"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getResultMode()I

    move-result v0

    const-string/jumbo v1, "rm"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getServerMode()I

    move-result v0

    const-string/jumbo v1, "sm"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getPkg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pn"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClientInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cn"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setBackgroundService(Ljava/lang/String;Z)Z
    .locals 2

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bs"

    .line 125
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x4

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setEnable(Ljava/lang/String;Z)Z
    .locals 2

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "e"

    .line 135
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x2

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setResultMode(Ljava/lang/String;I)Z
    .locals 2

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "rm"

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x6

    .line 116
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setServerMode(Ljava/lang/String;I)Z
    .locals 2

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "sm"

    .line 103
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x5

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setWindowType(Ljava/lang/String;Z)Z
    .locals 2

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "wt"

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x3

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public showASRUI(Ljava/lang/String;Z)Z
    .locals 2

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 145
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "su"

    .line 146
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x7

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public unregisterClient(Ljava/lang/String;)Z
    .locals 2

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 81
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRManager;->callAsynMethod(ILandroid/os/Bundle;)V

    return p1
.end method
