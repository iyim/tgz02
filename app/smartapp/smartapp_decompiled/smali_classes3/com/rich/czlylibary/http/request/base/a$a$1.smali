.class Lcom/rich/czlylibary/http/request/base/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/rich/czlylibary/http/model/Progress$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/http/request/base/a$a;->write(Lokio/Buffer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/rich/czlylibary/http/request/base/a$a;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/http/request/base/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/request/base/a$a$1;->a:Lcom/rich/czlylibary/http/request/base/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/rich/czlylibary/http/model/Progress;)V
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a$a$1;->a:Lcom/rich/czlylibary/http/request/base/a$a;

    iget-object v0, v0, Lcom/rich/czlylibary/http/request/base/a$a;->a:Lcom/rich/czlylibary/http/request/base/a;

    invoke-static {v0}, Lcom/rich/czlylibary/http/request/base/a;->a(Lcom/rich/czlylibary/http/request/base/a;)Lcom/rich/czlylibary/http/request/base/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a$a$1;->a:Lcom/rich/czlylibary/http/request/base/a$a;

    iget-object v0, v0, Lcom/rich/czlylibary/http/request/base/a$a;->a:Lcom/rich/czlylibary/http/request/base/a;

    invoke-static {v0}, Lcom/rich/czlylibary/http/request/base/a;->a(Lcom/rich/czlylibary/http/request/base/a;)Lcom/rich/czlylibary/http/request/base/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rich/czlylibary/http/request/base/a$b;->a(Lcom/rich/czlylibary/http/model/Progress;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rich/czlylibary/http/request/base/a$a$1;->a:Lcom/rich/czlylibary/http/request/base/a$a;

    iget-object v0, v0, Lcom/rich/czlylibary/http/request/base/a$a;->a:Lcom/rich/czlylibary/http/request/base/a;

    invoke-static {v0, p1}, Lcom/rich/czlylibary/http/request/base/a;->a(Lcom/rich/czlylibary/http/request/base/a;Lcom/rich/czlylibary/http/model/Progress;)V

    :goto_0
    return-void
.end method
