.class public Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;
.super Lorg/apache/http/entity/BasicHttpEntity;
.source "ChunkedInputStreamEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;
    }
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private firstAttempt:Z

.field private notClosableRequestEntity:Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)V
    .locals 6

    .line 46
    invoke-direct {p0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->firstAttempt:Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->setChunked(Z)V

    const-wide/16 v1, -0x1

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 53
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Unable to parse content length from request."

    .line 56
    invoke-static {v4, v3}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Content-Type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    new-instance v4, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v4, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->notClosableRequestEntity:Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;

    .line 62
    iget-object v4, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->notClosableRequestEntity:Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;

    invoke-virtual {v4, v0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->setCloseDisabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->notClosableRequestEntity:Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;

    invoke-virtual {v0, v3}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContent()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->content:Ljava/io/InputStream;

    .line 66
    iget-object p1, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->setContent(Ljava/io/InputStream;)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, v1, v2}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->setContentLength(J)V

    return-void
.end method


# virtual methods
.method public isChunked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->notClosableRequestEntity:Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->firstAttempt:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->firstAttempt:Z

    .line 87
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity;->notClosableRequestEntity:Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/comm/io/ChunkedInputStreamEntity$ReleasableInputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
