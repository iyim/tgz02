.class public Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;
.super Ljava/lang/Object;
.source "FileCacheUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "FileCacheUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static clearDir(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-static {p0, v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->clearDir(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static clearDir(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 157
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 164
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v2, 0x1

    if-nez p0, :cond_2

    return v2

    .line 168
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 170
    array-length v0, p0

    if-nez v0, :cond_3

    goto :goto_2

    .line 174
    :cond_3
    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v3, p0, v1

    if-eqz p1, :cond_4

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->clearDir(Ljava/lang/String;Ljava/util/List;)Z

    .line 183
    :cond_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return v2
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->clearDir(Ljava/lang/String;)Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->delete(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x400

    .line 90
    new-array v2, v2, [B

    .line 92
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :goto_0
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    const/4 v4, -0x1

    if-eq p0, v4, :cond_1

    .line 94
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, p0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 104
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v0

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v3, v0

    .line 98
    :goto_1
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 102
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 104
    sget-object v1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_3
    :goto_4
    throw p0

    :cond_4
    :goto_5
    return-object v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6

    .line 26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object p1, v0

    :cond_1
    const/4 v2, 0x1

    const/16 v3, 0x400

    .line 35
    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 38
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {v5, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 40
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3

    .line 43
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 45
    :cond_3
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    :try_start_1
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 49
    :cond_4
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :goto_0
    :try_start_2
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 51
    invoke-virtual {p0, v3, v1, p1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    move-object v4, p2

    .line 54
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 63
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v4, :cond_6

    .line 68
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 70
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    const/4 v1, 0x1

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object p2, v4

    :goto_4
    move-object v4, p0

    move-object p0, p1

    goto :goto_9

    :catch_3
    move-exception p1

    move-object p2, v4

    :goto_5
    move-object v4, p0

    move-object p0, p1

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p2, v4

    goto :goto_9

    :catch_4
    move-exception p0

    move-object p2, v4

    .line 57
    :goto_6
    :try_start_6
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_7

    .line 61
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception p0

    .line 63
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_7
    if-eqz p2, :cond_8

    .line 68
    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception p0

    .line 70
    sget-object p1, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    return v1

    :catchall_3
    move-exception p0

    :goto_9
    if-eqz v4, :cond_9

    .line 61
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :catch_7
    move-exception p1

    .line 63
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_a
    if-eqz p2, :cond_a

    .line 68
    :try_start_a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_b

    :catch_8
    move-exception p1

    .line 70
    sget-object p2, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :cond_a
    :goto_b
    goto :goto_d

    :goto_c
    throw p0

    :goto_d
    goto :goto_c
.end method
