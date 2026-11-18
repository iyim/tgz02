.class public Lcom/taobao/phenix/common/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/taobao/tcommon/core/BytesPool;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    const-wide/16 v1, 0x0

    if-eqz p2, :cond_0

    .line 90
    invoke-interface {p2, v0}, Lcom/taobao/tcommon/core/BytesPool;->offer(I)[B

    move-result-object v3

    goto :goto_0

    .line 92
    :cond_0
    new-array v3, v0, [B

    :goto_0
    const/4 v4, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p0, v3, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    if-eqz p2, :cond_1

    .line 106
    invoke-interface {p2, v3}, Lcom/taobao/tcommon/core/BytesPool;->release([B)V

    :cond_1
    return-wide v1

    .line 101
    :cond_2
    :try_start_1
    invoke-virtual {p1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v4, v5

    add-long/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 106
    invoke-interface {p2, v3}, Lcom/taobao/tcommon/core/BytesPool;->release([B)V

    :cond_3
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/taobao/tcommon/core/BytesPool;[I)Lcom/taobao/phenix/entity/EncodedData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/taobao/phenix/loader/StreamResultHandler;

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/taobao/phenix/loader/StreamResultHandler;-><init>(Lcom/taobao/rxm/consume/Consumer;II)V

    .line 17
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/taobao/phenix/common/StreamUtil;->readBytes(Ljava/io/InputStream;Lcom/taobao/tcommon/core/BytesPool;Lcom/taobao/phenix/loader/StreamResultHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v0}, Lcom/taobao/phenix/loader/StreamResultHandler;->getReadLength()I

    move-result p0

    aput p0, p2, v1

    .line 21
    invoke-virtual {v0}, Lcom/taobao/phenix/loader/StreamResultHandler;->getEncodeData()Lcom/taobao/phenix/entity/EncodedData;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 19
    invoke-virtual {v0}, Lcom/taobao/phenix/loader/StreamResultHandler;->getReadLength()I

    move-result p1

    aput p1, p2, v1

    throw p0
.end method

.method public static readBytes(Ljava/io/InputStream;Lcom/taobao/tcommon/core/BytesPool;Lcom/taobao/phenix/loader/StreamResultHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1, v0}, Lcom/taobao/tcommon/core/BytesPool;->offer(I)[B

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_0
    new-array v0, v0, [B

    .line 34
    :goto_0
    iget v1, p2, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    const-string v2, "Stream"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v1, :cond_2

    if-eqz p1, :cond_1

    .line 37
    :try_start_0
    iget v1, p2, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    invoke-interface {p1, v1}, Lcom/taobao/tcommon/core/BytesPool;->offer(I)[B

    move-result-object v1

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_1

    .line 39
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget v6, p2, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    :catch_0
    new-array v1, v4, [Ljava/lang/Object;

    iget v6, p2, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const-string v6, "allocate byte array OOM with content length=%d"

    invoke-static {v2, v6, v1}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move-object v1, v3

    :goto_1
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 47
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const v6, 0x8000

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 54
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {p2, v6}, Lcom/taobao/phenix/loader/StreamResultHandler;->inLimit(I)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {v1, v0, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {p2}, Lcom/taobao/phenix/loader/StreamResultHandler;->getReadLength()I

    move-result v8

    invoke-static {v0, v5, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    :goto_2
    invoke-virtual {p2, v6}, Lcom/taobao/phenix/loader/StreamResultHandler;->onProgressUpdate(I)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_8

    if-eqz v1, :cond_6

    .line 66
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v3

    :goto_4
    invoke-virtual {p2, v1}, Lcom/taobao/phenix/loader/StreamResultHandler;->setupData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v6, v7, :cond_7

    :try_start_2
    const-string v1, "read bytes incorrect, exceed content-length=%d"

    .line 69
    new-array v4, v4, [Ljava/lang/Object;

    iget p2, p2, Lcom/taobao/phenix/loader/StreamResultHandler;->contentLength:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v5

    invoke-static {v2, v1, v4}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p2

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v4, 0x0

    :cond_8
    if-eqz p1, :cond_9

    .line 75
    invoke-interface {p1, v0}, Lcom/taobao/tcommon/core/BytesPool;->release([B)V

    if-eqz v4, :cond_9

    .line 77
    invoke-interface {p1, v3}, Lcom/taobao/tcommon/core/BytesPool;->release([B)V

    .line 81
    :cond_9
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :catchall_1
    move-exception p2

    :goto_6
    if-eqz p1, :cond_a

    .line 75
    invoke-interface {p1, v0}, Lcom/taobao/tcommon/core/BytesPool;->release([B)V

    if-eqz v4, :cond_a

    .line 77
    invoke-interface {p1, v3}, Lcom/taobao/tcommon/core/BytesPool;->release([B)V

    .line 81
    :cond_a
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 82
    :catch_2
    goto :goto_8

    :goto_7
    throw p2

    :goto_8
    goto :goto_7
.end method
