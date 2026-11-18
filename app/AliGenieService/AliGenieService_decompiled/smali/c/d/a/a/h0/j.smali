.class public Lc/d/a/a/h0/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$b;


# instance fields
.field public final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/h0/j;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lc/d/a/a/h0/m;->b()Lc/d/a/a/h0/m;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/a/h0/j;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Lc/d/a/a/h0/m$b;

    invoke-virtual {p1, v0}, Lc/d/a/a/h0/m;->f(Lc/d/a/a/h0/m$b;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lc/d/a/a/h0/m;->b()Lc/d/a/a/h0/m;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/a/h0/j;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Lc/d/a/a/h0/m$b;

    invoke-virtual {p1, v0}, Lc/d/a/a/h0/m;->g(Lc/d/a/a/h0/m$b;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/d/a/a/h0/j;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(I)V

    return-void
.end method
