.class public Lcom/aliyun/oss/common/comm/RequestProgressHanlder;
.super Ljava/lang/Object;
.source "RequestProgressHanlder.java"

# interfaces
.implements Lcom/aliyun/oss/common/comm/RequestHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handle(Lcom/aliyun/oss/common/comm/RequestMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getOriginalRequest()Lcom/aliyun/oss/model/WebServiceRequest;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/aliyun/oss/model/WebServiceRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Content-Length"

    .line 45
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 48
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 49
    invoke-static {v1, v2, v3}, Lcom/aliyun/oss/event/ProgressPublisher;->publishRequestContentLength(Lcom/aliyun/oss/event/ProgressListener;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Cannot parse the Content-Length header of the request: "

    .line 51
    invoke-static {v3, v2}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 59
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 62
    :cond_2
    sget-object v3, Lcom/aliyun/oss/event/ProgressListener;->NOOP:Lcom/aliyun/oss/event/ProgressListener;

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lcom/aliyun/oss/event/ProgressInputStream;->inputStreamForRequest(Ljava/io/InputStream;Lcom/aliyun/oss/model/WebServiceRequest;)Ljava/io/InputStream;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/aliyun/oss/common/comm/RequestMessage;->setContent(Ljava/io/InputStream;)V

    return-void
.end method
