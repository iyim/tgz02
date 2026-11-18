.class public Lcom/taobao/alivfssdk/cache/AVFSCacheManager;
.super Ljava/lang/Object;
.source "AVFSCacheManager.java"


# static fields
.field private static final AVFS_MAX_CACHE_NUMBER:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AVFSCacheManager"

.field private static volatile sInstance:Lcom/taobao/alivfssdk/cache/AVFSCacheManager;


# instance fields
.field private final mCaches:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/alivfssdk/cache/AVFSCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-static {}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getInstance()Lcom/taobao/alivfsadapter/AVFSAdapterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/alivfsadapter/AVFSAdapterManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager$1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager$1;-><init>(Lcom/taobao/alivfssdk/cache/AVFSCacheManager;I)V

    iput-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mCaches:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private createCache(Ljava/io/File;Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mCaches:Landroid/support/v4/util/LruCache;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/alivfssdk/cache/AVFSCache;

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 138
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    .line 139
    :goto_0
    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSCache;

    invoke-direct {v1, p2, p1}, Lcom/taobao/alivfssdk/cache/AVFSCache;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 141
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {v1, p1}, Lcom/taobao/alivfssdk/cache/AVFSCache;->moduleConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1, p2, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->sInstance:Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->sInstance:Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;-><init>()V

    sput-object v1, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->sInstance:Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->sInstance:Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    return-object v0
.end method


# virtual methods
.method public cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getRootDir()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AVFSCacheManager"

    invoke-static {v2, v0, v1}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    .line 90
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->createCache(Ljava/io/File;Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "moduleName cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cacheForModule(Ljava/lang/String;Z)Lcom/taobao/alivfssdk/cache/AVFSCache;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getRootDir(Z)Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x0

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AVFSCacheManager"

    invoke-static {v1, p2, v0}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    const/4 p2, 0x0

    .line 130
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->createCache(Ljava/io/File;Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "moduleName cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public defaultCache()Lcom/taobao/alivfssdk/cache/AVFSCache;
    .locals 1

    const-string v0, "AVFSDefaultModule"

    .line 68
    invoke-virtual {p0, v0}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    return-object v0
.end method

.method getCaches()Landroid/support/v4/util/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/taobao/alivfssdk/cache/AVFSCache;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mCaches:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getRootDir()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 181
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getRootDir(Z)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 183
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AVFSCacheManager"

    invoke-static {v3, v0, v2}, Lcom/taobao/alivfssdk/utils/AVFSCacheLog;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 184
    invoke-virtual {p0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getRootDir(Z)Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRootDir(Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AVFSCache"

    if-eqz p1, :cond_1

    .line 194
    :try_start_0
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Couldn\'t create directory AVFSCache"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 196
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 203
    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-static {p1}, Lcom/taobao/alivfssdk/utils/IoUtils;->ensureDirectory(Ljava/io/File;)V

    :goto_0
    return-object p1
.end method

.method public putConfigs(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mConfigs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public removeCacheForModule(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mCaches:Landroid/support/v4/util/LruCache;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->mCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/alivfssdk/cache/AVFSCache;

    if-nez p1, :cond_0

    .line 102
    monitor-exit v0

    return-void

    .line 104
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/cache/AVFSCache;->clearAll()V

    return-void

    :catchall_0
    move-exception p1

    .line 104
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "moduleName cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
