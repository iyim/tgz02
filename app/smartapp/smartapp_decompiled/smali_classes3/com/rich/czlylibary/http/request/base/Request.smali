.class public abstract Lcom/rich/czlylibary/http/request/base/Request;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/rich/czlylibary/http/request/base/Request;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638f96e7c9b0eb5cL


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/rich/czlylibary/http/cache/CacheMode;

.field protected transient cachePolicy:Lcom/rich/czlylibary/http/cache/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/cache/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected cacheTime:J

.field protected transient call:Lcom/rich/czlylibary/http/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/a/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient callback:Lcom/rich/czlylibary/http/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient client:Lokhttp3/OkHttpClient;

.field protected transient converter:Lcom/rich/czlylibary/http/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected headers:Lcom/rich/czlylibary/http/model/HttpHeaders;

.field protected transient mRequest:Lokhttp3/Request;

.field protected params:Lcom/rich/czlylibary/http/model/HttpParams;

.field protected retryCount:I

.field protected transient tag:Ljava/lang/Object;

.field protected transient uploadInterceptor:Lcom/rich/czlylibary/http/request/base/a$b;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-direct {v0}, Lcom/rich/czlylibary/http/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    new-instance v0, Lcom/rich/czlylibary/http/model/HttpHeaders;

    invoke-direct {v0}, Lcom/rich/czlylibary/http/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->headers:Lcom/rich/czlylibary/http/model/HttpHeaders;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->baseUrl:Ljava/lang/String;

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object p1

    invoke-static {}, Lcom/rich/czlylibary/http/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Accept-Language"

    invoke-virtual {p0, v1, v0}, Lcom/rich/czlylibary/http/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/czlylibary/http/request/base/Request;

    :cond_0
    invoke-static {}, Lcom/rich/czlylibary/http/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "User-Agent"

    invoke-virtual {p0, v1, v0}, Lcom/rich/czlylibary/http/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/czlylibary/http/request/base/Request;

    :cond_1
    invoke-virtual {p1}, Lcom/rich/czlylibary/http/a;->h()Lcom/rich/czlylibary/http/model/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/a;->h()Lcom/rich/czlylibary/http/model/HttpParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/request/base/Request;->params(Lcom/rich/czlylibary/http/model/HttpParams;)Lcom/rich/czlylibary/http/request/base/Request;

    :cond_2
    invoke-virtual {p1}, Lcom/rich/czlylibary/http/a;->i()Lcom/rich/czlylibary/http/model/HttpHeaders;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/a;->i()Lcom/rich/czlylibary/http/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/request/base/Request;->headers(Lcom/rich/czlylibary/http/model/HttpHeaders;)Lcom/rich/czlylibary/http/request/base/Request;

    :cond_3
    invoke-virtual {p1}, Lcom/rich/czlylibary/http/a;->e()I

    move-result v0

    iput v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->retryCount:I

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/a;->f()Lcom/rich/czlylibary/http/cache/CacheMode;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheMode:Lcom/rich/czlylibary/http/cache/CacheMode;

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheTime:J

    return-void
.end method


# virtual methods
.method public adapt()Lcom/rich/czlylibary/http/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/czlylibary/http/a/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->call:Lcom/rich/czlylibary/http/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rich/czlylibary/http/a/b;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/http/a/b;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    :cond_0
    return-object v0
.end method

