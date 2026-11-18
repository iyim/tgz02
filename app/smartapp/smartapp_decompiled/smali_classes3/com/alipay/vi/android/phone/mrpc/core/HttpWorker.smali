.class public Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;
.super Ljava/lang/Object;
.source "HttpWorker.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alipay/vi/android/phone/mrpc/core/Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Lorg/apache/http/protocol/HttpContext;

.field private d:Lorg/apache/http/client/CookieStore;

.field private e:Landroid/webkit/CookieManager;

.field private f:Lorg/apache/http/entity/AbstractHttpEntity;

.field private g:Lorg/apache/http/HttpHost;

.field private h:Ljava/net/URL;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHttpManager:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

.field protected mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

.field mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/vi/android/phone/mrpc/core/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    .line 99
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->i:I

    .line 134
    iput-boolean v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->j:Z

    .line 139
    iput-boolean v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->k:Z

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->l:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    .line 161
    iget-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    iget-object p1, p1, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    const-string p1, "HttpWorker"

    const-string p2, "init"

    .line 163
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->getPostData()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 237
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 238
    iput-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method private b()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    return-void
.end method

.method private c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getCallback()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v0

    return-object v0
.end method

.method private d()Lorg/apache/http/HttpResponse;
    .locals 1

    .line 473
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->e()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private e()Lorg/apache/http/HttpResponse;
    .locals 4

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "By Http/Https to request. operationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 478
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpWorker"

    .line 477
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->g()Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 482
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->l()Lorg/apache/http/HttpHost;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 484
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->i()Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 485
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->j()I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    .line 486
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->k()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->g()Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;

    return-object v0

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    const-string v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->m:Ljava/lang/String;

    return-object v0
.end method

