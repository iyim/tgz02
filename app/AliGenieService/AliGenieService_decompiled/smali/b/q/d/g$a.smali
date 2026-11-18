.class public Lb/q/d/g$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/d/g;->i(Landroidx/recyclerview/widget/RecyclerView$b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Lb/q/d/g;


# direct methods
.method public constructor <init>(Lb/q/d/g;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lb/q/d/g$a;->d:Lb/q/d/g;

    iput-object p2, p0, Lb/q/d/g$a;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput-object p3, p0, Lb/q/d/g$a;->b:Landroid/view/View;

    iput-object p4, p0, Lb/q/d/g$a;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/q/d/g$a;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/q/d/g$a;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lb/q/d/g$a;->d:Lb/q/d/g;

    iget-object v0, p0, Lb/q/d/g$a;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Lb/q/d/t;->c(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    iget-object p1, p0, Lb/q/d/g$a;->d:Lb/q/d/g;

    iget-object p1, p1, Lb/q/d/g;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/q/d/g$a;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/q/d/g$a;->d:Lb/q/d/g;

    invoke-virtual {p1}, Lb/q/d/g;->f()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/q/d/g$a;->d:Lb/q/d/g;

    iget-object v0, p0, Lb/q/d/g$a;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {p1, v0}, Lb/q/d/t;->d(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    return-void
.end method
