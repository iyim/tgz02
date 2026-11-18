.class public Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;
.super Ljava/lang/Object;
.source "UnetResponseAdaptor.java"

# interfaces
.implements Lcom/uc/base/net/IResponse;


# instance fields
.field private mUnetResponse:Lcom/alibaba/mbg/unet/Response;


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/unet/Response;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    return-void
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .locals 1

    const-string v0, "Accept-Ranges"

    .line 318
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()[Lcom/uc/base/net/adaptor/Headers$Header;
    .locals 5

    .line 97
    new-instance v0, Lcom/uc/base/net/adaptor/Headers;

    invoke-direct {v0}, Lcom/uc/base/net/adaptor/Headers;-><init>()V

    .line 98
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 102
    new-instance v3, Lcom/uc/base/net/adaptor/Headers$Header;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/uc/base/net/adaptor/Headers$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v3}, Lcom/uc/base/net/adaptor/Headers;->addHeader(Lcom/uc/base/net/adaptor/Headers$Header;)V

    goto :goto_0

    .line 106
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnetResponseAdaptor getAllHeaders:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uc/base/net/adaptor/Headers;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unet"

    invoke-static {v2, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcom/uc/base/net/adaptor/Headers;->getAllHeaders()[Lcom/uc/base/net/adaptor/Headers$Header;

    move-result-object v0

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    const-string v0, "Cache-Control"

    .line 328
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no impl in unet. "

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    const-string v0, "Connection"

    .line 298
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Disposition"

    .line 308
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Encoding"

    .line 233
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    :try_start_0
    const-string v0, "Content-Length"

    .line 254
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    .line 243
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()[Ljava/lang/String;
    .locals 1

    const-string v0, "Cookie"

    .line 338
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getHeaders(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    const-string v0, "Etag"

    .line 223
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    const-string v0, "Expires"

    .line 213
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 121
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Response;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 124
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getLastHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    const-string v0, "Last-Modified"

    .line 203
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "unet"

    const-string v1, "UnetResponseAdaptor getLocation"

    .line 192
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Response;->getLastLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
    .locals 1

    const-string v0, "Pragma"

    .line 349
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-static {v0}, Lcom/uc/base/net/unet/util/HttpUtil;->getProtocolVersion(Lcom/alibaba/mbg/unet/Response;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 1

    const-string v0, "Proxy-Authenticate"

    .line 267
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHostName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Response;->getHttpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "Transfer-Encoding"

    .line 288
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 1

    const-string v0, "Www-Authenticate"

    .line 278
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 1

    const-string v0, "X-Permitted-Cross-Domain-Policies"

    .line 359
    invoke-virtual {p0, v0}, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readResponse()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetResponseAdaptor;->mUnetResponse:Lcom/alibaba/mbg/unet/Response;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Response;->readResponse()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
