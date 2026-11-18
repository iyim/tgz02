.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/k/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lc/d/a/a/h0/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/k/z;)Lb/h/k/z;
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Lb/h/k/z;->a()I

    move-result v0

    .line 1
    iput v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->j:I

    .line 2
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Lb/h/k/z;->b()I

    move-result v0

    .line 3
    iput v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:I

    .line 4
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p2}, Lb/h/k/z;->c()I

    move-result v0

    .line 5
    iput v0, p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:I

    .line 6
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i()V

    return-object p2
.end method
