.class public Lcom/taobao/android/AliMonitorReuseItemPool;
.super Ljava/lang/Object;
.source "AliMonitorReuseItemPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/taobao/android/AliMonitorReusable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static poolSize:J

.field private static totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

.field private static totalPollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final MAX_ITEM_COUNT:I

.field private hashCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private invokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

.field private items:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private objectSize:Ljava/lang/Integer;

.field private pollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/taobao/android/AliMonitorReuseItemPool;->totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/taobao/android/AliMonitorReuseItemPool;->totalPollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 40
    iput v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->MAX_ITEM_COUNT:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->objectSize:Ljava/lang/Integer;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->invokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->pollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->hashCodes:Ljava/util/Set;

    return-void
.end method

.method public static reset(J)V
    .locals 2

    .line 49
    sput-wide p0, Lcom/taobao/android/AliMonitorReuseItemPool;->poolSize:J

    .line 50
    new-instance p0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object p0, Lcom/taobao/android/AliMonitorReuseItemPool;->totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public offer(Lcom/taobao/android/AliMonitorReusable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Lcom/taobao/android/AliMonitorReusable;->clean()V

    .line 75
    iget-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->hashCodes:Ljava/util/Set;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->hashCodes:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->hashCodes:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public poll()Lcom/taobao/android/AliMonitorReusable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/taobao/android/AliMonitorReuseItemPool;->totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 63
    iget-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->invokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 64
    iget-object v0, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/AliMonitorReusable;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->hashCodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/taobao/android/AliMonitorReuseItemPool;->pollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 68
    sget-object v1, Lcom/taobao/android/AliMonitorReuseItemPool;->totalPollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    :cond_0
    return-object v0
.end method
