.class public Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;
.super Ljava/io/InputStream;
.source "ChunkedUploadStream.java"


# static fields
.field private static final CLRF:Ljava/lang/String; = "\r\n"

.field private static final DEFAULT_CHARTSET_NAME:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_CHUNK_SIZE:I = 0x20000


# instance fields
.field private innerStream:Ljava/io/InputStream;

.field private final innerStreamBufferSize:I

.field private innerStreamConsumed:Z

.field private inputBuffer:[B

.field private isTerminatingChunk:Z

.field private outputBuffer:[B

.field private outputBufferDataLen:I

.field private outputBufferPos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    .line 37
    iput v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferDataLen:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamConsumed:Z

    .line 41
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->isTerminatingChunk:Z

    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStream:Ljava/io/InputStream;

    .line 49
    iput p2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamBufferSize:I

    const/high16 p1, 0x20000

    .line 50
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->inputBuffer:[B

    const-wide/32 p1, 0x20000

    .line 51
    invoke-static {p1, p2}, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->CalculateChunkHeaderLength(J)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBuffer:[B

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source input stream should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static CalculateChunkHeaderLength(J)I
    .locals 4

    .line 160
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    int-to-long v2, v0

    add-long/2addr v2, p0

    int-to-long p0, v1

    add-long/2addr v2, p0

    long-to-int p0, v2

    return p0
.end method

.method private constructOutputBufferChunk(I)V
    .locals 6

    const-string v0, "utf-8"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBuffer:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    array-length v2, v1

    add-int/2addr v2, v4

    if-lez p1, :cond_0

    .line 147
    iget-object v3, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->inputBuffer:[B

    iget-object v5, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBuffer:[B

    invoke-static {v3, v4, v5, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBuffer:[B

    array-length v5, v0

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput v4, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    .line 153
    array-length v1, v1

    add-int/2addr v1, p1

    array-length p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferDataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 155
    new-instance v0, Lcom/aliyun/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to sign the chunked data, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private fillInputBuffer()I
    .locals 4

    .line 107
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamConsumed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->inputBuffer:[B

    array-length v2, v0

    if-ge v1, v2, :cond_3

    iget-boolean v2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamConsumed:Z

    if-nez v2, :cond_3

    .line 113
    array-length v0, v0

    sub-int/2addr v0, v1

    .line 114
    iget v2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamBufferSize:I

    if-le v0, v2, :cond_1

    move v0, v2

    .line 120
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->inputBuffer:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamConsumed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Lcom/aliyun/oss/ClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected IO exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    return v1
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    new-array v0, v0, [B

    .line 57
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 59
    aget-byte v0, v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    .line 74
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_6

    if-nez p3, :cond_0

    return v1

    .line 81
    :cond_0
    iget p2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 82
    iget-boolean p2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamConsumed:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->isTerminatingChunk:Z

    if-eqz p2, :cond_1

    return v2

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->fillInputBuffer()I

    move-result p2

    .line 87
    invoke-direct {p0, p2}, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->constructOutputBufferChunk(I)V

    .line 88
    iget-boolean v3, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->innerStreamConsumed:Z

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->isTerminatingChunk:Z

    .line 91
    :cond_3
    iget p2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferDataLen:I

    iget v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    sub-int/2addr p2, v0

    if-ge p2, p3, :cond_4

    goto :goto_1

    :cond_4
    move p2, p3

    .line 97
    :goto_1
    iget-object p3, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBuffer:[B

    iget v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    invoke-static {p3, v0, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    .line 99
    iget p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    iget p3, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferDataLen:I

    if-lt p1, p3, :cond_5

    .line 100
    iput v2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedUploadStream;->outputBufferPos:I

    :cond_5
    return p2

    .line 75
    :cond_6
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "buffer size: %n, offset: %n, count: %n"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
