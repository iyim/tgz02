.class Lcom/rich/czlylibary/http/cache/a/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rich/czlylibary/http/cache/a/f;->b(Lcom/rich/czlylibary/http/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/rich/czlylibary/http/model/a;

.field final synthetic b:Lcom/rich/czlylibary/http/cache/a/f;


# direct methods
.method constructor <init>(Lcom/rich/czlylibary/http/cache/a/f;Lcom/rich/czlylibary/http/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/http/cache/a/f$2;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iput-object p2, p0, Lcom/rich/czlylibary/http/cache/a/f$2;->a:Lcom/rich/czlylibary/http/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/f$2;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v0, v0, Lcom/rich/czlylibary/http/cache/a/f;->f:Lcom/rich/czlylibary/http/b/b;

    iget-object v1, p0, Lcom/rich/czlylibary/http/cache/a/f$2;->a:Lcom/rich/czlylibary/http/model/a;

    invoke-interface {v0, v1}, Lcom/rich/czlylibary/http/b/b;->b(Lcom/rich/czlylibary/http/model/a;)V

    iget-object v0, p0, Lcom/rich/czlylibary/http/cache/a/f$2;->b:Lcom/rich/czlylibary/http/cache/a/f;

    iget-object v0, v0, Lcom/rich/czlylibary/http/cache/a/f;->f:Lcom/rich/czlylibary/http/b/b;

    invoke-interface {v0}, Lcom/rich/czlylibary/http/b/b;->a()V

    return-void
.end method
