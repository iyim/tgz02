.class public Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;
.super Lorg/apache/http/entity/BasicHttpEntity;
.source "RepeatableInputStreamEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;
    }
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private firstAttempt:Z

.field private innerEntity:Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)V
    .locals 5

    .line 39
    invoke-direct {p0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->firstAttempt:Z

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->setChunked(Z)V

    .line 42
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->content:Ljava/io/InputStream;

    .line 44
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContentLength()J

    move-result-wide v1

    .line 46
    new-instance v3, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;

    iget-object v4, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-direct {v3, v4, v1, v2}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v3, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->innerEntity:Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;

    .line 47
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->innerEntity:Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {p0, v1}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->setContent(Ljava/io/InputStream;)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContentLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->setContentLength(J)V

    return-void
.end method


# virtual methods
.method public isChunked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->innerEntity:Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;->isRepeatable()Z

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

    .line 66
    iget-boolean v0, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->firstAttempt:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->firstAttempt:Z

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity;->innerEntity:Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/comm/RepeatableInputStreamEntity$NoAutoClosedInputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
