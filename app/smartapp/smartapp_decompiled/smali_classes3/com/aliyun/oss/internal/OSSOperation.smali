.class public abstract Lcom/aliyun/oss/internal/OSSOperation;
.super Ljava/lang/Object;
.source "OSSOperation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

.field protected static errorResponseHandler:Lcom/aliyun/oss/internal/OSSErrorResponseHandler;

.field protected static noRetryStrategy:Lcom/aliyun/oss/common/comm/RetryStrategy;


# instance fields
.field protected client:Lcom/aliyun/oss/common/comm/ServiceClient;

.field protected credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

.field protected volatile endpoint:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/aliyun/oss/internal/OSSErrorResponseHandler;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/OSSErrorResponseHandler;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/OSSOperation;->errorResponseHandler:Lcom/aliyun/oss/internal/OSSErrorResponseHandler;

    .line 65
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/OSSOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    .line 66
    new-instance v0, Lcom/aliyun/oss/common/comm/NoRetryStrategy;

    invoke-direct {v0}, Lcom/aliyun/oss/common/comm/NoRetryStrategy;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/OSSOperation;->noRetryStrategy:Lcom/aliyun/oss/common/comm/RetryStrategy;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSOperation;->client:Lcom/aliyun/oss/common/comm/ServiceClient;

    .line 70
    iput-object p2, p0, Lcom/aliyun/oss/internal/OSSOperation;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    return-void
.end method

.method private static createSigner(Lcom/aliyun/oss/HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/common/auth/Credentials;)Lcom/aliyun/oss/common/auth/RequestSigner;
    .locals 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance p2, Lcom/aliyun/oss/internal/OSSRequestSigner;

    invoke-virtual {p0}, Lcom/aliyun/oss/HttpMethod;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1, p3}, Lcom/aliyun/oss/internal/OSSRequestSigner;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/common/auth/Credentials;)V

    return-object p2
.end method


