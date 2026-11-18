.class public Lcom/taobao/uikit/immersive/TBInsetToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "TBInsetToolbar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->setPaddingTop()V

    .line 28
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_0

    .line 31
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p2, p3, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p2

    add-int/2addr p1, p2

    .line 32
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 59
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_0

    .line 60
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/taobao/uikit/immersive/R$dimen;->uik_immersive_action_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 66
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->setFitsSystemWindows(Z)V

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 73
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 71
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;->onMeasure(II)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method protected setPaddingTop()V
    .locals 4

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getPaddingLeft()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    .line 45
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getPaddingRight()I

    move-result v2

    .line 46
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->getPaddingBottom()I

    move-result v3

    .line 43
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/taobao/uikit/immersive/TBInsetToolbar;->setPadding(IIII)V

    :cond_0
    return-void
.end method
