.class public Lanet/channel/request/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bizId:Ljava/lang/String;

.field private body:Lanet/channel/request/BodyEntry;

.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private formattedUrl:Lanet/channel/util/HttpUrl;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private isRedirectEnable:Z

.field private method:Ljava/lang/String;

.field private originUrl:Lanet/channel/util/HttpUrl;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeout:I

.field private redirectTimes:I

.field private rs:Lanet/channel/statist/RequestStatistic;

.field private seq:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 261
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    const/4 v0, 0x0

    .line 267
    iput v0, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    const/16 v0, 0x2710

    .line 272
    iput v0, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    .line 273
    iput v0, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    return-void
.end method

.method static synthetic access$000(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lanet/channel/request/Request$Builder;)Ljava/util/Map;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1000(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->seq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->seq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1100(Lanet/channel/request/Request$Builder;)I
    .locals 0

    .line 258
    iget p0, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    return p0
.end method

.method static synthetic access$1102(Lanet/channel/request/Request$Builder;I)I
    .locals 0

    .line 258
    iput p1, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    return p1
.end method

.method static synthetic access$1200(Lanet/channel/request/Request$Builder;)I
    .locals 0

    .line 258
    iget p0, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    return p0
.end method

.method static synthetic access$1202(Lanet/channel/request/Request$Builder;I)I
    .locals 0

    .line 258
    iput p1, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    return p1
.end method

.method static synthetic access$1300(Lanet/channel/request/Request$Builder;)Lanet/channel/util/HttpUrl;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method static synthetic access$1302(Lanet/channel/request/Request$Builder;Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/HttpUrl;

    return-object p1
.end method

.method static synthetic access$1400(Lanet/channel/request/Request$Builder;)Lanet/channel/util/HttpUrl;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method static synthetic access$1402(Lanet/channel/request/Request$Builder;Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/HttpUrl;

    return-object p1
.end method

.method static synthetic access$1500(Lanet/channel/request/Request$Builder;)Lanet/channel/statist/RequestStatistic;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    return-object p0
.end method

.method static synthetic access$1502(Lanet/channel/request/Request$Builder;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    return-object p1
.end method

.method static synthetic access$200(Lanet/channel/request/Request$Builder;)Ljava/util/Map;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$202(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lanet/channel/request/Request$Builder;)Lanet/channel/request/BodyEntry;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    return-object p0
.end method

.method static synthetic access$302(Lanet/channel/request/Request$Builder;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    return-object p1
.end method

.method static synthetic access$400(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->charset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->charset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lanet/channel/request/Request$Builder;)Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    return p0
.end method

.method static synthetic access$502(Lanet/channel/request/Request$Builder;Z)Z
    .locals 0

    .line 258
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    return p1
.end method

.method static synthetic access$600(Lanet/channel/request/Request$Builder;)I
    .locals 0

    .line 258
    iget p0, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    return p0
.end method

.method static synthetic access$602(Lanet/channel/request/Request$Builder;I)I
    .locals 0

    .line 258
    iput p1, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    return p1
.end method

.method static synthetic access$700(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method static synthetic access$702(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p1
.end method

.method static synthetic access$800(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic access$802(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p1
.end method

.method static synthetic access$900(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .locals 0

    .line 258
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->bizId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 258
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->bizId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 1

    .line 327
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 1

    .line 338
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    .line 341
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public build()Lanet/channel/request/Request;
    .locals 6

    .line 408
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    const/4 v1, 0x0

    const-string v2, "method "

    const-string v3, "awcn.Request"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/Request$Method;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must have a request body"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/Request$Method;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should not have a request body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iput-object v4, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    .line 418
    :cond_1
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    invoke-interface {v0}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 422
    :cond_2
    new-instance v0, Lanet/channel/request/Request;

    invoke-direct {v0, p0, v4}, Lanet/channel/request/Request;-><init>(Lanet/channel/request/Request$Builder;Lanet/channel/request/Request$1;)V

    return-object v0
.end method

.method public setBizId(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 378
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->bizId:Ljava/lang/String;

    return-object p0
.end method

.method public setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 353
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->body:Lanet/channel/request/BodyEntry;

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 347
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->charset:Ljava/lang/String;

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public setConnectTimeout(I)Lanet/channel/request/Request$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 396
    iput p1, p0, Lanet/channel/request/Request$Builder;->connectTimeout:I

    :cond_0
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lanet/channel/request/Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanet/channel/request/Request$Builder;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 368
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 3

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "GET"

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "POST"

    .line 301
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "OPTIONS"

    .line 303
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 304
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "HEAD"

    .line 305
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "PUT"

    .line 307
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v1, "DELETE"

    .line 309
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 310
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_5
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->method:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 296
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "method is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParams(Ljava/util/Map;)Lanet/channel/request/Request$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanet/channel/request/Request$Builder;"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->params:Ljava/util/Map;

    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public setReadTimeout(I)Lanet/channel/request/Request$Builder;
    .locals 0

    if-lez p1, :cond_0

    .line 389
    iput p1, p0, Lanet/channel/request/Request$Builder;->readTimeout:I

    :cond_0
    return-object p0
.end method

.method public setRedirectEnable(Z)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 358
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->isRedirectEnable:Z

    return-object p0
.end method

.method public setRedirectTimes(I)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 363
    iput p1, p0, Lanet/channel/request/Request$Builder;->redirectTimes:I

    return-object p0
.end method

.method public setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 402
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->rs:Lanet/channel/statist/RequestStatistic;

    return-object p0
.end method

.method public setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 383
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->seq:Ljava/lang/String;

    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 373
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;
    .locals 0

    .line 280
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/HttpUrl;

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .locals 3

    .line 286
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/HttpUrl;

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->formattedUrl:Lanet/channel/util/HttpUrl;

    .line 288
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->originUrl:Lanet/channel/util/HttpUrl;

    if-eqz v0, :cond_0

    return-object p0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toURL is invalid! toURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
