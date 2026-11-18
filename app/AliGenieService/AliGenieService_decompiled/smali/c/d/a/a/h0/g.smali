.class public Lc/d/a/a/h0/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/d/a/a/h0/h;


# direct methods
.method public constructor <init>(Lc/d/a/a/h0/h;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/a/h0/g;->b:Lc/d/a/a/h0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/h0/g;->b:Lc/d/a/a/h0/h;

    iget-object v0, v0, Lc/d/a/a/h0/h;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    return-void
.end method
