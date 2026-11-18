.class public Landroidx/appcompat/widget/ActionMenuPresenter$a;
.super Lb/b/p/i/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Lb/b/p/i/s;Landroid/view/View;)V
    .locals 7

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$a;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    sget v5, Lb/b/a;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lb/b/p/i/m;-><init>(Landroid/content/Context;Lb/b/p/i/g;Landroid/view/View;ZII)V

    .line 2
    iget-object p2, p3, Lb/b/p/i/s;->C:Lb/b/p/i/j;

    .line 3
    invoke-virtual {p2}, Lb/b/p/i/j;->d()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    .line 5
    check-cast p2, Landroid/view/View;

    .line 6
    :cond_0
    iput-object p2, p0, Lb/b/p/i/m;->f:Landroid/view/View;

    .line 7
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Lb/b/p/i/m;->a(Lb/b/p/i/n$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$a;->m:Landroidx/appcompat/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:I

    invoke-super {p0}, Lb/b/p/i/m;->c()V

    return-void
.end method
