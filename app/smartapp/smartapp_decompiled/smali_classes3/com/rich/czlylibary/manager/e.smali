.class public Lcom/rich/czlylibary/manager/e;
.super Lcom/rich/czlylibary/http/b/c;


# instance fields
.field private a:Lcom/rich/czlylibary/sdk/MiguResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/sdk/MiguResultCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/rich/czlylibary/b/b;


# direct methods
.method private d(Lcom/rich/czlylibary/http/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "90000"

    :try_start_0
    iget-object v1, p0, Lcom/rich/czlylibary/manager/e;->b:Lcom/rich/czlylibary/b/b;

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/rich/czlylibary/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/rich/czlylibary/manager/e;->a:Lcom/rich/czlylibary/sdk/MiguResultCallback;

    const-string v1, "decrypt failed!"

    invoke-interface {p1, v0, v1}, Lcom/rich/czlylibary/sdk/MiguResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/rich/czlylibary/manager/e;->a:Lcom/rich/czlylibary/sdk/MiguResultCallback;

    invoke-interface {v1, p1}, Lcom/rich/czlylibary/sdk/MiguResultCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object p1, p0, Lcom/rich/czlylibary/manager/e;->a:Lcom/rich/czlylibary/sdk/MiguResultCallback;

    const-string v1, "service data not applicable!"

    invoke-interface {p1, v0, v1}, Lcom/rich/czlylibary/sdk/MiguResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/rich/czlylibary/http/b/c;->a()V

    iget-object v0, p0, Lcom/rich/czlylibary/manager/e;->a:Lcom/rich/czlylibary/sdk/MiguResultCallback;

    invoke-interface {v0}, Lcom/rich/czlylibary/sdk/MiguResultCallback;->onFinish()V

    return-void
.end method

.method public a(Lcom/rich/czlylibary/http/request/base/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/request/base/Request<",
            "Ljava/lang/String;",
            "+",
            "Lcom/rich/czlylibary/http/request/base/Request;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/rich/czlylibary/http/b/c;->a(Lcom/rich/czlylibary/http/request/base/Request;)V

    iget-object p1, p0, Lcom/rich/czlylibary/manager/e;->a:Lcom/rich/czlylibary/sdk/MiguResultCallback;

    invoke-interface {p1}, Lcom/rich/czlylibary/sdk/MiguResultCallback;->onStart()V

    return-void
.end method

.method public b(Lcom/rich/czlylibary/http/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/rich/czlylibary/http/b/c;->b(Lcom/rich/czlylibary/http/model/a;)V

    iget-object v0, p0, Lcom/rich/czlylibary/manager/e;->a:Lcom/rich/czlylibary/sdk/MiguResultCallback;

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "70000"

    invoke-interface {v0, v1, p1}, Lcom/rich/czlylibary/sdk/MiguResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/rich/czlylibary/http/model/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/manager/e;->d(Lcom/rich/czlylibary/http/model/a;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
