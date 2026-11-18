.class public final Lc/e/a/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc/e/a/a/a;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7e
        0x93
        0x73
        0xf1
        0x65
        0xc6
        0xd7
        0x86
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Lc/e/a/a/a;->a:[I

    invoke-static {v0, v2}, Lc/e/a/a/a;->a([B[I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, p0, v2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_2
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 1
    :goto_1
    :try_start_3
    invoke-static {v0, p0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2
    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    return-object v1

    :goto_2
    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0x300000

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    goto/16 :goto_7

    :cond_2
    invoke-static {v0}, Lc/e/a/a/f;->c(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-gtz v2, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    const/4 p2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v6, v5

    move-object v5, p2

    move-object p2, v6

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v5, p2

    move-object p2, v4

    move-object v4, v5

    .line 3
    :goto_0
    :try_start_3
    invoke-static {p2, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 4
    :goto_1
    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move p2, v2

    goto :goto_2

    :catchall_3
    move-exception p2

    .line 5
    invoke-static {p2, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move p2, v3

    :goto_2
    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    .line 6
    array-length p2, v1

    if-gtz p2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p0, p1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    move p1, v2

    goto :goto_4

    :cond_5
    :goto_3
    return-object p0

    :catchall_4
    move-exception p0

    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_6
    move-object p2, p0

    move p1, v3

    :goto_4
    if-eqz p1, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, ".tmp"

    invoke-static {p2, p1}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v4, v2

    goto :goto_5

    :cond_7
    move-object p1, p2

    move v4, v3

    :goto_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lc/e/a/a/f;->a(Ljava/io/File;[B)Z

    move-result p1

    if-nez p1, :cond_8

    move v2, v3

    goto :goto_6

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_9
    :goto_6
    if-eqz v2, :cond_a

    return-object p2

    :cond_a
    :goto_7
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return v1

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    sget-object v2, Lc/e/a/a/a;->a:[I

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    .line 9
    array-length v4, v2

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    array-length v4, p1

    add-int/lit8 v5, v4, 0x2

    :try_start_1
    new-array v0, v5, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v1

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_3

    aget-byte v7, p1, v5

    rem-int/lit8 v8, v5, 0x8

    aget v8, v2, v8

    xor-int/2addr v8, v7

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    aget p1, v2, v1

    xor-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, v0, v4

    add-int/2addr v4, v3

    aget p1, v2, v3

    xor-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, v0, v4

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 11
    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    return v1

    :cond_5
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    move v1, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 12
    :try_start_3
    invoke-static {p1, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    :goto_3
    return v1

    :catchall_2
    move-exception p1

    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a([B[I)[B
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    :try_start_0
    new-array v2, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    add-int/lit8 v6, v4, 0x0

    aget-byte v6, p0, v6

    rem-int/lit8 v7, v4, 0x8

    aget v7, p1, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v0, 0x0

    aget-byte v4, p0, v4

    aget v6, p1, v1

    xor-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    aget-byte p0, p0, v0

    aget p1, p1, v4

    xor-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    if-ne p0, p1, :cond_2

    return-object v2

    :cond_2
    return-object v3

    :catch_0
    move-exception p0

    .line 14
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_3
    :goto_1
    return-object v3
.end method
