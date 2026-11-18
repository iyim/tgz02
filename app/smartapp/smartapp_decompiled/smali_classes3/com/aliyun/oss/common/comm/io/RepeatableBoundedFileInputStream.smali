.class public Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;
.super Ljava/io/InputStream;
.source "RepeatableBoundedFileInputStream.java"


# instance fields
.field private bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private markPos:J


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/io/BoundedInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    .line 34
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->markPos:J

    .line 38
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->getWrappedInputStream()Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    .line 39
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    .line 40
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 41
    iget-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->markPos:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->close()V

    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    return-object v0
.end method

.method public mark(I)V
    .locals 3

    .line 56
    :try_start_0
    iget-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->markPos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File input stream marked at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->markPos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 58
    new-instance v0, Lcom/aliyun/oss/ClientException;

    const-string v1, "Failed to mark file position"

    invoke-direct {v0, v1, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->read()I

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

    .line 81
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    iget-object v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->markPos:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->backoff(J)V

    .line 46
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->markPos:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 47
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->markPos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableBoundedFileInputStream;->bis:Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/common/comm/io/BoundedInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
