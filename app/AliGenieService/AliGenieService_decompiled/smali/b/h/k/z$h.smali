.class public Lb/h/k/z$h;
.super Lb/h/k/z$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/k/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public n:Lb/h/e/b;


# direct methods
.method public constructor <init>(Lb/h/k/z;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/h/k/z$g;-><init>(Lb/h/k/z;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/h/k/z$h;->n:Lb/h/e/b;

    return-void
.end method

.method public constructor <init>(Lb/h/k/z;Lb/h/k/z$h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/h/k/z$g;-><init>(Lb/h/k/z;Lb/h/k/z$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/h/k/z$h;->n:Lb/h/e/b;

    return-void
.end method


# virtual methods
.method public a(IIII)Lb/h/k/z;
    .locals 1

    iget-object v0, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lb/h/k/z;->a(Landroid/view/WindowInsets;)Lb/h/k/z;

    move-result-object p1

    return-object p1
.end method

.method public e()Lb/h/e/b;
    .locals 1

    iget-object v0, p0, Lb/h/k/z$h;->n:Lb/h/e/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/h/k/z$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lb/h/e/b;->a(Landroid/graphics/Insets;)Lb/h/e/b;

    move-result-object v0

    iput-object v0, p0, Lb/h/k/z$h;->n:Lb/h/e/b;

    :cond_0
    iget-object v0, p0, Lb/h/k/z$h;->n:Lb/h/e/b;

    return-object v0
.end method
