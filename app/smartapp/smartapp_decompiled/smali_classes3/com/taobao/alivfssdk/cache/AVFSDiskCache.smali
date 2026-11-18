.class public Lcom/taobao/alivfssdk/cache/AVFSDiskCache;
.super Lcom/taobao/alivfssdk/cache/AVFSBaseCache;
.source "AVFSDiskCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;
.implements Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AVFSCache"


# instance fields
.field private final mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

.field private final mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

.field private mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/alivfssdk/cache/LruCache<",
            "Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/alivfssdk/cache/AVFSCache;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;I)V
    .locals 9
    .param p1    # Lcom/taobao/alivfssdk/cache/AVFSCache;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Lcom/taobao/alivfssdk/cache/AVFSBaseCache;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    .line 54
    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mType:Ljava/lang/String;

    .line 55
    new-instance p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;

    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance p2, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$1;

    invoke-direct {p2, p0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$1;-><init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;)V

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache;-><init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;Lcom/taobao/alivfssdk/fresco/cache/disk/EntryEvictionComparatorSupplier;Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorageCache$Params;Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener;Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmableRegistry;Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    if-lez p5, :cond_0

    .line 74
    new-instance p1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$2;

    const p2, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, p0, p5, p2}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$2;-><init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;IF)V

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;)Lcom/taobao/alivfssdk/cache/AVFSCache;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;)Lcom/taobao/alivfssdk/cache/LruCache;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    return-object p0
.end method

