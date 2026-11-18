.class public Lcom/rich/czlylibary/http/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/czlylibary/http/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/rich/czlylibary/http/a/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/rich/czlylibary/http/cache/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/cache/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/rich/czlylibary/http/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/http/request/base/Request<",
            "TT;+",
            "Lcom/rich/czlylibary/http/request/base/Request;",
            ">;"
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

    iput-object v0, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    iput-object p1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-direct {p0}, Lcom/rich/czlylibary/http/a/b;->b()Lcom/rich/czlylibary/http/cache/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    return-void
.end method

.method private b()Lcom/rich/czlylibary/http/cache/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/czlylibary/http/cache/a/b<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/rich/czlylibary/http/a/b$1;->a:[I

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/request/base/Request;->getCacheMode()Lcom/rich/czlylibary/http/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/cache/CacheMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/rich/czlylibary/http/cache/a/g;

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/cache/a/g;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/rich/czlylibary/http/cache/a/d;

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/cache/a/d;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/cache/a/f;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/rich/czlylibary/http/cache/a/e;

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/cache/a/e;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/rich/czlylibary/http/cache/a/c;

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/cache/a/c;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    :goto_0
    iput-object v0, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    :goto_1
    iget-object v0, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCachePolicy()Lcom/rich/czlylibary/http/cache/a/b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/request/base/Request;->getCachePolicy()Lcom/rich/czlylibary/http/cache/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    :cond_5
    iget-object v0, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    const-string v1, "policy == null"

    invoke-static {v0, v1}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/rich/czlylibary/http/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/rich/czlylibary/http/a/c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/rich/czlylibary/http/a/b;

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->b:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/a/b;-><init>(Lcom/rich/czlylibary/http/request/base/Request;)V

    return-object v0
.end method

.method public a(Lcom/rich/czlylibary/http/b/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/b/b<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/rich/czlylibary/http/f/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "CacheCall.execute"

    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    invoke-interface {v0}, Lcom/rich/czlylibary/http/cache/a/b;->a()Lcom/rich/czlylibary/http/cache/CacheEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/czlylibary/http/a/b;->a:Lcom/rich/czlylibary/http/cache/a/b;

    invoke-interface {v1, v0, p1}, Lcom/rich/czlylibary/http/cache/a/b;->a(Lcom/rich/czlylibary/http/cache/CacheEntity;Lcom/rich/czlylibary/http/b/b;)V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/rich/czlylibary/http/a/b;->a()Lcom/rich/czlylibary/http/a/c;

    move-result-object v0

    return-object v0
.end method
