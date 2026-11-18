.class public abstract Lcom/rich/czlylibary/http/cache/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/czlylibary/http/cache/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/rich/czlylibary/http/cache/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/rich/czlylibary/http/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/request/base/Request<",
            "TT;+",
            "Lcom/rich/czlylibary/http/request/base/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile b:Z

.field protected volatile c:I

.field protected d:Z

.field protected e:Lokhttp3/Call;

.field protected f:Lcom/rich/czlylibary/http/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected g:Lcom/rich/czlylibary/http/cache/CacheEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/rich/czlylibary/http/request/base/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/request/base/Request<",
            "TT;+",
            "Lcom/rich/czlylibary/http/request/base/Request;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->c:I

    iput-object p1, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    return-void
.end method

.method static synthetic a(Lcom/rich/czlylibary/http/cache/a/a;Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rich/czlylibary/http/cache/a/a;->a(Lokhttp3/Headers;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a(Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheMode()Lcom/rich/czlylibary/http/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/rich/czlylibary/http/cache/CacheMode;->NO_CACHE:Lcom/rich/czlylibary/http/cache/CacheMode;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheMode()Lcom/rich/czlylibary/http/cache/CacheMode;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/rich/czlylibary/http/f/a;->a(Lokhttp3/Headers;Ljava/lang/Object;Lcom/rich/czlylibary/http/cache/CacheMode;Ljava/lang/String;)Lcom/rich/czlylibary/http/cache/CacheEntity;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/rich/czlylibary/http/d/a;->c()Lcom/rich/czlylibary/http/d/a;

    move-result-object p1

    iget-object p2, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {p2}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rich/czlylibary/http/d/a;->b(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/rich/czlylibary/http/d/a;->c()Lcom/rich/czlylibary/http/d/a;

    move-result-object p2

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/rich/czlylibary/http/d/a;->a(Ljava/lang/String;Lcom/rich/czlylibary/http/cache/CacheEntity;)Lcom/rich/czlylibary/http/cache/CacheEntity;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/rich/czlylibary/http/cache/CacheEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v2}, Lcom/rich/czlylibary/http/request/base/Request;->getParams()Lcom/rich/czlylibary/http/model/HttpParams;

    move-result-object v2

    iget-object v2, v2, Lcom/rich/czlylibary/http/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rich/czlylibary/http/request/base/Request;->cacheKey(Ljava/lang/String;)Lcom/rich/czlylibary/http/request/base/Request;

    :cond_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheMode()Lcom/rich/czlylibary/http/cache/CacheMode;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    sget-object v1, Lcom/rich/czlylibary/http/cache/CacheMode;->NO_CACHE:Lcom/rich/czlylibary/http/cache/CacheMode;

    invoke-virtual {v0, v1}, Lcom/rich/czlylibary/http/request/base/Request;->cacheMode(Lcom/rich/czlylibary/http/cache/CacheMode;)Lcom/rich/czlylibary/http/request/base/Request;

    :cond_1
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheMode()Lcom/rich/czlylibary/http/cache/CacheMode;

    move-result-object v2

    sget-object v0, Lcom/rich/czlylibary/http/cache/CacheMode;->NO_CACHE:Lcom/rich/czlylibary/http/cache/CacheMode;

    if-eq v2, v0, :cond_2

    invoke-static {}, Lcom/rich/czlylibary/http/d/a;->c()Lcom/rich/czlylibary/http/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rich/czlylibary/http/d/a;->a(Ljava/lang/String;)Lcom/rich/czlylibary/http/cache/CacheEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    invoke-static {v0, v1, v2}, Lcom/rich/czlylibary/http/f/a;->a(Lcom/rich/czlylibary/http/request/base/Request;Lcom/rich/czlylibary/http/cache/CacheEntity;Lcom/rich/czlylibary/http/cache/CacheMode;)V

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/rich/czlylibary/http/cache/CacheEntity;->checkExpire(Lcom/rich/czlylibary/http/cache/CacheMode;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rich/czlylibary/http/cache/CacheEntity;->setExpire(Z)V

    :cond_2
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/cache/CacheEntity;->isExpire()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/cache/CacheEntity;->getResponseHeaders()Lcom/rich/czlylibary/http/model/HttpHeaders;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    :cond_4
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    return-object v0
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "runOnUiThread"

    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/a;->c()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/rich/czlylibary/b/i;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/a;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rich/czlylibary/http/a;->c()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOnUiThread.Handler = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runOnUiThread.Handler.isMainLooper = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "runOnUiThread.Handler = null"

    :goto_0
    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/rich/czlylibary/http/a;->a()Lcom/rich/czlylibary/http/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/a;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "runOnUiThread.Handler.post.end"

    invoke-static {p1}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized b()Lokhttp3/Call;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->d:Z

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->e:Lokhttp3/Call;

    iget-boolean v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->e:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->e:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "Already executed!"

    invoke-static {v0}, Lcom/rich/czlylibary/http/exception/HttpException;->COMMON(Ljava/lang/String;)Lcom/rich/czlylibary/http/exception/HttpException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/a;->e:Lokhttp3/Call;

    new-instance v1, Lcom/rich/czlylibary/http/cache/a/a$1;

    invoke-direct {v1, p0}, Lcom/rich/czlylibary/http/cache/a/a$1;-><init>(Lcom/rich/czlylibary/http/cache/a/a;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
