.class public Lcom/aliyun/oss/common/comm/DefaultServiceClient;
.super Lcom/aliyun/oss/common/comm/ServiceClient;
.source "DefaultServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/common/comm/DefaultServiceClient$DefaultRetryStrategy;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static httpRequestFactory:Lcom/aliyun/oss/common/comm/HttpRequestFactory;


# instance fields
.field protected authCache:Lorg/apache/http/client/AuthCache;

.field protected connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field protected credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

.field protected httpClient:Lorg/apache/http/impl/client/CloseableHttpClient;

.field protected proxyHttpHost:Lorg/apache/http/HttpHost;

.field protected requestConfig:Lorg/apache/http/client/config/RequestConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/aliyun/oss/common/comm/HttpRequestFactory;

    invoke-direct {v0}, Lcom/aliyun/oss/common/comm/HttpRequestFactory;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->httpRequestFactory:Lcom/aliyun/oss/common/comm/HttpRequestFactory;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/aliyun/oss/ClientConfiguration;)V
    .locals 8

    .line 84
    invoke-direct {p0, p1}, Lcom/aliyun/oss/common/comm/ServiceClient;-><init>(Lcom/aliyun/oss/ClientConfiguration;)V

    .line 85
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->createHttpClientConnectionManager()Lorg/apache/http/conn/HttpClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 86
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->createHttpClient(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->httpClient:Lorg/apache/http/impl/client/CloseableHttpClient;

    .line 87
    invoke-static {}, Lorg/apache/http/client/config/RequestConfig;->custom()Lorg/apache/http/client/config/RequestConfig$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 89
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 90
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getConnectionRequestTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/config/RequestConfig$Builder;->setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 92
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyPort()I

    move-result v2

    if-eqz v1, :cond_0

    if-lez v2, :cond_0

    .line 95
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->proxyHttpHost:Lorg/apache/http/HttpHost;

    .line 96
    iget-object v3, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->proxyHttpHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0, v3}, Lorg/apache/http/client/config/RequestConfig$Builder;->setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/client/config/RequestConfig$Builder;

    .line 98
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyUsername()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyPassword()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyDomain()Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyWorkstation()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 103
    new-instance v6, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v6}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    iput-object v6, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 104
    iget-object v6, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    new-instance v7, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v7, v1, v2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lorg/apache/http/auth/NTCredentials;

    invoke-direct {v1, v3, v4, p1, v5}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v1}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 107
    new-instance p1, Lorg/apache/http/impl/client/BasicAuthCache;

    invoke-direct {p1}, Lorg/apache/http/impl/client/BasicAuthCache;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->authCache:Lorg/apache/http/client/AuthCache;

    .line 108
    iget-object p1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->authCache:Lorg/apache/http/client/AuthCache;

    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->proxyHttpHost:Lorg/apache/http/HttpHost;

    new-instance v2, Lorg/apache/http/impl/auth/BasicScheme;

    invoke-direct {v2}, Lorg/apache/http/impl/auth/BasicScheme;-><init>()V

    invoke-interface {p1, v1, v2}, Lorg/apache/http/client/AuthCache;->put(Lorg/apache/http/HttpHost;Lorg/apache/http/auth/AuthScheme;)V

    .line 112
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/client/config/RequestConfig$Builder;->build()Lorg/apache/http/client/config/RequestConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    return-void
.end method

