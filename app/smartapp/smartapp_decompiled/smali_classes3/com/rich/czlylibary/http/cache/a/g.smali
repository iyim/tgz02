.class public Lcom/rich/czlylibary/http/cache/a/g;
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

    iput-object p2, p0, Lcom/rich/czlylibary/http/cache/a/g;->f:Lcom/rich/czlylibary/http/b/b;

    new-instance p1, Lcom/rich/czlylibary/http/cache/a/g$4;

    invoke-direct {p1, p0}, Lcom/rich/czlylibary/http/cache/a/g$4;-><init>(Lcom/rich/czlylibary/http/cache/a/g;)V

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/cache/a/g;->a(Ljava/lang/Runnable;)V

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

    new-instance v0, Lcom/rich/czlylibary/http/cache/a/g$1;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/cache/a/g$1;-><init>(Lcom/rich/czlylibary/http/cache/a/g;Lcom/rich/czlylibary/http/model/a;)V

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/cache/a/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/rich/czlylibary/http/model/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/g;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/g;->g:Lcom/rich/czlylibary/http/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->e()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->f()Lokhttp3/Response;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/rich/czlylibary/http/model/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/rich/czlylibary/http/model/a;

    move-result-object p1

    new-instance v0, Lcom/rich/czlylibary/http/cache/a/g$2;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/cache/a/g$2;-><init>(Lcom/rich/czlylibary/http/cache/a/g;Lcom/rich/czlylibary/http/model/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/rich/czlylibary/http/cache/a/g$3;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/cache/a/g$3;-><init>(Lcom/rich/czlylibary/http/cache/a/g;Lcom/rich/czlylibary/http/model/a;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/cache/a/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method
