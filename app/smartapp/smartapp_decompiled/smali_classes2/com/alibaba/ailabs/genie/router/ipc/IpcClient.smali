.class public Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "IpcClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpcClient"

.field private static sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServerProcessName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->mServerProcessName:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;
    .locals 3

    const-class v0, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;

    if-nez v1, :cond_1

    .line 30
    const-class v1, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    sget-object v2, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;

    if-nez v2, :cond_0

    .line 32
    new-instance v2, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;

    .line 34
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public callAsyncMethod(ILandroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallback;)V
    .locals 2

    if-lez p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-string v1, "is_sync_ipc_call"

    if-nez p2, :cond_1

    .line 76
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 77
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    :goto_0
    new-instance v0, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p3}, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;-><init>(Landroid/content/Context;ILcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallback;)V

    .line 83
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/ipc/CallAsyncMethodCallbackProxy;->getBinder()Landroid/os/IBinder;

    move-result-object p3

    const-string v0, "async_binder"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    :goto_1
    return-void
.end method

.method public callSyncMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "is_sync_ipc_call"

    if-nez p2, :cond_0

    .line 56
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 57
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "com.alibaba.ailabs.genie.router.ipc.service"

    .line 41
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcClient;->mServerProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "smartapp.common.ipc.service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method
