.class final Lanetwork/channel/aidl/adapter/RemoteGetterHelper$1;
.super Ljava/lang/Object;
.source "RemoteGetterHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/aidl/adapter/RemoteGetterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 p1, 0x2

    .line 44
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 45
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "anet.RemoteGetter"

    const-string v3, "[onServiceConnected]ANet_Service start success. ANet run with service mode"

    invoke-static {v2, v3, p1, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_0
    const-class p1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;

    monitor-enter p1

    .line 48
    :try_start_0
    invoke-static {p2}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;->asInterface(Landroid/os/IBinder;)Lanetwork/channel/aidl/IRemoteNetworkGetter;

    move-result-object p2

    sput-object p2, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mGetter:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    .line 49
    sget-object p2, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_1

    .line 50
    sget-object p2, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 52
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBindFailed:Z

    .line 54
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    return-void

    :catchall_0
    move-exception p2

    .line 52
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 p1, 0x2

    .line 32
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 33
    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "anet.RemoteGetter"

    const-string v3, "ANet_Service Disconnected"

    invoke-static {v2, v3, v1, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    sput-object v1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mGetter:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    .line 36
    sput-boolean v0, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->bBinding:Z

    .line 37
    sget-object p1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    .line 38
    sget-object p1, Lanetwork/channel/aidl/adapter/RemoteGetterHelper;->mServiceBindLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
