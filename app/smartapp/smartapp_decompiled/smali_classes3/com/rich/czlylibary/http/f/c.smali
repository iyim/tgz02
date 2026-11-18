.class public Lcom/rich/czlylibary/http/f/c;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {p0}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_0
    :try_start_3
    invoke-static {v2}, Lcom/rich/czlylibary/b/j;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p0}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_1
    invoke-static {v0}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/rich/czlylibary/b/j;->a(Ljava/lang/Throwable;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v2}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/rich/czlylibary/b/j;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v2}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception p0

    move-object v0, v2

    :goto_1
    invoke-static {v0}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/rich/czlylibary/http/f/c;->a(Ljava/io/Closeable;)V

    throw p0
.end method
