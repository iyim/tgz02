.class public Lcom/aliyun/oss/internal/OSSDownloadOperation;
.super Ljava/lang/Object;
.source "OSSDownloadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;,
        Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;,
        Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;,
        Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;,
        Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;,
        Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;
    }
.end annotation


# instance fields
.field private objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/internal/OSSObjectOperation;)V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 622
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 623
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x1000

    .line 624
    :try_start_2
    new-array p1, p1, [B

    .line 626
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 627
    invoke-virtual {p0, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 631
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v0

    .line 630
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 631
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static createFixedFile(Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 388
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    throw p1
.end method

.method private download(Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    .line 399
    new-instance v11, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;

    invoke-direct {v11}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;-><init>()V

    .line 400
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-virtual/range {p2 .. p2}, Lcom/aliyun/oss/model/DownloadFileRequest;->getTaskNum()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    .line 402
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 403
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/aliyun/oss/model/DownloadFileRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v9

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    .line 408
    :goto_0
    iget-object v5, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 409
    iget-object v5, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    iget-boolean v5, v5, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->isCompleted:Z

    if-nez v5, :cond_0

    .line 410
    iget-object v5, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    iget-wide v5, v5, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->end:J

    iget-object v7, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    move-object/from16 v16, v9

    iget-wide v8, v7, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->start:J

    sub-long/2addr v5, v8

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    add-long/2addr v3, v5

    goto :goto_1

    :cond_0
    move-object/from16 v16, v9

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v16

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {v9, v3, v4}, Lcom/aliyun/oss/event/ProgressPublisher;->publishResponseContentLength(Lcom/aliyun/oss/event/ProgressListener;J)V

    const/4 v2, 0x0

    .line 415
    invoke-virtual {v10, v2}, Lcom/aliyun/oss/model/DownloadFileRequest;->setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V

    const/4 v8, 0x0

    .line 418
    :goto_2
    iget-object v2, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_3

    .line 419
    iget-object v2, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    iget-boolean v2, v2, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->isCompleted:Z

    if-nez v2, :cond_2

    .line 420
    new-instance v7, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/aliyun/oss/internal/OSSDownloadOperation;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    move-object v2, v7

    move v3, v8

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    move v6, v8

    move-object/from16 v17, v11

    move-object v11, v7

    move-object/from16 v7, p2

    move v1, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    invoke-direct/range {v2 .. v9}, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;-><init>(ILjava/lang/String;Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;ILcom/aliyun/oss/model/DownloadFileRequest;Lcom/aliyun/oss/internal/OSSObjectOperation;Lcom/aliyun/oss/event/ProgressListener;)V

    .line 421
    invoke-interface {v13, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move v1, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    .line 424
    new-instance v2, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;

    add-int/lit8 v4, v1, 0x1

    iget-object v3, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    iget-wide v5, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->start:J

    iget-object v3, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    iget-wide v7, v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->end:J

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;-><init>(IJJ)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v1, p0

    move-object/from16 v9, v16

    move-object/from16 v11, v17

    goto :goto_2

    :cond_3
    move-object/from16 v16, v9

    move-object/from16 v17, v11

    .line 428
    invoke-interface {v13}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide v0, 0x7fffffffffffffffL

    .line 431
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 432
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 434
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;

    .line 435
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v1, v16

    .line 437
    invoke-virtual {v10, v1}, Lcom/aliyun/oss/model/DownloadFileRequest;->setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V

    .line 438
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_4
    move-object/from16 v1, v16

    .line 443
    new-instance v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$1;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation$1;-><init>(Lcom/aliyun/oss/internal/OSSDownloadOperation;)V

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, v17

    .line 451
    invoke-virtual {v0, v12}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->setPartResults(Ljava/util/List;)V

    .line 452
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    .line 453
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;

    invoke-virtual {v3}, Lcom/aliyun/oss/internal/OSSDownloadOperation$Task;->GetobjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V

    .line 455
    :cond_5
    invoke-virtual {v10, v1}, Lcom/aliyun/oss/model/DownloadFileRequest;->setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V

    return-object v0
.end method

.method private downloadFileWithCheckpoint(Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/model/DownloadFileResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/aliyun/oss/model/DownloadFileResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/DownloadFileResult;-><init>()V

    .line 320
    new-instance v1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;

    invoke-direct {v1}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;-><init>()V

    .line 323
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->remove(Ljava/lang/String;)Z

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->isValid(Lcom/aliyun/oss/internal/OSSObjectOperation;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    invoke-direct {p0, v1, p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->prepare(Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;Lcom/aliyun/oss/model/DownloadFileRequest;)V

    .line 335
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->remove(Ljava/lang/String;)Z

    goto :goto_1

    .line 339
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->prepare(Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;Lcom/aliyun/oss/model/DownloadFileRequest;)V

    .line 343
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v2

    .line 344
    sget-object v3, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v2, v3}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 347
    invoke-direct {p0, v1, p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->download(Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->getPartResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;

    .line 349
    invoke-virtual {v4}, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->isFailed()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 350
    :cond_2
    sget-object p1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v2, p1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 351
    invoke-virtual {v4}, Lcom/aliyun/oss/internal/OSSDownloadOperation$PartResult;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1

    .line 356
    :cond_3
    sget-object v3, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v2, v3}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 359
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->renameTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 363
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->remove(Ljava/lang/String;)Z

    .line 366
    :cond_4
    invoke-virtual {v1}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadResult;->getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/DownloadFileResult;->setObjectMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V

    return-object v0
.end method

.method private getPartEnd(JJJ)J
    .locals 1

    add-long/2addr p1, p5

    const-wide/16 p5, 0x1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    sub-long/2addr p3, p5

    return-wide p3

    :cond_0
    sub-long/2addr p1, p5

    return-wide p1
.end method

.method private static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    .line 594
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "Source \'"

    if-eqz v0, :cond_6

    .line 597
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v2, "\' is a directory"

    if-nez v0, :cond_5

    .line 600
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 603
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "\'"

    const-string v2, "Failed to delete original file \'"

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 605
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 609
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 611
    invoke-static {p0, p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 612
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 613
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' after copy to \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 601
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destination \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 598
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 595
    :cond_6
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 592
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Destination must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 589
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Source must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private prepare(Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;Lcom/aliyun/oss/model/DownloadFileRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "92611BED-89E2-46B6-89E5-72F273D4B0A3"

    .line 371
    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->magic:Ljava/lang/String;

    .line 372
    invoke-virtual {p2}, Lcom/aliyun/oss/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadFile:Ljava/lang/String;

    .line 373
    invoke-virtual {p2}, Lcom/aliyun/oss/model/DownloadFileRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    .line 374
    invoke-virtual {p2}, Lcom/aliyun/oss/model/DownloadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSDownloadOperation;->objectOperation:Lcom/aliyun/oss/internal/OSSObjectOperation;

    iget-object v1, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->bucketName:Ljava/lang/String;

    iget-object v2, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->getFileStat(Lcom/aliyun/oss/internal/OSSObjectOperation;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    .line 377
    iget-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    iget-wide v0, v0, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->size:J

    invoke-virtual {p2}, Lcom/aliyun/oss/model/DownloadFileRequest;->getPartSize()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->splitFile(JJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->downloadParts:Ljava/util/ArrayList;

    .line 380
    invoke-virtual {p2}, Lcom/aliyun/oss/model/DownloadFileRequest;->getTempDownloadFile()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadCheckPoint;->objectStat:Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;

    iget-wide v0, p1, Lcom/aliyun/oss/internal/OSSDownloadOperation$ObjectStat;->size:J

    invoke-static {p2, v0, v1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->createFixedFile(Ljava/lang/String;J)V

    return-void
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 1

    .line 572
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static renameTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-static {v0, p0}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->moveFile(Ljava/io/File;Ljava/io/File;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private splitFile(JJ)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 546
    div-long v0, p1, p3

    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v0, 0x270f

    .line 548
    div-long v0, p1, v0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p3

    :goto_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v10, v0

    const/4 v12, 0x0

    :goto_1
    cmp-long v0, v10, p1

    if-gez v0, :cond_1

    .line 553
    new-instance v13, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;

    invoke-direct {v13}, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;-><init>()V

    .line 554
    iput v12, v13, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->index:I

    .line 555
    iput-wide v10, v13, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->start:J

    move-object v0, p0

    move-wide v1, v10

    move-wide v3, p1

    move-wide v5, v8

    .line 556
    invoke-direct/range {v0 .. v6}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->getPartEnd(JJJ)J

    move-result-wide v0

    iput-wide v0, v13, Lcom/aliyun/oss/internal/OSSDownloadOperation$DownloadPart;->end:J

    .line 557
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr v10, v8

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    return-object v7
.end method


# virtual methods
.method public downloadFile(Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/model/DownloadFileResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "downloadFileRequest"

    .line 293
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketName"

    .line 298
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "key"

    .line 299
    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 301
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/model/DownloadFileRequest;->setDownloadFile(Ljava/lang/String;)V

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->isEnableCheckpoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getCheckpointFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/aliyun/oss/model/DownloadFileRequest;->getDownloadFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dcp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/model/DownloadFileRequest;->setCheckpointFile(Ljava/lang/String;)V

    .line 315
    :cond_2
    invoke-direct {p0, p1}, Lcom/aliyun/oss/internal/OSSDownloadOperation;->downloadFileWithCheckpoint(Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/model/DownloadFileResult;

    move-result-object p1

    return-object p1
.end method
