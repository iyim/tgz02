.class public abstract Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;
.super Ljava/lang/Object;
.source "BaseMultipartUploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
        "Result:",
        "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field protected final CPU_SIZE:I

.field protected final KEEP_ALIVE_TIME:I

.field protected final MAX_CORE_POOL_SIZE:I

.field protected final MAX_IMUM_POOL_SIZE:I

.field protected final MAX_QUEUE_SIZE:I

.field protected mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

.field protected mCheckCRC64:Z

.field protected mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TRequest;TResult;>;"
        }
    .end annotation
.end field

.field protected mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field protected mFileLength:J

.field protected mIsCancel:Z

.field protected mLock:Ljava/lang/Object;

.field protected mPartAttr:[I

.field protected mPartETags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field protected mPartExceptionCount:I

.field protected mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
            "TRequest;>;"
        }
    .end annotation
.end field

.field protected mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequest;"
        }
    .end annotation
.end field

.field protected mRunPartTaskCount:I

.field protected mUploadException:Ljava/lang/Exception;

.field protected mUploadFile:Ljava/io/File;

.field protected mUploadFilePath:Ljava/lang/String;

.field protected mUploadId:Ljava/lang/String;

.field protected mUploadedLength:J


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;",
            "TRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "TRequest;TResult;>;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->CPU_SIZE:I

    .line 41
    iget v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->CPU_SIZE:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_CORE_POOL_SIZE:I

    .line 42
    iget v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->CPU_SIZE:I

    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_IMUM_POOL_SIZE:I

    const/16 v0, 0xbb8

    .line 43
    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->KEEP_ALIVE_TIME:I

    const/16 v0, 0x1388

    .line 44
    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_QUEUE_SIZE:I

    .line 45
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_CORE_POOL_SIZE:I

    iget v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->MAX_IMUM_POOL_SIZE:I

    const-wide/16 v5, 0xbb8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v8, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v9, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$1;

    invoke-direct {v9, p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$1;-><init>(Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;)V

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v10, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 64
    iput-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCheckCRC64:Z

    .line 69
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartAttr:[I

    .line 75
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 76
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    .line 77
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    .line 78
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    .line 79
    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    .line 80
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object p1

    sget-object p2, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCheckCRC64:Z

    return-void
.end method


# virtual methods
.method protected abstract abortThisUpload()V
.end method

.method public call()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkInitData()V

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->initMultipartUploadId()V

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-interface {v2, v3, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    .line 146
    instance-of v2, v1, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v2, :cond_1

    .line 147
    nop

    nop

    goto :goto_0

    .line 149
    :cond_1
    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 151
    :goto_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_2

    .line 152
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-interface {v2, v3, v1, v0}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    .line 154
    :cond_2
    throw v1

    :catch_1
    move-exception v1

    .line 140
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCompletedCallback:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_3

    .line 141
    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-interface {v2, v3, v0, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    .line 143
    :cond_3
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->call()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    return-object v0
.end method

.method protected checkCancel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/TaskCancelException;

    const-string v1, "multipart cancel"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/TaskCancelException;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/TaskCancelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    throw v1
.end method

.method protected checkException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->releasePool()V

    .line 288
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 290
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/ServiceException;

    if-nez v1, :cond_1

    .line 292
    instance-of v1, v0, Lcom/alibaba/sdk/android/oss/ClientException;

    if-eqz v1, :cond_0

    .line 293
    nop

    nop

    throw v0

    .line 295
    :cond_0
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientException;

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadException:Ljava/lang/Exception;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    throw v1

    .line 291
    :cond_1
    nop

    nop

    throw v0

    .line 289
    :cond_2
    nop

    nop

    throw v0

    :cond_3
    return-void
.end method

.method protected checkInitData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFilePath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 160
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    .line 161
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFile:Ljava/io/File;

    .line 162
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    .line 163
    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartAttr:[I

    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->checkPartSize([I)V

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    const-string v1, "file length must not be 0"

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkPartSize([I)V
    .locals 8

    .line 323
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getPartSize()J

    move-result-wide v0

    .line 324
    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    div-long v4, v2, v0

    long-to-int v5, v4

    .line 325
    rem-long/2addr v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    const/16 v2, 0x1388

    const/4 v3, 0x1

    if-ne v5, v3, :cond_1

    .line 330
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    goto :goto_0

    :cond_1
    if-le v5, v2, :cond_2

    .line 332
    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    int-to-long v4, v2

    div-long/2addr v0, v4

    const/16 v5, 0x1388

    :cond_2
    :goto_0
    const/4 v2, 0x0

    long-to-int v1, v0

    .line 335
    aput v1, p1, v2

    .line 336
    aput v5, p1, v3

    .line 337
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->setPartSize(J)V

    return-void
.end method

.method protected checkWaitCondition(I)Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected completeMultipartUploadResult()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    new-instance v1, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$2;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask$2;-><init>(Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    .line 263
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 264
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    .line 265
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackParam(Ljava/util/Map;)V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackVars(Ljava/util/Map;)V

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 272
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    .line 274
    iput-wide v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    return-object v0
.end method

.method protected abstract doMultipartUpload()Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method protected abstract initMultipartUploadId()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation
.end method

.method protected notifyMultipartThread()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartExceptionCount:I

    return-void
.end method

.method protected onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;JJ)V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mProgressCallback:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 349
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_0
    return-void
.end method

.method protected preUploadPart(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected abstract processException(Ljava/lang/Exception;)V
.end method

.method protected releasePool()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 281
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :cond_0
    return-void
.end method

.method protected uploadPart(III)V
    .locals 9

    const/4 v0, 0x0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 180
    :try_start_1
    iget v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRunPartTaskCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRunPartTaskCount:I

    .line 181
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 183
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->preUploadPart(III)V

    .line 185
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadFile:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 186
    :try_start_3
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    .line 187
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadId:Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    int-to-long v4, p1

    .line 188
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getPartSize()J

    move-result-wide v6

    mul-long v4, v4, v6

    .line 189
    new-array p1, p2, [B

    .line 190
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    .line 191
    invoke-virtual {v1, p1, v2, p2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 192
    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    .line 193
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setMd5Digest(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 195
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mApiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->syncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object p1

    .line 197
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    :try_start_4
    new-instance v4, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    int-to-long v5, p2

    .line 199
    invoke-virtual {v4, v5, v6}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setPartSize(J)V

    .line 200
    iget-boolean p2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mCheckCRC64:Z

    if-eqz p2, :cond_1

    .line 201
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getClientCRC()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v4, p1, p2}, Lcom/alibaba/sdk/android/oss/model/PartETag;->setCRC64(J)V

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-wide p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    add-long/2addr p1, v5

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    .line 207
    invoke-virtual {p0, v4}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V

    .line 209
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mContext:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 210
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRunPartTaskCount:I

    iget p3, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartExceptionCount:I

    sub-int/2addr p2, p3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 211
    :cond_2
    new-instance p1, Lcom/alibaba/sdk/android/oss/TaskCancelException;

    const-string p2, "multipart cancel"

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/oss/TaskCancelException;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance p2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/TaskCancelException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p2, p3, p1, v0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)V

    throw p2

    .line 216
    :cond_3
    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartETags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget p2, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mPartExceptionCount:I

    sub-int/2addr p3, p2

    if-ne p1, p3, :cond_4

    .line 217
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->notifyMultipartThread()V

    .line 219
    :cond_4
    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mRequest:Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;

    iget-wide v5, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mUploadedLength:J

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->mFileLength:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->onProgressCallback(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;JJ)V

    .line 222
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 222
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 181
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 225
    :goto_1
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/BaseMultipartUploadTask;->processException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v0, :cond_5

    .line 229
    :try_start_b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 231
    invoke-static {p1}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_6

    .line 229
    :try_start_c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 231
    invoke-static {p2}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logThrowable2Local(Ljava/lang/Throwable;)V

    .line 232
    :cond_6
    :goto_4
    throw p1
.end method

.method protected uploadPartFinish(Lcom/alibaba/sdk/android/oss/model/PartETag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
