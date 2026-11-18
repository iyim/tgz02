.class public Lcom/taobao/pexode/entity/RewindableByteArrayStream;
.super Lcom/taobao/pexode/entity/RewindableStream;
.source "RewindableByteArrayStream.java"


# instance fields
.field private buf:[B

.field private count:I

.field private final mInitialOffset:I

.field private mark:I

.field private pos:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, v0}, Lcom/taobao/pexode/entity/RewindableStream;-><init>(I)V

    .line 18
    iput-object p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->buf:[B

    .line 19
    iput p2, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    .line 20
    iput p2, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->mark:I

    add-int/2addr p3, p2

    .line 21
    iget-object p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->buf:[B

    array-length v0, p1

    if-le p3, v0, :cond_0

    array-length p3, p1

    :cond_0
    iput p3, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    .line 22
    iput p2, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->mInitialOffset:I

    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getBuffer()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->buf:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    return v0
.end method

.method public getBufferOffset()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->mInitialOffset:I

    return v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    iget p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    iput p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->mark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read()I
    .locals 3

    monitor-enter p0

    .line 72
    :try_start_0
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->buf:[B

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    .line 79
    monitor-exit p0

    return p1

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    .line 82
    monitor-exit p0

    return p1

    .line 85
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_2

    iget p3, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    sub-int/2addr p3, v0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->buf:[B

    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->mark:I

    iput v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public rewind()V
    .locals 1

    .line 27
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->mInitialOffset:I

    iput v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    return-void
.end method

.method public rewindAndSetBufferSize(I)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->rewind()V

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 99
    monitor-exit p0

    return-wide v0

    .line 101
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    .line 102
    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    iget v2, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_1

    iget p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->count:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int p1, v1

    :goto_0
    iput p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I

    .line 103
    iget p1, p0, Lcom/taobao/pexode/entity/RewindableByteArrayStream;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
