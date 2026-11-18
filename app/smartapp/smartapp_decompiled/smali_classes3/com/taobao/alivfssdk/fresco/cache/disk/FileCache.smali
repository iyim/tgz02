.class public interface abstract Lcom/taobao/alivfssdk/fresco/cache/disk/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/common/disk/DiskTrimmable;
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract clearOldEntries(J)J
.end method

.method public abstract getCatalogs(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/util/List;
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
.end method

.method public abstract getCount()J
.end method

.method public abstract getDumpInfo()Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResource(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
.end method

.method public abstract getSize()J
.end method

.method public abstract hasKey(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
.end method

.method public abstract hasKeySync(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
.end method

.method public abstract insert(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract probe(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
.end method

.method public abstract remove(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Z
.end method
