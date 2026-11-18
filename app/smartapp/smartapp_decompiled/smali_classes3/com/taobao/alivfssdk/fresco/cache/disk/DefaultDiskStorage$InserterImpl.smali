.class Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/disk/DiskStorage$Inserter;


# annotations
.annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InserterImpl"
.end annotation


# instance fields
.field private final mResourceId:Ljava/lang/String;

.field final mTemporaryFile:Ljava/io/File;
    .annotation build Lcom/taobao/alivfssdk/fresco/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final synthetic this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;


# direct methods
.method public constructor <init>(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mResourceId:Ljava/lang/String;

    .line 745
    iput-object p3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public commit(Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mResourceId:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->getContentFileFor(Ljava/lang/String;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;)Ljava/io/File;

    move-result-object p1

    .line 788
    :try_start_0
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-static {p2, p1}, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$RenameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 807
    :cond_0
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;->createOrNull(Ljava/io/File;)Lcom/taobao/alivfssdk/fresco/binaryresource/FileBinaryResource;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 791
    invoke-virtual {p1}, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$RenameException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 794
    instance-of v0, p2, Lcom/taobao/alivfssdk/fresco/common/file/FileUtils$ParentDirNotFoundException;

    if-nez v0, :cond_2

    .line 796
    instance-of p2, p2, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_1

    .line 797
    sget-object p2, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 799
    :cond_1
    sget-object p2, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 795
    :cond_2
    sget-object p2, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    goto :goto_0

    .line 793
    :cond_3
    sget-object p2, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_RENAME_FILE_OTHER:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    .line 801
    :goto_0
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-static {v0}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->access$600(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    move-result-object v0

    const-string v1, "DefaultDiskStorage"

    const-string v2, "commit"

    invoke-interface {v0, p2, v1, v2, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 802
    throw p1
.end method

.method public writeData(Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;Lcom/taobao/alivfssdk/fresco/cache/common/CacheKey;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object p3, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :try_start_1
    new-instance p3, Lcom/taobao/alivfssdk/fresco/common/internal/CountingOutputStream;

    invoke-direct {p3, p2}, Lcom/taobao/alivfssdk/fresco/common/internal/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 764
    invoke-interface {p1, p3}, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;->write(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    .line 767
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 768
    invoke-virtual {p3}, Lcom/taobao/alivfssdk/fresco/common/internal/CountingOutputStream;->getCount()J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 777
    iget-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    return-void

    .line 778
    :cond_0
    new-instance p1, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$IncompleteFileException;

    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->mTemporaryFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$IncompleteFileException;-><init>(JJ)V

    throw p1

    :catchall_0
    move-exception p1

    .line 773
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    throw p1

    :catch_0
    move-exception p1

    .line 754
    iget-object p2, p0, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage$InserterImpl;->this$0:Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;

    invoke-static {p2}, Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;->access$600(Lcom/taobao/alivfssdk/fresco/cache/disk/DefaultDiskStorage;)Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;

    move-result-object p2

    sget-object p3, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;->WRITE_UPDATE_FILE_NOT_FOUND:Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;

    const-string v0, "DefaultDiskStorage"

    const-string v1, "updateResource"

    invoke-interface {p2, p3, v0, v1, p1}, Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger;->logError(Lcom/taobao/alivfssdk/fresco/cache/common/CacheErrorLogger$CacheErrorCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 758
    throw p1
.end method
