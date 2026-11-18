.class public Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;
.super Ljava/lang/Object;
.source "NoOpCacheErrorLogger.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;


# static fields
.field private static sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;
    .locals 2

    const-class v0, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;->sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;-><init>()V

    sput-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;->sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;

    .line 27
    :cond_0
    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;->sInstance:Lcom/taobao/alivfssdk/fresco/cache/common/NoOpCacheErrorLogger;
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
.method public logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
