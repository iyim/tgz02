.class public Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "DXNativeRecyclerView.java"


# instance fields
.field private cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

.field private contentHorizontalLength:I

.field private contentOffsetX:I

.field private contentOffsetY:I

.field private contentVerticalLength:I

.field private mScrolledX:I

.field private mScrolledY:I

.field private needScrollAfterLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    if-nez v0, :cond_0

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->isUseClipOutLine()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->beforeDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-virtual {v0, p0, p1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->afterDispatchDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCLipRadiusHandler()Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    return-object v0
.end method

.method public getScrolledX()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledX:I

    return v0
.end method

.method public getScrolledY()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledY:I

    return v0
.end method

.method public isSlider()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needScrollAfterLayout(IIII)V
    .locals 2

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->needScrollAfterLayout:Z

    .line 91
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentHorizontalLength:I

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    .line 92
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetX:I

    .line 93
    iput v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledX:I

    .line 94
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledX:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetX:I

    .line 99
    :goto_0
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentVerticalLength:I

    if-ge p4, p1, :cond_1

    .line 100
    iput p2, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetY:I

    .line 101
    iput v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledY:I

    .line 102
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 104
    :cond_1
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledY:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetY:I

    .line 107
    :goto_1
    iput p3, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentHorizontalLength:I

    .line 108
    iput p4, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentVerticalLength:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/RecyclerView;->onLayout(ZIIII)V

    .line 59
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->isSlider()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->needScrollAfterLayout:Z

    if-eqz p1, :cond_0

    .line 60
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetX:I

    iget p2, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetY:I

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->scrollBy(II)V

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetX:I

    .line 62
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentOffsetY:I

    .line 63
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->needScrollAfterLayout:Z

    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 70
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledX:I

    .line 71
    iget p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledY:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->mScrolledY:I

    return-void
.end method

.method public setClipRadiusHandler(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->cLipRadiusHandler:Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    return-void
.end method

.method public setContentHorizontalLength(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentHorizontalLength:I

    return-void
.end method

.method public setContentVerticalLength(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->contentVerticalLength:I

    return-void
.end method
