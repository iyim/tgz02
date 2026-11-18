.class Lcom/taobao/zcache/network/StandardNetwork;
.super Lcom/taobao/zcache/network/NetworkAdaptor;
.source "StandardNetwork.java"


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/taobao/zcache/core/ProxyRequest;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/taobao/zcache/network/NetworkAdaptor;-><init>()V

    .line 21
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcom/taobao/zcache/core/ProxyRequest;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    iget v0, p1, Lcom/taobao/zcache/core/ProxyRequest;->timeout:I

    if-lez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    iget v1, p1, Lcom/taobao/zcache/core/ProxyRequest;->timeout:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 33
    :try_start_1
    iget-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    :catch_0
    iget-object v0, p1, Lcom/taobao/zcache/core/ProxyRequest;->header:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 37
    iget-object p1, p1, Lcom/taobao/zcache/core/ProxyRequest;->header:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    iget-object v1, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :catch_1
    move-exception p1

    const/4 v0, -0x2

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/taobao/zcache/network/StandardNetwork;->setExceptionError(ILjava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getOriginInputStream()Ljava/io/InputStream;
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, -0x4

    .line 72
    invoke-virtual {p0, v1, v0}, Lcom/taobao/zcache/network/StandardNetwork;->setExceptionError(ILjava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/StandardNetwork;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, -0x3

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/taobao/zcache/network/StandardNetwork;->setExceptionError(ILjava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method
