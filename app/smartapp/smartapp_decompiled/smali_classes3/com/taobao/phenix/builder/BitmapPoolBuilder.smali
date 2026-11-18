.class public Lcom/taobao/phenix/builder/BitmapPoolBuilder;
.super Ljava/lang/Object;
.source "BitmapPoolBuilder.java"

# interfaces
.implements Lcom/taobao/phenix/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/builder/Builder<",
        "Lcom/taobao/phenix/bitmap/BitmapPool;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_DIVISION_IN_MEMCACHE:I = 0x4


# instance fields
.field private mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;

.field private mHaveBuilt:Z

.field private mMaxSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public declared-synchronized build()Lcom/taobao/phenix/bitmap/BitmapPool;
    .locals 3

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/taobao/pexode/Pexode;->isAshmemSupported()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 35
    monitor-exit p0

    return-object v0

    .line 38
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mHaveBuilt:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 42
    :try_start_2
    iput-boolean v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mHaveBuilt:Z

    .line 44
    iget-object v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;

    if-nez v0, :cond_3

    .line 45
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->memCacheBuilder()Lcom/taobao/phenix/builder/MemCacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/builder/MemCacheBuilder;->memoryCache()Lcom/taobao/phenix/cache/LruCache;

    move-result-object v0

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    instance-of v1, v0, Lcom/taobao/phenix/bitmap/BitmapPool;

    if-eqz v1, :cond_4

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/taobao/phenix/bitmap/BitmapPool;

    iput-object v1, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;

    .line 49
    iget-object v1, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;

    iget-object v2, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/taobao/phenix/cache/LruCache;->maxSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    invoke-interface {v1, v0}, Lcom/taobao/phenix/bitmap/BitmapPool;->maxPoolSize(I)V

    goto :goto_1

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;

    iget-object v1, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/taobao/phenix/bitmap/BitmapPool;->maxPoolSize(I)V

    .line 54
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->build()Lcom/taobao/phenix/bitmap/BitmapPool;

    move-result-object v0

    return-object v0
.end method

.method public maxSize(Ljava/lang/Integer;)Lcom/taobao/phenix/builder/BitmapPoolBuilder;
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "BitmapPoolBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mMaxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public with(Lcom/taobao/phenix/bitmap/BitmapPool;)Lcom/taobao/phenix/builder/BitmapPoolBuilder;
    .locals 2

    .line 20
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "BitmapPoolBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 21
    iput-object p1, p0, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->mBitmapPool:Lcom/taobao/phenix/bitmap/BitmapPool;

    return-object p0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lcom/taobao/phenix/builder/Builder;
    .locals 0

    .line 11
    check-cast p1, Lcom/taobao/phenix/bitmap/BitmapPool;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/builder/BitmapPoolBuilder;->with(Lcom/taobao/phenix/bitmap/BitmapPool;)Lcom/taobao/phenix/builder/BitmapPoolBuilder;

    move-result-object p1

    return-object p1
.end method
