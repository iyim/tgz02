.class public Lcom/taobao/pexode/entity/RewindableInputStream;
.super Lcom/taobao/pexode/entity/RewindableStream;
.source "RewindableInputStream.java"


# instance fields
.field private mBuffer:[B

.field private mBufferSize:I

.field private mBufferedSoFar:I

.field protected mClosed:Z

.field protected final mHostStream:Ljava/io/InputStream;

.field private final mMarkSupported:Z

.field private mOffset:I

.field private mReachedEOF:Z


# direct methods
.method public constructor <init>(ILjava/io/InputStream;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/taobao/pexode/entity/RewindableStream;-><init>(I)V

    .line 27
    iput-object p2, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mHostStream:Ljava/io/InputStream;

    .line 28
    iget-object p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mMarkSupported:Z

    .line 29
    invoke-virtual {p0, p3}, Lcom/taobao/pexode/entity/RewindableInputStream;->setBufferSize(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x3

    .line 22
    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/pexode/entity/RewindableInputStream;-><init>(ILjava/io/InputStream;I)V

    return-void
.end method

.method private bufferAndWriteTo([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferSize:I

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 95
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    add-int/2addr v0, p3

    .line 96
    iget-object v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    if-le v0, v1, :cond_2

    :cond_0
    add-int/2addr v0, p3

    .line 97
    iget v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/pexode/DecodeHelper;->offerBytes(I)[B

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    if-eqz v1, :cond_1

    .line 100
    iget v3, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    invoke-virtual {v1, v3}, Lcom/taobao/pexode/DecodeHelper;->releaseBytes([B)V

    .line 103
    :cond_1
    iput-object v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    :cond_2
    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 110
    :goto_0
    iget v3, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    .line 111
    iget-object v4, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mHostStream:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    sub-int v6, p3, v0

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_3

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mReachedEOF:Z

    .line 115
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "Pexode"

    const-string p3, "bufferAndWriteTo() read stream end -1 now"

    invoke-static {p2, p3, p1}, Lcom/taobao/tcommon/log/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-lez v4, :cond_4

    .line 120
    iget v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    .line 121
    iget v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    iput v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    .line 123
    iget-object v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    add-int v5, p2, v0

    invoke-static {v1, v3, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int v1, v0, v4

    if-ne v1, p3, :cond_5

    :goto_1
    return v1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private readDirectlyFromStream([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mReachedEOF:Z

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    .line 143
    iget p2, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    .line 144
    invoke-static {}, Lcom/taobao/pexode/DecodeHelper;->instance()Lcom/taobao/pexode/DecodeHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    invoke-virtual {p2, p3}, Lcom/taobao/pexode/DecodeHelper;->releaseBytes([B)V

    const/4 p2, 0x0

    .line 145
    iput-object p2, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    :cond_1
    return p1
.end method

.method private readFromBuffer([BII)I
    .locals 2

    .line 82
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 83
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    return p3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mClosed:Z

    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBuffer:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    return v0
.end method

.method public getBufferOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 191
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p0, v1, v2, v0}, Lcom/taobao/pexode/entity/RewindableInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    aget-byte v0, v1, v2

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    if-lez p3, :cond_7

    .line 157
    iget-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mReachedEOF:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mMarkSupported:Z

    if-nez v0, :cond_3

    .line 167
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    iget v2, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    if-ge v0, v2, :cond_1

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/pexode/entity/RewindableInputStream;->readFromBuffer([BII)I

    move-result v1

    sub-int v0, p3, v1

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    if-lez v0, :cond_4

    .line 174
    iget v2, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    iget v3, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferSize:I

    if-ge v2, v3, :cond_4

    add-int v2, p2, p3

    sub-int/2addr v2, v0

    invoke-direct {p0, p1, v2, v0}, Lcom/taobao/pexode/entity/RewindableInputStream;->bufferAndWriteTo([BII)I

    move-result v2

    if-ltz v2, :cond_4

    sub-int/2addr v0, v2

    if-gez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    move v0, p3

    .line 182
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mReachedEOF:Z

    if-nez v2, :cond_6

    if-lez v0, :cond_6

    add-int/2addr p2, p3

    sub-int/2addr p2, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/pexode/entity/RewindableInputStream;->readDirectlyFromStream([BII)I

    move-result p1

    if-ltz p1, :cond_6

    if-gez v1, :cond_5

    move v1, p1

    goto :goto_2

    :cond_5
    add-int/2addr v1, p1

    :cond_6
    :goto_2
    return v1

    .line 154
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "read parameters illegal"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewind()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mMarkSupported:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 64
    :cond_0
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferedSoFar:I

    if-gt v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mOffset:I

    .line 68
    iput-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mReachedEOF:Z

    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot rewind cause input stream offset too far"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewindAndSetBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableInputStream;->rewind()V

    .line 74
    invoke-virtual {p0, p1}, Lcom/taobao/pexode/entity/RewindableInputStream;->setBufferSize(I)V

    return-void
.end method

.method protected setBufferSize(I)V
    .locals 1

    .line 33
    iput p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferSize:I

    .line 34
    iget-boolean p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mMarkSupported:Z

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mHostStream:Ljava/io/InputStream;

    iget v0, p0, Lcom/taobao/pexode/entity/RewindableInputStream;->mBufferSize:I

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    :cond_0
    return-void
.end method
