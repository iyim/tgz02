.class public Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;
.super Ljava/io/InputStream;
.source "FixedLengthInputStream.java"


# instance fields
.field private length:J

.field private wrappedInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->length:J

    if-eqz p1, :cond_0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 35
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    .line 36
    iput-wide p2, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->length:J

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal input stream or length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public getLength()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->length:J

    return-wide v0
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->length:J

    return-void
.end method

.method public setWrappedInputStream(Ljava/io/InputStream;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;->wrappedInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
