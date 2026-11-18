.class public Lcom/aliyun/oss/common/comm/ResponseProgressHandler;
.super Ljava/lang/Object;
.source "ResponseProgressHandler.java"

# interfaces
.implements Lcom/aliyun/oss/common/comm/ResponseHandler;


# instance fields
.field private final originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/model/WebServiceRequest;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ResponseProgressHandler;->originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

    return-void
.end method


# virtual methods
.method public handle(Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ResponseProgressHandler;->originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

    invoke-virtual {v0}, Lcom/aliyun/oss/model/WebServiceRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Content-Length"

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 53
    invoke-static {v0, v1, v2}, Lcom/aliyun/oss/event/ProgressPublisher;->publishResponseContentLength(Lcom/aliyun/oss/event/ProgressListener;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Cannot parse the Content-Length header of the response: "

    .line 55
    invoke-static {v2, v1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v2, Lcom/aliyun/oss/event/ProgressListener;->NOOP:Lcom/aliyun/oss/event/ProgressListener;

    if-eq v0, v2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ResponseProgressHandler;->originalRequest:Lcom/aliyun/oss/model/WebServiceRequest;

    invoke-static {v1, v0}, Lcom/aliyun/oss/event/ProgressInputStream;->inputStreamForResponse(Ljava/io/InputStream;Lcom/aliyun/oss/model/WebServiceRequest;)Ljava/io/InputStream;

    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setContent(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method
