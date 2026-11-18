.class public final Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2
    iget-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->getAnimationMode()I

    move-result v4

    if-ne v4, v3, :cond_1

    new-array v1, v1, [F

    .line 3
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x4b

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lc/d/a/a/h0/a;

    invoke-direct {v2, v0, p1}, Lc/d/a/a/h0/a;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v1, [I

    aput v2, v1, v2

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v1, Lc/d/a/a/l/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lc/d/a/a/h0/e;

    invoke-direct {v1, v0, p1}, Lc/d/a/a/h0/e;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lc/d/a/a/h0/f;

    invoke-direct {p1, v0}, Lc/d/a/a/h0/f;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v4, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    :goto_0
    return v3

    .line 6
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 7
    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    new-instance v4, Lc/d/a/a/h0/h;

    invoke-direct {v4, p1}, Lc/d/a/a/h0/h;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;)V

    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v4, :cond_5

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 8
    iget-object v4, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-nez v4, :cond_4

    .line 9
    new-instance v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {v4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    .line 10
    :cond_4
    iget-object v5, v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;

    invoke-virtual {v5, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$i;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 11
    new-instance v5, Lc/d/a/a/h0/j;

    invoke-direct {v5, p1}, Lc/d/a/a/h0/j;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v4, v5}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Lcom/google/android/material/behavior/SwipeDismissBehavior$b;)V

    invoke-virtual {v0, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    iget-object v4, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/View;

    if-nez v4, :cond_5

    const/16 v4, 0x50

    iput v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I

    .line 12
    :cond_5
    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v2, v3

    new-array v1, v1, [I

    iget-object v2, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v1, v1, v3

    iget-object v2, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, v0

    .line 13
    :goto_1
    iput v2, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:I

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i()V

    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a:Landroid/view/ViewGroup;

    iget-object v1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-static {v0}, Lb/h/k/q;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g()V

    goto :goto_2

    :cond_8
    iget-object v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    new-instance v1, Lc/d/a/a/h0/i;

    invoke-direct {v1, p1}, Lc/d/a/a/h0/i;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$k;)V

    :goto_2
    return v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