.method protected static buildResponse(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lorg/apache/http/client/methods/CloseableHttpResponse;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/aliyun/oss/common/comm/ResponseMessage;

    invoke-direct {v0, p0}, Lcom/aliyun/oss/common/comm/ResponseMessage;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient$Request;)V

    .line 140
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setUrl(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setHttpResponse(Lorg/apache/http/client/methods/CloseableHttpResponse;)V

    .line 143
    invoke-interface {p1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setStatusCode(I)V

    .line 147
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 149
    invoke-interface {p1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->readAndSetErrorResponse(Ljava/io/InputStream;Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    .line 155
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_4

    aget-object v2, p0, v1

    .line 156
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setContentLength(J)V

    .line 159
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/aliyun/oss/common/comm/ResponseMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 162
    :cond_4
    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/oss/common/utils/HttpUtil;->convertHeaderCharsetFromIso88591(Ljava/util/Map;)V

    return-object v0
.end method

.method private static readAndSetErrorResponse(Ljava/io/InputStream;Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lcom/aliyun/oss/common/utils/IOUtils;->readStreamAsByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 170
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setErrorResponseAsString(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method private setProxyAuthorizationIfNeed(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v1}, Lcom/aliyun/oss/ClientConfiguration;->getProxyPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Proxy-Authorization"

    .line 278
    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createHttpClient(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 1

    .line 220
    invoke-static {}, Lorg/apache/http/impl/client/HttpClients;->custom()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/HttpClientBuilder;->setConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->setUserAgent(Ljava/lang/String;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/HttpClientBuilder;->disableContentCompression()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/HttpClientBuilder;->disableAutomaticRetries()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object p1

    return-object p1
.end method

.method protected createHttpClientConnectionManager()Lorg/apache/http/conn/HttpClientConnectionManager;
    .locals 4

    .line 230
    :try_start_0
    new-instance v0, Lorg/apache/http/ssl/SSLContextBuilder;

    invoke-direct {v0}, Lorg/apache/http/ssl/SSLContextBuilder;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Lcom/aliyun/oss/common/comm/DefaultServiceClient$1;

    invoke-direct {v2, p0}, Lcom/aliyun/oss/common/comm/DefaultServiceClient$1;-><init>(Lcom/aliyun/oss/common/comm/DefaultServiceClient;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/ssl/SSLContextBuilder;->loadTrustMaterial(Ljava/security/KeyStore;Lorg/apache/http/ssl/TrustStrategy;)Lorg/apache/http/ssl/SSLContextBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/ssl/SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    new-instance v1, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    sget-object v2, Lorg/apache/http/conn/ssl/NoopHostnameVerifier;->INSTANCE:Lorg/apache/http/conn/ssl/NoopHostnameVerifier;

    invoke-direct {v1, v0, v2}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    .line 245
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    sget-object v2, Lcom/aliyun/oss/common/comm/Protocol;->HTTP:Lcom/aliyun/oss/common/comm/Protocol;

    invoke-virtual {v2}, Lcom/aliyun/oss/common/comm/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    sget-object v2, Lcom/aliyun/oss/common/comm/Protocol;->HTTPS:Lcom/aliyun/oss/common/comm/Protocol;

    invoke-virtual {v2}, Lcom/aliyun/oss/common/comm/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v0

    .line 250
    new-instance v1, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;)V

    .line 251
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->getMaxConnections()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 252
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->getMaxConnections()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 253
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->getValidateAfterInactivity()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setValidateAfterInactivity(I)V

    .line 254
    invoke-static {}, Lorg/apache/http/config/SocketConfig;->custom()Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v2}, Lcom/aliyun/oss/ClientConfiguration;->getSocketTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/http/config/SocketConfig$Builder;->setSoTimeout(I)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/http/config/SocketConfig$Builder;->setTcpNoDelay(Z)Lorg/apache/http/config/SocketConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/SocketConfig$Builder;->build()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V

    .line 256
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->isUseReaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->config:Lcom/aliyun/oss/ClientConfiguration;

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->getIdleConnectionTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->setIdleConnectionTime(J)V

    .line 258
    invoke-static {v1}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->registerConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Z

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 241
    new-instance v1, Lcom/aliyun/oss/ClientException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected createHttpContext()Lorg/apache/http/client/protocol/HttpClientContext;
    .locals 2

    .line 264
    invoke-static {}, Lorg/apache/http/client/protocol/HttpClientContext;->create()Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/http/client/config/RequestConfig;)V

    .line 266
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)V

    .line 268
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->authCache:Lorg/apache/http/client/AuthCache;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAuthCache(Lorg/apache/http/client/AuthCache;)V

    :cond_0
    return-object v0
.end method

.method protected getDefaultRetryStrategy()Lcom/aliyun/oss/common/comm/RetryStrategy;
    .locals 2

    .line 216
    new-instance v0, Lcom/aliyun/oss/common/comm/DefaultServiceClient$DefaultRetryStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aliyun/oss/common/comm/DefaultServiceClient$DefaultRetryStrategy;-><init>(Lcom/aliyun/oss/common/comm/DefaultServiceClient$1;)V

    return-object v0
.end method

.method public sendRequestCore(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->httpRequestFactory:Lcom/aliyun/oss/common/comm/HttpRequestFactory;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/common/comm/HttpRequestFactory;->createHttpRequest(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lcom/aliyun/oss/common/comm/ExecutionContext;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object p2

    .line 119
    invoke-direct {p0, p2}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->setProxyAuthorizationIfNeed(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 120
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->createHttpContext()Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->requestConfig:Lorg/apache/http/client/config/RequestConfig;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setRequestConfig(Lorg/apache/http/client/config/RequestConfig;)V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->httpClient:Lorg/apache/http/impl/client/CloseableHttpClient;

    invoke-virtual {v1, p2, v0}, Lorg/apache/http/impl/client/CloseableHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    invoke-static {p1, p2}, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->buildResponse(Lcom/aliyun/oss/common/comm/ServiceClient$Request;Lorg/apache/http/client/methods/CloseableHttpResponse;)Lcom/aliyun/oss/common/comm/ResponseMessage;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 128
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/ExceptionFactory;->createNetworkException(Ljava/io/IOException;)Lcom/aliyun/oss/ClientException;

    move-result-object p1

    throw p1
.end method

.method public shutdown()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-static {v0}, Lcom/aliyun/oss/common/comm/IdleConnectionReaper;->removeConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Z

    .line 285
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/DefaultServiceClient;->connectionManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->shutdown()V

    return-void
.end method
