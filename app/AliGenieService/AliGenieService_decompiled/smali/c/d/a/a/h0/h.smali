.class public Lc/d/a/a/h0/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/snackbar/BaseTransientBottomBar$j;


# instance fields
.field public final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/h0/h;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lc/d/a/a/h0/h;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/d/a/a/h0/h;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    .line 1
    iput p1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->m:I

    .line 2
    iget-object p1, p0, Lc/d/a/a/h0/h;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i()V

    :cond_0
    return-void
.end method
