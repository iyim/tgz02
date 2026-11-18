.class public Lcom/taobao/pexode/entity/RewindableFileInputStream;
.super Lcom/taobao/pexode/entity/RewindableInputStream;
.source "RewindableFileInputStream.java"


# instance fields
.field private mCanReposition:Z

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mFD:Ljava/io/FileDescriptor;

.field private mInitialPosition:J


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;I)V
    .locals 2
    .param p1    # Ljava/io/FileInputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/taobao/pexode/entity/RewindableInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 22
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mChannel:Ljava/nio/channels/FileChannel;

    .line 24
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mFD:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v0, -0x1

    .line 27
    iput-wide v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mInitialPosition:J

    .line 28
    iget-object p1, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mChannel:Ljava/nio/channels/FileChannel;

    if-eqz p1, :cond_0

    .line 30
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mInitialPosition:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/taobao/pexode/entity/RewindableFileInputStream;->reposition([Ljava/io/IOException;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mCanReposition:Z

    .line 40
    iget-boolean p1, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mCanReposition:Z

    if-nez p1, :cond_1

    .line 41
    invoke-virtual {p0, p2}, Lcom/taobao/pexode/entity/RewindableFileInputStream;->setBufferSize(I)V

    goto :goto_1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mFD:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 43
    invoke-virtual {p0, p1}, Lcom/taobao/pexode/entity/RewindableFileInputStream;->resetInputType(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private reposition([Ljava/io/IOException;)Z
    .locals 6

    .line 49
    iget-wide v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mInitialPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    .line 51
    :try_start_0
    iget-object v3, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 54
    array-length v1, p1

    if-lez v1, :cond_0

    .line 55
    aput-object v0, p1, v2

    :cond_0
    :goto_0
    return v2
.end method


# virtual methods
.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mFD:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mCanReposition:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/taobao/pexode/entity/RewindableInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mCanReposition:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mHostStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/pexode/entity/RewindableInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public rewind()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mCanReposition:Z

    if-eqz v0, :cond_3

    .line 85
    iget-boolean v0, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mClosed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 88
    new-array v0, v0, [Ljava/io/IOException;

    .line 89
    invoke-direct {p0, v0}, Lcom/taobao/pexode/entity/RewindableFileInputStream;->reposition([Ljava/io/IOException;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 90
    aget-object v0, v0, v1

    .line 91
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot rewind cause file stream reposition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mInitialPosition:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/pexode/entity/RewindableFileInputStream;->mFD:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") failed, detail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    .line 86
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot rewind cause file stream has been closed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    invoke-super {p0}, Lcom/taobao/pexode/entity/RewindableInputStream;->rewind()V

    return-void
.end method

.method public rewindAndSetBufferSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/taobao/pexode/entity/RewindableFileInputStream;->rewind()V

    .line 101
    invoke-virtual {p0, p1}, Lcom/taobao/pexode/entity/RewindableFileInputStream;->setBufferSize(I)V

    return-void
.end method
