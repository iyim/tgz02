.class Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;
.super Ljava/lang/Object;
.source "OSSDownloadOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSDownloadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;",
        ">;"
    }
.end annotation


# instance fields
.field private downloadCheckPoint:Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;

.field private downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

.field private id:I

.field private name:Ljava/lang/String;

.field private objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

.field private objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

.field private partIndex:I

.field private progressListener:Lcom/aliyun/oss/event/ProgressListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;ILcom/aliyun/oss/model/DownloadFileRequest;Lcom/aliyun/oss/internal/OSSObjectOperation;Lcom/aliyun/oss/event/ProgressListener;)V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    iput p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->id:I

    .line 466
    iput-object p2, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->name:Ljava/lang/String;

    .line 467
    iput-object p3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadCheckPoint:Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;

    .line 468
    iput p4, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->partIndex:I

    .line 469
    iput-object p5, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    .line 470
    iput-object p6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    .line 471
    iput-object p7, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->progressListener:Lcom/aliyun/oss/event/ProgressListener;

    return-void
.end method


# virtual methods
.method public GetobjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    return-object v0
.end method

.method public call()Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 481
    :try_start_0
    iget-object v3, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadCheckPoint:Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;

    iget-object v3, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    iget v4, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->partIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    .line 482
    new-instance v10, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;

    iget v4, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->partIndex:I

    add-int/lit8 v5, v4, 0x1

    iget-wide v6, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->start:J

    iget-wide v8, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->end:J

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;-><init>(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 484
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v5}, Lcom/aliyun/oss/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    :try_start_2
    iget-wide v5, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->start:J

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 487
    new-instance v5, Lcom/aliyun/oss/model/GetObjectRequest;

    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v6}, Lcom/aliyun/oss/model/DownloadFileRequest;->getBucketName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v7}, Lcom/aliyun/oss/model/DownloadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/aliyun/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v6}, Lcom/aliyun/oss/model/DownloadFileRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aliyun/oss/model/GetObjectRequest;->setMatchingETagConstraints(Ljava/util/List;)V

    .line 490
    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v6}, Lcom/aliyun/oss/model/DownloadFileRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aliyun/oss/model/GetObjectRequest;->setNonmatchingETagConstraints(Ljava/util/List;)V

    .line 491
    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v6}, Lcom/aliyun/oss/model/DownloadFileRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aliyun/oss/model/GetObjectRequest;->setModifiedSinceConstraint(Ljava/util/Date;)V

    .line 492
    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v6}, Lcom/aliyun/oss/model/DownloadFileRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aliyun/oss/model/GetObjectRequest;->setUnmodifiedSinceConstraint(Ljava/util/Date;)V

    .line 493
    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v6}, Lcom/aliyun/oss/model/DownloadFileRequest;->getResponseHeaders()Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aliyun/oss/model/GetObjectRequest;->setResponseHeaders(Lcom/aliyun/oss/model/ResponseHeaderOverrides;)V

    .line 494
    iget-wide v6, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->start:J

    iget-wide v8, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->end:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/aliyun/oss/model/GetObjectRequest;->setRange(JJ)V

    .line 496
    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v6, v5}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;

    move-result-object v5

    .line 497
    invoke-virtual {v5}, Lcom/aliyun/oss/model/OSSObject;->getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v6

    iput-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->objectMetadata:Lcom/aliyun/oss/model/ObjectMetadata;

    .line 498
    invoke-virtual {v5}, Lcom/aliyun/oss/model/OSSObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object v1

    const/16 v5, 0x2000

    .line 500
    new-array v5, v5, [B

    .line 502
    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 503
    invoke-virtual {v4, v5, v0, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadCheckPoint:Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;

    iget v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->partIndex:I

    invoke-virtual {v5, v6, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->update(IZ)V

    .line 507
    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v5}, Lcom/aliyun/oss/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 508
    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadCheckPoint:Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;

    iget-object v6, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->downloadFileRequest:Lcom/aliyun/oss/model/DownloadFileRequest;

    invoke-virtual {v6}, Lcom/aliyun/oss/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->dump(Ljava/lang/String;)V

    .line 510
    :cond_1
    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->progressListener:Lcom/aliyun/oss/event/ProgressListener;

    iget-wide v6, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->end:J

    iget-wide v8, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->start:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/aliyun/oss/event/ProgressPublisher;->publishResponseBytesTransferred(Lcom/aliyun/oss/event/ProgressListener;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v1, :cond_3

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v4, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v1

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v4, v1

    move-object v10, v4

    .line 513
    :goto_1
    :try_start_3
    invoke-virtual {v10, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->setFailed(Z)V

    .line 514
    invoke-virtual {v10, v3}, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->setException(Ljava/lang/Exception;)V

    const-string v5, "Task %d:%s upload part %d failed: "

    const/4 v6, 0x3

    .line 515
    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->name:Ljava/lang/String;

    aput-object v0, v6, v2

    const/4 v0, 0x2

    iget v2, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->partIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    if-eqz v4, :cond_3

    .line 522
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_2
    return-object v10

    :catchall_2
    move-exception v0

    move-object v11, v4

    move-object v4, v1

    move-object v1, v11

    :goto_3
    if-eqz v4, :cond_4

    .line 518
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 522
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->call()Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;

    move-result-object v0

    return-object v0
.end method
