.class public Lcom/alibaba/ailabs/tg/storage/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static sBufferSize:I = 0x2000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 45
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs closeQuietly([Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 55
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 56
    invoke-static {v2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static deserialization(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    .line 148
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 151
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 153
    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static readFile2Bytes(Ljava/io/File;)[B
    .locals 9

    .line 121
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/FileUtils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 125
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    sget v5, Lcom/alibaba/ailabs/tg/storage/IOUtils;->sBufferSize:I

    new-array v5, v5, [B

    .line 129
    :goto_0
    sget v6, Lcom/alibaba/ailabs/tg/storage/IOUtils;->sBufferSize:I

    invoke-virtual {v4, v5, v3, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 130
    invoke-virtual {p0, v5, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 137
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v3

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    return-object v1

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v8, v1

    move-object v1, p0

    move-object p0, v8

    goto :goto_2

    :catch_1
    move-exception v5

    move-object p0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_2

    :catch_2
    move-exception v5

    move-object p0, v1

    move-object v4, p0

    .line 134
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v3

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception v1

    :goto_2
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v3

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public static serialization(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 164
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 167
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static writeFileFromBytes(Ljava/io/File;[BZ)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 100
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 103
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 110
    invoke-static {v2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 107
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_1
    :goto_2
    return v0
.end method

.method public static writeFileFromInputStream(Ljava/io/File;Ljava/io/InputStream;Z)Z
    .locals 6

    .line 71
    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 74
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    sget p0, Lcom/alibaba/ailabs/tg/storage/IOUtils;->sBufferSize:I

    new-array p0, p0, [B

    .line 77
    :goto_0
    sget p2, Lcom/alibaba/ailabs/tg/storage/IOUtils;->sBufferSize:I

    invoke-virtual {p1, p0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 78
    invoke-virtual {v4, p0, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :cond_1
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    aput-object v4, p0, v3

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    return v3

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 82
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object p1, p0, v1

    aput-object v0, p0, v3

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    return v1

    :goto_2
    new-array p2, v2, [Ljava/io/Closeable;

    aput-object p1, p2, v1

    aput-object v0, p2, v3

    invoke-static {p2}, Lcom/alibaba/ailabs/tg/storage/IOUtils;->closeQuietly([Ljava/io/Closeable;)V

    throw p0

    :cond_2
    :goto_3
    return v1
.end method
