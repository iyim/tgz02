.class Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;
.super Ljava/lang/Object;
.source "SQLiteDefaultDiskStorage.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;


# annotations
.annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InserterImpl"
.end annotation


# instance fields
.field private final mResourceId:Ljava/lang/String;

.field final mTemporaryCacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;


# direct methods
.method public constructor <init>(Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->this$0:Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->mResourceId:Ljava/lang/String;

    .line 479
    new-instance p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    invoke-direct {p1, p2, p3}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;-><init>(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)V

    iput-object p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->mTemporaryCacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public commit(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->mTemporaryCacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->time:J

    .line 523
    iget-object p1, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->mTemporaryCacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    iget-object p2, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->this$0:Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;

    invoke-virtual {p2}, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage;->getValuesDataBase()Lcom/taobao/alivfsadapter/AVFSDataBase;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->save(Lcom/taobao/alivfsadapter/AVFSDataBase;)V

    .line 542
    new-instance p1, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;

    iget-object p2, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->mTemporaryCacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    iget-object p2, p2, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;->value:[B

    invoke-direct {p1, p2}, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;-><init>([B)V

    return-object p1
.end method

.method public writeData(Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    new-instance p2, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;

    iget-object p3, p0, Lcom/taobao/alivfssdk/cache/SQLiteDefaultDiskStorage$InserterImpl;->mTemporaryCacheItem:Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p3}, Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem$ByteArrayOutputStream;-><init>(Lcom/taobao/alivfssdk/cache/AVFSSQLiteCacheItem;)V

    .line 498
    :try_start_0
    invoke-interface {p1, p2}, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;->write(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    .line 501
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw p1
.end method
