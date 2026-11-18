.class public Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;
.super Ljava/lang/Object;
.source "RemoteClientCallbackEx.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;


# static fields
.field private static final METHOD_ASR_HANDLE_COMMAND:I = 0x4

.field private static final METHOD_ASR_STATUS_UPDATE:I = 0x1

.field private static final METHOD_ASR_TO_CLIENT:I = 0x3

.field private static final METHOD_GET_APP_CONTEXT_DATA:I = 0x2


# instance fields
.field private mCallback:Lcom/alibaba/ailabs/ipc/ICommu;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/ipc/ICommu;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;->mCallback:Lcom/alibaba/ailabs/ipc/ICommu;

    return-void
.end method

.method private onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;->mCallback:Lcom/alibaba/ailabs/ipc/ICommu;

    .line 26
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v0, "id"

    .line 76
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getAppContextData()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 83
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "e"

    .line 85
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;->mCallback:Lcom/alibaba/ailabs/ipc/ICommu;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/alibaba/ailabs/ipc/ICommu;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
    .locals 3

    const/4 v0, 0x4

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "e"

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 47
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 52
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "handled"

    const/4 v2, 0x0

    .line 53
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 56
    :cond_2
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;-><init>()V

    const/4 v2, 0x1

    .line 57
    iput-boolean v2, p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    const-string v2, "successMessage"

    .line 59
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->successMessage:Ljava/lang/String;

    const-string v2, "errorMessage"

    .line 60
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->errorMessage:Ljava/lang/String;

    const-string v2, "errorCode"

    .line 61
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->errorCode:Ljava/lang/String;

    const-string v2, "spokenMessage"

    .line 62
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->spokenMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public onASRStatusUpdate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallbackEx;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
