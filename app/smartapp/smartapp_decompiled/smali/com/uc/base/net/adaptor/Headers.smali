.class public Lcom/uc/base/net/adaptor/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/base/net/adaptor/Headers$Header;
    }
.end annotation


# static fields
.field public static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final ACCEPT_RANGES:Ljava/lang/String; = "Accept-Ranges"

.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CONNECTION:Ljava/lang/String; = "Connection"

.field public static final CONNECTION_CLOSE:Ljava/lang/String; = "close"

.field public static final CONNECTION_KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final COOKIE:Ljava/lang/String; = "Cookie"

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final ENCODING_ZSTD:Ljava/lang/String; = "zstd"

.field public static final ETAG:Ljava/lang/String; = "Etag"

.field public static final EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HOST:Ljava/lang/String; = "Host"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field public static final METHOD_CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "Pragma"

.field public static final PRIVATE_ENCODING:Ljava/lang/String; = "Private-Encoding"

.field public static final PRIVATE_ENCODING_GZ2:Ljava/lang/String; = "gz2"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "Proxy-Connection"

.field public static final REFERER:Ljava/lang/String; = "Referer"

.field public static final REFRESH:Ljava/lang/String; = "Refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "Www-Authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "X-Permitted-Cross-Domain-Policies"

.field public static final ZSTD_DICTID:Ljava/lang/String; = "Zstd-Dictid"


# instance fields
.field protected mConnectionType:Ljava/lang/String;

.field protected mContentLength:J

.field protected mHeaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uc/base/net/adaptor/Headers$Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lcom/uc/base/net/adaptor/Headers;->mContentLength:J

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/uc/base/net/adaptor/Headers;->mConnectionType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addHeader(Lcom/uc/base/net/adaptor/Headers$Header;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAcceptRanges()Ljava/lang/String;
    .locals 1

    const-string v0, "Accept-Ranges"

    .line 142
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()[Lcom/uc/base/net/adaptor/Headers$Header;
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/uc/base/net/adaptor/Headers$Header;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/base/net/adaptor/Headers$Header;

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    const-string v0, "Cache-Control"

    .line 150
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getCondensedHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 244
    invoke-virtual {p0, p1}, Lcom/uc/base/net/adaptor/Headers;->getHeaders(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 246
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 248
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 249
    aget-object p1, p1, v1

    return-object p1

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_2

    const-string v1, ", "

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/uc/base/net/adaptor/Headers;->mConnectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Disposition"

    .line 138
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Encoding"

    .line 122
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    const-string v0, "Content-Length"

    .line 101
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uc/base/net/adaptor/Headers;->mContentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 110
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/uc/base/net/adaptor/Headers;->mContentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    .line 118
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()[Ljava/lang/String;
    .locals 1

    const-string v0, "Set-Cookie"

    .line 162
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getHeaders(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    const-string v0, "Etag"

    .line 158
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 1

    const-string v0, "Expires"

    .line 146
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 197
    iget-object v2, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 198
    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$000(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$100(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 278
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 280
    :goto_0
    iget-object v2, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 281
    iget-object v2, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 282
    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$000(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$100(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
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
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 222
    iget-object v2, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 223
    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$000(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$100(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 1

    const-string v0, "Last-Modified"

    .line 154
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    const-string v0, "Location"

    .line 126
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
    .locals 1

    const-string v0, "Pragma"

    .line 166
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 1

    const-string v0, "Proxy-Authenticate"

    .line 134
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefresh()Ljava/lang/String;
    .locals 1

    const-string v0, "Refresh"

    .line 170
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "Transfer-Encoding"

    .line 97
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 1

    const-string v0, "Www-Authenticate"

    .line 130
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 1

    const-string v0, "X-Permitted-Cross-Domain-Policies"

    .line 174
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGz2Encoding()Z
    .locals 2

    const-string v0, "Private-Encoding"

    .line 295
    invoke-virtual {p0, v0}, Lcom/uc/base/net/adaptor/Headers;->getFirstHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gz2"

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/uc/base/net/adaptor/Headers;->mConnectionType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 302
    iget-object v0, p0, Lcom/uc/base/net/adaptor/Headers;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "head ---> \n"

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 307
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$000(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->access$100(Lcom/uc/base/net/adaptor/Headers$Header;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
