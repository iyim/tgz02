.class public Lanetwork/channel/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/cache/CacheManager$CacheItem;
    }
.end annotation


# static fields
.field private static cacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanetwork/channel/cache/CacheManager$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private static final writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanetwork/channel/cache/CacheManager;->cacheList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lanetwork/channel/cache/CacheManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 37
    sget-object v0, Lanetwork/channel/cache/CacheManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lanetwork/channel/cache/CacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    sget-object v0, Lanetwork/channel/cache/CacheManager;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lanetwork/channel/cache/CacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addCache(Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/CachePrediction;I)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 50
    :try_start_0
    sget-object v0, Lanetwork/channel/cache/CacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 51
    sget-object v0, Lanetwork/channel/cache/CacheManager;->cacheList:Ljava/util/List;

    new-instance v1, Lanetwork/channel/cache/CacheManager$CacheItem;

    invoke-direct {v1, p0, p1, p2}, Lanetwork/channel/cache/CacheManager$CacheItem;-><init>(Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/CachePrediction;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object p0, Lanetwork/channel/cache/CacheManager;->cacheList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    sget-object p0, Lanetwork/channel/cache/CacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 47
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "prediction is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cache is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 54
    sget-object p1, Lanetwork/channel/cache/CacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public static clearAllCache()V
    .locals 4

    const/4 v0, 0x0

    .line 89
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "anet.CacheManager"

    const-string v2, "clearAllCache"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lanetwork/channel/cache/CacheManager;->cacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/cache/CacheManager$CacheItem;

    .line 92
    :try_start_0
    iget-object v1, v1, Lanetwork/channel/cache/CacheManager$CacheItem;->cache:Lanetwork/channel/cache/Cache;

    invoke-interface {v1}, Lanetwork/channel/cache/Cache;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCache(Ljava/lang/String;Ljava/util/Map;)Lanetwork/channel/cache/Cache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanetwork/channel/cache/Cache;"
        }
    .end annotation

    .line 75
    :try_start_0
    sget-object v0, Lanetwork/channel/cache/CacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 76
    sget-object v0, Lanetwork/channel/cache/CacheManager;->cacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/cache/CacheManager$CacheItem;

    .line 77
    iget-object v2, v1, Lanetwork/channel/cache/CacheManager$CacheItem;->prediction:Lanetwork/channel/cache/CachePrediction;

    .line 78
    invoke-interface {v2, p0, p1}, Lanetwork/channel/cache/CachePrediction;->handleCache(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object p0, v1, Lanetwork/channel/cache/CacheManager$CacheItem;->cache:Lanetwork/channel/cache/Cache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    sget-object p1, Lanetwork/channel/cache/CacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lanetwork/channel/cache/CacheManager;->readLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static removeCache(Lanetwork/channel/cache/Cache;)V
    .locals 2

    .line 60
    :try_start_0
    sget-object v0, Lanetwork/channel/cache/CacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 61
    sget-object v0, Lanetwork/channel/cache/CacheManager;->cacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 62
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanetwork/channel/cache/CacheManager$CacheItem;

    iget-object v1, v1, Lanetwork/channel/cache/CacheManager$CacheItem;->cache:Lanetwork/channel/cache/Cache;

    if-ne v1, p0, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object p0, Lanetwork/channel/cache/CacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lanetwork/channel/cache/CacheManager;->writeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method
