.class public Lcom/rich/czlylibary/http/cache/a/c;
.super Lcom/rich/czlylibary/http/cache/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rich/czlylibary/http/cache/a/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/rich/czlylibary/http/request/base/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/request/base/Request<",
            "TT;+",
            "Lcom/rich/czlylibary/http/request/base/Request;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/http/cache/a/a;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public a(Lcom/rich/czlylibary/http/cache/CacheEntity;Lcom/rich/czlylibary/http/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/cache/CacheEntity<",
            "TT;>;",
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/rich/czlylibary/http/cache/a/c;->f:Lcom/rich/czlylibary/http/b/b;

    new-instance p1, Lcom/rich/czlylibary/http/cache/a/c$5;

    invoke-direct {p1, p0}, Lcom/rich/czlylibary/http/cache/a/c$5;-><init>(Lcom/rich/czlylibary/http/cache/a/c;)V

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/cache/a/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/rich/czlylibary/http/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/http/cache/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/cache/a/c$1;-><init>(Lcom/rich/czlylibary/http/cache/a/c;Lcom/rich/czlylibary/http/model/a;)V

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/cache/a/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/c;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/c;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rich/czlylibary/http/exception/CacheException;->NON_AND_304(Ljava/lang/String;)Lcom/rich/czlylibary/http/exception/CacheException;

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/rich/czlylibary/http/model/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/rich/czlylibary/http/model/a;

    move-result-object p1

    new-instance p2, Lcom/rich/czlylibary/http/cache/a/c$3;

    invoke-direct {p2, p0, p1}, Lcom/rich/czlylibary/http/cache/a/c$3;-><init>(Lcom/rich/czlylibary/http/cache/a/c;Lcom/rich/czlylibary/http/model/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/c;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1, p2}, Lcom/rich/czlylibary/http/model/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/rich/czlylibary/http/model/a;

    move-result-object p1

    new-instance p2, Lcom/rich/czlylibary/http/cache/a/c$4;

    invoke-direct {p2, p0, p1}, Lcom/rich/czlylibary/http/cache/a/c$4;-><init>(Lcom/rich/czlylibary/http/cache/a/c;Lcom/rich/czlylibary/http/model/a;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/rich/czlylibary/http/cache/a/c;->a(Ljava/lang/Runnable;)V

    return v1
.end method

.method public b(Lcom/rich/czlylibary/http/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/http/cache/a/c$2;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/cache/a/c$2;-><init>(Lcom/rich/czlylibary/http/cache/a/c;Lcom/rich/czlylibary/http/model/a;)V

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/cache/a/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
