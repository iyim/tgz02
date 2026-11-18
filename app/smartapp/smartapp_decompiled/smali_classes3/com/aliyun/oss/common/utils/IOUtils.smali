.class public Lcom/aliyun/oss/common/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkFile(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 119
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 120
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static getCRCValue(Ljava/io/InputStream;)Ljava/lang/Long;
    .locals 2

    .line 158
    instance-of v0, p0, Ljava/util/zip/CheckedInputStream;

    if-eqz v0, :cond_0

    .line 159
    nop

    nop

    invoke-virtual {p0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newRepeatableInputStream(Lcom/aliyun/oss/common/comm/io/BoundedInputStream;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->getWrappedInputStream()Ljava/io/InputStream;

    move-result-object v0

    instance-of v0, v0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;

    invoke-direct {v0, p0}, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;-><init>(Lcom/aliyun/oss/common/comm/io/BoundedInputStream;)V

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/high16 v1, 0x80000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static newRepeatableInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;

    nop

    nop

    invoke-direct {v0, p0}, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;-><init>(Ljava/io/FileInputStream;)V

    goto :goto_0

    .line 135
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/high16 v1, 0x80000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static readStreamAsByteArray(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 80
    new-array p0, v0, [B

    return-object p0

    .line 83
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    .line 84
    new-array v2, v2, [B

    .line 86
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 87
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 90
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 51
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/16 v2, 0x400

    .line 54
    new-array v2, v2, [C

    .line 57
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :goto_0
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {v1, v2, v0, p1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 66
    invoke-virtual {v3}, Ljava/io/Reader;->close()V

    .line 69
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 64
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 69
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static safeClose(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static safeClose(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
