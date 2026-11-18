.class public Lc/d/a/a/v/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lc/d/a/a/v/k;


# direct methods
.method public constructor <init>(Lc/d/a/a/v/k;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/l;->b:Lc/d/a/a/v/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/a/v/l;->b:Lc/d/a/a/v/k;

    .line 1
    iget-object v0, p1, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    .line 2
    iget-object p1, p1, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    .line 3
    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lc/d/a/a/v/l;->b:Lc/d/a/a/v/k;

    .line 4
    iget-object p1, p1, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Lc/d/a/a/v/l;->b:Lc/d/a/a/v/k;

    .line 6
    iget-object v0, p1, Lc/d/a/a/v/k;->z0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {p1, v0}, Lc/d/a/a/v/k;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 8
    iget-object p1, p0, Lc/d/a/a/v/l;->b:Lc/d/a/a/v/k;

    .line 9
    invoke-virtual {p1}, Lc/d/a/a/v/k;->J0()V

    return-void
.end method
