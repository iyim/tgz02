.class public interface abstract Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;
.super Ljava/lang/Object;
.source "DiskStorage.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;,
        Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfoEntry;
    }
.end annotation


# virtual methods
.method public abstract clearAll()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCatalogs(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getDumpInfo()Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$DiskDumpInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getEntries()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResource(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getStorageName()Ljava/lang/String;
.end method

.method public abstract insert(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isExternal()Z
.end method

.method public abstract purgeUnexpectedResources()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Entry;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract touch(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
