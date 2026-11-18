.class public Lc/d/a/a/v/k$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/a/v/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/d/a/a/v/k;


# direct methods
.method public constructor <init>(Lc/d/a/a/v/k;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/k$b;->b:Lc/d/a/a/v/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/v/k$b;->b:Lc/d/a/a/v/k;

    .line 1
    iget-object v0, v0, Lc/d/a/a/v/k;->m0:Ljava/util/LinkedHashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/d/a/a/v/k$b;->b:Lc/d/a/a/v/k;

    invoke-virtual {p1}, Lb/k/d/b;->D0()V

    return-void
.end method
