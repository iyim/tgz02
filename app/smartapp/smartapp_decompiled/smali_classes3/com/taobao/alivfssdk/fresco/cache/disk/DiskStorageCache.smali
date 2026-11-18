.class public Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;
.implements Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final FILECACHE_SIZE_UPDATE_PERIOD_MS:J

.field private static final FUTURE_TIMESTAMP_THRESHOLD_MS:J

.field private static final SHARED_PREFS_FILENAME_PREFIX:Ljava/lang/String; = "disk_entries_list"

.field public static final START_OF_VERSIONING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiskStorageCache"

.field private static final TRIMMING_LOWER_BOUND:D = 0.02

.field private static final UNINITIALIZED:J = -0x1L


# instance fields
.field private final mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

.field private final mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

.field private mCacheSizeLastUpdateTime:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCacheSizeLimit:J

.field private final mCacheSizeLimitMinimum:J

.field private final mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDefaultCacheSizeLimit:J

.field private final mEntryEvictionComparatorSupplier:Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;

.field private final mLock:Ljava/lang/Object;

.field private final mLowDiskSpaceCacheSizeLimit:J

.field final mResourceIndex:Ljava/util/Set;
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStatFsHelper:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper;

.field private final mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    .line 64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->FILECACHE_SIZE_UPDATE_PERIOD_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmableRegistry;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p6    # Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmableRegistry;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    .line 167
    iget-wide v0, p3, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;->mLowDiskSpaceCacheSizeLimit:J

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLowDiskSpaceCacheSizeLimit:J

    .line 168
    iget-wide v0, p3, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mDefaultCacheSizeLimit:J

    .line 169
    iget-wide v0, p3, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    .line 170
    invoke-static {}, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper;->getInstance()Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStatFsHelper:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper;

    .line 172
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    .line 174
    iput-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mEntryEvictionComparatorSupplier:Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;

    const-wide/16 p1, -0x1

    .line 176
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLastUpdateTime:J

    .line 178
    iput-object p4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    .line 180
    iget-wide p1, p3, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;->mCacheSizeLimitMinimum:J

    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J

    .line 182
    iput-object p5, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    .line 184
    new-instance p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-direct {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;-><init>()V

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    if-eqz p6, :cond_0

    .line 187
    invoke-interface {p6, p0}, Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmableRegistry;->registerDiskTrimmable(Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmable;)V

    .line 191
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    .line 193
    new-instance p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;

    invoke-direct {p1, p0, p7}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$1;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;Landroid/content/Context;)V

    invoke-interface {p8, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeDeleteSharedPreferencesFile(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private endInsert(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    invoke-interface {p1, p2, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;->commit(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    move-result-object p1

    .line 338
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->increment(JJ)V

    .line 340
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 341
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private evictAboveSize(JLcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 532
    :try_start_0
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->getEntries()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getSortedEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    iget-object v4, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v4

    sub-long v6, v4, v2

    const/4 v8, 0x0

    .line 545
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    cmp-long v14, v11, v6

    if-lez v14, :cond_0

    goto :goto_1

    .line 549
    :cond_0
    iget-object v14, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v14, v13}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->remove(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)J

    move-result-wide v14

    .line 550
    iget-object v9, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v13}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v9, 0x0

    cmp-long v16, v14, v9

    if-lez v16, :cond_1

    add-int/lit8 v8, v8, 0x1

    add-long/2addr v11, v14

    .line 554
    iget-object v9, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz v9, :cond_1

    .line 555
    new-instance v10, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    invoke-direct {v10}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;-><init>()V

    invoke-interface {v13}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v10

    move-object/from16 v13, p3

    invoke-virtual {v10, v13}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setEvictionReason(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v10

    invoke-virtual {v10, v14, v15}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setItemSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v10

    sub-long v14, v4, v11

    invoke-virtual {v10, v14, v15}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheLimit(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onEviction(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)Z

    move-result v9

    goto :goto_0

    :cond_1
    move-object/from16 v13, p3

    goto :goto_0

    .line 567
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    neg-long v2, v11

    neg-int v4, v8

    int-to-long v4, v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->increment(JJ)V

    .line 568
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->purgeUnexpectedResources()V

    return-void

    :catch_0
    move-exception v0

    .line 534
    iget-object v2, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evictAboveSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DiskStorageCache"

    invoke-interface {v2, v3, v5, v4, v0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static getFirstResourceId(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    .line 845
    :try_start_0
    instance-of v0, p0, Lcom/taobao/alivfssdk/fresco/cache/common/MultiCacheKey;

    if-eqz v0, :cond_0

    .line 846
    nop

    nop

    invoke-virtual {p0}, Lcom/taobao/alivfssdk/fresco/cache/common/MultiCacheKey;->getCacheKeys()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    .line 847
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;

    invoke-static {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->secureHashKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 849
    :cond_0
    invoke-static {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->secureHashKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 853
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getResourceIds(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 825
    :try_start_0
    instance-of v0, p0, Lcom/taobao/alivfssdk/fresco/cache/common/MultiCacheKey;

    if-eqz v0, :cond_0

    .line 826
    nop

    nop

    invoke-virtual {p0}, Lcom/taobao/alivfssdk/fresco/cache/common/MultiCacheKey;->getCacheKeys()Ljava/util/List;

    move-result-object p0

    .line 827
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 828
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 829
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;

    invoke-static {v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->secureHashKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 832
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 833
    invoke-static {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->secureHashKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 838
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private getSortedEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mEntryEvictionComparatorSupplier:Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;

    if-nez v0, :cond_0

    return-object p1

    .line 583
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    add-long/2addr v0, v2

    .line 585
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 586
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 587
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    .line 588
    invoke-interface {v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_1

    .line 589
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    :cond_2
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mEntryEvictionComparatorSupplier:Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;

    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;->get()Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparator;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 595
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method private static maybeDeleteSharedPreferencesFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 865
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "shared_prefs"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "disk_entries_list"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 872
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xml"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 874
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 875
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x1

    .line 878
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "Fail to delete SharedPreference from file system. "

    aput-object v0, p0, p1

    const-string p1, "DiskStorageCache"

    invoke-static {p1, p0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private maybeEvictFilesInCacheDir()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    move-result v1

    .line 493
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->updateFileCacheSizeLimit()V

    .line 495
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v2

    .line 508
    iget-wide v4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    if-nez v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->reset()V

    .line 510
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 514
    :cond_0
    iget-wide v4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 516
    iget-wide v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    const-wide/16 v5, 0x9

    mul-long v3, v3, v5

    const-wide/16 v5, 0xa

    div-long/2addr v3, v5

    .line 517
    sget-object v5, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;->CACHE_FULL:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v3, v4, v5}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->evictAboveSize(JLcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;)V

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-string v1, "DiskStorageCache"

    const/4 v2, 0x1

    .line 519
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- evictAboveSize: desiredSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", elapsed="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 525
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeUpdateFileCacheSize()Z
    .locals 9
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 744
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->isInitialized()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-wide v5, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLastUpdateTime:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    sub-long v5, v0, v5

    sget-wide v7, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->FILECACHE_SIZE_UPDATE_PERIOD_MS:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 747
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 748
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSizeAndIndex()V

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 750
    new-array v2, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- maybeUpdateFileCacheSizeAndIndex: now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", elapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", thread="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "DiskStorageCache"

    invoke-static {v4, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 757
    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLastUpdateTime:J

    :goto_1
    return v3
.end method

.method private maybeUpdateFileCacheSizeAndIndex()V
    .locals 21
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "DiskStorageCache"

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 772
    sget-wide v5, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->FUTURE_TIMESTAMP_THRESHOLD_MS:J

    add-long/2addr v5, v3

    .line 774
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    goto :goto_0

    .line 777
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 780
    :goto_0
    :try_start_0
    iget-object v7, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v7}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->getEntries()Ljava/util/Collection;

    move-result-object v7

    .line 781
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-wide v14, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v10, v9

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    add-int/lit8 v9, v9, 0x1

    .line 783
    invoke-interface/range {v16 .. v16}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v17

    add-long v10, v10, v17

    .line 786
    invoke-interface/range {v16 .. v16}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v17

    cmp-long v19, v17, v5

    if-lez v19, :cond_1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v17, v5

    int-to-long v5, v13

    .line 789
    invoke-interface/range {v16 .. v16}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getSize()J

    move-result-wide v19

    add-long v5, v5, v19

    long-to-int v6, v5

    .line 790
    invoke-interface/range {v16 .. v16}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v19

    move v8, v6

    sub-long v5, v19, v3

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v13, 0x1

    move-wide v14, v5

    move v13, v8

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    move-wide/from16 v17, v5

    .line 792
    invoke-interface/range {v16 .. v16}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    move-wide/from16 v5, v17

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    .line 796
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->READ_INVALID_ENTRY:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Future timestamp found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " files , with a total size of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bytes, and a maximum time delta of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v2, v5, v6}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 807
    :cond_3
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getCount()J

    move-result-wide v3

    int-to-long v5, v9

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v3

    cmp-long v7, v3, v10

    if-eqz v7, :cond_6

    .line 808
    :cond_4
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    if-eq v3, v0, :cond_5

    .line 809
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 810
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 812
    :cond_5
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0, v10, v11, v5, v6}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->set(JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 815
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calcFileCacheSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5, v0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private static secureHashKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 858
    invoke-interface {p0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/alivfssdk/fresco/common/util/SecureHashUtil;->makeSHA1HashBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private startInsert(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeEvictFilesInCacheDir()V

    .line 328
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0, p1, p2, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->insert(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;

    move-result-object p1

    return-object p1
.end method

.method private trimBy(D)V
    .locals 5

    .line 716
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->reset()V

    .line 720
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 721
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v3, v1

    .line 722
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v3

    double-to-long p1, p1

    sub-long/2addr v1, p1

    .line 723
    :try_start_1
    sget-object p1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;->CACHE_MANAGER_TRIMMED:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;

    invoke-direct {p0, v1, v2, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->evictAboveSize(JLcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 726
    :try_start_2
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v1, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v2, "DiskStorageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trimBy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v2, v3, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private updateFileCacheSizeLimit()V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->EXTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;

    .line 609
    :goto_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStatFsHelper:Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper;

    iget-wide v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mDefaultCacheSizeLimit:J

    iget-object v4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper;->testLowDiskSpace(Lcom/taobao/alivfssdk/fresco/common/statfs/StatFsHelper$StorageType;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLowDiskSpaceCacheSizeLimit:J

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    goto :goto_1

    .line 615
    :cond_1
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mDefaultCacheSizeLimit:J

    iput-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimit:J

    :goto_1
    return-void
.end method


# virtual methods
.method protected awaitIndex()V
    .locals 3
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 225
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Memory Index is not ready yet. "

    aput-object v2, v0, v1

    const-string v1, "DiskStorageCache"

    invoke-static {v1, v0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

.method public clearAll()V
    .locals 7

    .line 628
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->clearAll()V

    .line 631
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 633
    :try_start_1
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v4, "DiskStorageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearAll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 638
    :goto_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->reset()V

    .line 639
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearOldEntries(J)J
    .locals 20

    move-object/from16 v1, p0

    .line 436
    iget-object v2, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 439
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->getEntries()Ljava/util/Collection;

    move-result-object v0

    .line 440
    iget-object v7, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v7}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v7

    const/4 v9, 0x0

    .line 443
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;

    const-wide/16 v3, 0x1

    .line 445
    invoke-interface {v14}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getTimestamp()J

    move-result-wide v16

    sub-long v16, v5, v16

    move-wide/from16 v18, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-ltz v5, :cond_0

    .line 447
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v3, v14}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->remove(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)J

    move-result-wide v3

    .line 448
    iget-object v5, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v14}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x0

    cmp-long v15, v3, v5

    if-lez v15, :cond_1

    add-int/lit8 v9, v9, 0x1

    add-long/2addr v10, v3

    .line 452
    iget-object v15, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz v15, :cond_1

    .line 453
    iget-object v15, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    new-instance v5, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    invoke-direct {v5}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;-><init>()V

    invoke-interface {v14}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v5

    sget-object v6, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;->CONTENT_STALE:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;

    invoke-virtual {v5, v6}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setEvictionReason(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setItemSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v3

    sub-long v4, v7, v10

    invoke-virtual {v3, v4, v5}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onEviction(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)Z

    goto :goto_1

    .line 464
    :cond_0
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-wide v12, v3

    :cond_1
    :goto_1
    move-wide/from16 v5, v18

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->purgeUnexpectedResources()V

    if-lez v9, :cond_3

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 470
    iget-object v0, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    neg-long v3, v10

    neg-int v5, v9

    int-to-long v5, v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->increment(JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const-wide/16 v12, 0x0

    .line 473
    :goto_2
    :try_start_2
    iget-object v3, v1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v4, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->EVICTION:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v5, "DiskStorageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearOldEntries: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    :cond_3
    :goto_3
    monitor-exit v2

    return-wide v12

    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->close()V

    return-void
.end method

.method public getCatalogs(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getResourceIds(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 702
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 703
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 704
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v1, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->getCatalogs(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 706
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 707
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCount()J
    .locals 2

    .line 624
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDumpInfo()Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->getDumpInfo()Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 8

    const/4 v0, 0x1

    .line 241
    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getResource: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DiskStorageCache"

    invoke-static {v1, v0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    invoke-direct {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v0

    const/4 v1, 0x0

    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :try_start_1
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getResourceIds(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    move-object v6, v5

    .line 250
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 251
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v5}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    .line 253
    iget-object v6, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v6, v5, p1, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->getResource(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v6, :cond_3

    .line 259
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onMiss(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz p1, :cond_4

    .line 266
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    invoke-interface {p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onHit(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V

    .line 269
    :cond_4
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_2
    monitor-exit v3

    return-object v6

    :catchall_0
    move-exception p1

    .line 272
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 274
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->GENERIC_IO:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v4, "DiskStorageCache"

    const-string v5, "getResource"

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    invoke-virtual {v0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setException(Ljava/io/IOException;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    .line 279
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz p1, :cond_5

    .line 280
    invoke-interface {p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onReadException(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V

    :cond_5
    return-object v1
.end method

.method public getSize()J
    .locals 2

    .line 620
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
    .locals 7

    .line 659
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->hasKeySync(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 661
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 665
    :try_start_1
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getResourceIds(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 666
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 667
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 668
    iget-object v6, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v6, v5, p1, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->contains(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 669
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    :try_start_2
    monitor-exit v0

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    :cond_2
    monitor-exit v0

    return v1

    .line 675
    :catch_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 677
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public hasKeySync(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
    .locals 5

    .line 644
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_0
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getResourceIds(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 647
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 648
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 649
    iget-object v4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 650
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 654
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public insert(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 355
    new-instance v2, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    invoke-direct {v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;-><init>()V

    invoke-virtual {v2, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v2

    .line 356
    iget-object v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz v3, :cond_0

    .line 357
    invoke-interface {v3, v2}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onWriteAttempt(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V

    .line 361
    :cond_0
    iget-object v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    :try_start_0
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getFirstResourceId(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/lang/String;

    move-result-object v4

    .line 364
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 365
    invoke-virtual {v2, v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 368
    :try_start_1
    invoke-direct {p0, v4, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->startInsert(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    :try_start_2
    invoke-interface {v6, p2, p1, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;->writeData(Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)V

    .line 373
    invoke-direct {p0, v6, p1, v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->endInsert(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    move-result-object p1

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 375
    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;->size()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setItemSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object p2

    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object p2

    invoke-virtual {p2, v7, v8}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setElapsed(J)V

    .line 378
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz p2, :cond_1

    .line 379
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    invoke-interface {p2, v2}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onWriteSuccess(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    :cond_1
    :try_start_3
    invoke-interface {v6}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;->cleanUp()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "DiskStorageCache"

    .line 385
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Failed to delete temp file"

    aput-object v1, v0, v5

    invoke-static {p2, v0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    .line 384
    invoke-interface {v6}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;->cleanUp()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "DiskStorageCache"

    .line 385
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Failed to delete temp file"

    aput-object v1, v0, v5

    invoke-static {p2, v0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {v2, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setException(Ljava/io/IOException;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    .line 390
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz p2, :cond_4

    .line 391
    invoke-interface {p2, v2}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onWriteException(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V

    :cond_4
    const/4 p2, 0x2

    .line 394
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Failed inserting a file into the cache"

    aput-object v0, p2, v5

    aput-object p1, p2, v3

    const-string v0, "DiskStorageCache"

    invoke-static {v0, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    throw p1

    :catchall_1
    move-exception p1

    .line 364
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public probe(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    :try_start_1
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getResourceIds(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v1

    const/4 v1, 0x0

    .line 303
    :goto_0
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 304
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    :try_start_3
    iget-object v4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v4, v5, p1, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->touch(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v4, v5

    goto :goto_0

    .line 310
    :cond_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    move-object v5, v4

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v5, v1

    move-object v1, v3

    .line 311
    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 313
    :goto_2
    iget-object v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz v3, :cond_2

    .line 314
    new-instance v4, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    invoke-direct {v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;-><init>()V

    invoke-virtual {v4, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setException(Ljava/io/IOException;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onReadException(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V

    :cond_2
    return v0
.end method

.method public remove(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
    .locals 8

    .line 401
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 404
    :try_start_0
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->getResourceIds(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;

    move-result-object v2

    .line 405
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 406
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 407
    new-instance v3, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    invoke-direct {v3}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;-><init>()V

    invoke-virtual {v3, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object v3

    .line 408
    invoke-virtual {v3, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setResourceId(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    .line 409
    iget-object v4, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mStorage:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;

    invoke-interface {v4, v2, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;->remove(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)J

    move-result-wide v4

    .line 410
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mResourceIndex:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v3, v4, v5}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setItemSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->setCacheSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;

    .line 412
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    if-eqz p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheEventListener:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;

    invoke-interface {p1, v3}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;->onRemoveSuccess(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p1, v4, v2

    if-ltz p1, :cond_1

    const/4 v1, 0x1

    .line 415
    :cond_1
    :try_start_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    iget-object v2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheErrorLogger:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    sget-object v3, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->DELETE_FILE:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v4, "DiskStorageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    :cond_2
    monitor-exit v0

    return v1

    .line 424
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDefaultCacheSizeLimit(J)V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_0
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mDefaultCacheSizeLimit:J

    .line 892
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public trimToMinimum()V
    .locals 8

    .line 682
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->maybeUpdateFileCacheSize()Z

    .line 684
    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheStats:Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;

    invoke-virtual {v1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$CacheStats;->getSize()J

    move-result-wide v1

    .line 685
    iget-wide v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    iget-wide v3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 690
    iget-wide v5, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->mCacheSizeLimitMinimum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v5, v5

    long-to-double v1, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v1

    sub-double/2addr v3, v5

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    cmpl-double v5, v3, v1

    if-lez v5, :cond_1

    .line 692
    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->trimBy(D)V

    .line 694
    :cond_1
    monitor-exit v0

    return-void

    .line 688
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 694
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public trimToNothing()V
    .locals 0

    .line 712
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;->clearAll()V

    return-void
.end method
