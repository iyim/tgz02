.class public Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "AccountClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AccountClient"

.field private static final onBind:I = 0x1

.field private static final onBindUI:I


# instance fields
.field private mAccountBind:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;

.field private mAccountBindListener:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;

.field private mCanOpr:Z

.field private final mClientId:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mAccountBindListener:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;

    .line 32
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mAccountBind:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mUserId:Ljava/lang/String;

    .line 34
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mClientId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mCanOpr:Z

    return-void
.end method

.method private onBind(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->getAccountBind()Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountRequest;-><init>()V

    const-string v2, "cid"

    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountRequest;->clientId:Ljava/lang/String;

    const-string v2, "did"

    .line 91
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountRequest;->deviceId:Ljava/lang/String;

    const-string v2, "ts"

    .line 92
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountRequest;->timestamp:J

    const-string v2, "s"

    .line 93
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountRequest;->signature:Ljava/lang/String;

    .line 96
    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;->onBind(Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountRequest;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;->accessToken:Ljava/lang/String;

    const-string v2, "at"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;->refreshToken:Ljava/lang/String;

    const-string v2, "rt"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-wide v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;->accessExpiresTime:J

    const-string v3, "att"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 103
    iget-wide v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;->refreshExpiresTime:J

    const-string v3, "rtt"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;->uuid:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;->userOpenId:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountResponse;->extension:Ljava/lang/String;

    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public declared-synchronized bind(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 143
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mUserId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mCanOpr:Z

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->bind(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deinit()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->unregister(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    return-void
.end method

.method public getAccountBind()Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mAccountBind:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;

    return-object v0
.end method

.method public getAccountBindUIListener()Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mAccountBindListener:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->getAccountBindUIListener()Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mClientId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->getClientKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->register(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1f4

    .line 77
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 79
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->onBind(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 40
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mClientId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->getClientKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->register(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 51
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mCanOpr:Z

    if-nez p1, :cond_1

    const-string p1, "AccountClient"

    const-string p2, "no process"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mUserId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->unbind()V

    goto :goto_1

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mUserId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->bind(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    const-string p1, "AccountClient"

    const-string p2, "binder died"

    .line 46
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->isBinderAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->getAccountBindUIListener()Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;->onBindUI()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setAccountBind(Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mAccountBind:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBind;

    return-void
.end method

.method public setAccountBindListener(Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mAccountBindListener:Lcom/alibaba/ailabs/genie/assistant/sdk/account/IAccountBindUI;

    return-void
.end method

.method public declared-synchronized unbind()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 152
    :try_start_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mUserId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mCanOpr:Z

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountClient;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/account/AccountManager;->unbind(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
