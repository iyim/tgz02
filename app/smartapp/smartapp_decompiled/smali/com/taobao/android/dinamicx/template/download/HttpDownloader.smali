.class public Lcom/taobao/android/dinamicx/template/download/HttpDownloader;
.super Ljava/lang/Object;
.source "HttpDownloader.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/template/download/IDXDownloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public download(Ljava/lang/String;)[B
    .locals 7

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "\u4e0b\u8f7d\u94fe\u63a5\u4e3a\u7a7a"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLogi(Ljava/lang/String;)V

    return-object v1

    .line 29
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 31
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 32
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x800

    .line 35
    new-array v4, v4, [B

    .line 37
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 47
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 48
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    return-object p1

    :cond_1
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v1
.end method
