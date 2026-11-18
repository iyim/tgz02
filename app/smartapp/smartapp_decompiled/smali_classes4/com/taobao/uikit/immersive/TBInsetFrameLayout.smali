.class public Lcom/taobao/uikit/immersive/TBInsetFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TBInsetFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->setPaddingTop()V

    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_0

    .line 53
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/taobao/uikit/immersive/R$dimen;->uik_immersive_action_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 59
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->setFitsSystemWindows(Z)V

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 66
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 68
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method protected setPaddingTop()V
    .locals 4

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getPaddingLeft()I

    move-result v0

    .line 37
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    .line 38
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getPaddingRight()I

    move-result v2

    .line 39
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->getPaddingBottom()I

    move-result v3

    .line 36
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/taobao/uikit/immersive/TBInsetFrameLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method
