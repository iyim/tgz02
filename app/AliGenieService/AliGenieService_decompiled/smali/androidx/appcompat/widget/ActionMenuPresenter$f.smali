.class public Landroidx/appcompat/widget/ActionMenuPresenter$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/i/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/p/i/g;Z)V
    .locals 2

    instance-of v0, p1, Lb/b/p/i/s;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/b/p/i/g;->c()Lb/b/p/i/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/p/i/g;->a(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 1
    iget-object v0, v0, Lb/b/p/i/b;->f:Lb/b/p/i/n$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2}, Lb/b/p/i/n$a;->a(Lb/b/p/i/g;Z)V

    :cond_1
    return-void
.end method

.method public a(Lb/b/p/i/g;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 3
    iget-object v1, v0, Lb/b/p/i/b;->d:Lb/b/p/i/g;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 4
    :cond_0
    move-object v1, p1

    check-cast v1, Lb/b/p/i/s;

    .line 5
    iget-object v1, v1, Lb/b/p/i/s;->C:Lb/b/p/i/j;

    .line 6
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$f;->b:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 7
    iget-object v0, v0, Lb/b/p/i/b;->f:Lb/b/p/i/n$a;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p1}, Lb/b/p/i/n$a;->a(Lb/b/p/i/g;)Z

    move-result v2

    :cond_1
    return v2
.end method
