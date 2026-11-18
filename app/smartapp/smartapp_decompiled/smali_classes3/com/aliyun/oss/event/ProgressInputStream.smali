.class public abstract Lcom/aliyun/oss/event/ProgressInputStream;
.super Ljava/io/FilterInputStream;
.source "ProgressInputStream.java"


# static fields
.field private static final DEFAULT_NOTIFICATION_THRESHOLD:I = 0x2000


# instance fields
.field private doneEOF:Z

.field private hasBeenRead:Z

.field private final listener:Lcom/aliyun/oss/event/ProgressListener;

.field private notifiedByteCount:J

.field private final notifyThresHold:I

.field private unnotifiedByteCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V
    .locals 1

    const/16 v0, 0x2000

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/aliyun/oss/event/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 58
    iput-object p2, p0, Lcom/aliyun/oss/event/ProgressInputStream;->listener:Lcom/aliyun/oss/event/ProgressListener;

    .line 59
    iput p3, p0, Lcom/aliyun/oss/event/ProgressInputStream;->notifyThresHold:I

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private eof()V
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->doneEOF:Z

    if-eqz v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->onEOF()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->doneEOF:Z

    return-void
.end method

.method public static inputStreamForRequest(Ljava/io/InputStream;Lcom/aliyun/oss/model/WebServiceRequest;)Ljava/io/InputStream;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/aliyun/oss/event/RequestProgressInputStream;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/WebServiceRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/aliyun/oss/event/RequestProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static inputStreamForResponse(Ljava/io/InputStream;Lcom/aliyun/oss/model/WebServiceRequest;)Ljava/io/InputStream;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/aliyun/oss/event/ResponseProgressInputStream;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/WebServiceRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/aliyun/oss/event/ResponseProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private onBytesRead(I)V
    .locals 4

    .line 75
    iget v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    .line 76
    iget p1, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    iget v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->notifyThresHold:I

    if-lt p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->onNotifyBytesRead()V

    .line 78
    iget-wide v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->notifiedByteCount:J

    iget p1, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->notifiedByteCount:J

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->onClose()V

    .line 147
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method public final getListener()Lcom/aliyun/oss/event/ProgressListener;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->listener:Lcom/aliyun/oss/event/ProgressListener;

    return-object v0
.end method

.method protected final getNotifiedByteCount()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->notifiedByteCount:J

    return-wide v0
.end method

.method protected final getUnnotifiedByteCount()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    return v0
.end method

.method public final getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method protected onClose()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->eof()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onEOF()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onFirstRead()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onNotifyBytesRead()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onReset()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->hasBeenRead:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->onFirstRead()V

    .line 87
    iput-boolean v1, p0, Lcom/aliyun/oss/event/ProgressInputStream;->hasBeenRead:Z

    .line 89
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->eof()V

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, v1}, Lcom/aliyun/oss/event/ProgressInputStream;->onBytesRead(I)V

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/aliyun/oss/event/ProgressInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->hasBeenRead:Z

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->onFirstRead()V

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->hasBeenRead:Z

    .line 116
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->eof()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0, p1}, Lcom/aliyun/oss/event/ProgressInputStream;->onBytesRead(I)V

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 100
    invoke-virtual {p0}, Lcom/aliyun/oss/event/ProgressInputStream;->onReset()V

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->unnotifiedByteCount:I

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lcom/aliyun/oss/event/ProgressInputStream;->notifiedByteCount:J

    return-void
.end method
