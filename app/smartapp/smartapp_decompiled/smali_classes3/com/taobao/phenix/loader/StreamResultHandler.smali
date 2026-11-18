.class public Lcom/taobao/phenix/loader/StreamResultHandler;
.super Ljava/lang/Object;
.source "StreamResultHandler.java"


# instance fields
.field public final contentLength:I

.field private data:[B

.field private mCancelled:Z

.field private final mConsumer:Lcom/taobao/rxm/consume/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/rxm/consume/Consumer<",
            "*",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressStep:I

.field private mProgressStepCount:I

.field private readLength:I


# direct methods
.method public constructor <init>(Lcom/taobao/rxm/consume/Consumer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/rxm/consume/Consumer<",
            "*",
            "Lcom/taobao/phenix/request/ImageRequest;",
            ">;II)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    .line 24
    iput p2, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    .line 25
    iput p3, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mProgressStep:I

    return-void
.end method


# virtual methods
.method public getEncodeData()Lcom/taobao/phenix/entity/EncodedData;
    .locals 5

    .line 77
    new-instance v0, Lcom/taobao/phenix/entity/EncodedData;

    invoke-virtual {p0}, Lcom/taobao/phenix/loader/StreamResultHandler;->isDataIncomplete()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->data:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/phenix/entity/EncodedData;-><init>(Z[BII)V

    return-object v0
.end method

.method public getReadLength()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    return v0
.end method

.method public inLimit(I)Z
    .locals 2

    .line 29
    iget v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isCancellationCalled()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mCancelled:Z

    return v0
.end method

.method public isDataIncomplete()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->data:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    if-eq v1, v0, :cond_0

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

.method public declared-synchronized onProgressUpdate(I)Z
    .locals 5

    monitor-enter p0

    .line 38
    :try_start_0
    iget v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    .line 39
    iget-object p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mConsumer:Lcom/taobao/rxm/consume/Consumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 40
    monitor-exit p0

    return v0

    .line 43
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    if-lez p1, :cond_2

    iget p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mProgressStep:I

    if-lez p1, :cond_2

    .line 44
    iget p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    int-to-float p1, p1

    iget v1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p1

    .line 45
    iget v2, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mProgressStep:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 46
    iget v2, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mProgressStepCount:I

    if-gt v1, v2, :cond_1

    iget v2, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->readLength:I

    iget v3, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    if-ne v2, v3, :cond_2

    .line 47
    :cond_1
    iput v1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mProgressStepCount:I

    .line 48
    iget-object v1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v1, p1}, Lcom/taobao/rxm/consume/Consumer;->onProgressUpdate(F)V

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Stream"

    .line 52
    iget-object v1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {v1}, Lcom/taobao/rxm/consume/Consumer;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/phenix/request/ImageRequest;

    const-string v2, "Request is cancelled while reading stream"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v4}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mConsumer:Lcom/taobao/rxm/consume/Consumer;

    invoke-interface {p1}, Lcom/taobao/rxm/consume/Consumer;->onCancellation()V

    .line 54
    iput-boolean v0, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->mCancelled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return v3

    .line 57
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setupData([B)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/taobao/phenix/loader/StreamResultHandler;->data:[B

    return-void
.end method
