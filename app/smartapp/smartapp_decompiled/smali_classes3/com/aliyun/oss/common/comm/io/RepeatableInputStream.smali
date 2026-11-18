.class public Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;
.super Ljava/io/InputStream;
.source "RepeatableInputStream.java"


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private bufferSize:I

.field private bytesReadFromMark:J

.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    .line 31
    iput v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    .line 33
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    .line 41
    iput p2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    .line 42
    iget p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputStream should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 7

    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    iget p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    int-to-long v2, p1

    const/4 p1, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    if-eqz v0, :cond_0

    .line 61
    iget v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    new-array v0, v0, [B

    .line 62
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    iget v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    iget-wide v3, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    iget v5, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {v1, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    .line 64
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    iget v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    .line 65
    iput p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    goto :goto_0

    .line 67
    :cond_0
    iput p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    .line 69
    iget p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 117
    new-array v0, v0, [B

    .line 118
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 120
    aget-byte v0, v0, v1

    return v0

    :cond_0
    return v1
.end method

.method public read([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    new-array p3, p3, [B

    .line 84
    iget v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    int-to-long v1, v0

    iget-wide v3, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-object v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    if-eqz v1, :cond_1

    .line 85
    array-length p3, p3

    add-int v1, v0, p3

    int-to-long v1, v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    long-to-int p3, v3

    sub-int/2addr p3, v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    iget v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    return p3

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gtz v0, :cond_2

    return v0

    .line 101
    :cond_2
    iget-wide v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    int-to-long v3, v0

    add-long v5, v1, v3

    iget v7, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-gtz v10, :cond_3

    .line 102
    iget-object v5, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    long-to-int v2, v1

    invoke-static {p3, v9, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    goto :goto_0

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    if-eqz v1, :cond_4

    .line 105
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer size "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has been exceeded and the input stream "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "will not be repeatable until the next mark. Freeing buffer memory"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->buffer:[B

    .line 110
    :cond_4
    :goto_0
    invoke-static {p3, v9, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget-wide p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    return v0
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    iget v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 47
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset after reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferOffset:I

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream cannot be reset as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bytesReadFromMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes have been written, exceeding the available buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
