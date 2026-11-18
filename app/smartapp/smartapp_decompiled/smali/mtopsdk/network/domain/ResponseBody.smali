.class public abstract Lmtopsdk/network/domain/ResponseBody;
.super Ljava/lang/Object;
.source "ResponseBody.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ResponseBody"


# instance fields
.field private bodyBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    return-void
.end method

.method private readBytes()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lmtopsdk/network/domain/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 46
    invoke-virtual {p0}, Lmtopsdk/network/domain/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    .line 52
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0x400

    .line 56
    :try_start_2
    new-array v5, v5, [B

    .line 57
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v7, 0x0

    .line 58
    invoke-virtual {v2, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 61
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 65
    invoke-static {v4}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v2}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v5

    move-object v2, v3

    move-object v4, v2

    :goto_1
    :try_start_3
    const-string v6, "mtopsdk.ResponseBody"

    const-string v7, "[readBytes] read bytes from byteStream error."

    .line 63
    invoke-static {v6, v7, v5}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    invoke-static {v4}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v2}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v5, v3

    :goto_2
    if-nez v5, :cond_1

    return-object v3

    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 73
    array-length v2, v5

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    goto :goto_3

    .line 74
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    return-object v5

    :catchall_2
    move-exception v0

    .line 65
    :goto_4
    invoke-static {v4}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    invoke-static {v2}, Lmtopsdk/network/util/NetworkUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 43
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public abstract byteStream()Ljava/io/InputStream;
.end method

.method public abstract contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract contentType()Ljava/lang/String;
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Lmtopsdk/network/domain/ResponseBody;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    .line 37
    :cond_0
    iget-object v0, p0, Lmtopsdk/network/domain/ResponseBody;->bodyBytes:[B

    return-object v0
.end method
