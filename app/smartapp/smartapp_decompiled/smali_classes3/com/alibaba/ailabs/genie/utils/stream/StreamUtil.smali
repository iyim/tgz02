.class public Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 26
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static createInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;)[B
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 39
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 40
    new-array v1, v1, [B

    .line 41
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    return-object v1

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static readAndClose(Ljava/io/InputStream;)[B
    .locals 1

    .line 52
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->read(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 53
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static write([BLjava/io/OutputStream;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 58
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static writeAndClose([BLjava/io/OutputStream;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->write([BLjava/io/OutputStream;)Z

    move-result p0

    .line 74
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/stream/StreamUtil;->close(Ljava/io/Closeable;)V

    return p0
.end method
