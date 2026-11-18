.class public Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXLayout;
.source "DXFrameLayoutWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I


# instance fields
.field private final matchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field measureAllChildren:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXLayout;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->matchParentChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->measureAllChildren:Z

    return-void
.end method

.method private getPaddingBottomForMeasure()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingBottom:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingBottom:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPaddingLeftForMeasure()I
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingLeftWithDirection()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPaddingRightForMeasure()I
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingRightWithDirection()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getPaddingTopForMeasure()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingTop:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingTop:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;-><init>()V

    return-object p1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 250
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iget v2, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 229
    iget p1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->layoutGravityAttr:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 235
    instance-of v0, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 236
    move-object v0, p2

    nop

    nop

    iget v1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->layoutGravityAttr:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    :cond_0
    iget v0, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 239
    iget p1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p2
.end method

.method layoutChildren(IIIIZ)V
    .locals 16

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getVirtualChildCount()I

    move-result v0

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getDirection()I

    move-result v1

    .line 154
    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingLeftForMeasure()I

    move-result v2

    sub-int v3, p3, p1

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingRightForMeasure()I

    move-result v4

    sub-int/2addr v3, v4

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingTopForMeasure()I

    move-result v4

    sub-int v5, p4, p2

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingBottomForMeasure()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_3

    move-object/from16 v8, p0

    .line 161
    invoke-virtual {v8, v7}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v9

    .line 162
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    .line 164
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v10

    .line 165
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v12

    .line 169
    iget v13, v9, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    if-nez v13, :cond_0

    .line 170
    iget v14, v9, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_0

    const/4 v13, 0x0

    .line 173
    :cond_0
    invoke-static {v13, v1}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getAbsoluteGravity(II)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-nez p5, :cond_1

    sub-int v14, v3, v10

    .line 188
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v15

    goto :goto_1

    :pswitch_1
    sub-int v14, v3, v2

    sub-int/2addr v14, v10

    .line 179
    div-int/2addr v14, v11

    add-int/2addr v14, v2

    .line 180
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v15

    :goto_1
    sub-int/2addr v14, v15

    goto :goto_3

    .line 196
    :cond_1
    :goto_2
    invoke-virtual {v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v14

    add-int/2addr v14, v2

    :goto_3
    packed-switch v13, :pswitch_data_1

    .line 218
    iget v11, v9, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    :goto_4
    add-int/2addr v11, v4

    goto :goto_5

    :pswitch_2
    sub-int v11, v5, v12

    .line 215
    iget v13, v9, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    sub-int/2addr v11, v13

    goto :goto_5

    :pswitch_3
    sub-int v13, v5, v4

    sub-int/2addr v13, v12

    .line 209
    div-int/2addr v13, v11

    add-int/2addr v13, v4

    iget v11, v9, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v13, v11

    iget v11, v9, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    sub-int v11, v13, v11

    goto :goto_5

    .line 204
    :pswitch_4
    iget v11, v9, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    goto :goto_4

    :goto_5
    add-int/2addr v10, v14

    add-int/2addr v12, v11

    .line 221
    invoke-virtual {v9, v14, v11, v10, v12}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layout(IIII)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v8, p0

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 245
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 129
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->layoutChildren(IIIIZ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getVirtualChildCount()I

    move-result v9

    .line 47
    invoke-static/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v11, 0x40000000    # 2.0f

    if-ne v0, v11, :cond_1

    .line 48
    invoke-static/range {p2 .. p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v13, 0x1

    .line 49
    :goto_1
    iget-object v0, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->matchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    const/4 v3, -0x1

    if-ge v14, v9, :cond_6

    .line 56
    invoke-virtual {v6, v14}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    .line 58
    iget-boolean v0, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->measureAllChildren:Z

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v18, v2

    move/from16 v2, p1

    const/4 v11, -0x1

    move/from16 v3, v16

    move v12, v4

    move/from16 v4, p2

    move v10, v5

    move/from16 v5, v17

    .line 59
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 61
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, v18

    iget v2, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v0, v2

    iget v2, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v0, v2

    .line 60
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 63
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v2, v3

    .line 62
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 65
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredState()I

    move-result v3

    invoke-static {v12, v3}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->combineMeasuredStates(II)I

    move-result v3

    if-eqz v13, :cond_4

    .line 67
    iget v4, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-eq v4, v11, :cond_3

    iget v4, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-ne v4, v11, :cond_4

    .line 69
    :cond_3
    iget-object v4, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->matchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v15, v0

    move v5, v2

    move v4, v3

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_2

    :cond_6
    move v12, v4

    move v10, v5

    const/4 v11, -0x1

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingLeftForMeasure()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingRightForMeasure()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingTopForMeasure()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getPaddingBottomForMeasure()I

    move-result v1

    add-int/2addr v0, v1

    add-int v5, v10, v0

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 83
    invoke-static {v1, v7, v12}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v12, 0x10

    .line 84
    invoke-static {v0, v8, v2}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->resolveSizeAndState(III)I

    move-result v0

    .line 83
    invoke-virtual {v6, v1, v0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setMeasuredDimension(II)V

    .line 87
    iget-object v0, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->matchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_9

    .line 91
    iget-object v2, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->matchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 94
    iget v3, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-ne v3, v11, :cond_7

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getMeasuredWidth()I

    move-result v3

    iget v4, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingLeft:I

    sub-int/2addr v3, v4

    iget v4, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingRight:I

    sub-int/2addr v3, v4

    iget v4, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    sub-int/2addr v3, v4

    iget v4, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 98
    invoke-static {v3, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_4

    .line 101
    :cond_7
    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingLeft:I

    iget v4, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    invoke-static {v7, v3, v4}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getChildMeasureSpec(III)I

    move-result v3

    .line 108
    :goto_4
    iget v4, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-ne v4, v11, :cond_8

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getMeasuredHeight()I

    move-result v4

    iget v5, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingTop:I

    sub-int/2addr v4, v5

    iget v5, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingBottom:I

    sub-int/2addr v4, v5

    iget v5, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    sub-int/2addr v4, v5

    iget v5, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v9, 0x40000000    # 2.0f

    .line 112
    invoke-static {v4, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 115
    iget v4, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingTop:I

    iget v10, v6, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v4, v10

    iget v10, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v4, v10

    iget v10, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v4, v10

    iget v10, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    invoke-static {v8, v4, v10}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getChildMeasureSpec(III)I

    move-result v4

    .line 121
    :goto_5
    invoke-virtual {v2, v3, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .locals 8

    .line 255
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->hasCornerRadius()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    move-object v0, p1

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;

    .line 257
    new-instance v7, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-direct {v7}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;-><init>()V

    .line 258
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->cornerRadius:I

    if-lez v1, :cond_0

    .line 259
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->cornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v7, p1, v1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;F)V

    goto :goto_0

    .line 261
    :cond_0
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->cornerRadiusLeftTop:I

    int-to-float v3, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->cornerRadiusRightTop:I

    int-to-float v4, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->cornerRadiusLeftBottom:I

    int-to-float v5, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->cornerRadiusRightBottom:I

    int-to-float v6, v1

    move-object v1, v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;FFFF)V

    .line 264
    :goto_0
    invoke-virtual {v0, v7}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->setClipRadiusHandler(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;)V

    goto :goto_1

    .line 266
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;

    .line 267
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;->getCLipRadiusHandler()Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 269
    invoke-virtual {v0, p1, v1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;F)V

    .line 273
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->setBackground(Landroid/view/View;)V

    return-void
.end method
