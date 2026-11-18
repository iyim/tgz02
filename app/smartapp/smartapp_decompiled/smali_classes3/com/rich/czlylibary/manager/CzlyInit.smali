.class public Lcom/rich/czlylibary/manager/CzlyInit;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rich/czlylibary/manager/CzlyInit$Instance;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->k:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->l:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/rich/czlylibary/manager/CzlyInit$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/manager/CzlyInit;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a()Lcom/rich/czlylibary/manager/CzlyInit;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/manager/CzlyInit$Instance;->CZLYINIT:Lcom/rich/czlylibary/manager/CzlyInit$Instance;

    invoke-virtual {v0}, Lcom/rich/czlylibary/manager/CzlyInit$Instance;->getCzlyInit()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/app/Application;)V
    .locals 7

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-boolean v1, Lcom/rich/czlylibary/manager/c;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;

    const-string v2, "MiguHttp"

    invoke-direct {v1, v2}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v1, v2}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;->a(Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor$Level;)V

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/rich/czlylibary/http/interceptor/HttpLoggingInterceptor;->a(Ljava/util/logging/Level;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    iget-wide v1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->l:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v5, v6, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    iget-wide v1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->l:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    iget-wide v1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->l:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    :goto_0
    invoke-static {}, Lcom/rich/czlylibary/http/e/a;->a()Lcom/rich/czlylibary/http/e/a$a;

    move-result-object v1

    iget-object v2, v1, Lcom/rich/czlylibary/http/e/a$a;->a:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, v1, Lcom/rich/czlylibary/http/e/a$a;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/rich/czlylibary/http/e/a;->b:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/rich/czlylibary/http/a;->a(Landroid/app/Application;)Lcom/rich/czlylibary/http/a;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/a;->a(Lokhttp3/OkHttpClient;)Lcom/rich/czlylibary/http/a;

    move-result-object p1

    sget-object v0, Lcom/rich/czlylibary/http/cache/CacheMode;->NO_CACHE:Lcom/rich/czlylibary/http/cache/CacheMode;

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/a;->a(Lcom/rich/czlylibary/http/cache/CacheMode;)Lcom/rich/czlylibary/http/a;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/rich/czlylibary/http/a;->a(J)Lcom/rich/czlylibary/http/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/rich/czlylibary/http/a;->a(I)Lcom/rich/czlylibary/http/a;

    return-void
.end method

.method private c(Landroid/app/Application;)V
    .locals 0

    invoke-static {p1}, Lcom/rich/czlylibary/b/m;->a(Landroid/app/Application;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/rich/czlylibary/manager/CzlyInit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->b(Landroid/app/Application;)V

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/manager/CzlyInit;->c(Landroid/app/Application;)V

    return-object p0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->l:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->g:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/manager/CzlyInit;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->h:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->i:Ljava/lang/String;

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->k:Ljava/lang/String;

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/rich/czlylibary/b/i;->a(Z)V

    sput-boolean p1, Lcom/rich/czlylibary/manager/c;->a:Z

    const-string p1, "MiguVersionName"

    const-string v0, "2.1.9"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/rich/czlylibary/b/i;->a(Z)V

    sput-boolean p1, Lcom/rich/czlylibary/manager/c;->a:Z

    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/CzlyInit;->j:Ljava/lang/String;

    return-void
.end method
