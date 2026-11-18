.class public Lc/d/a/a/h0/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/h0/c;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lc/d/a/a/h0/c;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->e()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/a/h0/c;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1
    iget-object p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d:Lc/d/a/a/h0/l;

    const/16 v0, 0x46

    const/16 v1, 0xb4

    .line 2
    invoke-interface {p1, v0, v1}, Lc/d/a/a/h0/l;->b(II)V

    return-void
.end method
