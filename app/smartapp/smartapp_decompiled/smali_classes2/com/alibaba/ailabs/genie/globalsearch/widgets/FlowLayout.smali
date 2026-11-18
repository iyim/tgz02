.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;,
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlowLayout"


# instance fields
.field horizontalGap:I

.field private mChildrenPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field maxLines:I

.field private onItemClickListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;

.field orientation:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;

.field verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;->vertical:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->orientation:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;

    const/4 p2, 0x3

    .line 23
    iput p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->maxLines:I

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->mChildrenPositionList:Ljava/util/List;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 38
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->horizontalGap:I

    .line 39
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->verticalGap:I

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 141
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getChildCountVisible()I
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->mChildrenPositionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 153
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->onItemClickListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v1, p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;->onItemClick(Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCount()I

    move-result p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->mChildrenPositionList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 129
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 130
    iget-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->mChildrenPositionList:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    .line 131
    iget p5, p4, Landroid/graphics/Rect;->left:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->mChildrenPositionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->measureChildren(II)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->orientation:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;->vertical:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 49
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCount()I

    move-result v1

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingTop()I

    move-result v3

    move v4, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 55
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 56
    invoke-virtual {p0, v7, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 58
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 59
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v9, v4, v7

    if-gt v9, v0, :cond_0

    .line 63
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    invoke-direct {v10, v5, v4, v11, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    iget v9, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->verticalGap:I

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    if-ge v6, v8, :cond_1

    goto :goto_1

    .line 69
    :cond_0
    iget v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->horizontalGap:I

    add-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 70
    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingTop()I

    move-result v4

    add-int v6, v5, v8

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v7

    invoke-direct {v10, v5, v4, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v7

    iget v6, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->verticalGap:I

    add-int/2addr v4, v6

    :goto_1
    move v6, v8

    .line 75
    :cond_1
    iget-object v7, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->mChildrenPositionList:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v1, -0x1

    if-ne v2, v7, :cond_2

    add-int v3, v5, v6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingLeft()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingRight()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setMeasuredDimension(II)V

    goto/16 :goto_5

    .line 83
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCount()I

    move-result v1

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingLeft()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v2, v1, :cond_9

    .line 89
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 90
    invoke-virtual {p0, v8, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->measureChild(Landroid/view/View;II)V

    .line 92
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 93
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v10, v3, v9

    if-gt v10, v0, :cond_5

    .line 97
    new-instance v11, Landroid/graphics/Rect;

    add-int v12, v5, v8

    invoke-direct {v11, v3, v5, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    iget v10, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->horizontalGap:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    if-ge v6, v8, :cond_7

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 104
    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->maxLines:I

    if-lt v4, v3, :cond_6

    add-int v7, v5, v6

    goto :goto_4

    .line 108
    :cond_6
    iget v3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->verticalGap:I

    add-int/2addr v6, v3

    add-int/2addr v5, v6

    .line 109
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v9

    add-int v10, v5, v8

    invoke-direct {v11, v3, v5, v6, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v9

    iget v6, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->horizontalGap:I

    add-int/2addr v3, v6

    :goto_3
    move v6, v8

    .line 114
    :cond_7
    iget-object v8, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->mChildrenPositionList:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v1, -0x1

    if-ne v2, v8, :cond_8

    add-int v7, v5, v6

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 119
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingRight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingTop()I

    move-result p1

    add-int/2addr v7, p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getPaddingBottom()I

    move-result p1

    add-int/2addr v7, p1

    invoke-virtual {p0, v0, v7}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->setMeasuredDimension(II)V

    :goto_5
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->horizontalGap:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;)V
    .locals 1

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->onItemClickListener:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$FlowLayoutClickListener;

    const/4 p1, 0x0

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOrientation(Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->orientation:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout$Orientation;

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->verticalGap:I

    return-void
.end method
