.class public Lc/d/a/a/v/k$c;
.super Lc/d/a/a/v/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/a/v/k;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/a/v/r<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/a/v/k;


# direct methods
.method public constructor <init>(Lc/d/a/a/v/k;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/v/k$c;->a:Lc/d/a/a/v/k;

    invoke-direct {p0}, Lc/d/a/a/v/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/v/k$c;->a:Lc/d/a/a/v/k;

    .line 1
    iget-object v0, v0, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/a/v/k$c;->a:Lc/d/a/a/v/k;

    invoke-static {p1}, Lc/d/a/a/v/k;->a(Lc/d/a/a/v/k;)V

    iget-object p1, p0, Lc/d/a/a/v/k$c;->a:Lc/d/a/a/v/k;

    .line 3
    iget-object v0, p1, Lc/d/a/a/v/k;->B0:Landroid/widget/Button;

    .line 4
    iget-object p1, p1, Lc/d/a/a/v/k;->q0:Lcom/google/android/material/datepicker/DateSelector;

    .line 5
    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
