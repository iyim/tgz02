.class public Lcom/aliyun/oss/common/comm/ExecutionContext;
.super Ljava/lang/Object;
.source "ExecutionContext.java"


# instance fields
.field private charset:Ljava/lang/String;

.field private credentials:Lcom/aliyun/oss/common/auth/Credentials;

.field private requestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/RequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field private responseHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/ResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private retryStrategy:Lcom/aliyun/oss/common/comm/RetryStrategy;

.field private signer:Lcom/aliyun/oss/common/auth/RequestSigner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->requestHandlers:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->responseHandlers:Ljava/util/List;

    const-string v0, "utf-8"

    .line 43
    iput-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->charset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addRequestHandler(Lcom/aliyun/oss/common/comm/RequestHandler;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponseHandler(Lcom/aliyun/oss/common/comm/ResponseHandler;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->responseHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lcom/aliyun/oss/common/auth/Credentials;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->credentials:Lcom/aliyun/oss/common/auth/Credentials;

    return-object v0
.end method

.method public getResponseHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/ResponseHandler;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->responseHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getResquestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/RequestHandler;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->requestHandlers:Ljava/util/List;

    return-object v0
.end method

.method public getRetryStrategy()Lcom/aliyun/oss/common/comm/RetryStrategy;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->retryStrategy:Lcom/aliyun/oss/common/comm/RetryStrategy;

    return-object v0
.end method

.method public getSigner()Lcom/aliyun/oss/common/auth/RequestSigner;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->signer:Lcom/aliyun/oss/common/auth/RequestSigner;

    return-object v0
.end method

.method public insertRequestHandler(ILcom/aliyun/oss/common/comm/RequestHandler;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public insertResponseHandler(ILcom/aliyun/oss/common/comm/ResponseHandler;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->responseHandlers:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public removeRequestHandler(Lcom/aliyun/oss/common/comm/RequestHandler;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->requestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeResponseHandler(Lcom/aliyun/oss/common/comm/ResponseHandler;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->responseHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->charset:Ljava/lang/String;

    return-void
.end method

.method public setCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->credentials:Lcom/aliyun/oss/common/auth/Credentials;

    return-void
.end method

.method public setRetryStrategy(Lcom/aliyun/oss/common/comm/RetryStrategy;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->retryStrategy:Lcom/aliyun/oss/common/comm/RetryStrategy;

    return-void
.end method

.method public setSigner(Lcom/aliyun/oss/common/auth/RequestSigner;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/aliyun/oss/common/comm/ExecutionContext;->signer:Lcom/aliyun/oss/common/auth/RequestSigner;

    return-void
.end method
