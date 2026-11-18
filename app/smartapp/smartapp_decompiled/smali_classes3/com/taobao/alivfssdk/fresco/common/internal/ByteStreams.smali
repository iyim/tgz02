.class public final Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$FastByteArrayOutputStream;,
        Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->obtain()Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;

    move-result-object v0

    .line 113
    :try_start_0
    iget-object v1, v0, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->buf:[B

    const-wide/16 v2, 0x0

    .line 116
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->recycle()V

    return-wide v2

    :cond_0
    const/4 v5, 0x0

    .line 120
    :try_start_1
    invoke-virtual {p1, v1, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 125
    invoke-virtual {v0}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$BytesBuffer;->recycle()V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-static {p0}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 162
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    .line 158
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "len is negative"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result p0

    if-ne p0, p3, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reached end of stream after reading "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes; "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes expected"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    invoke-static {p0, v0}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-array v0, p1, [B

    move v1, p1

    :goto_0
    const/4 v2, -0x1

    if-lez v1, :cond_1

    sub-int v3, p1, v1

    .line 197
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 201
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr v1, v4

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v2, :cond_2

    return-object v0

    .line 213
    :cond_2
    new-instance v1, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$FastByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$FastByteArrayOutputStream;-><init>(Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$1;)V

    .line 214
    invoke-virtual {v1, p1}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$FastByteArrayOutputStream;->write(I)V

    .line 215
    invoke-static {p0, v1}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 217
    array-length p0, v0

    invoke-virtual {v1}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$FastByteArrayOutputStream;->size()I

    move-result p1

    add-int/2addr p0, p1

    new-array p0, p0, [B

    .line 218
    array-length p1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    array-length p1, v0

    invoke-virtual {v1, p0, p1}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams$FastByteArrayOutputStream;->writeTo([BI)V

    return-object p0
.end method
