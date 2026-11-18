.class public Lcom/rich/czlylibary/manager/a;
.super Lcom/rich/czlylibary/http/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/rich/czlylibary/bean/Result;",
        ">",
        "Lcom/rich/czlylibary/http/b/c;"
    }
.end annotation


# instance fields
.field private a:Lcom/rich/czlylibary/sdk/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/rich/czlylibary/sdk/ResultCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/rich/czlylibary/b/b;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/sdk/ResultCallback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/sdk/ResultCallback<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/rich/czlylibary/http/b/c;-><init>()V

    const-string v0, "Class"

    invoke-static {p2, v0}, Lcom/rich/czlylibary/b/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    iput-object p2, p0, Lcom/rich/czlylibary/manager/a;->b:Ljava/lang/Class;

    :try_start_0
    new-instance p1, Lcom/rich/czlylibary/b/b;

    invoke-static {}, Lcom/rich/czlylibary/manager/CzlyInit;->a()Lcom/rich/czlylibary/manager/CzlyInit;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rich/czlylibary/manager/CzlyInit;->g()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/rich/czlylibary/b/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rich/czlylibary/manager/a;->c:Lcom/rich/czlylibary/b/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rich/czlylibary/manager/a;->c:Lcom/rich/czlylibary/b/b;

    :goto_0
    return-void
.end method

.method private d(Lcom/rich/czlylibary/http/model/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "90000"

    :try_start_0
    iget-object v2, p0, Lcom/rich/czlylibary/manager/a;->c:Lcom/rich/czlylibary/b/b;

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/rich/czlylibary/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/rich/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    const-string v2, "decrypt failed!"

    invoke-interface {p1, v1, v2}, Lcom/rich/czlylibary/sdk/ResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/rich/czlylibary/manager/a;->b:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/rich/czlylibary/b/g;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rich/czlylibary/bean/Result;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service data not applicable! entity == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/rich/czlylibary/sdk/ResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "000000"

    invoke-virtual {p1}, Lcom/rich/czlylibary/bean/Result;->getResCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    invoke-interface {v2, p1}, Lcom/rich/czlylibary/sdk/ResultCallback;->onSuccess(Lcom/rich/czlylibary/bean/Result;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    invoke-virtual {p1}, Lcom/rich/czlylibary/bean/Result;->getResCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Lcom/rich/czlylibary/sdk/ResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/rich/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Lcom/rich/gson/JsonSyntaxException;->printStackTrace()V

    iget-object p1, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service data not applicable! = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/rich/czlylibary/sdk/ResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/rich/czlylibary/http/b/c;->a()V

    const-string v0, "onFinish"

    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    invoke-interface {v0}, Lcom/rich/czlylibary/sdk/ResultCallback;->onFinish()V

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

    iget-object p1, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    invoke-interface {p1}, Lcom/rich/czlylibary/sdk/ResultCallback;->onStart()V

    const-string p1, "onStart"

    invoke-static {p1}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

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

    const-string v0, "onFailed"

    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rich/czlylibary/manager/a;->a:Lcom/rich/czlylibary/sdk/ResultCallback;

    invoke-virtual {p1}, Lcom/rich/czlylibary/http/model/a;->d()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "70000"

    invoke-interface {v0, v1, p1}, Lcom/rich/czlylibary/sdk/ResultCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/rich/czlylibary/http/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rich/czlylibary/http/model/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {v0}, Lcom/rich/czlylibary/b/i;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/rich/czlylibary/manager/a;->d(Lcom/rich/czlylibary/http/model/a;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
