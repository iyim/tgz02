.class public Lc/d/a/a/h0/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/h0/k;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lc/d/a/a/h0/k;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lc/d/a/a/h0/k;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;->getAnimationMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lc/d/a/a/h0/k;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h()V

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lc/d/a/a/h0/k;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c()I

    move-result v3

    sget-boolean v4, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-static {v4, v3}, Lb/h/k/q;->c(Landroid/view/View;I)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v1

    aput v1, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    sget-object v1, Lc/d/a/a/l/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v4, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lc/d/a/a/h0/c;

    invoke-direct {v1, v0}, Lc/d/a/a/h0/c;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lc/d/a/a/h0/d;

    invoke-direct {v1, v0, v3}, Lc/d/a/a/h0/d;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void
.end method
