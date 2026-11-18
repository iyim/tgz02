.class public Lcom/rich/czlylibary/http/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/http/a$a;
    }
.end annotation


# static fields
.field public static a:J = 0x12cL


# instance fields
.field private b:Landroid/app/Application;

.field private c:Landroid/os/Handler;

.field private d:Lokhttp3/OkHttpClient;

.field private e:Lcom/rich/czlylibary/http/model/HttpParams;

.field private f:Lcom/rich/czlylibary/http/model/HttpHeaders;

.field private g:I

.field private h:Lcom/rich/czlylibary/http/cache/CacheMode;

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rich/czlylibary/http/a;->c:Landroid/os/Handler;

    const/4 v0, 0x3

    iput v0, p0, Lcom/rich/czlylibary/http/a;->g:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rich/czlylibary/http/a;->i:J

    sget-object v0, Lcom/rich/czlylibary/http/cache/CacheMode;->NO_CACHE:Lcom/rich/czlylibary/http/cache/CacheMode;

    iput-object v0, p0, Lcom/rich/czlylibary/http/a;->h:Lcom/rich/czlylibary/http/cache/CacheMode;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;

    const-string v2, "miguHttp"

    invoke-direct {v1, v2}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;->a(Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;)V

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;->a(Ljava/util/logging/Level;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/rich/czlylibary/http/a$1;

    invoke-direct {v1, p0}, Lcom/rich/czlylibary/http/a$1;-><init>(Lcom/rich/czlylibary/http/a;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lcom/rich/czlylibary/http/e/a;->a()Lcom/rich/czlylibary/http/e/a$a;

    move-result-object v1

    iget-object v2, v1, Lcom/rich/czlylibary/http/e/a$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lcom/rich/czlylibary/http/e/a$a;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/rich/czlylibary/http/e/a;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/http/a;->d:Lokhttp3/OkHttpClient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rich/czlylibary/http/a$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/http/a;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()Lcom/rich/czlylibary/http/a;
    .locals 1

    invoke-static {}, Lcom/rich/czlylibary/http/a$a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/rich/czlylibary/http/request/PostRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/rich/czlylibary/http/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/http/request/PostRequest;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/rich/czlylibary/http/a;
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/rich/czlylibary/http/a;->g:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)Lcom/rich/czlylibary/http/a;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/rich/czlylibary/http/a;->i:J

    return-object p0
.end method

.method public a(Landroid/app/Application;)Lcom/rich/czlylibary/http/a;
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/a;->b:Landroid/app/Application;

    return-object p0
.end method

.method public a(Lcom/rich/czlylibary/http/cache/CacheMode;)Lcom/rich/czlylibary/http/a;
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/a;->h:Lcom/rich/czlylibary/http/cache/CacheMode;

    return-object p0
.end method

.method public a(Lokhttp3/OkHttpClient;)Lcom/rich/czlylibary/http/a;
    .locals 1

    const-string v0, "okHttpClient == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/rich/czlylibary/http/a;->d:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rich/czlylibary/http/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/rich/czlylibary/http/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 2

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->b:Landroid/app/Application;

    const-string v1, "please call MiguHttp.getInstance().init() first in application!"

    invoke-static {v0, v1}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->b:Landroid/app/Application;

    return-object v0
.end method

.method public c()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public d()Lokhttp3/OkHttpClient;
    .locals 2

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->d:Lokhttp3/OkHttpClient;

    const-string v1, "please call MiguHttp.getInstance().setOkHttpClient() first in application!"

    invoke-static {v0, v1}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->d:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/http/a;->g:I

    return v0
.end method

.method public f()Lcom/rich/czlylibary/http/cache/CacheMode;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->h:Lcom/rich/czlylibary/http/cache/CacheMode;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/rich/czlylibary/http/a;->i:J

    return-wide v0
.end method

.method public h()Lcom/rich/czlylibary/http/model/HttpParams;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->e:Lcom/rich/czlylibary/http/model/HttpParams;

    return-object v0
.end method

.method public i()Lcom/rich/czlylibary/http/model/HttpHeaders;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/a;->f:Lcom/rich/czlylibary/http/model/HttpHeaders;

    return-object v0
.end method
