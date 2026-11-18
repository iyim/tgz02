.class final Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$4;
.super Ljava/lang/Object;
.source "TemplateCache.java"

# interfaces
.implements Lcom/taobao/android/dinamic/tempate/manager/TemplateCache$HttpLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/tempate/manager/TemplateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public loadUrl(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x0

    .line 394
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v1, 0x2710

    .line 397
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x2ee0

    .line 398
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 399
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 401
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 424
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object v0

    .line 404
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 405
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 407
    :try_start_4
    new-array v3, v3, [B

    .line 409
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    .line 410
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 416
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_3

    .line 418
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_3
    if-eqz p1, :cond_9

    .line 424
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v6, v2

    move-object v2, p1

    move-object p1, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, p1

    move-object p1, v1

    move-object v1, v6

    goto :goto_2

    :catch_1
    move-object v2, v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, p1

    move-object p1, v0

    goto :goto_2

    :catch_2
    move-object v1, v0

    goto :goto_3

    :catchall_3
    move-exception p1

    move-object v1, p1

    move-object p1, v0

    move-object v2, p1

    :goto_2
    if-eqz v0, :cond_4

    .line 416
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    if-eqz p1, :cond_5

    .line 418
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_5
    if-eqz v2, :cond_6

    .line 424
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v1

    :catch_4
    move-object p1, v0

    move-object v1, p1

    :goto_3
    move-object v2, v1

    :catch_5
    :goto_4
    if-eqz v2, :cond_7

    .line 416
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_7
    if-eqz v1, :cond_8

    .line 418
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_8
    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 427
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_a
    return-object v0
.end method
