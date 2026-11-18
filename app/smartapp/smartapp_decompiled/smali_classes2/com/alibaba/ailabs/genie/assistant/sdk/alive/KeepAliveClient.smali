.class public Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "KeepAliveClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# static fields
.field public static final BROADCAST:I = 0x1

.field public static final CONTENT_PROVIDER:I = 0x2

.field private static final METHOD_ADD:I = 0x1

.field private static final METHOD_REMOVE:I = 0x2

.field private static final SERVER_NAME:Ljava/lang/String; = "com.ailabas.alibaba.genie.alive"

.field public static final SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeepAliveManager"


# instance fields
.field private mAction:Ljava/lang/String;

.field private final mBinder:Lcom/alibaba/ailabs/ipc/ICommu$Stub;

.field private mStarted:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mStarted:Z

    .line 45
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mBinder:Lcom/alibaba/ailabs/ipc/ICommu$Stub;

    return-void
.end method

.method private getParam(ILjava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    .line 59
    invoke-static {v0, v0, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p3

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/utils/Utils;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prn"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "a"

    .line 64
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "t"

    .line 65
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p3
.end method


# virtual methods
.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 40
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.ailabas.alibaba.genie.alive"

    .line 42
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public declared-synchronized onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mStarted:Z

    if-eqz p1, :cond_0

    .line 107
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mType:I

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mAction:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->register(ILjava/lang/String;)Z

    goto :goto_0

    .line 109
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mType:I

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mAction:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->unregister(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(ILjava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 72
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mStarted:Z

    .line 74
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mAction:Ljava/lang/String;

    .line 75
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mType:I

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mBinder:Lcom/alibaba/ailabs/ipc/ICommu$Stub;

    invoke-direct {p0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->getParam(ILjava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v1

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 80
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mContext:Landroid/content/Context;

    const-string v2, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v1

    const-string v2, "com.ailabas.alibaba.genie.alive"

    .line 81
    invoke-virtual {v1, v2, p0, v0}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    const-string v1, "KeepAliveManager"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", action = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(ILjava/lang/String;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 91
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mStarted:Z

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->getParam(ILjava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/alive/KeepAliveClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    const-string v1, "com.ailabas.alibaba.genie.alive"

    .line 98
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V

    const-string v0, "KeepAliveManager"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", action = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 101
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
