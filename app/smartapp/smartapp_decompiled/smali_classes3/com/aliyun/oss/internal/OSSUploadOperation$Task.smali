.class Lcom/aliyun/oss/internal/OSSUploadOperation$Task;
.super Ljava/lang/Object;
.source "OSSUploadOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/internal/OSSUploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;",
        ">;"
    }
.end annotation


# instance fields
.field private id:I

.field private multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

.field private name:Ljava/lang/String;

.field private partIndex:I

.field private progressListener:Lcom/aliyun/oss/event/ProgressListener;

.field private uploadCheckPoint:Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

.field private uploadFileRequest:Lcom/aliyun/oss/model/UploadFileRequest;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;ILcom/aliyun/oss/model/UploadFileRequest;Lcom/aliyun/oss/internal/OSSMultipartOperation;Lcom/aliyun/oss/event/ProgressListener;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->id:I

    .line 433
    iput-object p2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->name:Ljava/lang/String;

    .line 434
    iput-object p3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadCheckPoint:Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    .line 435
    iput p4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->partIndex:I

    .line 436
    iput-object p5, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadFileRequest:Lcom/aliyun/oss/model/UploadFileRequest;

    .line 437
    iput-object p6, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    .line 438
    iput-object p7, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->progressListener:Lcom/aliyun/oss/event/ProgressListener;

    return-void
.end method


# virtual methods
.method public call()Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 447
    :try_start_0
    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadCheckPoint:Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    iget-object v2, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    iget v3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->partIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    .line 448
    new-instance v9, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;

    iget v3, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->partIndex:I

    add-int/lit8 v4, v3, 0x1

    iget-wide v5, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->offset:J

    iget-wide v7, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;-><init>(IJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadCheckPoint:Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    iget-object v4, v4, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :try_start_2
    iget-wide v4, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->offset:J

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 453
    new-instance v0, Lcom/aliyun/oss/model/UploadPartRequest;

    invoke-direct {v0}, Lcom/aliyun/oss/model/UploadPartRequest;-><init>()V

    .line 454
    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadFileRequest:Lcom/aliyun/oss/model/UploadFileRequest;

    invoke-virtual {v4}, Lcom/aliyun/oss/model/UploadFileRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/model/UploadPartRequest;->setBucketName(Ljava/lang/String;)V

    .line 455
    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadFileRequest:Lcom/aliyun/oss/model/UploadFileRequest;

    invoke-virtual {v4}, Lcom/aliyun/oss/model/UploadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/model/UploadPartRequest;->setKey(Ljava/lang/String;)V

    .line 456
    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadCheckPoint:Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    iget-object v4, v4, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/model/UploadPartRequest;->setUploadId(Ljava/lang/String;)V

    .line 457
    iget v4, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->number:I

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/model/UploadPartRequest;->setPartNumber(I)V

    .line 458
    invoke-virtual {v0, v3}, Lcom/aliyun/oss/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 459
    iget-wide v4, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    invoke-virtual {v0, v4, v5}, Lcom/aliyun/oss/model/UploadPartRequest;->setPartSize(J)V

    .line 461
    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {v4, v0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->uploadPart(Lcom/aliyun/oss/model/UploadPartRequest;)Lcom/aliyun/oss/model/UploadPartResult;

    move-result-object v0

    .line 463
    new-instance v4, Lcom/aliyun/oss/model/PartETag;

    invoke-virtual {v0}, Lcom/aliyun/oss/model/UploadPartResult;->getPartNumber()I

    move-result v5

    invoke-virtual {v0}, Lcom/aliyun/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/aliyun/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadCheckPoint:Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    iget v5, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->partIndex:I

    invoke-virtual {v0, v5, v4, v1}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->update(ILcom/aliyun/oss/model/PartETag;Z)V

    .line 465
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadFileRequest:Lcom/aliyun/oss/model/UploadFileRequest;

    invoke-virtual {v0}, Lcom/aliyun/oss/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadCheckPoint:Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    iget-object v4, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->uploadFileRequest:Lcom/aliyun/oss/model/UploadFileRequest;

    invoke-virtual {v4}, Lcom/aliyun/oss/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->dump(Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->progressListener:Lcom/aliyun/oss/event/ProgressListener;

    iget-wide v4, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    invoke-static {v0, v4, v5}, Lcom/aliyun/oss/event/ProgressPublisher;->publishRequestBytesTransferred(Lcom/aliyun/oss/event/ProgressListener;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 475
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v9, v3

    :goto_1
    move-object v0, v2

    .line 470
    :goto_2
    :try_start_3
    invoke-virtual {v9, v1}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->setFailed(Z)V

    .line 471
    invoke-virtual {v9, v0}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->setException(Ljava/lang/Exception;)V

    const-string v2, "Task %d:%s upload part %d failed: "

    const/4 v4, 0x3

    .line 472
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->name:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    iget v6, p0, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->partIndex:I

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_3
    return-object v9

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v3, :cond_2

    .line 475
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 427
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;->call()Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;

    move-result-object v0

    return-object v0
.end method