.method public adapt(Lcom/rich/czlylibary/http/a/a;Lcom/rich/czlylibary/http/a/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rich/czlylibary/http/a/a;",
            "Lcom/rich/czlylibary/http/a/d<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->call:Lcom/rich/czlylibary/http/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rich/czlylibary/http/a/b;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/http/a/b;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    :cond_0
    invoke-interface {p2, v0, p1}, Lcom/rich/czlylibary/http/a/d;->a(Lcom/rich/czlylibary/http/a/c;Lcom/rich/czlylibary/http/a/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lcom/rich/czlylibary/http/a/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/rich/czlylibary/http/a/d<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->call:Lcom/rich/czlylibary/http/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/rich/czlylibary/http/a/b;

    invoke-direct {v0, p0}, Lcom/rich/czlylibary/http/a/b;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/rich/czlylibary/http/a/d;->a(Lcom/rich/czlylibary/http/a/c;Lcom/rich/czlylibary/http/a/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/rich/czlylibary/http/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const-string v0, "cacheKey == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public cacheMode(Lcom/rich/czlylibary/http/cache/CacheMode;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheMode:Lcom/rich/czlylibary/http/cache/CacheMode;

    return-object p0
.end method

.method public cachePolicy(Lcom/rich/czlylibary/http/cache/a/b;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/cache/a/b<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "cachePolicy == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->cachePolicy:Lcom/rich/czlylibary/http/cache/a/b;

    return-object p0
.end method

.method public cacheTime(J)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheTime:J

    return-object p0
.end method

.method public call(Lcom/rich/czlylibary/http/a/c;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/a/c<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "call == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->call:Lcom/rich/czlylibary/http/a/c;

    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TR;"
        }
    .end annotation

    const-string v0, "OkHttpClient == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public converter(Lcom/rich/czlylibary/http/c/a;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/c/a<",
            "TT;>;)TR;"
        }
    .end annotation

    const-string v0, "converter == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->converter:Lcom/rich/czlylibary/http/c/a;

    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1

    invoke-virtual {p0}, Lcom/rich/czlylibary/http/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/rich/czlylibary/http/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "execute"

    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->callback:Lcom/rich/czlylibary/http/b/b;

    invoke-virtual {p0}, Lcom/rich/czlylibary/http/request/base/Request;->adapt()Lcom/rich/czlylibary/http/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rich/czlylibary/http/a/c;->a(Lcom/rich/czlylibary/http/b/b;)V

    return-void
.end method

.method public abstract generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract generateRequestBody()Lokhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lcom/rich/czlylibary/http/cache/CacheMode;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheMode:Lcom/rich/czlylibary/http/cache/CacheMode;

    return-object v0
.end method

.method public getCachePolicy()Lcom/rich/czlylibary/http/cache/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/czlylibary/http/cache/a/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->cachePolicy:Lcom/rich/czlylibary/http/cache/a/b;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    iget-wide v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->cacheTime:J

    return-wide v0
.end method

.method public getConverter()Lcom/rich/czlylibary/http/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/czlylibary/http/c/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->converter:Lcom/rich/czlylibary/http/c/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->callback:Lcom/rich/czlylibary/http/b/b;

    iput-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->converter:Lcom/rich/czlylibary/http/c/a;

    :cond_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->converter:Lcom/rich/czlylibary/http/c/a;

    const-string v1, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    invoke-static {v0, v1}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->converter:Lcom/rich/czlylibary/http/c/a;

    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/rich/czlylibary/http/model/HttpParams$FileWrapper;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    iget-object v0, v0, Lcom/rich/czlylibary/http/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rich/czlylibary/http/model/HttpParams$FileWrapper;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaders()Lcom/rich/czlylibary/http/model/HttpHeaders;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->headers:Lcom/rich/czlylibary/http/model/HttpHeaders;

    return-object v0
.end method

.method public abstract getMethod()Lcom/rich/czlylibary/http/model/HttpMethod;
.end method

.method public getParams()Lcom/rich/czlylibary/http/model/HttpParams;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    return-object v0
.end method

.method public getRawCall()Lokhttp3/Call;
    .locals 3

    invoke-virtual {p0}, Lcom/rich/czlylibary/http/request/base/Request;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/rich/czlylibary/http/request/base/a;

    iget-object v2, p0, Lcom/rich/czlylibary/http/request/base/Request;->callback:Lcom/rich/czlylibary/http/b/b;

    invoke-direct {v1, v0, v2}, Lcom/rich/czlylibary/http/request/base/a;-><init>(Lokhttp3/RequestBody;Lcom/rich/czlylibary/http/b/b;)V

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->uploadInterceptor:Lcom/rich/czlylibary/http/request/base/a$b;

    invoke-virtual {v1, v0}, Lcom/rich/czlylibary/http/request/base/a;->a(Lcom/rich/czlylibary/http/request/base/a$b;)V

    invoke-virtual {p0, v1}, Lcom/rich/czlylibary/http/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->mRequest:Lokhttp3/Request;

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/a;->d()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->client:Lokhttp3/OkHttpClient;

    :cond_1
    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/rich/czlylibary/http/request/base/Request;->mRequest:Lokhttp3/Request;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->mRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->retryCount:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    iget-object v0, v0, Lcom/rich/czlylibary/http/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public headers(Lcom/rich/czlylibary/http/model/HttpHeaders;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->headers:Lcom/rich/czlylibary/http/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/http/model/HttpHeaders;->put(Lcom/rich/czlylibary/http/model/HttpHeaders;)V

    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->headers:Lcom/rich/czlylibary/http/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/rich/czlylibary/http/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public params(Lcom/rich/czlylibary/http/model/HttpParams;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Lcom/rich/czlylibary/http/model/HttpParams;)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/rich/czlylibary/http/model/HttpParams;->put(Ljava/util/Map;[Z)V

    return-object p0
.end method

.method public removeAllHeaders()Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->headers:Lcom/rich/czlylibary/http/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/model/HttpHeaders;->clear()V

    return-object p0
.end method

.method public removeAllParams()Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/model/HttpParams;->clear()V

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->headers:Lcom/rich/czlylibary/http/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/http/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/Request;->params:Lcom/rich/czlylibary/http/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/rich/czlylibary/http/model/HttpParams;->remove(Ljava/lang/String;)V

    return-object p0
.end method

.method public retryCount(I)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->retryCount:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "retryCount must > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Lcom/rich/czlylibary/http/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->callback:Lcom/rich/czlylibary/http/b/b;

    return-void
.end method

.method public tag(Ljava/lang/Object;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public uploadInterceptor(Lcom/rich/czlylibary/http/request/base/a$b;)Lcom/rich/czlylibary/http/request/base/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/request/base/a$b;",
            ")TR;"
        }
    .end annotation

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/Request;->uploadInterceptor:Lcom/rich/czlylibary/http/request/base/a$b;

    return-object p0
.end method
