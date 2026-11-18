.class public Lc/d/a/a/v/n$a;
.super Lc/d/a/a/v/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/a/v/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/a/v/r<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/a/v/n;


# direct methods
.method public constructor <init>(Lc/d/a/a/v/n;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/n$a;->a:Lc/d/a/a/v/n;

    invoke-direct {p0}, Lc/d/a/a/v/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/v/n$a;->a:Lc/d/a/a/v/n;

    iget-object v0, v0, Lc/d/a/a/v/s;->X:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/v/r;

    invoke-virtual {v1}, Lc/d/a/a/v/r;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/a/v/n$a;->a:Lc/d/a/a/v/n;

    iget-object v0, v0, Lc/d/a/a/v/s;->X:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/v/r;

    invoke-virtual {v1, p1}, Lc/d/a/a/v/r;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
