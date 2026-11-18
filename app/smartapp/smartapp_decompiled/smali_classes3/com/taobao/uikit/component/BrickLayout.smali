.class public Lcom/taobao/uikit/component/BrickLayout;
.super Landroid/view/ViewGroup;
.source "BrickLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;
    }
.end annotation


# instance fields
.field private mGap:I

.field private mMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/taobao/uikit/component/BrickLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/uikit/component/BrickLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/taobao/uikit/component/BrickLayout;->mGap:I

    const v1, 0x7fffffff

    .line 28
    iput v1, p0, Lcom/taobao/uikit/component/BrickLayout;->mMaxLines:I

    .line 43
    sget-object v1, Lcom/taobao/uikit/R$styleable;->BrickLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    sget p2, Lcom/taobao/uikit/R$styleable;->BrickLayout_uik_brickMaxLines:I

    iget p3, p0, Lcom/taobao/uikit/component/BrickLayout;->mMaxLines:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/component/BrickLayout;->mMaxLines:I

    .line 47
    sget p2, Lcom/taobao/uikit/R$styleable;->BrickLayout_uik_brickGap:I

    iget p3, p0, Lcom/taobao/uikit/component/BrickLayout;->mGap:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/uikit/component/BrickLayout;->mGap:I

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 136
    new-instance v0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;

    invoke-direct {v0, p3}, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 130
    new-instance v0, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 118
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/taobao/uikit/component/BrickLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 124
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/taobao/uikit/component/BrickLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 59
    invoke-virtual {p0, p2}, Lcom/taobao/uikit/component/BrickLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 60
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 62
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;

    .line 64
    iget p5, p4, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->x:I

    .line 65
    iget v0, p4, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->y:I

    .line 66
    iget v1, p4, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->width:I

    add-int/2addr v1, p5

    iget p4, p4, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->height:I

    add-int/2addr p4, v0

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    .line 76
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/taobao/uikit/component/BrickLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v2, v1, :cond_4

    .line 84
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/component/BrickLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 85
    invoke-virtual {v9, v0, p2}, Landroid/view/View;->measure(II)V

    .line 86
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;

    .line 87
    iget v11, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->height:I

    if-gtz v11, :cond_0

    .line 89
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iput v11, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->height:I

    .line 91
    :cond_0
    iget v11, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->width:I

    if-gtz v11, :cond_1

    .line 93
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iput v9, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->width:I

    :cond_1
    sub-int v9, p1, v5

    .line 96
    iget v11, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->width:I

    if-ge v9, v11, :cond_2

    add-int/2addr v6, v7

    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 103
    :cond_2
    iput v5, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->x:I

    .line 104
    iget v9, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->topMargin:I

    add-int/2addr v9, v6

    iput v9, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->y:I

    .line 105
    iget v9, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->height:I

    iget v11, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v11, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->bottomMargin:I

    add-int/2addr v9, v11

    iget v11, p0, Lcom/taobao/uikit/component/BrickLayout;->mGap:I

    add-int/2addr v9, v11

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 106
    iget v9, v10, Lcom/taobao/uikit/component/BrickLayout$BrickLayoutParams;->width:I

    iget v10, p0, Lcom/taobao/uikit/component/BrickLayout;->mGap:I

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    .line 107
    iget v9, p0, Lcom/taobao/uikit/component/BrickLayout;->mMaxLines:I

    if-gt v8, v9, :cond_3

    add-int v4, v6, v7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/taobao/uikit/component/BrickLayout;->setMeasuredDimension(II)V

    return-void
.end method
