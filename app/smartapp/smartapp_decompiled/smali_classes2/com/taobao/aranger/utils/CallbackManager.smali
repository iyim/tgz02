.class public Lcom/taobao/aranger/utils/CallbackManager;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackManager"

.field private static volatile sInstance:Lcom/taobao/aranger/utils/CallbackManager;


# instance fields
.field private final intentFilter:Landroid/content/IntentFilter;

.field private final mCallbackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/taobao/aranger/intf/ProcessStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final processStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/taobao/aranger/utils/CallbackManager$1;

    invoke-direct {v0, p0}, Lcom/taobao/aranger/utils/CallbackManager$1;-><init>(Lcom/taobao/aranger/utils/CallbackManager;)V

    iput-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->processStateReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->intentFilter:Landroid/content/IntentFilter;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mCallbackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.taobao.aranger.CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.taobao.aranger.DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/aranger/utils/CallbackManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/taobao/aranger/utils/CallbackManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/taobao/aranger/utils/CallbackManager;
    .locals 2

    .line 67
    sget-object v0, Lcom/taobao/aranger/utils/CallbackManager;->sInstance:Lcom/taobao/aranger/utils/CallbackManager;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/taobao/aranger/utils/CallbackManager;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/taobao/aranger/utils/CallbackManager;->sInstance:Lcom/taobao/aranger/utils/CallbackManager;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/taobao/aranger/utils/CallbackManager;

    invoke-direct {v1}, Lcom/taobao/aranger/utils/CallbackManager;-><init>()V

    sput-object v1, Lcom/taobao/aranger/utils/CallbackManager;->sInstance:Lcom/taobao/aranger/utils/CallbackManager;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/aranger/utils/CallbackManager;->sInstance:Lcom/taobao/aranger/utils/CallbackManager;

    return-object v0
.end method


# virtual methods
.method addCallback(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mCallbackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;

    invoke-direct {v1, p3, p2}, Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCallback(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mCallbackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/taobao/aranger/utils/CallbackManager;->mCallbackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public registerProcessStateListener(Lcom/taobao/aranger/intf/ProcessStateListener;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/aranger/utils/CallbackManager;->processStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/taobao/aranger/utils/CallbackManager;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mCallbackWrapperMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unRegisterProcessStateListener(Lcom/taobao/aranger/intf/ProcessStateListener;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lcom/taobao/aranger/utils/CallbackManager;->mProcessStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-static {}, Lcom/taobao/aranger/ARanger;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/taobao/aranger/utils/CallbackManager;->processStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
