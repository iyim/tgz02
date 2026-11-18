.class public Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "IpcServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;,
        Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;,
        Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;
    }
.end annotation


# static fields
.field public static final IPC_COMMON_SERVICE_NAME:Ljava/lang/String; = "smartapp.common.ipc.service"

.field private static final TAG:Ljava/lang/String; = "IpcServer"

.field private static sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;


# instance fields
.field private mAsyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mSyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mSyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mAsyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mContext:Landroid/content/Context;

    .line 32
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mContext:Landroid/content/Context;

    const-string v0, "com.alibaba.ailabs.genie.router.ipc.service"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;-><init>(ZLandroid/os/IBinder;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "smartapp.common.ipc.service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/ipc/Router;->registerServer(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/bean/RegisterInfo;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;
    .locals 3

    const-class v0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    if-nez v1, :cond_1

    .line 45
    const-class v1, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    sget-object v2, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    if-nez v2, :cond_0

    .line 47
    new-instance v2, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;

    .line 49
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

    .line 51
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->sInstance:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;
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
.method public getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 163
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 164
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v1, :cond_2

    goto :goto_0

    .line 174
    :cond_2
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 175
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "is_sync_ipc_call"

    .line 113
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "IpcServer"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sync call methodId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "null"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mSyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;

    if-eqz v0, :cond_3

    .line 121
    invoke-interface {v0, p2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;->method(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "async_binder"

    .line 126
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mAsyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;

    if-eqz v1, :cond_3

    .line 132
    new-instance v2, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$1;-><init>(Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;Lcom/alibaba/ailabs/ipc/ICommu;ILandroid/os/Bundle;)V

    invoke-interface {v1, p2, v2}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;->method(Landroid/os/Bundle;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 152
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public registerAsyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServer;)V
    .locals 1

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mAsyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public registerSyncCallServerMethod(ILcom/alibaba/ailabs/genie/router/ipc/IpcServer$Server;)V
    .locals 1

    if-lez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mSyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public unRegisterAsyncCallServerMethod(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mAsyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegisterSyncCallServerMethod(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer;->mSyncServerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
