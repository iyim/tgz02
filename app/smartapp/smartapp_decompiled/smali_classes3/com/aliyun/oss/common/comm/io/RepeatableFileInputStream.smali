.class public Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;
.super Ljava/io/InputStream;
.source "RepeatableFileInputStream.java"


# instance fields
.field private file:Ljava/io/File;

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field private fis:Ljava/io/FileInputStream;

.field private markPos:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p1}, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;-><init>(Ljava/io/FileInputStream;Ljava/io/File;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/io/FileInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;-><init>(Ljava/io/FileInputStream;Ljava/io/File;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/io/FileInputStream;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->file:Ljava/io/File;

    .line 35
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 36
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->markPos:J

    .line 48
    iput-object p2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->file:Ljava/io/File;

    .line 49
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 50
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 51
    iget-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->markPos:J

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

    .line 73
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

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

    .line 77
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->file:Ljava/io/File;

    return-object v0
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public mark(I)V
    .locals 3

    .line 65
    :try_start_0
    iget-object p1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->markPos:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File input stream marked at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->markPos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 67
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

    .line 81
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

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

    .line 90
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->markPos:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 56
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->markPos:J

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

    .line 86
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
