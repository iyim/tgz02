.class public Lcom/aliyun/oss/common/comm/io/BoundedInputStream;
.super Ljava/io/InputStream;
.source "BoundedInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private mark:J

.field private final max:J

.field private pos:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 73
    invoke-direct {p0, p1, v0, v1}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    const-wide/16 v0, -0x1

    .line 47
    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->mark:J

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->propagateClose:Z

    .line 62
    iput-wide p2, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->max:J

    .line 63
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method protected backoff(J)V
    .locals 2

    .line 245
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public isPropagateClose()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 193
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 89
    iget-wide v1, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    iget-wide v5, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    cmp-long v7, v5, v0

    if-ltz v7, :cond_0

    return v4

    .line 119
    :cond_0
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->max:J

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    int-to-long v2, p3

    iget-wide v5, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    sub-long/2addr v0, v5

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    int-to-long v0, p3

    .line 120
    :goto_0
    iget-object p3, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    long-to-int v1, v0

    invoke-virtual {p3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_2

    return v4

    .line 126
    :cond_2
    iget-wide p2, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    return p1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 183
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPropagateClose(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->propagateClose:Z

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->max:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 140
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->pos:J

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
