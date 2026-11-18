.class public Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
.super Ljava/lang/Object;
.source "SettableCacheEvent.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/CacheEvent;


# instance fields
.field private mCacheKey:Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;

.field private mCacheLimit:J

.field private mCacheSize:J

.field private mElapsed:J

.field private mEvictionReason:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;

.field private mException:Ljava/io/IOException;

.field private mItemSize:J

.field private mResourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCacheKey()Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mCacheKey:Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;

    return-object v0
.end method

.method public getCacheLimit()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mCacheLimit:J

    return-wide v0
.end method

.method public getCacheSize()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mCacheSize:J

    return-wide v0
.end method

.method public getElapsed()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mElapsed:J

    return-wide v0
.end method

.method public getEvictionReason()Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mEvictionReason:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;

    return-object v0
.end method

.method public getException()Ljava/io/IOException;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mException:Ljava/io/IOException;

    return-object v0
.end method

.method public getItemSize()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mItemSize:J

    return-wide v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mResourceId:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mCacheKey:Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;

    return-object p0
.end method

.method public setCacheLimit(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
    .locals 0

    .line 89
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mCacheLimit:J

    return-object p0
.end method

.method public setCacheSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
    .locals 0

    .line 79
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mCacheSize:J

    return-object p0
.end method

.method public setElapsed(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mElapsed:J

    return-void
.end method

.method public setEvictionReason(Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mEvictionReason:Lcom/taobao/alivfssdk/fresco/cache/common/CacheEventListener$EvictionReason;

    return-object p0
.end method

.method public setException(Ljava/io/IOException;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mException:Ljava/io/IOException;

    return-object p0
.end method

.method public setItemSize(J)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mItemSize:J

    return-object p0
.end method

.method public setResourceId(Ljava/lang/String;)Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/SettableCacheEvent;->mResourceId:Ljava/lang/String;

    return-object p0
.end method
