.class public Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ChunkedInputStreamEntity.java"

# interfaces
.implements Lcom/aliyun/oss/common/comm/io/Releasable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReleasableInputStreamEntity"
.end annotation


# instance fields
.field private closeDisabled:Z

.field private final content:Ljava/io/InputStream;

.field private final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 102
    invoke-direct {p0, p1, v0, v1}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const-string v0, "Source input stream"

    .line 115
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->content:Ljava/io/InputStream;

    .line 116
    iput-wide p2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->length:J

    if-eqz p4, :cond_0

    .line 118
    invoke-virtual {p4}, Lorg/apache/http/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->setContentType(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->closeDisabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 110
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;-><init>(Ljava/io/InputStream;JLorg/apache/http/entity/ContentType;)V

    return-void
.end method

.method private doRelease()V
    .locals 2

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unexpected io exception when trying to close input stream"

    .line 186
    invoke-static {v1, v0}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->closeDisabled:Z

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->doRelease()V

    :cond_0
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->length:J

    return-wide v0
.end method

.method public isCloseDisabled()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->closeDisabled:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->doRelease()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCloseDisabled(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->closeDisabled:Z

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    .line 140
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->content:Ljava/io/InputStream;

    const/16 v1, 0x1000

    .line 143
    :try_start_0
    new-array v1, v1, [B

    .line 145
    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->length:J

    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    cmp-long v8, v2, v5

    if-gez v8, :cond_0

    .line 147
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 148
    invoke-virtual {p1, v1, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 152
    :cond_0
    iget-wide v2, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->length:J

    :goto_1
    cmp-long v8, v2, v5

    if-lez v8, :cond_2

    const-wide/16 v8, 0x1000

    .line 154
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v0, v1, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ne v8, v4, :cond_1

    goto :goto_2

    .line 158
    :cond_1
    invoke-virtual {p1, v1, v7, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    sub-long/2addr v2, v8

    goto :goto_1

    .line 163
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->close()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
