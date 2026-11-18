.class public Lcom/taobao/downloader/download/protocol/DLConfig;
.super Ljava/lang/Object;
.source "DLConfig.java"


# static fields
.field public static DEFAULT_CONNECT_TIMEOUT:I = 0x2710

.field public static DEFAULT_READSTREAM_TIMEOUT:I = 0x3a98

.field public static LARGE_BUFFER_SIZE:I = 0x8000

.field public static NORMAL_BUFFER_SIZE:I = 0x1000

.field public static REDIRECTABLE:Z = false


# instance fields
.field public MAX_CONNECT_FAIL_TIMES:I

.field public MAX_READSTREAM_FAIL_TIMES:I

.field private cdnHeadError:I

.field private connectFailTime:I

.field private errorType:I

.field private item:Lcom/taobao/downloader/request/Item;

.field private readFailTime:I

.field private readRetryTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/downloader/request/Item;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_CONNECT_FAIL_TIMES:I

    .line 18
    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_READSTREAM_FAIL_TIMES:I

    .line 32
    iput-object p1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->item:Lcom/taobao/downloader/request/Item;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/downloader/request/task/SingleTask;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_CONNECT_FAIL_TIMES:I

    .line 18
    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_READSTREAM_FAIL_TIMES:I

    .line 36
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->item:Lcom/taobao/downloader/request/Item;

    iput-object v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->item:Lcom/taobao/downloader/request/Item;

    .line 37
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget v0, v0, Lcom/taobao/downloader/request/Param;->retryTimes:I

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget v0, v0, Lcom/taobao/downloader/request/Param;->retryTimes:I

    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_CONNECT_FAIL_TIMES:I

    .line 39
    iget-object p1, p1, Lcom/taobao/downloader/request/task/SingleTask;->param:Lcom/taobao/downloader/request/Param;

    iget p1, p1, Lcom/taobao/downloader/request/Param;->retryTimes:I

    iput p1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_READSTREAM_FAIL_TIMES:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getBufferSize()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readFailTime:I

    if-nez v0, :cond_0

    .line 57
    sget v0, Lcom/taobao/downloader/download/protocol/DLConfig;->LARGE_BUFFER_SIZE:I

    return v0

    .line 59
    :cond_0
    sget v0, Lcom/taobao/downloader/download/protocol/DLConfig;->NORMAL_BUFFER_SIZE:I

    return v0
.end method

.method public getConnectFailTime()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->connectFailTime:I

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 44
    sget v0, Lcom/taobao/downloader/download/protocol/DLConfig;->DEFAULT_CONNECT_TIMEOUT:I

    return v0
.end method

.method public getReadFailTime()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readFailTime:I

    return v0
.end method

.method public getReadRetryTime()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readRetryTime:I

    return v0
.end method

.method public getReadTimeout()I
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 49
    sget v0, Lcom/taobao/downloader/download/protocol/DLConfig;->DEFAULT_READSTREAM_TIMEOUT:I

    mul-int/lit8 v0, v0, 0xa

    return v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->item:Lcom/taobao/downloader/request/Item;

    iget-wide v0, v0, Lcom/taobao/downloader/request/Item;->size:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 52
    sget v0, Lcom/taobao/downloader/download/protocol/DLConfig;->DEFAULT_READSTREAM_TIMEOUT:I

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public getWaitTime()J
    .locals 2

    .line 72
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->errorType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 73
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->connectFailTime:I

    mul-int/lit16 v0, v0, 0x2710

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasRetryChance()Z
    .locals 2

    .line 98
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readFailTime:I

    iget v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_READSTREAM_FAIL_TIMES:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->connectFailTime:I

    iget v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_CONNECT_FAIL_TIMES:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->cdnHeadError:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public increaseConnectFail()V
    .locals 2

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->errorType:I

    .line 80
    iget v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->connectFailTime:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->connectFailTime:I

    return-void
.end method

.method public increaseHeadError()V
    .locals 1

    .line 84
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->cdnHeadError:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->cdnHeadError:I

    return-void
.end method

.method public increaseReadFail(Z)V
    .locals 2

    .line 88
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readFailTime:I

    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->errorType:I

    .line 89
    iget v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readRetryTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readRetryTime:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readFailTime:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 93
    iput v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readFailTime:I

    :goto_0
    return-void
.end method

.method public isLastConnect()Z
    .locals 2

    .line 64
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_CONNECT_FAIL_TIMES:I

    iget v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->connectFailTime:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLastRead()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->MAX_READSTREAM_FAIL_TIMES:I

    iget v1, p0, Lcom/taobao/downloader/download/protocol/DLConfig;->readFailTime:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
