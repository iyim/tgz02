.class public Lc/f/a/b/e;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public b:Lc/f/a/b/f;

.field public c:Z

.field public d:Landroid/net/LocalServerSocket;

.field public e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lc/f/a/b/f;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/f/a/b/e;->b:Lc/f/a/b/f;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/f/a/b/e;->c:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lc/f/a/b/e;->e:Ljava/util/concurrent/ExecutorService;

    const-string v2, "MsgListener Constructor."

    const-string v3, "Aliicx"

    .line 1
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object v0, p0, Lc/f/a/b/e;->d:Landroid/net/LocalServerSocket;

    iput-object p1, p0, Lc/f/a/b/e;->b:Lc/f/a/b/f;

    iput-boolean v1, p0, Lc/f/a/b/e;->c:Z

    return-void
.end method

.method public static synthetic a(Lc/f/a/b/e;Landroid/net/LocalSocket;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/f/a/b/e;->a(Landroid/net/LocalSocket;)V

    return-void
.end method


# virtual methods
.method public final a([B)I
    .locals 7

    const/16 v0, 0xa

    move v1, v0

    :goto_0
    sget-object v2, Lc/f/a/a/a;->b:[B

    array-length v3, v2

    add-int/2addr v3, v0

    const/4 v4, -0x1

    if-ge v1, v3, :cond_1

    aget-byte v3, p1, v1

    add-int/lit8 v5, v1, -0xa

    aget-byte v2, v2, v5

    if-eq v3, v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x4

    move v2, v1

    :goto_1
    sget-object v3, Lc/f/a/a/a;->c:[B

    array-length v5, v3

    add-int/2addr v5, v1

    if-ge v2, v5, :cond_3

    aget-byte v5, p1, v2

    sub-int v6, v2, v1

    aget-byte v3, v3, v6

    if-eq v5, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lc/f/a/a/a;->b:[B

    array-length v1, v1

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x4

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method public a()V
    .locals 3

    const-string v0, "Aliicx"

    const-string v1, "MsgListener exit."

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lc/f/a/b/e;->c:Z

    const-string v1, "stopSocketServer"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    iget-object v1, p0, Lc/f/a/b/e;->d:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "close sender socket failed"

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    :cond_0
    :goto_0
    iget-object v0, p0, Lc/f/a/b/e;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final a(Landroid/net/LocalSocket;)V
    .locals 9

    const-string v0, "Exception found when close input stream."

    const-string v1, "close input stream."

    const-string v2, "Aliicx"

    sget v3, Lc/f/a/a/a;->d:I

    new-array v3, v3, [B

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    sget p1, Lc/f/a/a/a;->d:I

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    sget v6, Lc/f/a/a/a;->d:I

    if-lt p1, v6, :cond_b

    move p1, v5

    :goto_0
    const/16 v6, 0xa

    const/4 v7, 0x1

    if-ge p1, v6, :cond_1

    .line 2
    aget-byte v6, v3, p1

    sget-object v8, Lc/f/a/a/a;->a:[B

    aget-byte v8, v8, p1

    if-eq v6, v8, :cond_0

    move p1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_1
    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p0, v3}, Lc/f/a/b/e;->a([B)I

    move-result p1

    if-gez p1, :cond_2

    const-string p1, "get message size from header failed. Drop the data."

    .line 4
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    :cond_2
    const v3, 0xc800

    if-le p1, v3, :cond_3

    :try_start_2
    const-string p1, "msg too long. Some props will be dropped."

    .line 8
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget p1, Lc/f/a/a/a;->d:I

    sub-int/2addr v3, p1

    goto :goto_3

    :cond_3
    sget v3, Lc/f/a/a/a;->d:I

    sub-int v3, p1, v3

    move v7, v5

    :goto_3
    new-array p1, v3, [B

    move v6, v5

    :goto_4
    if-ge v6, v3, :cond_5

    sub-int v8, v3, v6

    invoke-virtual {v4, p1, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_4

    goto :goto_5

    :cond_4
    add-int/2addr v6, v8

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v7, :cond_9

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {p0, p1, v3}, Lc/f/a/b/e;->a([BI)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_6

    move v7, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, p0

    goto :goto_7

    :cond_6
    move v7, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, p0

    :goto_6
    if-lez v3, :cond_8

    :try_start_3
    invoke-virtual {p1, v0, v3}, Lc/f/a/b/e;->a([BI)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v7, 0x7d

    aput-byte v7, v0, v3

    add-int/lit8 v8, v3, 0x1

    aput-byte v7, v0, v8

    add-int/lit8 v3, v3, 0x2

    goto :goto_8

    :cond_7
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_8
    move v3, v7

    goto :goto_8

    :cond_9
    move v3, v6

    move-object v6, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, p0

    :goto_8
    invoke-static {v0, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p1, v0, v3}, Lc/f/a/b/e;->b([BI)V

    invoke-static {v0}, Lcom/yunos/aliicx/common/AliicxMessage;->fromByteArray([B)Lcom/yunos/aliicx/common/AliicxMessage;

    move-result-object v0

    .line 10
    iget-object p1, p1, Lc/f/a/b/e;->b:Lc/f/a/b/f;

    invoke-virtual {p1, v0}, Lc/f/a/b/f;->a(Lcom/yunos/aliicx/common/AliicxMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    goto :goto_9

    :catchall_0
    move-exception p1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    goto :goto_e

    :catch_1
    move-exception p1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v6

    goto :goto_b

    :cond_a
    :try_start_4
    const-string p1, "drop, header not match."

    .line 11
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    const-string p1, "drop, msg too short"

    .line 12
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 13
    :goto_9
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :goto_a
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_d

    :catch_2
    move-exception p1

    goto :goto_c

    :catchall_1
    move-exception p1

    goto :goto_e

    :catch_3
    move-exception p1

    :goto_b
    :try_start_6
    const-string v3, "Exception found when parsing data."

    .line 14
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_c

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_a

    .line 16
    :goto_c
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_d
    return-void

    :goto_e
    if-eqz v4, :cond_d

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_f

    :catch_4
    move-exception v1

    .line 18
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_f
    throw p1
.end method

.method public final a([BI)Z
    .locals 3

    aget-byte v0, p1, p2

    const/4 v1, 0x1

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_0

    sub-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x22

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b([BI)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Bytes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v5, p1, v3

    if-lt v4, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    const-string v5, "%02x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "Aliicx"

    const-string v1, "start MsgListener loop."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    new-instance v1, Landroid/net/LocalServerSocket;

    const-string v2, "com.yunos.aliicx"

    invoke-direct {v1, v2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lc/f/a/b/e;->d:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lc/f/a/b/e;->c:Z

    if-nez v1, :cond_3

    :try_start_1
    const-string v1, "pending for incomming data."

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lc/f/a/b/e;->d:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/f/a/b/e;->d:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "sever acceptted"

    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lc/f/a/b/e;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lc/f/a/b/d;

    invoke-direct {v3, p0, v1}, Lc/f/a/b/d;-><init>(Lc/f/a/b/e;Landroid/net/LocalSocket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    const-string v2, "socket server interrupted"

    .line 4
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    goto :goto_0

    :cond_2
    const-string v1, "mSocketServer == null."

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_1
    const-string v2, "Exception found within MsgListener loop"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v1, "close server."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lc/f/a/b/e;->d:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lc/f/a/b/e;->d:Landroid/net/LocalServerSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "Exception found when closing server"

    .line 9
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    const-string v1, "MsgLister thread exit."

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception v1

    const-string v2, "Exception found when creating local socket server, exit."

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/f/a/b/e;->c:Z

    invoke-super {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
