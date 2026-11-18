.class public Lcom/aliyun/oss/internal/OSSUploadOperation;
.super Ljava/lang/Object;
.source "OSSUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/internal/OSSUploadOperation$Task;,
        Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;,
        Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;,
        Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;,
        Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;
    }
.end annotation


# instance fields
.field private multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/internal/OSSMultipartOperation;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    return-void
.end method

.method private complete(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
    .locals 4

    .line 492
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->partETags:Ljava/util/ArrayList;

    new-instance v1, Lcom/aliyun/oss/internal/OSSUploadOperation$2;

    invoke-direct {v1, p0}, Lcom/aliyun/oss/internal/OSSUploadOperation$2;-><init>(Lcom/aliyun/oss/internal/OSSUploadOperation;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 498
    new-instance v0, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;

    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadID:Ljava/lang/String;

    iget-object p1, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->partETags:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 501
    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->setCallback(Lcom/aliyun/oss/model/Callback;)V

    .line 502
    iget-object p1, p0, Lcom/aliyun/oss/internal/OSSUploadOperation;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->completeMultipartUpload(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method private prepare(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)V
    .locals 4

    const-string v0, "FE8BB4EA-B593-4FAC-AD7A-2459A36E2E62"

    .line 350
    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->magic:Ljava/lang/String;

    .line 351
    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    .line 352
    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->key:Ljava/lang/String;

    .line 353
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->getFileStat(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    .line 354
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFileStat:Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;

    iget-wide v0, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$FileStat;->size:J

    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getPartSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/aliyun/oss/internal/OSSUploadOperation;->splitFile(JJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->partETags:Ljava/util/ArrayList;

    .line 358
    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Lcom/aliyun/oss/model/ObjectMetadata;

    invoke-direct {v0}, Lcom/aliyun/oss/model/ObjectMetadata;-><init>()V

    .line 363
    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/oss/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 364
    invoke-static {}, Lcom/aliyun/oss/internal/Mimetypes;->getInstance()Lcom/aliyun/oss/internal/Mimetypes;

    move-result-object v1

    iget-object v2, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadFile:Ljava/lang/String;

    iget-object v3, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 367
    :cond_1
    new-instance v1, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;

    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/ObjectMetadata;)V

    .line 369
    iget-object p2, p0, Lcom/aliyun/oss/internal/OSSUploadOperation;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    invoke-virtual {p2, v1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->initiateMultipartUpload(Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;)Lcom/aliyun/oss/model/InitiateMultipartUploadResult;

    move-result-object p2

    .line 371
    invoke-virtual {p2}, Lcom/aliyun/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadID:Ljava/lang/String;

    return-void
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 1

    .line 537
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 540
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private splitFile(JJ)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;",
            ">;"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    div-long v1, p1, p3

    const-wide/16 v3, 0x2710

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    const-wide/16 v1, 0x270f

    .line 510
    div-long v1, p1, v1

    .line 511
    div-long v3, p1, v1

    goto :goto_0

    :cond_0
    move-wide v3, v1

    move-wide/from16 v1, p3

    :goto_0
    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_1
    const/4 v9, 0x0

    cmp-long v10, v7, v3

    if-gez v10, :cond_1

    .line 515
    new-instance v10, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    invoke-direct {v10}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;-><init>()V

    const-wide/16 v11, 0x1

    add-long/2addr v11, v7

    long-to-int v13, v11

    .line 516
    iput v13, v10, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->number:I

    mul-long v7, v7, v1

    .line 517
    iput-wide v7, v10, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->offset:J

    .line 518
    iput-wide v1, v10, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    .line 519
    iput-boolean v9, v10, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->isCompleted:Z

    .line 520
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v7, v11

    goto :goto_1

    .line 523
    :cond_1
    rem-long v3, p1, v1

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 524
    new-instance v5, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    invoke-direct {v5}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;-><init>()V

    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->number:I

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v6, v6

    mul-long v6, v6, v1

    iput-wide v6, v5, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->offset:J

    .line 527
    iput-wide v3, v5, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    .line 528
    iput-boolean v9, v5, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->isCompleted:Z

    .line 529
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private upload(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;",
            "Lcom/aliyun/oss/model/UploadFileRequest;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 376
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-virtual/range {p2 .. p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getTaskNum()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    .line 378
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-virtual/range {p2 .. p2}, Lcom/aliyun/oss/model/UploadFileRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v14

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    .line 383
    :goto_0
    iget-object v6, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 384
    iget-object v6, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    iget-boolean v6, v6, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->isCompleted:Z

    if-nez v6, :cond_0

    .line 385
    iget-object v6, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    iget-wide v6, v6, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    add-long/2addr v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {v14, v4, v5}, Lcom/aliyun/oss/event/ProgressPublisher;->publishRequestContentLength(Lcom/aliyun/oss/event/ProgressListener;J)V

    const/4 v3, 0x0

    .line 389
    invoke-virtual {v10, v3}, Lcom/aliyun/oss/model/UploadFileRequest;->setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V

    const/4 v15, 0x0

    .line 392
    :goto_1
    iget-object v2, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 393
    iget-object v2, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    iget-boolean v2, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->isCompleted:Z

    if-nez v2, :cond_2

    .line 394
    new-instance v9, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/aliyun/oss/internal/OSSUploadOperation;->multipartOperation:Lcom/aliyun/oss/internal/OSSMultipartOperation;

    move-object v2, v9

    move v3, v15

    move-object/from16 v5, p1

    move v6, v15

    move-object/from16 v7, p2

    move-object v1, v9

    move-object v9, v14

    invoke-direct/range {v2 .. v9}, Lcom/aliyun/oss/internal/OSSUploadOperation$Task;-><init>(ILjava/lang/String;Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;ILcom/aliyun/oss/model/UploadFileRequest;Lcom/aliyun/oss/internal/OSSMultipartOperation;Lcom/aliyun/oss/event/ProgressListener;)V

    invoke-interface {v12, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 397
    :cond_2
    new-instance v1, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;

    add-int/lit8 v3, v15, 0x1

    iget-object v2, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    iget-wide v4, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->offset:J

    iget-object v2, v0, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->uploadParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;

    iget-wide v6, v2, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadPart;->size:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;-><init>(IJJ)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    goto :goto_1

    .line 401
    :cond_3
    invoke-interface {v12}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide v0, 0x7fffffffffffffffL

    .line 404
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 405
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 407
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;

    .line 408
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v10, v14}, Lcom/aliyun/oss/model/UploadFileRequest;->setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V

    .line 411
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 416
    :cond_4
    new-instance v0, Lcom/aliyun/oss/internal/OSSUploadOperation$1;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSUploadOperation$1;-><init>(Lcom/aliyun/oss/internal/OSSUploadOperation;)V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 422
    invoke-virtual {v10, v14}, Lcom/aliyun/oss/model/UploadFileRequest;->setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V

    return-object v11
.end method

.method private uploadFileWithCheckpoint(Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/UploadFileResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 299
    new-instance v0, Lcom/aliyun/oss/model/UploadFileResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/UploadFileResult;-><init>()V

    .line 300
    new-instance v1, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;

    invoke-direct {v1}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;-><init>()V

    .line 303
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aliyun/oss/internal/OSSUploadOperation;->remove(Ljava/lang/String;)Z

    .line 312
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    invoke-direct {p0, v1, p1}, Lcom/aliyun/oss/internal/OSSUploadOperation;->prepare(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)V

    .line 314
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aliyun/oss/internal/OSSUploadOperation;->remove(Ljava/lang/String;)Z

    goto :goto_1

    .line 318
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/aliyun/oss/internal/OSSUploadOperation;->prepare(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)V

    .line 322
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v2

    .line 323
    sget-object v3, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v2, v3}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 326
    invoke-direct {p0, v1, p1}, Lcom/aliyun/oss/internal/OSSUploadOperation;->upload(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)Ljava/util/ArrayList;

    move-result-object v3

    .line 327
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;

    .line 328
    invoke-virtual {v4}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->isFailed()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 329
    :cond_2
    sget-object p1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v2, p1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 330
    invoke-virtual {v4}, Lcom/aliyun/oss/internal/OSSUploadOperation$PartResult;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    .line 335
    :cond_3
    sget-object v3, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v2, v3}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 338
    invoke-direct {p0, v1, p1}, Lcom/aliyun/oss/internal/OSSUploadOperation;->complete(Lcom/aliyun/oss/internal/OSSUploadOperation$UploadCheckPoint;Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/UploadFileResult;->setMultipartUploadResult(Lcom/aliyun/oss/model/CompleteMultipartUploadResult;)V

    .line 342
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 343
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/aliyun/oss/internal/OSSUploadOperation;->remove(Ljava/lang/String;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public uploadFile(Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/UploadFileResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "uploadFileRequest"

    .line 276
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketName"

    .line 281
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "key"

    .line 282
    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 284
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadFile"

    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadFileRequest;->getUploadFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ucp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/model/UploadFileRequest;->setCheckpointFile(Ljava/lang/String;)V

    .line 295
    :cond_1
    invoke-direct {p0, p1}, Lcom/aliyun/oss/internal/OSSUploadOperation;->uploadFileWithCheckpoint(Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/UploadFileResult;

    move-result-object p1

    return-object p1
.end method