# virtual methods
.method protected createDefaultContext(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/common/comm/ExecutionContext;
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, v0, v0}, Lcom/aliyun/oss/internal/OSSOperation;->createDefaultContext(Lcom/aliyun/oss/HttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/common/comm/ExecutionContext;

    move-result-object p1

    return-object p1
.end method

.method protected createDefaultContext(Lcom/aliyun/oss/HttpMethod;Ljava/lang/String;)Lcom/aliyun/oss/common/comm/ExecutionContext;
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/oss/internal/OSSOperation;->createDefaultContext(Lcom/aliyun/oss/HttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/common/comm/ExecutionContext;

    move-result-object p1

    return-object p1
.end method

.method protected createDefaultContext(Lcom/aliyun/oss/HttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/common/comm/ExecutionContext;
    .locals 2

    .line 171
    new-instance v0, Lcom/aliyun/oss/common/comm/ExecutionContext;

    invoke-direct {v0}, Lcom/aliyun/oss/common/comm/ExecutionContext;-><init>()V

    const-string v1, "utf-8"

    .line 172
    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/comm/ExecutionContext;->setCharset(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/aliyun/oss/internal/OSSOperation;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-interface {v1}, Lcom/aliyun/oss/common/auth/CredentialsProvider;->getCredentials()Lcom/aliyun/oss/common/auth/Credentials;

    move-result-object v1

    invoke-static {p1, p2, p3, v1}, Lcom/aliyun/oss/internal/OSSOperation;->createSigner(Lcom/aliyun/oss/HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/common/auth/Credentials;)Lcom/aliyun/oss/common/auth/RequestSigner;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->setSigner(Lcom/aliyun/oss/common/auth/RequestSigner;)V

    .line 174
    sget-object p2, Lcom/aliyun/oss/internal/OSSOperation;->errorResponseHandler:Lcom/aliyun/oss/internal/OSSErrorResponseHandler;

    invoke-virtual {v0, p2}, Lcom/aliyun/oss/common/comm/ExecutionContext;->addResponseHandler(Lcom/aliyun/oss/common/comm/ResponseHandler;)V

    .line 175
    sget-object p2, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    if-ne p1, p2, :cond_0

    .line 176
    sget-object p1, Lcom/aliyun/oss/internal/OSSOperation;->noRetryStrategy:Lcom/aliyun/oss/common/comm/RetryStrategy;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/comm/ExecutionContext;->setRetryStrategy(Lcom/aliyun/oss/common/comm/RetryStrategy;)V

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/aliyun/oss/internal/OSSOperation;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-interface {p1}, Lcom/aliyun/oss/common/auth/CredentialsProvider;->getCredentials()Lcom/aliyun/oss/common/auth/Credentials;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/comm/ExecutionContext;->setCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V

    return-object v0
.end method

.method protected doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aliyun/oss/common/comm/RequestMessage;",
            "Lcom/aliyun/oss/common/parser/ResponseParser<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 108
    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aliyun/oss/common/comm/RequestMessage;",
            "Lcom/aliyun/oss/common/parser/ResponseParser<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 113
    invoke-virtual/range {v0 .. v7}, Lcom/aliyun/oss/internal/OSSOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aliyun/oss/common/comm/RequestMessage;",
            "Lcom/aliyun/oss/common/parser/ResponseParser<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/RequestHandler;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/common/comm/ResponseHandler;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getOriginalRequest()Lcom/aliyun/oss/model/WebServiceRequest;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/oss/internal/OSSOperation;->client:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v2}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliyun/oss/ClientConfiguration;->getDefaultHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aliyun/oss/model/WebServiceRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 123
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aliyun/oss/model/WebServiceRequest;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 125
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->getMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lcom/aliyun/oss/internal/OSSOperation;->createDefaultContext(Lcom/aliyun/oss/HttpMethod;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/common/comm/ExecutionContext;

    move-result-object p3

    .line 127
    invoke-virtual {p3}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getCredentials()Lcom/aliyun/oss/common/auth/Credentials;

    move-result-object p4

    invoke-interface {p4}, Lcom/aliyun/oss/common/auth/Credentials;->useSecurityToken()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->isUseUrlSignature()Z

    move-result p4

    if-nez p4, :cond_0

    .line 128
    invoke-virtual {p3}, Lcom/aliyun/oss/common/comm/ExecutionContext;->getCredentials()Lcom/aliyun/oss/common/auth/Credentials;

    move-result-object p4

    invoke-interface {p4}, Lcom/aliyun/oss/common/auth/Credentials;->getSecurityToken()Ljava/lang/String;

    move-result-object p4

    const-string v1, "x-oss-security-token"

    invoke-virtual {p1, v1, p4}, Lcom/aliyun/oss/common/comm/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    new-instance p4, Lcom/aliyun/oss/common/comm/RequestProgressHanlder;

    invoke-direct {p4}, Lcom/aliyun/oss/common/comm/RequestProgressHanlder;-><init>()V

    invoke-virtual {p3, p4}, Lcom/aliyun/oss/common/comm/ExecutionContext;->addRequestHandler(Lcom/aliyun/oss/common/comm/RequestHandler;)V

    if-eqz p6, :cond_1

    .line 133
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/aliyun/oss/common/comm/RequestHandler;

    .line 134
    invoke-virtual {p3, p6}, Lcom/aliyun/oss/common/comm/ExecutionContext;->addRequestHandler(Lcom/aliyun/oss/common/comm/RequestHandler;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object p4, p0, Lcom/aliyun/oss/internal/OSSOperation;->client:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {p4}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object p4

    invoke-virtual {p4}, Lcom/aliyun/oss/ClientConfiguration;->isCrcCheckEnabled()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 137
    new-instance p4, Lcom/aliyun/oss/common/comm/RequestChecksumHanlder;

    invoke-direct {p4}, Lcom/aliyun/oss/common/comm/RequestChecksumHanlder;-><init>()V

    invoke-virtual {p3, p4}, Lcom/aliyun/oss/common/comm/ExecutionContext;->addRequestHandler(Lcom/aliyun/oss/common/comm/RequestHandler;)V

    .line 140
    :cond_2
    new-instance p4, Lcom/aliyun/oss/common/comm/ResponseProgressHandler;

    invoke-direct {p4, v0}, Lcom/aliyun/oss/common/comm/ResponseProgressHandler;-><init>(Lcom/aliyun/oss/model/WebServiceRequest;)V

    invoke-virtual {p3, p4}, Lcom/aliyun/oss/common/comm/ExecutionContext;->addResponseHandler(Lcom/aliyun/oss/common/comm/ResponseHandler;)V

    if-eqz p7, :cond_3

    .line 142
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/aliyun/oss/common/comm/ResponseHandler;

    .line 143
    invoke-virtual {p3, p6}, Lcom/aliyun/oss/common/comm/ExecutionContext;->addResponseHandler(Lcom/aliyun/oss/common/comm/ResponseHandler;)V

    goto :goto_1

    .line 145
    :cond_3
    iget-object p4, p0, Lcom/aliyun/oss/internal/OSSOperation;->client:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {p4}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object p4

    invoke-virtual {p4}, Lcom/aliyun/oss/ClientConfiguration;->isCrcCheckEnabled()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 146
    new-instance p4, Lcom/aliyun/oss/common/comm/ResponseChecksumHandler;

    invoke-direct {p4}, Lcom/aliyun/oss/common/comm/ResponseChecksumHandler;-><init>()V

    invoke-virtual {p3, p4}, Lcom/aliyun/oss/common/comm/ExecutionContext;->addResponseHandler(Lcom/aliyun/oss/common/comm/ResponseHandler;)V

    .line 149
    :cond_4
    invoke-virtual {p0, p1, p3, p5}, Lcom/aliyun/oss/internal/OSSOperation;->send(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;Z)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object p1

    .line 152
    :try_start_0
    invoke-interface {p2, p1}, Lcom/aliyun/oss/common/parser/ResponseParser;->parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/aliyun/oss/common/parser/ResponseParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 154
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/aliyun/oss/common/parser/ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createInvalidResponseException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/aliyun/oss/OSSException;

    move-result-object p1

    const-string p3, "Unable to parse response error: "

    .line 156
    invoke-static {p3, p2}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getEndpoint()Ljava/net/URI;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSOperation;->endpoint:Ljava/net/URI;

    return-object v0
.end method

.method protected getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSOperation;->client:Lcom/aliyun/oss/common/comm/ServiceClient;

    return-object v0
.end method

.method protected send(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/aliyun/oss/internal/OSSOperation;->send(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;Z)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object p1

    return-object p1
.end method

.method protected send(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;Z)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/oss/internal/OSSOperation;->client:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/common/comm/ServiceClient;->sendRequest(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object p1
    :try_end_0
    .catch Lcom/aliyun/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 101
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSUtils;->safeCloseResponse(Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 98
    :try_start_1
    check-cast p1, Lcom/aliyun/oss/OSSException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_0
    throw p1
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0

    .line 78
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSOperation;->endpoint:Ljava/net/URI;

    return-void
.end method
