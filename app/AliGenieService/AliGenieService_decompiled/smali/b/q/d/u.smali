.class public abstract Lb/q/d/u;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source ""


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Landroid/widget/Scroller;

.field public final c:Landroidx/recyclerview/widget/RecyclerView$s;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    new-instance v0, Lb/q/d/u$a;

    invoke-direct {v0, p0}, Lb/q/d/u$a;-><init>(Lb/q/d/u;)V

    iput-object v0, p0, Lb/q/d/u;->c:Landroidx/recyclerview/widget/RecyclerView$s;

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$n;)Landroid/view/View;
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lb/q/d/u;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lb/q/d/u;->a(Landroidx/recyclerview/widget/RecyclerView$n;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, v1}, Lb/q/d/u;->a(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_3

    aget v2, v0, v3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lb/q/d/u;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v1, v0, v1

    aget v0, v0, v3

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(II)V

    :cond_4
    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$n;Landroid/view/View;)[I
.end method
