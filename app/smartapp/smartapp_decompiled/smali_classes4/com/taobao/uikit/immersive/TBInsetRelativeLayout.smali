.class public Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "TBInsetRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->setPaddingTop()V

    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p2, :cond_0

    .line 47
    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/taobao/uikit/immersive/R$dimen;->uik_immersive_action_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 53
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->setFitsSystemWindows(Z)V

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 60
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_1

    .line 62
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_1
    return-void
.end method

.method protected setPaddingTop()V
    .locals 4

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getPaddingLeft()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/tao/util/SystemBarDecorator;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    .line 32
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getPaddingRight()I

    move-result v2

    .line 33
    invoke-virtual {p0}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->getPaddingBottom()I

    move-result v3

    .line 30
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/taobao/uikit/immersive/TBInsetRelativeLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method
