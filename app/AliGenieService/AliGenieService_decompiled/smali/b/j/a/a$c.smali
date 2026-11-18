.class public Lb/j/a/a$c;
.super Lb/h/k/a0/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lb/j/a/a;


# direct methods
.method public constructor <init>(Lb/j/a/a;)V
    .locals 0

    iput-object p1, p0, Lb/j/a/a$c;->b:Lb/j/a/a;

    invoke-direct {p0}, Lb/h/k/a0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lb/h/k/a0/b;
    .locals 1

    iget-object v0, p0, Lb/j/a/a$c;->b:Lb/j/a/a;

    invoke-virtual {v0, p1}, Lb/j/a/a;->d(I)Lb/h/k/a0/b;

    move-result-object p1

    invoke-static {p1}, Lb/h/k/a0/b;->a(Lb/h/k/a0/b;)Lb/h/k/a0/b;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lb/j/a/a$c;->b:Lb/j/a/a;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/16 v2, 0x40

    if-eq p2, v2, :cond_1

    const/16 v1, 0x80

    if-eq p2, v1, :cond_0

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lb/j/a/a;->a(IILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Lb/j/a/a;->a(I)Z

    move-result v1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p2, v0, Lb/j/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    iget-object p2, v0, Lb/j/a/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget p2, v0, Lb/j/a/a;->k:I

    if-eq p2, p1, :cond_4

    const/high16 p3, -0x80000000

    if-eq p2, p3, :cond_3

    invoke-virtual {v0, p2}, Lb/j/a/a;->a(I)Z

    :cond_3
    iput p1, v0, Lb/j/a/a;->k:I

    iget-object p2, v0, Lb/j/a/a;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    invoke-virtual {v0, p1, p2}, Lb/j/a/a;->a(II)Z

    goto :goto_1

    :cond_4
    :goto_0
    move v1, p3

    goto :goto_1

    .line 3
    :cond_5
    invoke-virtual {v0, p1}, Lb/j/a/a;->b(I)Z

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p1}, Lb/j/a/a;->e(I)Z

    move-result v1

    goto :goto_1

    .line 4
    :cond_7
    iget-object p1, v0, Lb/j/a/a;->i:Landroid/view/View;

    invoke-static {p1, p2, p3}, Lb/h/k/q;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    :goto_1
    return v1
.end method

.method public b(I)Lb/h/k/a0/b;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lb/j/a/a$c;->b:Lb/j/a/a;

    iget p1, p1, Lb/j/a/a;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/j/a/a$c;->b:Lb/j/a/a;

    iget p1, p1, Lb/j/a/a;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lb/j/a/a$c;->a(I)Lb/h/k/a0/b;

    move-result-object p1

    return-object p1
.end method
