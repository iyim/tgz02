.class public Lcom/rich/czlylibary/http/cache/a/e;
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

    const-string p1, "requestAsync"

    invoke-static {p1}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/rich/czlylibary/http/cache/a/e;->f:Lcom/rich/czlylibary/http/b/b;

    new-instance p1, Lcom/rich/czlylibary/http/cache/a/e$3;

    invoke-direct {p1, p0}, Lcom/rich/czlylibary/http/cache/a/e$3;-><init>(Lcom/rich/czlylibary/http/cache/a/e;)V

    invoke-virtual {p0, p1}, Lcom/rich/czlylibary/http/cache/a/e;->a(Ljava/lang/Runnable;)V

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

    new-instance v0, Lcom/rich/czlylibary/http/cache/a/e$1;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/cache/a/e$1;-><init>(Lcom/rich/czlylibary/http/cache/a/e;Lcom/rich/czlylibary/http/model/a;)V

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/cache/a/e;->a(Ljava/lang/Runnable;)V

    return-void
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

    new-instance v0, Lcom/rich/czlylibary/http/cache/a/e$2;

    invoke-direct {v0, p0, p1}, Lcom/rich/czlylibary/http/cache/a/e$2;-><init>(Lcom/rich/czlylibary/http/cache/a/e;Lcom/rich/czlylibary/http/model/a;)V

    invoke-virtual {p0, v0}, Lcom/rich/czlylibary/http/cache/a/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method
