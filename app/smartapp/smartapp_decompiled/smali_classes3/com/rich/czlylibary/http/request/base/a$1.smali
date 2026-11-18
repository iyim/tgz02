.class Lcom/rich/czlylibary/http/request/base/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/http/request/base/a;->a(Lcom/rich/czlylibary/http/model/Progress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/rich/czlylibary/http/model/Progress;

.field final synthetic b:Lcom/rich/czlylibary/http/request/base/a;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/http/request/base/a;Lcom/rich/czlylibary/http/model/Progress;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/a$1;->b:Lcom/rich/czlylibary/http/request/base/a;

    iput-object p2, p0, Lcom/rich/czlylibary/http/request/base/a$1;->a:Lcom/rich/czlylibary/http/model/Progress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a$1;->b:Lcom/rich/czlylibary/http/request/base/a;

    invoke-static {v0}, Lcom/rich/czlylibary/http/request/base/a;->b(Lcom/rich/czlylibary/http/request/base/a;)Lcom/rich/czlylibary/http/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a$1;->b:Lcom/rich/czlylibary/http/request/base/a;

    invoke-static {v0}, Lcom/rich/czlylibary/http/request/base/a;->b(Lcom/rich/czlylibary/http/request/base/a;)Lcom/rich/czlylibary/http/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/rich/czlylibary/http/request/base/a$1;->a:Lcom/rich/czlylibary/http/model/Progress;

    invoke-interface {v0, v1}, Lcom/rich/czlylibary/http/b/b;->a(Lcom/rich/czlylibary/http/model/Progress;)V

    :cond_0
    return-void
.end method
