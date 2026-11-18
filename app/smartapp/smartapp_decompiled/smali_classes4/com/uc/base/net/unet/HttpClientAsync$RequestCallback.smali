.class Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;
.super Lcom/alibaba/mbg/unet/Request$Callback;
.source "HttpClientAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/base/net/unet/HttpClientAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestCallback"
.end annotation


# instance fields
.field private mByteReceived:Ljava/io/ByteArrayOutputStream;

.field private mReceiveChannel:Ljava/nio/channels/WritableByteChannel;

.field final synthetic this$0:Lcom/uc/base/net/unet/HttpClientAsync;


# direct methods
.method constructor <init>(Lcom/uc/base/net/unet/HttpClientAsync;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    invoke-direct {p0}, Lcom/alibaba/mbg/unet/Request$Callback;-><init>()V

    .line 279
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->mByteReceived:Ljava/io/ByteArrayOutputStream;

    .line 280
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->mByteReceived:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->mReceiveChannel:Ljava/nio/channels/WritableByteChannel;

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Lcom/alibaba/mbg/unet/RequestException;)V
    .locals 2

    .line 348
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HttpClientAsync RequestCallback onFailed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " err message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " errorCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->getErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "shellunet"

    invoke-static {v0, p2}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#unet HttpClientAsync RequestCallback onFailed "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    invoke-static {p2}, Lcom/uc/base/net/unet/HttpClientAsync;->access$100(Lcom/uc/base/net/unet/HttpClientAsync;)I

    move-result p2

    const/4 v1, 0x1

    if-ge p2, v1, :cond_1

    .line 352
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->getErrorCode()I

    move-result v1

    invoke-static {p2, p1, v1}, Lcom/uc/base/net/unet/HttpClientAsync;->access$200(Lcom/uc/base/net/unet/HttpClientAsync;Lcom/alibaba/mbg/unet/Request;I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->getErrorCode()I

    move-result v1

    invoke-static {p2, p1, v1}, Lcom/uc/base/net/unet/HttpClientAsync;->access$300(Lcom/uc/base/net/unet/HttpClientAsync;Lcom/alibaba/mbg/unet/Request;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "retry with backup ip"

    .line 357
    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object p1, p1, Lcom/uc/base/net/unet/HttpClientAsync;->mEventListener:Lcom/uc/base/net/IHttpEventListener;

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->getErrorCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/uc/base/net/IHttpEventListener;->onError(ILjava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object p2, p1, Lcom/uc/base/net/unet/HttpClientAsync;->mRequestAdaptor:Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;

    invoke-virtual {p2}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/alibaba/mbg/unet/RequestException;->getErrorCode()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/uc/base/net/unet/HttpClientAsync;->NotifyRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 364
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    invoke-static {p1}, Lcom/uc/base/net/unet/HttpClientAsync;->access$400(Lcom/uc/base/net/unet/HttpClientAsync;)V

    return-void
.end method

.method public onReadCompleted(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 319
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 321
    :try_start_0
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->mReceiveChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2, p3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :catch_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 326
    invoke-interface {p1, p3}, Lcom/alibaba/mbg/unet/Request;->readNew(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onRedirectReceived(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;Ljava/lang/String;)V
    .locals 1

    const-string p2, "shellunet"

    const-string v0, "HttpClientAsync RequestCallback onRedirectReceived "

    .line 284
    invoke-static {p2, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object p2, p2, Lcom/uc/base/net/unet/HttpClientAsync;->mEventListener:Lcom/uc/base/net/IHttpEventListener;

    invoke-interface {p2, p3}, Lcom/uc/base/net/IHttpEventListener;->onRedirect(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 287
    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Request;->followRedirect()V

    goto :goto_0

    .line 289
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Request;->cancel()V

    :goto_0
    return-void
.end method

.method public onResponseStarted(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    .locals 6

    const-string v0, "shellunet"

    const-string v1, "HttpClientAsync RequestCallback onResponseStarted "

    .line 295
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x8000

    .line 297
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/alibaba/mbg/unet/Request;->readNew(Ljava/nio/ByteBuffer;)V

    .line 298
    iget-object v1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object v1, v1, Lcom/uc/base/net/unet/HttpClientAsync;->mEventListener:Lcom/uc/base/net/IHttpEventListener;

    invoke-static {p2}, Lcom/uc/base/net/unet/util/HttpUtil;->getProtocolVersion(Lcom/alibaba/mbg/unet/Response;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusCode()I

    move-result v3

    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusText()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-interface {v1, v2, v3, v4}, Lcom/uc/base/net/IHttpEventListener;->onStatusMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    new-instance v1, Lcom/uc/base/net/adaptor/Headers;

    invoke-direct {v1}, Lcom/uc/base/net/adaptor/Headers;-><init>()V

    .line 302
    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getAllHeadersAsList()Ljava/util/List;

    move-result-object p2

    .line 303
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 306
    new-instance v3, Lcom/uc/base/net/adaptor/Headers$Header;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/uc/base/net/adaptor/Headers$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, v3}, Lcom/uc/base/net/adaptor/Headers;->addHeader(Lcom/uc/base/net/adaptor/Headers$Header;)V

    .line 308
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Content-Encoding"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "zstd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpClientAsync zstd response for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alibaba/mbg/unet/Request;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/uc/base/net/unet/HttpClientAsync;->access$002(Lcom/uc/base/net/unet/HttpClientAsync;Z)Z

    goto :goto_0

    .line 314
    :cond_1
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object p1, p1, Lcom/uc/base/net/unet/HttpClientAsync;->mEventListener:Lcom/uc/base/net/IHttpEventListener;

    invoke-interface {p1, v1}, Lcom/uc/base/net/IHttpEventListener;->onHeaderReceived(Lcom/uc/base/net/adaptor/Headers;)V

    return-void
.end method

.method public onSucceeded(Lcom/alibaba/mbg/unet/Request;Lcom/alibaba/mbg/unet/Response;)V
    .locals 6

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#unet HttpClientAsync RequestCallback onSucceeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "shellunet"

    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->mByteReceived:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 335
    array-length v0, p1

    int-to-long v0, v0

    .line 336
    iget-object v2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object v2, v2, Lcom/uc/base/net/unet/HttpClientAsync;->mEventListener:Lcom/uc/base/net/IHttpEventListener;

    array-length v3, p1

    invoke-interface {v2, p1, v3}, Lcom/uc/base/net/IHttpEventListener;->onBodyReceived([BI)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 339
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusCode()I

    move-result v3

    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/alibaba/mbg/unet/Response;->getAllHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/uc/base/net/unet/HttpClientAsync;->NotifyRequestComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 341
    :cond_1
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    invoke-virtual {p1, p2}, Lcom/uc/base/net/unet/HttpClientAsync;->FormatMetrics(Lcom/alibaba/mbg/unet/Response;)V

    .line 342
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object p1, p1, Lcom/uc/base/net/unet/HttpClientAsync;->mMetricsConnection:Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;

    sget-object p2, Lcom/uc/base/net/metrics/HttpConnectionMetricsType;->METRICS_TYPE_AFTER_DECOMPRESS_BYTES:Lcom/uc/base/net/metrics/HttpConnectionMetricsType;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/uc/base/net/metrics/HttpConnectionMetricsConnection;->setMetrics(Lcom/uc/base/net/metrics/HttpConnectionMetricsType;Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object p1, p1, Lcom/uc/base/net/unet/HttpClientAsync;->mEventListener:Lcom/uc/base/net/IHttpEventListener;

    iget-object p2, p0, Lcom/uc/base/net/unet/HttpClientAsync$RequestCallback;->this$0:Lcom/uc/base/net/unet/HttpClientAsync;

    iget-object p2, p2, Lcom/uc/base/net/unet/HttpClientAsync;->mMetrics:Lcom/uc/base/net/metrics/HttpConnectionMetrics;

    invoke-interface {p1, p2}, Lcom/uc/base/net/IHttpEventListener;->onMetrics(Lcom/uc/base/net/metrics/IHttpConnectionMetrics;)V

    return-void
.end method