.method private onHitMemoryCache(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 296
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getCacheMonitor()Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    iget-object p2, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-virtual {p2}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getModuleName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;->hitMemoryCacheForModule(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearMemCache()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    if-eqz v0, :cond_0

    .line 515
    invoke-interface {v0}, Lcom/taobao/alivfssdk/cache/LruCache;->clear()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->clearMemCache()V

    .line 525
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->close()V

    :cond_0
    return-void
.end method

.method public containObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_0
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {v0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-interface {p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->hasKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z

    move-result p1

    return p1
.end method

.method public extendsKeysForKey(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 306
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-interface {p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->getCatalogs(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;

    move-result-object p1

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object p1
.end method

.method protected getEvenBuilder(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getModuleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/taobao/alivfsadapter/MonitorCacheEvent;->newBuilder(Ljava/lang/String;Ljava/lang/String;Z)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->operation(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public inputStreamForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AVFSCache"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 437
    :cond_0
    new-instance v2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {v2, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 439
    iget-object v3, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-interface {v3, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->getResource(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    move-result-object v2

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 454
    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- inputStreamForKey: moduleName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-virtual {v6}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getModuleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", key1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", key2="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v0, v4}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 460
    invoke-interface {v2}, Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 462
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    :cond_1
    return-object v1
.end method

.method public lengthForKey(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 503
    :cond_0
    new-instance v2, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {v2, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-interface {p1, v2}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->getResource(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 506
    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;->size()J

    move-result-wide p1

    return-wide p1

    :cond_1
    return-wide v0
.end method

.method public logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 658
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "AVFSCache"

    invoke-static {p2, p4, p1}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public objectForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public objectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ", key2="

    const-string v5, ", key1="

    const-string v6, "AVFSCache"

    const-string v7, "read"

    const/4 v8, 0x0

    if-nez v2, :cond_0

    return-object v8

    .line 153
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {v0, v2, v3}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v10, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;
    :try_end_0
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    .line 161
    :try_start_1
    iget-object v10, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    invoke-interface {v10, v0}, Lcom/taobao/alivfssdk/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    if-eqz v10, :cond_1

    .line 163
    new-instance v12, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v10, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-virtual {v10}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v12, v13, v10}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 167
    :try_start_2
    invoke-direct {v1, v2, v3, v11}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->onHitMemoryCache(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move-object v12, v8

    const/4 v11, 0x0

    :goto_0
    if-nez v12, :cond_3

    .line 173
    iget-object v10, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-interface {v10, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->getResource(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 175
    invoke-interface {v10}, Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;->openStream()Ljava/io/InputStream;

    move-result-object v13

    .line 176
    iget-object v14, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    if-eqz v14, :cond_2

    .line 177
    new-instance v14, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;

    new-instance v15, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;

    invoke-interface {v10}, Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;->size()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-direct {v15, v1, v13, v9, v0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$3;-><init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;Ljava/io/InputStream;ILcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;)V

    iget-object v0, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v14, v15, v0}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x0

    .line 185
    :try_start_3
    invoke-direct {v1, v2, v3, v8}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->onHitMemoryCache(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v8, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v8, v14

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v8, v14

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v8, v14

    goto/16 :goto_4

    :cond_2
    move-object v8, v12

    :goto_1
    if-nez v8, :cond_4

    .line 188
    :try_start_4
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 189
    new-instance v9, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;

    iget-object v10, v1, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mCaches:Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-virtual {v10}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v8, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v12

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object v8, v12

    goto/16 :goto_3

    :catch_5
    move-exception v0

    move-object v8, v12

    goto/16 :goto_4

    :cond_3
    move-object v8, v12

    :cond_4
    :goto_2
    if-nez v8, :cond_6

    if-eqz v8, :cond_5

    .line 275
    :try_start_5
    invoke-virtual {v8}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_6
    :cond_5
    const/4 v2, 0x0

    return-object v2

    .line 201
    :cond_6
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9
    :try_end_6
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 204
    :try_start_7
    invoke-virtual {v8}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 218
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 245
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getCacheMonitor()Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 247
    invoke-virtual {v1, v7}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->getEvenBuilder(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->diskTime(J)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->hitMemory(Z)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->build()Lcom/taobao/alivfsadapter/MonitorCacheEvent;

    move-result-object v2

    .line 251
    invoke-interface {v4, v2}, Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;->writeEvent(Lcom/taobao/alivfsadapter/MonitorCacheEvent;)V
    :try_end_8
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_7
    if-eqz v8, :cond_8

    .line 275
    :try_start_9
    invoke-virtual {v8}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :catch_7
    :cond_8
    return-object v0

    :catch_8
    move-exception v0

    move-object v9, v0

    .line 212
    :try_start_a
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x3

    invoke-direct {v0, v2, v9, v3}, Lcom/taobao/alivfssdk/cache/AVFSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_9
    move-exception v0

    move-object v9, v0

    .line 206
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-direct {v0, v2, v9, v3}, Lcom/taobao/alivfssdk/cache/AVFSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_a
    .catch Lcom/taobao/alivfssdk/cache/AVFSException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    goto :goto_6

    :catch_a
    move-exception v0

    const/4 v8, 0x0

    .line 264
    :goto_3
    :try_start_b
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getCacheMonitor()Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 266
    invoke-virtual {v1, v7}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->getEvenBuilder(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorCode(I)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorMessage(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->build()Lcom/taobao/alivfsadapter/MonitorCacheEvent;

    move-result-object v3

    .line 269
    invoke-interface {v2, v3}, Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;->writeEvent(Lcom/taobao/alivfsadapter/MonitorCacheEvent;)V

    :cond_9
    const/4 v2, 0x0

    .line 271
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    if-eqz v8, :cond_b

    goto :goto_5

    :catch_b
    move-exception v0

    const/4 v8, 0x0

    .line 255
    :goto_4
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getCacheMonitor()Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 257
    invoke-virtual {v1, v7}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->getEvenBuilder(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSException;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorCode(I)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorMessage(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->build()Lcom/taobao/alivfsadapter/MonitorCacheEvent;

    move-result-object v3

    .line 260
    invoke-interface {v2, v3}, Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;->writeEvent(Lcom/taobao/alivfsadapter/MonitorCacheEvent;)V

    :cond_a
    const/4 v2, 0x0

    .line 262
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v8, :cond_b

    .line 275
    :goto_5
    :try_start_c
    invoke-virtual {v8}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :cond_b
    const/4 v2, 0x0

    return-object v2

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v8, :cond_c

    :try_start_d
    invoke-virtual {v8}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 277
    :catch_d
    :cond_c
    throw v0
.end method

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
    .locals 3

    .line 623
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getCacheMonitor()Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "read"

    .line 625
    invoke-virtual {p0, v1}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->getEvenBuilder(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorCode(I)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v1

    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;->getException()Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorMessage(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->build()Lcom/taobao/alivfsadapter/MonitorCacheEvent;

    move-result-object p1

    .line 628
    invoke-interface {v0, p1}, Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;->writeEvent(Lcom/taobao/alivfsadapter/MonitorCacheEvent;)V

    :cond_0
    return-void
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
    .locals 3

    .line 634
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getCacheMonitor()Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "write"

    .line 636
    invoke-virtual {p0, v1}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->getEvenBuilder(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorCode(I)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v1

    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;->getException()Ljava/io/IOException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->errorMessage(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->build()Lcom/taobao/alivfsadapter/MonitorCacheEvent;

    move-result-object p1

    .line 639
    invoke-interface {v0, p1}, Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;->writeEvent(Lcom/taobao/alivfsadapter/MonitorCacheEvent;)V

    :cond_0
    return-void
.end method

.method public onWriteSuccess(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;)V
    .locals 4

    .line 599
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getCacheMonitor()Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "write"

    .line 601
    invoke-virtual {p0, v1}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->getEvenBuilder(Ljava/lang/String;)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object v1

    invoke-interface {p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;->getElapsed()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->diskTime(J)Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/alivfsadapter/MonitorCacheEvent$Builder;->build()Lcom/taobao/alivfsadapter/MonitorCacheEvent;

    move-result-object p1

    .line 603
    invoke-interface {v0, p1}, Lcom/taobao/alivfsadapter/AVFSSDKAppMonitor;->writeEvent(Lcom/taobao/alivfsadapter/MonitorCacheEvent;)V

    :cond_0
    return-void
.end method

.method public removeAllObject()Z
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    if-eqz v0, :cond_0

    .line 420
    invoke-interface {v0}, Lcom/taobao/alivfssdk/cache/LruCache;->clear()V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-interface {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->clearAll()V

    const/4 v0, 0x1

    return v0
.end method

.method public removeObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 408
    :cond_0
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {v0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mMemoryCache:Lcom/taobao/alivfssdk/cache/LruCache;

    if-eqz p1, :cond_1

    .line 410
    invoke-interface {p1, v0}, Lcom/taobao/alivfssdk/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_1
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-interface {p1, v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->remove(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z

    move-result p1

    return p1
.end method

.method public setObjectForKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    :cond_0
    if-nez p3, :cond_1

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->removeObjectForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 343
    :cond_1
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {v0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_0
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    new-instance p2, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;

    invoke-direct {p2, p0, v0, p3}, Lcom/taobao/alivfssdk/cache/AVFSDiskCache$4;-><init>(Lcom/taobao/alivfssdk/cache/AVFSDiskCache;Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;Ljava/lang/Object;)V

    invoke-interface {p1, v0, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->insert(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 397
    new-array p2, p4, [Ljava/lang/Object;

    const-string p3, "AVFSCache"

    invoke-static {p3, p1, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    return p4
.end method

.method public setStreamForKey(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return p4

    .line 474
    :cond_0
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;

    invoke-direct {v0, p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/common/PairCacheKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 477
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSDiskCache;->mFileCache:Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;

    invoke-static {p3}, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks;->from(Ljava/io/InputStream;)Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;->insert(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 492
    new-array p2, p4, [Ljava/lang/Object;

    const-string p3, "AVFSCache"

    invoke-static {p3, p1, p2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    return p4
.end method
