.class public Lanetwork/channel/aidl/adapter/RemoteGetterHelper;
.super Ljava/lang/Object;
.source "RemoteGetterHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.RemoteGetter"

.field static volatile bBindFailed:Z = false

.field static volatile bBinding:Z = false

.field private static conn:Landroid/content/ServiceConnection;

.field static handler:Landroid/os/Handler;

.field static volatile mGetter:Lanetwork/channel/aidl/IRemoteNetworkGetter;

.field static volatile mServiceBindLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->handler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$1;

    invoke-direct {v0}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$1;-><init>()V

    sput-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->conn:Landroid/content/ServiceConnection;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static asyncBindService(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x2

    .line 101
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "anet.RemoteGetter"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[asyncBindService] mContext:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " bBindFailed:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBindFailed:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " bBinding:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 107
    :cond_1
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBindFailed:Z

    if-eqz v0, :cond_2

    return-void

    .line 110
    :cond_2
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 113
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    .line 121
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lanetwork/channel/aidl/NetworkService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-class v5, Lanetwork/channel/aidl/IRemoteNetworkGetter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    .line 123
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    sget-object v5, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4, v5, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    xor-int/2addr p0, v0

    sput-boolean p0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBindFailed:Z

    .line 126
    sget-boolean p0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBindFailed:Z

    if-eqz p0, :cond_4

    .line 127
    sput-boolean v3, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    .line 128
    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "[asyncBindService]ANet_Service start not success. ANet run with local mode!"

    invoke-static {v2, v0, v1, p0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_4
    sget-object p0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->handler:Landroid/os/Handler;

    new-instance v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$2;

    invoke-direct {v0}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper$2;-><init>()V

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getRemoteGetter()Lanetwork/channel/aidl/IRemoteNetworkGetter;
    .locals 1

    .line 97
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mGetter:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    return-object v0
.end method

.method public static initRemoteGetterAndWait(Landroid/content/Context;Z)V
    .locals 4

    .line 66
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mGetter:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    sget-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBindFailed:Z

    if-nez v0, :cond_4

    .line 70
    invoke-static {p0}, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->asyncBindService(Landroid/content/Context;)V

    .line 71
    sget-boolean p0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBindFailed:Z

    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 74
    :try_start_0
    const-class v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    sget-object v1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mGetter:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    if-eqz v1, :cond_1

    .line 76
    monitor-exit v0

    return-void

    .line 78
    :cond_1
    sget-object v1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    if-nez v1, :cond_2

    .line 79
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    .line 81
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "anet.RemoteGetter"

    const-string v1, "[initRemoteGetterAndWait]begin to wait"

    .line 82
    new-array v2, p0, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->getServiceBindWaitTime()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "anet.RemoteGetter"

    const-string v1, "mServiceBindLock count down to 0"

    .line 84
    new-array v2, p0, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "anet.RemoteGetter"

    const-string v1, "mServiceBindLock wait timeout"

    .line 86
    new-array v2, p0, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 81
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    :catch_0
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "anet.RemoteGetter"

    const-string v1, "mServiceBindLock wait interrupt"

    invoke-static {v0, v1, p1, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method
