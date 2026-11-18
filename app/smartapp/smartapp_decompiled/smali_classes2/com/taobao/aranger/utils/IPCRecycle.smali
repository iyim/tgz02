.class public Lcom/taobao/aranger/utils/IPCRecycle;
.super Ljava/lang/Object;
.source "IPCRecycle.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPCRecycle"

.field private static volatile sInstance:Lcom/taobao/aranger/utils/IPCRecycle;


# instance fields
.field private final mKeyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/aranger/utils/IPCRecycle;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/aranger/utils/IPCRecycle;->mKeyMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/aranger/utils/IPCRecycle;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/taobao/aranger/utils/IPCRecycle;->recycle(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/taobao/aranger/utils/IPCRecycle;
    .locals 2

    .line 41
    sget-object v0, Lcom/taobao/aranger/utils/IPCRecycle;->sInstance:Lcom/taobao/aranger/utils/IPCRecycle;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/taobao/aranger/utils/IPCRecycle;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/taobao/aranger/utils/IPCRecycle;->sInstance:Lcom/taobao/aranger/utils/IPCRecycle;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/taobao/aranger/utils/IPCRecycle;

    invoke-direct {v1}, Lcom/taobao/aranger/utils/IPCRecycle;-><init>()V

    sput-object v1, Lcom/taobao/aranger/utils/IPCRecycle;->sInstance:Lcom/taobao/aranger/utils/IPCRecycle;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/aranger/utils/IPCRecycle;->sInstance:Lcom/taobao/aranger/utils/IPCRecycle;

    return-object v0
.end method

.method private recycle(Ljava/lang/Object;)V
    .locals 4

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/taobao/aranger/utils/IPCRecycle;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v1

    .line 60
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/taobao/aranger/utils/IPCRecycle;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/PhantomReference;

    if-eqz v2, :cond_1

    .line 61
    iget-object v3, p0, Lcom/taobao/aranger/utils/IPCRecycle;->mKeyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    :try_start_1
    instance-of v1, p1, Landroid/os/IBinder;

    if-eqz v1, :cond_2

    .line 71
    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/taobao/aranger/core/ipc/ChannelManager;->getClientChannel(Landroid/os/IBinder;)Lcom/taobao/aranger/core/ipc/channel/BaseClientChannel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/ipc/channel/BaseClientChannel;->recycleClient(Ljava/util/List;)V

    goto :goto_1

    .line 72
    :cond_2
    instance-of v1, p1, Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 73
    nop

    nop

    invoke-static {p1}, Lcom/taobao/aranger/core/ipc/ChannelManager;->getRemoteChannel(Landroid/net/Uri;)Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->recycleRemote(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 76
    sget-object v0, Lcom/taobao/aranger/utils/IPCRecycle;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[recycle][recycleClient]"

    invoke-static {v0, v2, p1, v1}, Lcom/taobao/aranger/logs/IPCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 66
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public register(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/taobao/aranger/utils/IPCRecycle;->mKeyMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/ref/PhantomReference;

    iget-object v2, p0, Lcom/taobao/aranger/utils/IPCRecycle;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p2, v2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance p2, Lcom/taobao/aranger/utils/IPCRecycle$1;

    invoke-direct {p2, p0, p1}, Lcom/taobao/aranger/utils/IPCRecycle$1;-><init>(Lcom/taobao/aranger/utils/IPCRecycle;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p1, p2}, Lcom/taobao/aranger/utils/IPCThreadCaller;->post(ZLjava/lang/Runnable;)V

    return-void
.end method
