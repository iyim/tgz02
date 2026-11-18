.class public Lcom/taobao/downloader/download/protocol/huc/HUCConnection;
.super Ljava/lang/Object;
.source "HUCConnection.java"

# interfaces
.implements Lcom/taobao/downloader/download/protocol/DLConnection;


# instance fields
.field protected httpURLConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private replaceUrlByIp(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 98
    sget-object v0, Lcom/taobao/downloader/Configuration;->dnsService:Lcom/taobao/downloader/adpater/DnsService;

    if-nez v0, :cond_0

    return-object p1

    .line 103
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    sget-object v2, Lcom/taobao/downloader/Configuration;->dnsService:Lcom/taobao/downloader/adpater/DnsService;

    invoke-interface {v2, v1}, Lcom/taobao/downloader/adpater/DnsService;->getIpPorts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    .line 115
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 117
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 118
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 122
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object p1
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method

.method public disConnect()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getDownloadLength()J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 6

    const-string v0, "\n"

    .line 80
    iget-object v1, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    const-string v0, "HttpResponse is empty!"

    return-object v0

    .line 84
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v2, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 87
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 88
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "huc"

    const-string v2, "get error msg"

    .line 92
    invoke-static {v1, v2, v0}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream()Lcom/taobao/downloader/download/protocol/DLInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/taobao/downloader/download/protocol/huc/HUCInputStream;

    iget-object v1, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/downloader/download/protocol/huc/HUCInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public openConnection(Ljava/net/URL;Lcom/taobao/downloader/download/protocol/DLConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/taobao/downloader/download/protocol/DLConfig;->isLastConnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/taobao/downloader/download/protocol/DLConfig;->getConnectFailTime()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->replaceUrlByIp(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 31
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 32
    iget-object v0, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Lcom/taobao/downloader/download/protocol/DLConfig;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34
    iget-object p1, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Lcom/taobao/downloader/download/protocol/DLConfig;->getReadTimeout()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35
    iget-object p1, p0, Lcom/taobao/downloader/download/protocol/huc/HUCConnection;->httpURLConnection:Ljava/net/HttpURLConnection;

    sget-boolean p2, Lcom/taobao/downloader/download/protocol/DLConfig;->REDIRECTABLE:Z

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method
