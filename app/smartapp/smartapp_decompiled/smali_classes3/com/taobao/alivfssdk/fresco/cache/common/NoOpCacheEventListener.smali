.class public Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;
.super Ljava/lang/Object;
.source "NoOpCacheEventListener.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;


# static fields
.field private static sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;
    .locals 2

    const-class v0, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;->sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;-><init>()V

    sput-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;->sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;

    .line 25
    :cond_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;->sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onEviction(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHit(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onMiss(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onReadException(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onRemoveSuccess(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onWriteAttempt(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onWriteException(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onWriteSuccess(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
