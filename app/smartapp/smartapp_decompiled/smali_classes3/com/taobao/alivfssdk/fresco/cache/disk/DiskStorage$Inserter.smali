.class public interface abstract Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;
.super Ljava/lang/Object;
.source "DiskStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Inserter"
.end annotation


# virtual methods
.method public abstract cleanUp()Z
.end method

.method public abstract commit(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeData(Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
