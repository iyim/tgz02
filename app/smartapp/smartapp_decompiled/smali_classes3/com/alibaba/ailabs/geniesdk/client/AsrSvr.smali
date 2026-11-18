.class public Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;
.super Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;
.source "AsrSvr.java"


# instance fields
.field private mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/client/ClientManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    return-void
.end method

.method private getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->mClientManager:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    return-object v0
.end method


# virtual methods
.method public clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->clientToAsr(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getService(ILandroid/os/Bundle;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onFarDeviceData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public playTTS(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->playTTSWithCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)Z

    move-result p1

    return p1
.end method

.method public playTTSWithCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->playTTSWithCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)Z

    move-result p1

    return p1
.end method

.method public registerCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;

    invoke-direct {v0, p2, p1}, Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;-><init>(Lcom/yunos/tv/alitvasr/IAliTVASRCallback;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;

    invoke-direct {p2}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;-><init>()V

    const/4 v1, 0x0

    .line 33
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "packageName"

    .line 34
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "pkg"

    .line 35
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "className"

    .line 36
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v1

    .line 41
    :catch_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setPackageName(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2, v3}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setPkg(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setClassName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;->setShowUI(Z)V

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->registerCallback(Lcom/alibaba/ailabs/geniesdk/client/AsrClientInfo;Lcom/alibaba/ailabs/geniesdk/client/NativeClientCallback;)V

    return-void
.end method

.method public sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRResponseCallback;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public setASRMode(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setASRMode(Ljava/lang/String;I)V

    return-void
.end method

.method public setAliTVASREnable(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setEnable(Ljava/lang/String;Z)V

    return-void
.end method

.method public setResultMode(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->setResultMode(Ljava/lang/String;I)V

    return-void
.end method

.method public showASRUI(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->showASRUI(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopTTS()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->stopTTS()V

    return-void
.end method

.method public unregisterCallback(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AsrSvr;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->unregisterCallback(Ljava/lang/String;)V

    return-void
.end method

.method public updateAppScene(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
