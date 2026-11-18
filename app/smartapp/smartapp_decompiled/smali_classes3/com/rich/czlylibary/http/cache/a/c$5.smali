.class Lcom/rich/czlylibary/http/cache/a/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/http/cache/a/c;->a(Lcom/rich/czlylibary/http/cache/CacheEntity;Lcom/rich/czlylibary/http/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/rich/czlylibary/http/cache/a/c;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/http/cache/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/cache/a/c$5;->a:Lcom/rich/czlylibary/http/cache/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/c$5;->a:Lcom/rich/czlylibary/http/cache/a/c;

    iget-object v0, v0, Lcom/rich/czlylibary/http/cache/a/c;->f:Lcom/rich/czlylibary/http/b/b;

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/c$5;->a:Lcom/rich/czlylibary/http/cache/a/c;

    iget-object v1, v1, Lcom/rich/czlylibary/http/cache/a/c;->a:Lcom/rich/czlylibary/http/request/base/Request;

    invoke-interface {v0, v1}, Lcom/rich/czlylibary/http/b/b;->a(Lcom/rich/czlylibary/http/request/base/Request;)V

    :try_start_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/c$5;->a:Lcom/rich/czlylibary/http/cache/a/c;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/cache/a/c;->b()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/c$5;->a:Lcom/rich/czlylibary/http/cache/a/c;

    invoke-virtual {v0}, Lcom/rich/czlylibary/http/cache/a/c;->c()V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/rich/czlylibary/http/cache/a/c$5;->a:Lcom/rich/czlylibary/http/cache/a/c;

    iget-object v2, v2, Lcom/rich/czlylibary/http/cache/a/c;->e:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/rich/czlylibary/http/model/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/rich/czlylibary/http/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/c$5;->a:Lcom/rich/czlylibary/http/cache/a/c;

    iget-object v1, v1, Lcom/rich/czlylibary/http/cache/a/c;->f:Lcom/rich/czlylibary/http/b/b;

    invoke-interface {v1, v0}, Lcom/rich/czlylibary/http/b/b;->b(Lcom/rich/czlylibary/http/model/a;)V

    return-void
.end method
