.class public Lcom/aligenie/ags/access/MainActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aligenie/ags/access/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/aligenie/ags/access/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "Replace with your own action"

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 1
    iget-object v1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$l;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    const-string v2, "Action"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v0, p1, Lcom/google/android/material/snackbar/Snackbar;->x:Z

    .line 2
    invoke-static {}, Lc/d/a/a/h0/m;->b()Lc/d/a/a/h0/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b()I

    move-result v1

    iget-object p1, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Lc/d/a/a/h0/m$b;

    invoke-virtual {v0, v1, p1}, Lc/d/a/a/h0/m;->a(ILc/d/a/a/h0/m$b;)V

    return-void
.end method
