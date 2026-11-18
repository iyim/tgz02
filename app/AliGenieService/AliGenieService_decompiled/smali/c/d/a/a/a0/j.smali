.class public final Lc/d/a/a/a0/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/k/m;


# instance fields
.field public final synthetic a:Lc/d/a/a/a0/l;

.field public final synthetic b:Lc/d/a/a/a0/m;


# direct methods
.method public constructor <init>(Lc/d/a/a/a0/l;Lc/d/a/a/a0/m;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/a0/j;->a:Lc/d/a/a/a0/l;

    iput-object p2, p0, Lc/d/a/a/a0/j;->b:Lc/d/a/a/a0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/k/z;)Lb/h/k/z;
    .locals 2

    iget-object p1, p0, Lc/d/a/a/a0/j;->a:Lc/d/a/a/a0/l;

    iget-object v0, p0, Lc/d/a/a/a0/j;->b:Lc/d/a/a/a0/m;

    .line 1
    iget v1, v0, Lc/d/a/a/a0/m;->a:I

    iget v1, v0, Lc/d/a/a/a0/m;->b:I

    iget v1, v0, Lc/d/a/a/a0/m;->c:I

    iget v0, v0, Lc/d/a/a/a0/m;->d:I

    .line 2
    check-cast p1, Lc/d/a/a/p/b;

    .line 3
    iget-object v0, p1, Lc/d/a/a/p/b;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    iget-object v1, p2, Lb/h/k/z;->a:Lb/h/k/z$j;

    invoke-virtual {v1}, Lb/h/k/z$j;->e()Lb/h/e/b;

    move-result-object v1

    .line 5
    iget v1, v1, Lb/h/e/b;->d:I

    .line 6
    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 7
    iget-object p1, p1, Lc/d/a/a/p/b;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(Z)V

    return-object p2
.end method
