.class public final Lb/k/d/f;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/fragment/app/Fragment;

.field public final synthetic d:Lb/k/d/c0$a;

.field public final synthetic e:Lb/h/g/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;Lb/k/d/c0$a;Lb/h/g/a;)V
    .locals 0

    iput-object p1, p0, Lb/k/d/f;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lb/k/d/f;->b:Landroid/view/View;

    iput-object p3, p0, Lb/k/d/f;->c:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lb/k/d/f;->d:Lb/k/d/c0$a;

    iput-object p5, p0, Lb/k/d/f;->e:Lb/h/g/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb/k/d/f;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/k/d/f;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Lb/k/d/f;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->k()Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lb/k/d/f;->c:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->a(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/k/d/f;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/k/d/f;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lb/k/d/f;->d:Lb/k/d/c0$a;

    iget-object v0, p0, Lb/k/d/f;->c:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lb/k/d/f;->e:Lb/h/g/a;

    check-cast p1, Lb/k/d/p$b;

    invoke-virtual {p1, v0, v1}, Lb/k/d/p$b;->a(Landroidx/fragment/app/Fragment;Lb/h/g/a;)V

    :cond_0
    return-void
.end method
