.class Lcom/rich/czlylibary/http/cache/a/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/http/cache/a/f;->a(Lcom/rich/czlylibary/http/cache/CacheEntity;Lcom/rich/czlylibary/http/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/rich/czlylibary/http/cache/CacheEntity;

.field final synthetic b:Lcom/rich/czlylibary/http/cache/a/f;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/http/cache/a/f;Lcom/rich/czlylibary/http/cache/CacheEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iput-object p2, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->a:Lcom/rich/czlylibary/http/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v0, v0, Lcom/rich/czlylibary/http/cache/a/f;->f:Lcom/rich/czlylibary/http/b/b;

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v1, v1, Lcom/rich/czlylibary/http/cache/a/f;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-interface {v0, v1}, Lcom/rich/czlylibary/http/b/b;->a(Lcom/rich/czlylibary/http/request/base/Request;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/cache/a/f;->b()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->a:Lcom/rich/czlylibary/http/cache/CacheEntity;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/rich/czlylibary/http/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v3, v3, Lcom/rich/czlylibary/http/cache/a/f;->e:Lokhttp3/Call;

    invoke-static {v2, v1, v3, v0}, Lcom/rich/czlylibary/http/model/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/rich/czlylibary/http/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v1, v1, Lcom/rich/czlylibary/http/cache/a/f;->f:Lcom/rich/czlylibary/http/b/b;

    invoke-interface {v1, v0}, Lcom/rich/czlylibary/http/b/b;->a(Lcom/rich/czlylibary/http/model/a;)V

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v0, v0, Lcom/rich/czlylibary/http/cache/a/f;->f:Lcom/rich/czlylibary/http/b/b;

    invoke-interface {v0}, Lcom/rich/czlylibary/http/b/b;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/cache/a/f;->c()V

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v3, v3, Lcom/rich/czlylibary/http/cache/a/f;->e:Lokhttp3/Call;

    invoke-static {v2, v3, v0, v1}, Lcom/rich/czlylibary/http/model/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/rich/czlylibary/http/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/f$3;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v1, v1, Lcom/rich/czlylibary/http/cache/a/f;->f:Lcom/rich/czlylibary/http/b/b;

    invoke-interface {v1, v0}, Lcom/rich/czlylibary/http/b/b;->b(Lcom/rich/czlylibary/http/model/a;)V

    return-void
.end method
