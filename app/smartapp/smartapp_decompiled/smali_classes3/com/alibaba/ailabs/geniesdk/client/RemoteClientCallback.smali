.class public Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;
.super Ljava/lang/Object;
.source "RemoteClientCallback.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/client/IRemoteClientCallback;


# instance fields
.field private mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRCallback;


# direct methods
.method public constructor <init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    return-void
.end method


# virtual methods
.method public asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    invoke-interface {v0, p1, p2}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback;->asrToClient(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppContextData()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    invoke-interface {v1, v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback;->getAppContextData(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
    .locals 3

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    invoke-interface {v1, p1}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback;->handleASRCommand(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "handled"

    .line 32
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 34
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;

    invoke-direct {v1}, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;-><init>()V

    const-string v2, "successMessage"

    .line 39
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->successMessage:Ljava/lang/String;

    const-string v2, "errorMessage"

    .line 40
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->errorMessage:Ljava/lang/String;

    const-string v2, "errorCode"

    .line 41
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->errorCode:Ljava/lang/String;

    const-string v2, "spokenMessage"

    .line 42
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->spokenMessage:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, v1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public onASRStatusUpdate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/RemoteClientCallback;->mCallback:Lcom/yunos/tv/alitvasr/IAliTVASRCallback;

    invoke-interface {v0, p1}, Lcom/yunos/tv/alitvasr/IAliTVASRCallback;->onASRStatusUpdate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