.method private g()Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->getHttpClient()Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 3

    .line 516
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 519
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 528
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    .line 531
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->a()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 532
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->m()Landroid/webkit/CookieManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cookie"

    .line 531
    invoke-interface {v0, v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()Lorg/apache/http/HttpHost;
    .locals 4

    .line 543
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->g:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    return-object v0

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->k()Ljava/net/URL;

    move-result-object v0

    .line 548
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->j()I

    move-result v3

    .line 549
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->g:Lorg/apache/http/HttpHost;

    .line 550
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->g:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method private j()I
    .locals 3

    .line 554
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->k()Ljava/net/URL;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    :goto_0
    return v0
.end method

.method private k()Ljava/net/URL;
    .locals 2

    .line 566
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->h:Ljava/net/URL;

    if-eqz v0, :cond_0

    return-object v0

    .line 569
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->h:Ljava/net/URL;

    .line 570
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->h:Ljava/net/URL;

    return-object v0
.end method

.method private l()Lorg/apache/http/HttpHost;
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/NetworkUtils;->getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "127.0.0.1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    const/16 v2, 0x1f97

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private m()Landroid/webkit/CookieManager;
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->e:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 822
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->e:Landroid/webkit/CookieManager;

    .line 823
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->e:Landroid/webkit/CookieManager;

    return-object v0
.end method


# virtual methods
.method public call()Lcom/alipay/vi/android/phone/mrpc/core/Response;
    .locals 14

    const-string v0, "HttpManager"

    const-string v1, "HttpWorker"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x2

    :try_start_0
    const-string v8, "call"

    .line 257
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v8, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/alipay/vi/android/phone/mrpc/core/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "call 1"

    .line 264
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-interface {v8, v9}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onPreExecute(Lcom/alipay/vi/android/phone/mrpc/core/Request;)V

    :cond_0
    const-string v8, "call 2"

    .line 270
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->h()V

    const-string v8, "call 3"

    .line 274
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v8, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c:Lorg/apache/http/protocol/HttpContext;

    const-string v9, "http.cookie-store"

    iget-object v10, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    invoke-interface {v8, v9, v10}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "call 4"

    .line 282
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->g()Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;

    move-result-object v8

    sget-object v9, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v8, v9}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    const-string v8, "call 5"

    .line 285
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 289
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->d()Lorg/apache/http/HttpResponse;

    move-result-object v10

    const-string v11, "call 6"

    .line 290
    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 292
    iget-object v13, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    sub-long/2addr v11, v8

    invoke-virtual {v13, v11, v12}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->addConnectTime(J)V

    const-string v8, "call 7"

    .line 293
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v8, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->d:Lorg/apache/http/client/CookieStore;

    invoke-interface {v8}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v8

    .line 297
    iget-object v9, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v9}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->isResetCookie()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->m()Landroid/webkit/CookieManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_1
    const-string v9, "call 8"

    .line 300
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 304
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/cookie/Cookie;

    .line 305
    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; domain="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface {v9}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "; Secure"

    goto :goto_1

    :cond_3
    move-object v9, v2

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 312
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->m()Landroid/webkit/CookieManager;

    move-result-object v11

    iget-object v12, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v12}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    :cond_4
    const-string v8, "call 9"

    .line 316
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v8, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {p0, v10, v8}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/vi/android/phone/mrpc/core/Response;

    move-result-object v8

    const-string v9, "call 10"

    .line 319
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_5

    .line 321
    invoke-virtual {v8}, Lcom/alipay/vi/android/phone/mrpc/core/Response;->getResData()[B

    move-result-object v11

    if-eqz v11, :cond_5

    .line 322
    invoke-virtual {v8}, Lcom/alipay/vi/android/phone/mrpc/core/Response;->getResData()[B

    move-result-object v11

    array-length v11, v11

    int-to-long v11, v11

    goto :goto_2

    :cond_5
    move-wide v11, v9

    :goto_2
    cmp-long v13, v11, v9

    if-nez v13, :cond_6

    .line 325
    instance-of v9, v8, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;

    if-eqz v9, :cond_6

    .line 326
    move-object v9, v8

    nop

    nop
    :try_end_0
    .catch Lcom/alipay/vi/android/phone/mrpc/core/HttpException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    :try_start_1
    invoke-virtual {v9}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->getHeader()Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v9

    const-string v10, "Content-Length"

    invoke-virtual {v9, v10}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;->getHead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 329
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/vi/android/phone/mrpc/core/HttpException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_0
    :try_start_2
    const-string v9, "parse Content-Length error"

    .line 331
    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v9}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 336
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 337
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    const-string v9, "call 11"

    .line 339
    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 260
    :cond_8
    new-instance v1, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 261
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "The network is not available"

    invoke-direct {v1, v8, v9}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/alipay/vi/android/phone/mrpc/core/HttpException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto/16 :goto_6

    :catch_4
    move-exception v1

    goto/16 :goto_7

    :catch_5
    move-exception v1

    goto/16 :goto_8

    :catch_6
    move-exception v1

    goto/16 :goto_9

    :catch_7
    move-exception v1

    goto/16 :goto_a

    :catch_8
    move-exception v1

    goto/16 :goto_b

    :catch_9
    move-exception v1

    goto/16 :goto_c

    :catch_a
    move-exception v1

    goto/16 :goto_d

    :catch_b
    move-exception v1

    goto/16 :goto_e

    :catch_c
    move-exception v1

    goto/16 :goto_f

    :catch_d
    move-exception v0

    goto/16 :goto_10

    :catch_e
    move-exception v1

    goto/16 :goto_11

    .line 451
    :goto_4
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 453
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 454
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v3, v5}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 456
    :cond_9
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 457
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 440
    :goto_5
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 442
    iget v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->i:I

    if-ge v5, v4, :cond_a

    add-int/2addr v5, v4

    .line 443
    iput v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->i:I

    .line 444
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->call()Lcom/alipay/vi/android/phone/mrpc/core/Response;

    move-result-object v0

    return-object v0

    .line 446
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 428
    :goto_6
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 429
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 430
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v6, v5}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 432
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 434
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 418
    :goto_7
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 419
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    const/16 v4, 0x9

    if-eqz v3, :cond_c

    .line 420
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 422
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 424
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 408
    :goto_8
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 409
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_d

    .line 410
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 412
    :cond_d
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 400
    :goto_9
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 401
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    const/4 v4, 0x5

    if-eqz v3, :cond_e

    .line 402
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 404
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 406
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 392
    :goto_a
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 393
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz v3, :cond_f

    .line 394
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v4, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 396
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 398
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 384
    :goto_b
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 385
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 386
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 388
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 390
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 376
    :goto_c
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 377
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 378
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 380
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 382
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 368
    :goto_d
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 369
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 370
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v6, v5}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 372
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 374
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 360
    :goto_e
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 361
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 362
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v7, v5}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 364
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 366
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 352
    :goto_f
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 353
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 354
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v7, v5}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 356
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    .line 358
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 350
    :goto_10
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Url parser error!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :goto_11
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->b()V

    .line 344
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 345
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;->getCode()I

    move-result v5

    invoke-virtual {v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onFailed(Lcom/alipay/vi/android/phone/mrpc/core/Request;ILjava/lang/String;)V

    .line 347
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    goto :goto_13

    :goto_12
    throw v1

    :goto_13
    goto :goto_12
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->call()Lcom/alipay/vi/android/phone/mrpc/core/Response;

    move-result-object v0

    return-object v0
.end method

.method protected fillResponse(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 4

    .line 691
    invoke-virtual {p0, p2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v0

    .line 693
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 697
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const-string v2, "charset"

    .line 698
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Type"

    .line 699
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 701
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p1, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->setCreateTime(J)V

    .line 704
    invoke-virtual {p1, v0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;->setPeriod(J)V

    return-void
.end method

.method protected getContentType(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, ";"

    .line 589
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 591
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const/16 v5, 0x3d

    .line 592
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x2

    .line 593
    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Content-Type"

    aput-object v6, v5, v2

    aput-object v4, v5, v7

    goto :goto_1

    :cond_0
    const-string v5, "="

    .line 597
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 598
    :goto_1
    aget-object v4, v5, v2

    aget-object v5, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getHeaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getPeriod(Lorg/apache/http/HttpResponse;)J
    .locals 4

    const-string v0, "Cache-Control"

    .line 715
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 718
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 720
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->parserMaxage([Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "HttpWorker"

    .line 722
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string v0, "Expires"

    .line 727
    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 729
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method protected getPostData()Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_0

    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getReqData()[B

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, "true"

    .line 200
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 202
    invoke-static {v0, v1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->f:Lorg/apache/http/entity/AbstractHttpEntity;

    return-object v0
.end method

.method public getRequest()Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    return-object v0
.end method

.method protected getUri()Ljava/net/URI;
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    .line 180
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/vi/android/phone/mrpc/core/Response;
    .locals 10

    const-string v0, "ArrayOutputStream close error!"

    const-string v1, "finally,handleResponse"

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpWorker"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 619
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 626
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    .line 628
    invoke-virtual {p0, v2, v8, v9, v5}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V

    .line 629
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v4, 0x0

    .line 630
    iput-boolean v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->k:Z

    .line 631
    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v4, v8, v9}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->addSocketTime(J)V

    .line 632
    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mHttpManager:Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;

    array-length v6, v2

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/alipay/vi/android/phone/mrpc/core/HttpManager;->addDataSize(J)V

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v4, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;

    invoke-virtual {p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    move-result-object v6

    invoke-direct {v4, v6, p2, p3, v2}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;-><init>(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 637
    invoke-virtual {p0, v4, p1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->fillResponse(Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 650
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p1

    .line 646
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_0

    .line 644
    :try_start_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 646
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 650
    :cond_0
    :goto_1
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :cond_1
    if-nez v2, :cond_2

    .line 653
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x130

    :cond_2
    :goto_2
    return-object v4
.end method

.method protected handleResponseHeader(Lorg/apache/http/HttpResponse;)Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;
    .locals 5

    .line 673
    new-instance v0, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;

    invoke-direct {v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;-><init>()V

    .line 675
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 676
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected parserMaxage([Ljava/lang/String;)J
    .locals 3

    const/4 v0, 0x0

    .line 742
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 743
    aget-object v1, p1, v0

    const-string v2, "max-age"

    .line 744
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 746
    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;)Lcom/alipay/vi/android/phone/mrpc/core/Response;
    .locals 2

    .line 841
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    .line 842
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_1

    .line 847
    invoke-virtual {p0, p2, v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->willHandleOtherCode(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 848
    :cond_0
    new-instance p2, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 849
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw p2

    .line 858
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/vi/android/phone/mrpc/core/Response;

    move-result-object p1

    return-object p1
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 0

    const/16 p2, 0x130

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
    .locals 9

    if-eqz p4, :cond_2

    .line 796
    invoke-static {p1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 797
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const/16 p1, 0x800

    .line 801
    :try_start_0
    new-array p1, p1, [B

    .line 802
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;

    invoke-virtual {v4}, Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 803
    invoke-virtual {p4, p1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr p2, v3

    .line 805
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 806
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->c()Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/vi/android/phone/mrpc/core/HttpWorker;->mRequest:Lcom/alipay/vi/android/phone/mrpc/core/HttpUrlRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v5, p2

    long-to-double v7, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    :try_start_1
    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/vi/android/phone/mrpc/core/TransportCallback;->onProgressUpdate(Lcom/alipay/vi/android/phone/mrpc/core/Request;D)V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 814
    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/IOUtil;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "HttpWorker"

    .line 811
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 812
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HttpWorker Request Error!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 814
    :goto_1
    invoke-static {v0}, Lcom/alipay/vi/android/phone/mrpc/core/IOUtil;->closeStream(Ljava/io/Closeable;)V

    throw p1

    .line 792
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 793
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
