.class Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;
.super Ljava/lang/Object;
.source "TimeoutServiceClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/comm/TimeoutServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lorg/apache/http/client/methods/CloseableHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private httpContext:Lorg/apache/http/client/protocol/HttpClientContext;

.field private httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field final synthetic this$0:Lcom/aliyun/oss/common/comm/TimeoutServiceClient;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/TimeoutServiceClient;Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/protocol/HttpClientContext;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;->this$0:Lcom/aliyun/oss/common/comm/TimeoutServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 125
    iput-object p3, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;->httpContext:Lorg/apache/http/client/protocol/HttpClientContext;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;->call()Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;->this$0:Lcom/aliyun/oss/common/comm/TimeoutServiceClient;

    iget-object v0, v0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient;->httpClient:Lorg/apache/http/impl/client/CloseableHttpClient;

    iget-object v1, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v2, p0, Lcom/aliyun/oss/common/comm/TimeoutServiceClient$HttpRequestTask;->httpContext:Lorg/apache/http/client/protocol/HttpClientContext;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/CloseableHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v0

    return-object v0
.end method
