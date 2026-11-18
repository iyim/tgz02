.class public Lcom/taobao/phenix/builder/MemCacheBuilder;
.super Ljava/lang/Object;
.source "MemCacheBuilder.java"

# interfaces
.implements Lcom/taobao/phenix/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/builder/Builder<",
        "Lcom/taobao/phenix/cache/LruCache<",
        "Ljava/lang/String;",
        "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_HOT_PERCENT:F = 0.2f

.field private static final MAX_MEM_CACHE_SIZE:I = 0x2300000


# instance fields
.field private mComponentCallbacks:Landroid/content/ComponentCallbacks2;

.field private mContext:Landroid/content/Context;

.field private mHaveBuilt:Z

.field private mHotPercent:Ljava/lang/Float;

.field private mMaxSize:Ljava/lang/Integer;

.field private mMemoryCache:Lcom/taobao/phenix/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getMaxAvailableSize(Landroid/content/Context;)I
    .locals 4

    .line 130
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-string v2, "activity"

    .line 132
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    const/high16 v2, 0x100000

    mul-int p0, p0, v2

    int-to-long v2, p0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 137
    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x2000000

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/high16 p0, 0x600000

    goto :goto_1

    :cond_1
    const-wide/32 v2, 0x4000000

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    const/high16 p0, 0xa00000

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x5

    .line 144
    div-long/2addr v0, v2

    long-to-int p0, v0

    :goto_1
    const/high16 v0, 0x2300000

    .line 146
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private registerComponentCallbacks(Lcom/taobao/phenix/cache/LruCache;)Lcom/taobao/phenix/cache/LruCache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;)",
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;"
        }
    .end annotation

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Lcom/taobao/phenix/builder/MemCacheBuilder$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/phenix/builder/MemCacheBuilder$1;-><init>(Lcom/taobao/phenix/builder/MemCacheBuilder;Lcom/taobao/phenix/cache/LruCache;)V

    iput-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    .line 111
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized build()Lcom/taobao/phenix/cache/LruCache;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHaveBuilt:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/Phenix;->applicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mContext:Landroid/content/Context;

    const-string v1, "Phenix.with(Context) hasn\'t been called before MemCacheBuilder building"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHaveBuilt:Z

    .line 61
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-interface {v0}, Lcom/taobao/phenix/cache/LruCache;->maxSize()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-interface {v1}, Lcom/taobao/phenix/cache/LruCache;->hotPercent()F

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMaxSize:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 69
    :goto_0
    iget-object v3, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHotPercent:Ljava/lang/Float;

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHotPercent:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-ne v0, v2, :cond_3

    sub-float/2addr v1, v3

    .line 72
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_4

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-interface {v0, v2, v3}, Lcom/taobao/phenix/cache/LruCache;->resize(IF)V

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-direct {p0, v0}, Lcom/taobao/phenix/builder/MemCacheBuilder;->registerComponentCallbacks(Lcom/taobao/phenix/cache/LruCache;)Lcom/taobao/phenix/cache/LruCache;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 78
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMaxSize:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 79
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/phenix/builder/MemCacheBuilder;->getMaxAvailableSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMaxSize:Ljava/lang/Integer;

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHotPercent:Ljava/lang/Float;

    if-nez v0, :cond_7

    const v0, 0x3e4ccccd    # 0.2f

    .line 82
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHotPercent:Ljava/lang/Float;

    .line 84
    :cond_7
    new-instance v0, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;

    iget-object v1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHotPercent:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/phenix/cache/memory/ImageCacheAndPool;-><init>(IF)V

    iput-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    .line 85
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    invoke-direct {p0, v0}, Lcom/taobao/phenix/builder/MemCacheBuilder;->registerComponentCallbacks(Lcom/taobao/phenix/cache/LruCache;)Lcom/taobao/phenix/cache/LruCache;

    move-result-object v0
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

    .line 17
    invoke-virtual {p0}, Lcom/taobao/phenix/builder/MemCacheBuilder;->build()Lcom/taobao/phenix/cache/LruCache;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .line 119
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_1

    .line 124
    :goto_0
    iget-object v1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 123
    iget-object v1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v1, :cond_0

    .line 124
    iget-object v2, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    throw v0

    .line 123
    :catch_0
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method getComponentCallbacks()Landroid/content/ComponentCallbacks2;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    return-object v0
.end method

.method public hotPercent(Ljava/lang/Float;)Lcom/taobao/phenix/builder/MemCacheBuilder;
    .locals 2

    .line 43
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "MemCacheBuilder has been built, not allow hotPercent() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHotPercent:Ljava/lang/Float;

    return-object p0
.end method

.method public maxSize(Ljava/lang/Integer;)Lcom/taobao/phenix/builder/MemCacheBuilder;
    .locals 2

    .line 37
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "MemCacheBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMaxSize:Ljava/lang/Integer;

    return-object p0
.end method

.method memoryCache()Lcom/taobao/phenix/cache/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    return-object v0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lcom/taobao/phenix/builder/Builder;
    .locals 0

    .line 17
    check-cast p1, Lcom/taobao/phenix/cache/LruCache;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/builder/MemCacheBuilder;->with(Lcom/taobao/phenix/cache/LruCache;)Lcom/taobao/phenix/builder/MemCacheBuilder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lcom/taobao/phenix/cache/LruCache;)Lcom/taobao/phenix/builder/MemCacheBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/cache/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/phenix/cache/memory/CachedRootImage;",
            ">;)",
            "Lcom/taobao/phenix/builder/MemCacheBuilder;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mHaveBuilt:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "MemCacheBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lcom/taobao/tcommon/core/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 31
    invoke-static {p1}, Lcom/taobao/tcommon/core/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/taobao/phenix/builder/MemCacheBuilder;->mMemoryCache:Lcom/taobao/phenix/cache/LruCache;

    return-object p0
.end method
