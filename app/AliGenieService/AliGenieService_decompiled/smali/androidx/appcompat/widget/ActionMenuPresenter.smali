.class public Landroidx/appcompat/widget/ActionMenuPresenter;
.super Lb/b/p/i/b;
.source ""

# interfaces
.implements Lb/h/k/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$b;,
        Landroidx/appcompat/widget/ActionMenuPresenter$c;,
        Landroidx/appcompat/widget/ActionMenuPresenter$f;,
        Landroidx/appcompat/widget/ActionMenuPresenter$a;,
        Landroidx/appcompat/widget/ActionMenuPresenter$e;,
        Landroidx/appcompat/widget/ActionMenuPresenter$d;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field public A:Landroidx/appcompat/widget/ActionMenuPresenter$b;

.field public final B:Landroidx/appcompat/widget/ActionMenuPresenter$f;

.field public C:I

.field public j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public final w:Landroid/util/SparseBooleanArray;

.field public x:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field public y:Landroidx/appcompat/widget/ActionMenuPresenter$a;

.field public z:Landroidx/appcompat/widget/ActionMenuPresenter$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lb/b/g;->abc_action_menu_layout:I

    sget v1, Lb/b/g;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lb/b/p/i/b;-><init>(Landroid/content/Context;II)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$f;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    return-void
.end method


