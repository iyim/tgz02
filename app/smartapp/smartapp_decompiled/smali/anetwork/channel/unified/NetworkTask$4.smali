.class Lanetwork/channel/unified/NetworkTask$4;
.super Ljava/lang/Object;
.source "NetworkTask.java"

# interfaces
.implements Lanet/channel/RequestCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanetwork/channel/unified/NetworkTask;->sendRequest(Lanet/channel/Session;Lanet/channel/request/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/unified/NetworkTask;

.field final synthetic val$request:Lanet/channel/request/Request;

.field final synthetic val$rs:Lanet/channel/statist/RequestStatistic;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/NetworkTask;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iput-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->val$request:Lanet/channel/request/Request;

    iput-object p3, p0, Lanetwork/channel/unified/NetworkTask$4;->val$rs:Lanet/channel/statist/RequestStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 9

    .line 453
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->dataChunkIndex:I

    const-string v1, "anet.NetworkTask"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "[onDataReceive] receive first data chunk!"

    invoke-static {v1, v4, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 462
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "[onDataReceive] receive last data chunk!"

    invoke-static {v1, v4, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    :cond_2
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v3, v0, Lanetwork/channel/unified/NetworkTask;->dataChunkIndex:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lanetwork/channel/unified/NetworkTask;->dataChunkIndex:I

    .line 468
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    if-eqz v0, :cond_5

    .line 469
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->bodyBufferList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->val$rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v5, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    const-wide/32 v7, 0x20000

    cmp-long v0, v5, v7

    if-gtz v0, :cond_3

    if-eqz p2, :cond_6

    .line 471
    :cond_3
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    iget-object v5, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v5, v5, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v5, v5, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    iget-object v6, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v6, v6, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    invoke-virtual {v3, v5, v6}, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->callback(Lanetwork/channel/interceptor/Callback;I)I

    move-result v3

    iput v3, v0, Lanetwork/channel/unified/NetworkTask;->dataChunkIndex:I

    .line 472
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iput-boolean v4, v0, Lanetwork/channel/unified/NetworkTask;->isHeaderCallback:Z

    .line 473
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v3, v3, Lanetwork/channel/unified/NetworkTask;->dataChunkIndex:I

    if-le v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lanetwork/channel/unified/NetworkTask;->isDataChuckCallback:Z

    .line 474
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    const/4 v3, 0x0

    iput-object v3, v0, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    goto :goto_1

    .line 477
    :cond_5
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v3, v3, Lanetwork/channel/unified/NetworkTask;->dataChunkIndex:I

    iget-object v5, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v5, v5, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    invoke-interface {v0, v3, v5, p1}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 478
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iput-boolean v4, v0, Lanetwork/channel/unified/NetworkTask;->isDataChuckCallback:Z

    .line 481
    :cond_6
    :goto_1
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_7

    .line 482
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v3

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result p1

    invoke-virtual {v0, v3, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p2, :cond_7

    .line 484
    iget-object p1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p1, p1, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p1, p1, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {p1}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object p1

    .line 485
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p2, Lanetwork/channel/cache/Cache$Entry;->data:[B

    .line 486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 487
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->cache:Lanetwork/channel/cache/Cache;

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    invoke-interface {p2, p1, v0}, Lanetwork/channel/cache/Cache;->put(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V

    const-string/jumbo p2, "write cache"

    .line 488
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "cost"

    aput-object v7, v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "size"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v5, v5, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v5, v5, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p1, v3, v4

    invoke-static {v1, p2, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 493
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p2, p2, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "[onDataReceive] error."

    invoke-static {v1, v2, p2, p1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    .line 499
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x2

    .line 503
    invoke-static {v3}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x4

    const-string v8, "anet.NetworkTask"

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    .line 504
    iget-object v5, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v5, v5, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v5, v5, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v10, v7, [Ljava/lang/Object;

    const-string v11, "code"

    aput-object v11, v10, v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    const-string v11, "msg"

    aput-object v11, v10, v3

    aput-object p2, v10, v6

    const-string v11, "[onFinish]"

    invoke-static {v8, v11, v5, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v5, 0x0

    if-gez v1, :cond_8

    .line 508
    :try_start_0
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v10, v10, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v10, v10, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v10}, Lanetwork/channel/entity/RequestConfig;->isAllowRetry()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 509
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-boolean v10, v10, Lanetwork/channel/unified/NetworkTask;->isHeaderCallback:Z

    if-nez v10, :cond_5

    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-boolean v10, v10, Lanetwork/channel/unified/NetworkTask;->isDataChuckCallback:Z

    if-nez v10, :cond_5

    const-string v3, "clear response buffer and retry"

    .line 510
    iget-object v4, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v4, v4, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v4, v4, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v8, v3, v4, v10}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    if-eqz v3, :cond_3

    .line 514
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->bodyBufferList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    :goto_0
    iput v6, v2, Lanet/channel/statist/RequestStatistic;->roaming:I

    .line 515
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    invoke-virtual {v3}, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->release()V

    .line 516
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iput-object v5, v3, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    .line 519
    :cond_3
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->retryRequest()V

    .line 520
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, v3, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 521
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    new-instance v4, Lanetwork/channel/unified/NetworkTask;

    iget-object v5, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v5, v5, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v6, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v6, v6, Lanetwork/channel/unified/NetworkTask;->cache:Lanetwork/channel/cache/Cache;

    iget-object v7, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v7, v7, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    invoke-direct {v4, v5, v6, v7}, Lanetwork/channel/unified/NetworkTask;-><init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v4, v3, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    .line 524
    iget v3, v2, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    if-eqz v3, :cond_4

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    iput v9, v2, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    goto :goto_1

    .line 528
    :cond_4
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    :goto_1
    invoke-virtual {v2, v1}, Lanet/channel/statist/RequestStatistic;->appendErrorTrace(Ljava/lang/String;)V

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 533
    iget-wide v5, v2, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    iget-wide v7, v2, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v7, v3, v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    .line 534
    iput-wide v3, v2, Lanet/channel/statist/RequestStatistic;->start:J

    .line 535
    iget-object v1, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    sget v2, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {v1, v2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void

    .line 538
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":\u56de\u8c03\u540e\u89e6\u53d1\u91cd\u8bd5"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 540
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-boolean v10, v10, Lanetwork/channel/unified/NetworkTask;->isDataChuckCallback:Z

    if-eqz v10, :cond_6

    .line 541
    iput v3, v2, Lanet/channel/statist/RequestStatistic;->roaming:I

    goto :goto_2

    .line 542
    :cond_6
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-boolean v10, v10, Lanetwork/channel/unified/NetworkTask;->isHeaderCallback:Z

    if-eqz v10, :cond_7

    .line 543
    iput v4, v2, Lanet/channel/statist/RequestStatistic;->roaming:I

    :cond_7
    :goto_2
    const-string v10, "Cannot retry request after onHeader/onDataReceived callback!"

    .line 545
    iget-object v11, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v11, v11, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v11, v11, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :cond_8
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v10, v10, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    if-eqz v10, :cond_9

    .line 551
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v10, v10, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    iget-object v11, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v11, v11, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v11, v11, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    iget-object v12, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v12, v12, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    invoke-virtual {v10, v11, v12}, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;->callback(Lanetwork/channel/interceptor/Callback;I)I

    .line 554
    :cond_9
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v10, v10, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v10}, Lanetwork/channel/unified/RequestContext;->cancelTimeoutTask()V

    .line 555
    iget-object v10, v2, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v10, "wv_h5"

    .line 558
    iget-object v11, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v11, v11, Lanetwork/channel/unified/NetworkTask;->f_refer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v11, "recDataLength"

    const-string v12, "content-length"

    if-eqz v10, :cond_a

    .line 559
    :try_start_1
    iget-object v10, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v10, v10, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v10, v10, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const-string/jumbo v14, "url"

    aput-object v14, v13, v9

    iget-object v14, v0, Lanetwork/channel/unified/NetworkTask$4;->val$request:Lanet/channel/request/Request;

    invoke-virtual {v14}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v14

    invoke-virtual {v14}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v4

    aput-object v12, v13, v3

    iget-object v14, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v14, v14, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v6

    aput-object v11, v13, v7

    const/4 v14, 0x5

    iget-wide v3, v2, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v13, v14

    invoke-static {v8, v5, v10, v13}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    :cond_a
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->shouldCheckContentLength()Z

    move-result v3

    const/16 v4, -0xce

    if-eqz v3, :cond_b

    .line 564
    iget-wide v13, v2, Lanet/channel/statist/RequestStatistic;->contentLength:J

    const-wide/16 v15, 0x0

    cmp-long v3, v13, v15

    if-eqz v3, :cond_b

    iget-wide v13, v2, Lanet/channel/statist/RequestStatistic;->contentLength:J

    iget-wide v6, v2, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    cmp-long v10, v13, v6

    if-eqz v10, :cond_b

    .line 565
    iput v9, v2, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 566
    iput v4, v2, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 567
    invoke-static {v4}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    const-string/jumbo v6, "received data length not match with content-length"

    .line 568
    iget-object v7, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v7, v7, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v7, v7, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v12, v5, v9

    iget-object v9, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v9, v9, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v5, v10

    const/4 v9, 0x2

    aput-object v11, v5, v9

    iget-wide v9, v2, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v3, 0x3

    aput-object v9, v5, v3

    invoke-static {v8, v6, v7, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    new-instance v3, Lanet/channel/statist/ExceptionStatistic;

    const-string/jumbo v5, "rt"

    invoke-direct {v3, v4, v1, v5}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v5, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v5, v5, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v5, v5, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v5}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lanet/channel/statist/ExceptionStatistic;->url:Ljava/lang/String;

    .line 571
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v5

    invoke-interface {v5, v3}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    move-object v3, v1

    const/16 v1, -0xce

    goto :goto_3

    :cond_b
    move-object/from16 v3, p2

    :goto_3
    const/16 v4, 0x130

    if-ne v1, v4, :cond_c

    .line 576
    iget-object v4, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v4, v4, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v4, :cond_c

    const-string v4, "cache"

    .line 577
    iput-object v4, v2, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 578
    new-instance v4, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/16 v5, 0xc8

    invoke-direct {v4, v5, v3, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_4

    .line 580
    :cond_c
    new-instance v4, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v4, v1, v3, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 583
    :goto_4
    iget-object v3, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v3, v4}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    if-ltz v1, :cond_d

    .line 586
    invoke-static {}, Lanet/channel/monitor/BandWidthSampler;->getInstance()Lanet/channel/monitor/BandWidthSampler;

    move-result-object v5

    iget-wide v6, v2, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-wide v8, v2, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    iget-wide v3, v2, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    iget-wide v10, v2, Lanet/channel/statist/RequestStatistic;->rspHeadDeflateSize:J

    add-long/2addr v10, v3

    invoke-virtual/range {v5 .. v11}, Lanet/channel/monitor/BandWidthSampler;->onDataReceived(JJJ)V

    goto :goto_5

    .line 588
    :cond_d
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    .line 590
    :goto_5
    invoke-static {}, Lanet/channel/flow/NetworkAnalysis;->getInstance()Lanet/channel/flow/INetworkAnalysis;

    move-result-object v1

    new-instance v3, Lanet/channel/flow/FlowStat;

    iget-object v4, v0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v4, v4, Lanetwork/channel/unified/NetworkTask;->f_refer:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lanet/channel/flow/FlowStat;-><init>(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    invoke-interface {v1, v3}, Lanet/channel/flow/INetworkAnalysis;->commitFlow(Lanet/channel/flow/FlowStat;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "no-store"

    const-string v1, "Cache-Control"

    .line 373
    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 377
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v3

    const-string v4, "anet.NetworkTask"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 378
    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->val$request:Lanet/channel/request/Request;

    invoke-virtual {v3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "code"

    aput-object v8, v7, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "onResponseCode"

    invoke-static {v4, v8, v3, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->val$request:Lanet/channel/request/Request;

    invoke-virtual {v3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    const-string v9, "headers"

    aput-object v9, v7, v5

    aput-object p2, v7, v6

    invoke-static {v4, v8, v3, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    :cond_1
    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->val$request:Lanet/channel/request/Request;

    invoke-static {v3, p1}, Lanet/channel/util/HttpHelper;->checkRedirect(Lanet/channel/request/Request;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Location"

    .line 384
    invoke-static {p2, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 386
    invoke-static {v3}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 388
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 389
    invoke-virtual {v7}, Lanet/channel/util/HttpUrl;->lockScheme()V

    .line 390
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p2, p2, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {p2, v7}, Lanetwork/channel/entity/RequestConfig;->redirectToUrl(Lanet/channel/util/HttpUrl;)V

    .line 391
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p2, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 392
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    new-instance v0, Lanetwork/channel/unified/NetworkTask;

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lanetwork/channel/unified/NetworkTask;-><init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v0, p2, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    .line 394
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->val$rs:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v7}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lanet/channel/statist/RequestStatistic;->recordRedirect(ILjava/lang/String;)V

    .line 395
    iget-object p1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p1, p1, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p1, p1, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    sget p2, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {p1, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    :cond_2
    return-void

    .line 399
    :cond_3
    iget-object v7, p0, Lanetwork/channel/unified/NetworkTask$4;->val$request:Lanet/channel/request/Request;

    invoke-virtual {v7}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    const-string/jumbo v9, "redirect url"

    aput-object v9, v8, v5

    aput-object v3, v8, v6

    const-string/jumbo v3, "redirect url is invalid!"

    invoke-static {v4, v3, v7, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_4
    :try_start_0
    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v3}, Lanetwork/channel/unified/RequestContext;->cancelTimeoutTask()V

    .line 406
    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lanetwork/channel/cookie/CookieManager;->setCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 407
    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    invoke-static {p2}, Lanet/channel/util/HttpHelper;->parseContentLength(Ljava/util/Map;)I

    move-result v7

    iput v7, v3, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    .line 408
    iget-object v3, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v3, v3, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v3

    .line 410
    iget-object v7, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v7, v7, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v7, :cond_6

    const/16 v7, 0x130

    if-ne p1, v7, :cond_6

    .line 411
    iget-object p1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p1, p1, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object p1, p1, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 412
    invoke-static {p2}, Lanetwork/channel/cache/CacheHelper;->parseCacheHeaders(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 413
    iget-wide v0, p1, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v7, p2, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    cmp-long p2, v0, v7

    if-lez p2, :cond_5

    .line 414
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v0, p1, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    iput-wide v0, p2, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    .line 416
    :cond_5
    iget-object p1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p1, p1, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p1, p1, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    const/16 p2, 0xc8

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, v0, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 417
    iget-object p1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p1, p1, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p1, p1, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object p2, p2, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length p2, p2

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, v0, Lanetwork/channel/cache/Cache$Entry;->data:[B

    invoke-static {v0}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    invoke-interface {p1, v6, p2, v0}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 421
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->cache:Lanetwork/channel/cache/Cache;

    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    invoke-interface {v0, v3, v1}, Lanetwork/channel/cache/Cache;->put(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V

    const-string/jumbo v0, "update cache"

    .line 422
    iget-object v1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v1, v1, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "cost"

    aput-object v8, v7, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    const-string p1, "key"

    aput-object p1, v7, v2

    const/4 p1, 0x3

    aput-object v3, v7, p1

    invoke-static {v4, v0, v1, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 427
    :cond_6
    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v2, Lanetwork/channel/unified/NetworkTask;->cache:Lanetwork/channel/cache/Cache;

    if-eqz v2, :cond_9

    .line 428
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 429
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->cache:Lanetwork/channel/cache/Cache;

    invoke-interface {v0, v3}, Lanetwork/channel/cache/Cache;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_7
    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    invoke-static {p2}, Lanetwork/channel/cache/CacheHelper;->parseCacheHeaders(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object v3

    iput-object v3, v2, Lanetwork/channel/unified/NetworkTask;->entry:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v3, :cond_9

    .line 431
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->removeHeaderFiledByKey(Ljava/util/Map;Ljava/lang/String;)V

    .line 432
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v2, v2, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v2, v2, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    goto :goto_0

    :cond_8
    const/16 v2, 0x1400

    :goto_0
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, v0, Lanetwork/channel/unified/NetworkTask;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    :cond_9
    :goto_1
    const-string/jumbo v0, "x-protocol"

    .line 437
    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lanetwork/channel/unified/NetworkTask$4;->val$rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isResponseBufferEnable()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget v0, v0, Lanetwork/channel/unified/NetworkTask;->contentLength:I

    const/high16 v1, 0x20000

    if-gt v0, v1, :cond_a

    .line 440
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    new-instance v1, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    invoke-direct {v1, p1, p2}, Lanetwork/channel/unified/NetworkTask$ResponseBuffer;-><init>(ILjava/util/Map;)V

    iput-object v1, v0, Lanetwork/channel/unified/NetworkTask;->responseBuffer:Lanetwork/channel/unified/NetworkTask$ResponseBuffer;

    return-void

    .line 443
    :cond_a
    iget-object v0, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object v0, v0, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 444
    iget-object p1, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iput-boolean v6, p1, Lanetwork/channel/unified/NetworkTask;->isHeaderCallback:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 447
    iget-object p2, p0, Lanetwork/channel/unified/NetworkTask$4;->this$0:Lanetwork/channel/unified/NetworkTask;

    iget-object p2, p2, Lanetwork/channel/unified/NetworkTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object p2, p2, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "[onResponseCode] error."

    invoke-static {v4, v1, p2, p1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
