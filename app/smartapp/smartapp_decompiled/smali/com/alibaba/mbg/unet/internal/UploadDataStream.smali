.class final Lcom/alibaba/mbg/unet/internal/UploadDataStream;
.super Ljava/lang/Object;
.source "UploadDataStream.java"

# interfaces
.implements Lcom/alibaba/mbg/unet/internal/UploadDataSink;
.implements Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadDataStream"


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mDataProvider:Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

.field private mDestroyAdapterPostponed:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

.field private mLength:J

.field private final mLock:Ljava/lang/Object;

.field private final mReadTask:Ljava/lang/Runnable;

.field private mRemainingLength:J

.field private mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

.field private mUploadDataStreamAdapter:J

.field private mUploadJni:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/unet/internal/UploadDataProvider;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)V

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mReadTask:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    .line 66
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mDestroyAdapterPostponed:Z

    .line 71
    iput-object p2, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mExecutor:Ljava/util/concurrent/Executor;

    .line 72
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mDataProvider:Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    .line 73
    new-instance p1, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;

    invoke-direct {p1, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni$Delegate;)V

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadJni:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Ljava/lang/Object;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alibaba/mbg/unet/internal/UploadDataStream;Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->checkState(Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/mbg/unet/internal/UploadDataStream;Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mDataProvider:Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/mbg/unet/internal/UploadDataStream;Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->onError(Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private checkState(Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    if-ne v0, p1, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private destroyAdapter()V
    .locals 6

    .line 240
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    sget-object v2, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 243
    iput-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mDestroyAdapterPostponed:Z

    .line 244
    monitor-exit v0

    return-void

    .line 246
    :cond_0
    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadJni:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;

    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->nativeDestroy(J)V

    .line 250
    iput-wide v3, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    .line 254
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$3;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream$3;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 254
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private destroyAdapterIfPostponed()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    sget-object v2, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    if-eq v1, v2, :cond_1

    .line 278
    iget-boolean v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mDestroyAdapterPostponed:Z

    if-eqz v1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->destroyAdapter()V

    .line 281
    :cond_0
    monitor-exit v0

    return-void

    .line 275
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Method should not be called when read has not completed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    sget-object v2, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    if-eq v1, v2, :cond_0

    .line 144
    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    const/4 v1, 0x0

    .line 145
    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 146
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->destroyAdapterIfPostponed()V

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    invoke-virtual {v0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->onUploadException(Ljava/lang/Throwable;)V

    return-void

    .line 141
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "There is no read or rewind or length check in progress."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 147
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method attachNativeAdapterToRequest(J)V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadJni:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->nativeAttachUploadDataToRequest(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    .line 317
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method initializeWithRequest(Lcom/alibaba/mbg/unet/internal/RequestImpl;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    .line 297
    sget-object p1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->GET_LENGTH:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mDataProvider:Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    invoke-virtual {p1}, Lcom/alibaba/mbg/unet/internal/UploadDataProvider;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    .line 301
    iget-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    iput-wide v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRemainingLength:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 303
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->onError(Ljava/lang/Throwable;)V

    .line 305
    :goto_0
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 306
    :try_start_2
    sget-object v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    iput-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 307
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 298
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public onReadError(Ljava/lang/Exception;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-direct {p0, v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->checkState(Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->onError(Ljava/lang/Throwable;)V

    .line 188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReadSucceeded(Z)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-direct {p0, v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->checkState(Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 161
    iget-wide v3, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-chunked upload can\'t have last chunk"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 165
    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRemainingLength:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRemainingLength:J

    .line 166
    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRemainingLength:J

    cmp-long v6, v4, v1

    if-gez v6, :cond_3

    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    cmp-long v6, v4, v1

    if-gez v6, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read upload data length %d exceeds expected length %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    iget-wide v6, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRemainingLength:J

    sub-long/2addr v4, v6

    .line 169
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 168
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 171
    iput-object v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 172
    sget-object v4, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    iput-object v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 174
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->destroyAdapterIfPostponed()V

    .line 176
    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    cmp-long v6, v4, v1

    if-nez v6, :cond_4

    .line 177
    monitor-exit v0

    return-void

    .line 179
    :cond_4
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadJni:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;

    iget-wide v4, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    invoke-virtual {v1, v4, v5, v3, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->nativeOnReadSucceeded(JIZ)V

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRewindError(Ljava/lang/Exception;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->REWIND:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-direct {p0, v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->checkState(Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->onError(Ljava/lang/Throwable;)V

    .line 210
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRewindSucceeded()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->REWIND:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-direct {p0, v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->checkState(Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V

    .line 195
    sget-object v1, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    iput-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mInWhichUserCallback:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 196
    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mLength:J

    iput-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRemainingLength:J

    .line 198
    iget-wide v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 199
    monitor-exit v0

    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadJni:Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;

    iget-wide v2, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mUploadDataStreamAdapter:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mbg/unet/internal/UploadDataStreamJni;->nativeOnRewindSucceeded(J)V

    .line 202
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadDataStreamDestroyed()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->destroyAdapter()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method postTaskToExecutor(Ljava/lang/Runnable;)V
    .locals 2

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadDataStream postTaskToExecutor failed.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unet"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mRequest:Lcom/alibaba/mbg/unet/internal/RequestImpl;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/alibaba/mbg/unet/internal/RequestImpl;->onUploadException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public readData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 84
    iget-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->mReadTask:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rewind()V
    .locals 1

    .line 96
    new-instance v0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$2;

    invoke-direct {v0, p0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream$2;-><init>(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->postTaskToExecutor(Ljava/lang/Runnable;)V

    return-void
.end method
