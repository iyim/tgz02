.class public Lb/s/f0;
.super Lb/s/m;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lb/s/g0;


# direct methods
.method public constructor <init>(Lb/s/g0;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lb/s/f0;->d:Lb/s/g0;

    iput-object p2, p0, Lb/s/f0;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lb/s/f0;->b:Landroid/view/View;

    iput-object p4, p0, Lb/s/f0;->c:Landroid/view/View;

    invoke-direct {p0}, Lb/s/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/s/j;)V
    .locals 3

    iget-object v0, p0, Lb/s/f0;->c:Landroid/view/View;

    sget v1, Lb/s/g;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lb/s/f0;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Lb/s/v;->a(Landroid/view/ViewGroup;)Lb/s/u;

    move-result-object v0

    iget-object v1, p0, Lb/s/f0;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lb/s/u;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Lb/s/j;->b(Lb/s/j$d;)Lb/s/j;

    return-void
.end method

.method public d(Lb/s/j;)V
    .locals 1

    iget-object p1, p0, Lb/s/f0;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/s/v;->a(Landroid/view/ViewGroup;)Lb/s/u;

    move-result-object p1

    iget-object v0, p0, Lb/s/f0;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/s/u;->a(Landroid/view/View;)V

    return-void
.end method

.method public e(Lb/s/j;)V
    .locals 1

    iget-object p1, p0, Lb/s/f0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/s/f0;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/s/v;->a(Landroid/view/ViewGroup;)Lb/s/u;

    move-result-object p1

    iget-object v0, p0, Lb/s/f0;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/s/u;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/s/f0;->d:Lb/s/g0;

    invoke-virtual {p1}, Lb/s/j;->a()V

    :goto_0
    return-void
.end method