# virtual methods
.method public a(Lb/b/p/i/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Lb/b/p/i/j;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/b/p/i/j;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lb/b/p/i/b;->a(Lb/b/p/i/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1
    :cond_1
    iget-boolean p1, p1, Lb/b/p/i/j;->D:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public a(Landroid/content/Context;Lb/b/p/i/g;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lb/b/p/i/b;->a(Landroid/content/Context;Lb/b/p/i/g;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Z

    if-nez v0, :cond_0

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:I

    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-nez v0, :cond_9

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt p1, v3, :cond_7

    if-gt v0, v3, :cond_7

    const/16 p1, 0x2d0

    const/16 v3, 0x3c0

    if-le v0, v3, :cond_2

    if-gt v2, p1, :cond_7

    :cond_2
    if-le v0, p1, :cond_3

    if-le v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x1f4

    if-ge v0, p1, :cond_6

    const/16 p1, 0x1e0

    const/16 v3, 0x280

    if-le v0, v3, :cond_4

    if-gt v2, p1, :cond_6

    :cond_4
    if-le v0, p1, :cond_5

    if-le v2, v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0x168

    if-lt v0, p1, :cond_8

    const/4 v1, 0x3

    goto :goto_2

    :cond_6
    :goto_0
    const/4 v1, 0x4

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x5

    .line 8
    :cond_8
    :goto_2
    iput v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    :cond_9
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:I

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v2, p0, Lb/b/p/i/b;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lb/b/q/m;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->k:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->l:Z

    :cond_a
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_3

    :cond_c
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    const/high16 p1, 0x42600000    # 56.0f

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:I

    return-void
.end method

.method public a(Lb/b/p/i/g;Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a()Z

    invoke-super {p0, p1, p2}, Lb/b/p/i/b;->a(Lb/b/p/i/g;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    invoke-super {p0, p1}, Lb/b/p/i/b;->a(Z)V

    iget-object p1, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lb/b/p/i/b;->d:Lb/b/p/i/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lb/b/p/i/g;->a()V

    iget-object p1, p1, Lb/b/p/i/g;->i:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/p/i/j;

    .line 22
    iget-object v3, v3, Lb/b/p/i/j;->B:Lb/h/k/b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lb/b/p/i/b;->d:Lb/b/p/i/g;

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p1}, Lb/b/p/i/g;->a()V

    iget-object p1, p1, Lb/b/p/i/g;->j:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/p/i/j;

    .line 26
    iget-boolean p1, p1, Lb/b/p/i/j;->D:Z

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    move v0, v2

    .line 27
    :cond_3
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_6

    if-nez p1, :cond_4

    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, p0, Lb/b/p/i/b;->b:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->i()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    if-ne p1, v0, :cond_7

    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public a()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->c()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lb/b/p/i/b;->a(Landroid/view/ViewGroup;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lb/b/p/i/s;)Z
    .locals 8

    invoke-virtual {p1}, Lb/b/p/i/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 9
    :goto_0
    iget-object v2, v0, Lb/b/p/i/s;->B:Lb/b/p/i/g;

    .line 10
    iget-object v3, p0, Lb/b/p/i/b;->d:Lb/b/p/i/g;

    if-eq v2, v3, :cond_1

    move-object v0, v2

    check-cast v0, Lb/b/p/i/s;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, v0, Lb/b/p/i/s;->C:Lb/b/p/i/j;

    .line 12
    iget-object v2, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lb/b/p/i/o$a;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lb/b/p/i/o$a;

    invoke-interface {v7}, Lb/b/p/i/o$a;->getItemData()Lb/b/p/i/j;

    move-result-object v7

    if-ne v7, v0, :cond_3

    move-object v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object v0, p1, Lb/b/p/i/s;->C:Lb/b/p/i/j;

    .line 14
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    invoke-virtual {p1}, Lb/b/p/i/g;->size()I

    move-result v0

    move v2, v1

    :goto_3
    const/4 v4, 0x1

    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    move v1, v4

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$a;

    iget-object v2, p0, Lb/b/p/i/b;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1, v3}, Landroidx/appcompat/widget/ActionMenuPresenter$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Lb/b/p/i/s;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 15
    iput-boolean v1, v0, Lb/b/p/i/m;->h:Z

    iget-object v0, v0, Lb/b/p/i/m;->j:Lb/b/p/i/l;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lb/b/p/i/l;->b(Z)V

    .line 16
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 17
    invoke-virtual {v0}, Lb/b/p/i/m;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18
    invoke-super {p0, p1}, Lb/b/p/i/b;->a(Lb/b/p/i/s;)Z

    return v4

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/b/p/i/b;->d:Lb/b/p/i/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/b/p/i/g;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    move v4, v3

    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:I

    iget v6, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    check-cast v8, Landroid/view/ViewGroup;

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v5

    move v5, v11

    :goto_1
    if-ge v5, v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/b/p/i/j;

    invoke-virtual {v14}, Lb/b/p/i/j;->g()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v14}, Lb/b/p/i/j;->f()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    iget-boolean v13, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:Z

    if-eqz v13, :cond_3

    .line 1
    iget-boolean v13, v14, Lb/b/p/i/j;->D:Z

    if-eqz v13, :cond_3

    move v12, v3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2
    :cond_4
    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v5, :cond_6

    if-nez v9, :cond_5

    add-int/2addr v11, v10

    if-le v11, v12, :cond_6

    :cond_5
    add-int/lit8 v12, v12, -0x1

    :cond_6
    sub-int/2addr v12, v10

    iget-object v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    iget-boolean v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v9, :cond_7

    iget v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:I

    div-int v10, v6, v9

    rem-int v11, v6, v9

    div-int/2addr v11, v10

    add-int/2addr v9, v11

    goto :goto_3

    :cond_7
    move v9, v3

    move v10, v9

    :goto_3
    move v14, v3

    move v11, v6

    move v6, v14

    :goto_4
    if-ge v6, v4, :cond_1b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/b/p/i/j;

    invoke-virtual {v15}, Lb/b/p/i/j;->g()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Lb/b/p/i/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v2, :cond_8

    invoke-static {v13, v9, v10, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v10, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v11, v2

    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    move v2, v14

    .line 3
    :goto_6
    iget v13, v15, Lb/b/p/i/j;->b:I

    const/4 v14, 0x1

    if-eqz v13, :cond_a

    .line 4
    invoke-virtual {v5, v13, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_a
    invoke-virtual {v15, v14}, Lb/b/p/i/j;->b(Z)V

    move v14, v2

    move v0, v3

    move/from16 v17, v4

    goto/16 :goto_e

    :cond_b
    invoke-virtual {v15}, Lb/b/p/i/j;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5
    iget v2, v15, Lb/b/p/i/j;->b:I

    .line 6
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v12, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    if-lez v11, :cond_e

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v3, :cond_d

    if-lez v10, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    :goto_7
    move/from16 v18, v3

    move/from16 v17, v4

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Lb/b/p/i/j;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    invoke-static {v4, v9, v10, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v19

    sub-int v10, v10, v19

    if-nez v19, :cond_f

    const/4 v3, 0x0

    goto :goto_8

    :cond_f
    move/from16 v3, v18

    :goto_8
    move/from16 v18, v3

    goto :goto_9

    :cond_10
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    :goto_9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v11, v3

    if-nez v14, :cond_11

    move v14, v3

    :cond_11
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:Z

    if-eqz v3, :cond_12

    if-ltz v11, :cond_13

    goto :goto_a

    :cond_12
    add-int v3, v11, v14

    if-lez v3, :cond_13

    :goto_a
    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    and-int v3, v18, v3

    :cond_14
    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_d

    :cond_15
    if-eqz v13, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v6, :cond_18

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb/b/p/i/j;

    .line 7
    iget v0, v13, Lb/b/p/i/j;->b:I

    if-ne v0, v2, :cond_17

    .line 8
    invoke-virtual {v13}, Lb/b/p/i/j;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v12, v12, 0x1

    :cond_16
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lb/b/p/i/j;->b(Z)V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_c

    :cond_18
    :goto_d
    if-eqz v3, :cond_19

    add-int/lit8 v12, v12, -0x1

    :cond_19
    invoke-virtual {v15, v3}, Lb/b/p/i/j;->b(Z)V

    const/4 v0, 0x0

    goto :goto_e

    :cond_1a
    move v0, v3

    move/from16 v17, v4

    invoke-virtual {v15, v0}, Lb/b/p/i/j;->b(Z)V

    :goto_e
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    move v3, v0

    move/from16 v4, v17

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_2

    .line 1
    invoke-virtual {v0}, Lb/b/p/i/m;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lb/b/p/i/m;->j:Lb/b/p/i/l;

    invoke-interface {v0}, Lb/b/p/i/q;->dismiss()V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v0}, Lb/b/p/i/m;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lb/b/p/i/m;->j:Lb/b/p/i/l;

    invoke-interface {v0}, Lb/b/p/i/q;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/p/i/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 7

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/p/i/b;->d:Lb/b/p/i/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_0

    .line 1
    invoke-virtual {v0}, Lb/b/p/i/g;->a()V

    iget-object v0, v0, Lb/b/p/i/g;->j:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    iget-object v3, p0, Lb/b/p/i/b;->c:Landroid/content/Context;

    iget-object v4, p0, Lb/b/p/i/b;->d:Lb/b/p/i/g;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->j:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Lb/b/p/i/g;Landroid/view/View;Z)V

    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    iget-object v0, p0, Lb/b/p/i/b;->i:Lb/b/p/i/o;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
