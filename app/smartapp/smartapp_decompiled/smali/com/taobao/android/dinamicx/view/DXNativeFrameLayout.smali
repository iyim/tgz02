.class public Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "DXNativeFrameLayout.java"


# instance fields
.field private cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

.field private isV2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->isV2:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->isV2:Z

    return-void
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

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->isV2:Z

    return-void
.end method

.method private layoutChildForDX(IIIIZ)V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 77
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 78
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 82
    sget p4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {p3, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 83
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result p5

    .line 84
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v0

    .line 85
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result v1

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 86
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v2

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result p4

    add-int/2addr v2, p4

    .line 83
    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->isUseClipOutLine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->beforeDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->afterDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCLipRadiusHandler()Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    return-object v0
.end method

.method public isV2()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->isV2:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 67
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->isV2:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->layoutChildForDX(IIIIZ)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 40
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->isV2:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 44
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->setMeasuredDimension(II)V

    .line 45
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 47
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 49
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setClipRadiusHandler(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    return-void
.end method

.method public setV2(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->isV2:Z

    return-void
.end method
