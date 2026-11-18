.class public Lcom/taobao/aranger/utils/ServiceCenter;
.super Ljava/lang/Object;
.source "ServiceCenter.java"


# static fields
.field private static volatile sInstance:Lcom/taobao/aranger/utils/ServiceCenter;


# instance fields
.field private final mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/aranger/utils/ServiceCenter;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/taobao/aranger/utils/ServiceCenter;
    .locals 2

    .line 22
    sget-object v0, Lcom/taobao/aranger/utils/ServiceCenter;->sInstance:Lcom/taobao/aranger/utils/ServiceCenter;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/taobao/aranger/utils/ServiceCenter;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/taobao/aranger/utils/ServiceCenter;->sInstance:Lcom/taobao/aranger/utils/ServiceCenter;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/taobao/aranger/utils/ServiceCenter;

    invoke-direct {v1}, Lcom/taobao/aranger/utils/ServiceCenter;-><init>()V

    sput-object v1, Lcom/taobao/aranger/utils/ServiceCenter;->sInstance:Lcom/taobao/aranger/utils/ServiceCenter;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/aranger/utils/ServiceCenter;->sInstance:Lcom/taobao/aranger/utils/ServiceCenter;

    return-object v0
.end method


# virtual methods
.method public deleteService(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/taobao/aranger/utils/ServiceCenter;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/taobao/aranger/utils/ServiceCenter;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putService(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/taobao/aranger/utils/ServiceCenter;->mServiceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
