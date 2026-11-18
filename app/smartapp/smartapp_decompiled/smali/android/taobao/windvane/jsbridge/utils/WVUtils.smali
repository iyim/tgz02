.class public Landroid/taobao/windvane/jsbridge/utils/WVUtils;
.super Ljava/lang/Object;
.source "WVUtils.java"


# static fields
.field public static final LOCAL_CAPTURE_IMAGE:Ljava/lang/String; = "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

.field public static final URL_DATA_CHAR:Ljava/lang/String; = "?"

.field public static final URL_SEPARATOR:Ljava/lang/String; = "//"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 84
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 88
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 90
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v2, 0x0

    .line 91
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 94
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 98
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_0
    move-object p0, v0

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_1

    .line 98
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 99
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 102
    :catch_3
    :cond_1
    throw p0

    :cond_2
    move-object p0, v0

    :goto_2
    if-eqz v0, :cond_3

    .line 98
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 99
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    :goto_3
    return-object p0
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "?"

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "//"

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "://"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 133
    :cond_3
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    .line 136
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVirtualPath(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNotificationEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 144
    invoke-static {p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p0

    return p0
.end method

.method public static saveBitmapToCache(Landroid/graphics/Bitmap;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    new-instance v2, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-direct {v2}, Landroid/taobao/windvane/cache/WVFileInfo;-><init>()V

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    const-string v3, "image/jpeg"

    .line 36
    iput-object v3, v2, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    add-long/2addr v3, v5

    .line 38
    iput-wide v3, v2, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    const/4 v3, 0x1

    .line 40
    new-array v4, v3, [B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    .line 42
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/taobao/windvane/cache/WVCacheManager;->writeToFile(Landroid/taobao/windvane/cache/WVFileInfo;[B)Z

    .line 43
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 47
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    return-wide v0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_0
    throw p0

    :catch_1
    nop

    :goto_1
    const-wide/16 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-wide v0
.end method

.method public static saveBitmapToCache(Ljava/io/File;)J
    .locals 6

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v3}, Landroid/taobao/windvane/file/FileManager;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    .line 67
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to copy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WVUtils"

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
