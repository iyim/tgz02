.class public Lanet/channel/cache/AVFSCacheImpl;
.super Ljava/lang/Object;
.source "AVFSCacheImpl.java"

# interfaces
.implements Lanetwork/channel/cache/Cache;


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "networksdk.httpcache"

.field private static final TAG:Ljava/lang/String; = "anet.AVFSCacheImpl"

.field private static isAvfsCacheExist:Z = true

.field private static nullAllObjectRemoveCallback:Ljava/lang/Object;

.field private static nullObjectRemoveCallback:Ljava/lang/Object;

.field private static nullObjectSetCallback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v0, "com.taobao.alivfssdk.cache.AVFSCacheManager"

    .line 24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    new-instance v0, Lanet/channel/cache/AVFSCacheImpl$1;

    invoke-direct {v0}, Lanet/channel/cache/AVFSCacheImpl$1;-><init>()V

    sput-object v0, Lanet/channel/cache/AVFSCacheImpl;->nullObjectSetCallback:Ljava/lang/Object;

    .line 30
    new-instance v0, Lanet/channel/cache/AVFSCacheImpl$2;

    invoke-direct {v0}, Lanet/channel/cache/AVFSCacheImpl$2;-><init>()V

    sput-object v0, Lanet/channel/cache/AVFSCacheImpl;->nullObjectRemoveCallback:Ljava/lang/Object;

    .line 35
    new-instance v0, Lanet/channel/cache/AVFSCacheImpl$3;

    invoke-direct {v0}, Lanet/channel/cache/AVFSCacheImpl$3;-><init>()V

    sput-object v0, Lanet/channel/cache/AVFSCacheImpl;->nullAllObjectRemoveCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lanet/channel/cache/AVFSCacheImpl;->isAvfsCacheExist:Z

    const/4 v1, 0x0

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.AVFSCacheImpl"

    const-string v3, "no alivfs sdk!"

    invoke-static {v2, v3, v1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;
    .locals 2

    .line 129
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v0

    const-string v1, "networksdk.httpcache"

    invoke-virtual {v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/cache/AVFSCache;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 114
    sget-boolean v0, Lanet/channel/cache/AVFSCacheImpl;->isAvfsCacheExist:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 119
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lanet/channel/cache/AVFSCacheImpl;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v1, Lanet/channel/cache/AVFSCacheImpl;->nullAllObjectRemoveCallback:Ljava/lang/Object;

    check-cast v1, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;

    invoke-interface {v0, v1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->removeAllObject(Lcom/taobao/alivfssdk/cache/IAVFSCache$OnAllObjectRemoveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.AVFSCacheImpl"

    const-string v4, "clear cache failed"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public get(Ljava/lang/String;)Lanetwork/channel/cache/Cache$Entry;
    .locals 4

    .line 62
    sget-boolean v0, Lanet/channel/cache/AVFSCacheImpl;->isAvfsCacheExist:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lanet/channel/cache/AVFSCacheImpl;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p1}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-interface {v0, p1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->objectForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lanetwork/channel/cache/Cache$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "anet.AVFSCacheImpl"

    const-string v3, "get cache failed"

    invoke-static {v2, v3, v1, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public initialize()V
    .locals 4

    .line 47
    sget-boolean v0, Lanet/channel/cache/AVFSCacheImpl;->isAvfsCacheExist:Z

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->getInstance()Lcom/taobao/alivfssdk/cache/AVFSCacheManager;

    move-result-object v0

    const-string v1, "networksdk.httpcache"

    invoke-virtual {v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheManager;->cacheForModule(Ljava/lang/String;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;

    invoke-direct {v1}, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;-><init>()V

    const-wide/32 v2, 0x500000

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->limitSize:Ljava/lang/Long;

    const-wide/32 v2, 0x100000

    .line 55
    iput-wide v2, v1, Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;->fileMemMaxSize:J

    .line 56
    invoke-virtual {v0, v1}, Lcom/taobao/alivfssdk/cache/AVFSCache;->moduleConfig(Lcom/taobao/alivfssdk/cache/AVFSCacheConfig;)Lcom/taobao/alivfssdk/cache/AVFSCache;

    :cond_1
    return-void
.end method

.method public put(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V
    .locals 3

    .line 80
    sget-boolean v0, Lanet/channel/cache/AVFSCacheImpl;->isAvfsCacheExist:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 85
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lanet/channel/cache/AVFSCacheImpl;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {p1}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    sget-object v1, Lanet/channel/cache/AVFSCacheImpl;->nullObjectSetCallback:Ljava/lang/Object;

    check-cast v1, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->setObjectForKey(Ljava/lang/String;Ljava/lang/Object;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectSetCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "anet.AVFSCacheImpl"

    const-string v2, "put cache failed"

    invoke-static {v1, v2, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4

    .line 97
    sget-boolean v0, Lanet/channel/cache/AVFSCacheImpl;->isAvfsCacheExist:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 102
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lanet/channel/cache/AVFSCacheImpl;->getFileCache()Lcom/taobao/alivfssdk/cache/IAVFSCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p1}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    sget-object v1, Lanet/channel/cache/AVFSCacheImpl;->nullObjectRemoveCallback:Ljava/lang/Object;

    check-cast v1, Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;

    invoke-interface {v0, p1, v1}, Lcom/taobao/alivfssdk/cache/IAVFSCache;->removeObjectForKey(Ljava/lang/String;Lcom/taobao/alivfssdk/cache/IAVFSCache$OnObjectRemoveCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "anet.AVFSCacheImpl"

    const-string/jumbo v3, "remove cache failed"

    invoke-static {v2, v3, v0, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
