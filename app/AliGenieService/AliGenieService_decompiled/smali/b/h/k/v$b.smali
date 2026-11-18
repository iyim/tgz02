.class public Lb/h/k/v$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/k/v;->a(Lb/h/k/y;)Lb/h/k/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/h/k/y;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/h/k/v;Lb/h/k/y;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/h/k/v$b;->a:Lb/h/k/y;

    iput-object p3, p0, Lb/h/k/v$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lb/h/k/v$b;->a:Lb/h/k/y;

    check-cast p1, Lb/b/k/v$c;

    .line 1
    iget-object p1, p1, Lb/b/k/v$c;->a:Lb/b/k/v;

    iget-object p1, p1, Lb/b/k/v;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
