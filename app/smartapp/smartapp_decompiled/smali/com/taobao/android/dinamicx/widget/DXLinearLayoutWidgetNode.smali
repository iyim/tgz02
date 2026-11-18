.class public Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXLayout;
.source "DXLinearLayoutWidgetNode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode$Builder;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mOrientation:I

.field mTotalLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXLayout;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private setChildFrame(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V
    .locals 0

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 760
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 39
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;-><init>()V

    return-object p1
.end method

.method protected forceUniformHeight(II)V
    .locals 10

    .line 596
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 599
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 600
    invoke-virtual {v8}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 603
    iget v2, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 606
    iget v9, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    .line 607
    invoke-virtual {v8}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    .line 610
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 611
    iput v9, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected forceUniformWidth(II)V
    .locals 10

    .line 325
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 328
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 329
    invoke-virtual {v8}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 331
    iget v2, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 334
    iget v9, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    .line 335
    invoke-virtual {v8}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    .line 337
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 338
    iput v9, v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 896
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iget v2, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 897
    iget p1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->layoutGravityAttr:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

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

    .line 904
    instance-of v0, p2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 905
    move-object v0, p2

    nop

    nop

    iget v1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->layoutGravityAttr:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 907
    :cond_0
    iget v0, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 908
    iget p1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p2
.end method

.method getChildrenSkipCount(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method getLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOrientation()I
    .locals 1

    .line 951
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 19

    move-object/from16 v6, p0

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->isLayoutRtl()Z

    move-result v0

    .line 769
    iget v7, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    sub-int v1, p4, p2

    .line 776
    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingBottom:I

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    .line 779
    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingBottom:I

    sub-int v9, v1, v2

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildCount()I

    move-result v10

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getDirection()I

    move-result v1

    .line 793
    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->childGravity:I

    invoke-static {v2, v1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v11, 0x2

    packed-switch v1, :pswitch_data_0

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingLeftWithDirection()I

    move-result v1

    goto :goto_0

    .line 799
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingLeftWithDirection()I

    move-result v1

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 806
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingLeftWithDirection()I

    move-result v1

    sub-int v2, p3, p1

    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v11

    add-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    add-int/lit8 v0, v10, -0x1

    const/4 v3, -0x1

    move v13, v0

    const/4 v14, -0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_1
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v10, :cond_4

    mul-int v0, v14, v15

    add-int v5, v13, v0

    .line 826
    invoke-virtual {v6, v5}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    if-nez v4, :cond_1

    .line 828
    invoke-virtual {v6, v5}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureNullChild(I)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_6

    .line 829
    :cond_1
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_3

    .line 830
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v16

    .line 831
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v17

    .line 841
    iget v0, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    .line 842
    iget v2, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    and-int/2addr v2, v12

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 843
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->childGravity:I

    :cond_2
    packed-switch v0, :pswitch_data_1

    move v3, v7

    goto :goto_5

    :pswitch_2
    sub-int v0, v8, v17

    .line 866
    iget v2, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    goto :goto_3

    :pswitch_3
    sub-int v0, v9, v17

    .line 859
    div-int/2addr v0, v11

    add-int/2addr v0, v7

    iget v2, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v0, v2

    iget v2, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    :goto_3
    sub-int/2addr v0, v2

    goto :goto_4

    .line 850
    :pswitch_4
    iget v0, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v0, v7

    :goto_4
    move v3, v0

    .line 873
    :goto_5
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v0

    add-int v18, v1, v0

    .line 874
    invoke-virtual {v6, v4}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v0

    add-int v2, v18, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 p1, v4

    move/from16 v4, v16

    move v11, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->setChildFrame(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 876
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v0

    add-int v16, v16, v0

    move-object/from16 v0, p1

    .line 877
    invoke-virtual {v6, v0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v1

    add-int v16, v16, v1

    add-int v18, v18, v16

    .line 879
    invoke-virtual {v6, v0, v11}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildrenSkipCount(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result v0

    add-int/2addr v15, v0

    move/from16 v1, v18

    :cond_3
    :goto_6
    add-int/2addr v15, v12

    const/4 v11, 0x2

    goto :goto_2

    :cond_4
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

.method layoutVertical(IIII)V
    .locals 17

    move-object/from16 v6, p0

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getDirection()I

    move-result v7

    sub-int v0, p3, p1

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingRightWithDirection()I

    move-result v1

    sub-int v8, v0, v1

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingLeftWithDirection()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingRightWithDirection()I

    move-result v1

    sub-int v9, v0, v1

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildCount()I

    move-result v10

    .line 689
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->childGravity:I

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eq v0, v11, :cond_1

    if-eq v0, v12, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 708
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    goto :goto_0

    .line 694
    :cond_0
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 701
    :cond_1
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    sub-int v1, p4, p2

    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/2addr v1, v12

    add-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v10, :cond_5

    .line 713
    invoke-virtual {v6, v13}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v14

    if-nez v14, :cond_2

    .line 715
    invoke-virtual {v6, v13}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    .line 716
    :cond_2
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_4

    .line 717
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v4

    .line 718
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v15

    .line 720
    iget v1, v14, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    .line 721
    iget v2, v14, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    and-int/2addr v2, v11

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 722
    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->childGravity:I

    .line 724
    :cond_3
    invoke-static {v1, v7}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getAbsoluteGravity(II)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingLeftWithDirection()I

    move-result v1

    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v2

    add-int/2addr v1, v2

    :goto_2
    move v2, v1

    goto :goto_4

    :pswitch_0
    sub-int v1, v8, v4

    .line 736
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v2

    goto :goto_3

    .line 729
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getPaddingLeftWithDirection()I

    move-result v1

    sub-int v2, v9, v4

    div-int/2addr v2, v12

    add-int/2addr v1, v2

    .line 730
    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v2

    :goto_3
    sub-int/2addr v1, v2

    goto :goto_2

    .line 748
    :goto_4
    iget v1, v14, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int v16, v0, v1

    .line 750
    invoke-virtual {v6, v14}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->setChildFrame(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 752
    iget v0, v14, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v14}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 754
    invoke-virtual {v6, v14, v13}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildrenSkipCount(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result v0

    add-int/2addr v13, v0

    move/from16 v0, v16

    :cond_4
    :goto_5
    add-int/2addr v13, v11

    goto :goto_1

    :cond_5
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
.end method

.method measureChildBeforeLayout(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 657
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    return-void
.end method

.method protected measureHorizontal(II)V
    .locals 30

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 348
    iput v10, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildCount()I

    move-result v11

    .line 359
    invoke-static/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v12

    .line 360
    invoke-static/range {p2 .. p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v12, v14, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const/16 v17, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    :goto_1
    const/4 v1, 0x2

    const-wide/16 v22, 0x0

    if-ge v6, v11, :cond_11

    .line 372
    invoke-virtual {v7, v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v15

    if-nez v15, :cond_1

    .line 374
    iget v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    invoke-virtual {v7, v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureNullChild(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    :goto_2
    move/from16 v24, v11

    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_d

    .line 378
    :cond_1
    invoke-virtual {v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 379
    invoke-virtual {v7, v15, v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildrenSkipCount(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result v1

    add-int/2addr v6, v1

    goto :goto_2

    :cond_2
    float-to-double v0, v0

    move/from16 v24, v11

    .line 386
    iget-wide v10, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v10

    double-to-float v10, v0

    .line 387
    iget-wide v0, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    cmpl-double v2, v0, v22

    if-lez v2, :cond_3

    const/4 v0, 0x0

    .line 388
    iput v0, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    .line 391
    :cond_3
    iget v0, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-nez v0, :cond_4

    iget-wide v0, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    cmpl-double v2, v0, v22

    if-lez v2, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-ne v12, v14, :cond_6

    if-eqz v11, :cond_6

    if-eqz v16, :cond_5

    .line 397
    iget v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    iget v1, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    goto :goto_5

    .line 399
    :cond_5
    iget v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 400
    iget v1, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v1, v0

    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    :goto_5
    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    const/16 v19, 0x1

    goto :goto_7

    :cond_6
    if-eqz v11, :cond_7

    const/4 v0, -0x2

    .line 425
    iput v0, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    :cond_7
    cmpl-float v0, v10, v17

    if-nez v0, :cond_8

    .line 432
    iget v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    move/from16 v22, v0

    goto :goto_6

    :cond_8
    const/16 v22, 0x0

    :goto_6
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v6

    move/from16 v25, v3

    move/from16 v3, p1

    move/from16 v26, v4

    move/from16 v4, v22

    move/from16 v27, v5

    move/from16 v5, p2

    move/from16 v28, v6

    move/from16 v6, v23

    .line 433
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureChildBeforeLayout(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIIII)V

    .line 436
    invoke-virtual {v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v0

    if-eqz v11, :cond_9

    const/4 v1, 0x0

    .line 441
    iput v1, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    add-int v18, v18, v0

    :cond_9
    if-eqz v16, :cond_a

    .line 446
    iget v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v0, v2

    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v0, v2

    .line 447
    invoke-virtual {v7, v15}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    goto :goto_7

    .line 449
    :cond_a
    iget v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    add-int/2addr v0, v1

    .line 450
    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v0, v2

    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v0, v2

    .line 451
    invoke-virtual {v7, v15}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v2

    add-int/2addr v0, v2

    .line 450
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    :goto_7
    if-eq v13, v14, :cond_b

    .line 457
    iget v0, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, -0x1

    :cond_c
    const/4 v0, 0x0

    .line 465
    :goto_8
    iget v1, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    iget v3, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v1, v3

    .line 466
    invoke-virtual {v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    move/from16 v4, v25

    .line 467
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v20, :cond_d

    .line 469
    iget v5, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-ne v5, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    .line 470
    :goto_9
    iget v5, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-lez v5, :cond_f

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    move v1, v3

    :goto_a
    move/from16 v5, v26

    .line 475
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v5, v0

    goto :goto_c

    :cond_f
    move/from16 v5, v26

    if-eqz v0, :cond_10

    goto :goto_b

    :cond_10
    move v1, v3

    :goto_b
    move/from16 v3, v27

    .line 478
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v27, v0

    :goto_c
    move/from16 v0, v28

    .line 482
    invoke-virtual {v7, v15, v0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildrenSkipCount(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result v1

    add-int v6, v0, v1

    move/from16 v20, v2

    move v3, v4

    move v4, v5

    move v0, v10

    move/from16 v5, v27

    goto/16 :goto_3

    :goto_d
    add-int/2addr v6, v10

    move/from16 v11, v24

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_11
    move/from16 v24, v11

    const/4 v2, -0x1

    const/4 v10, 0x1

    move/from16 v29, v4

    move v4, v3

    move v3, v5

    move/from16 v5, v29

    .line 485
    iget v6, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    iget v11, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingLeft:I

    iget v12, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingRight:I

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    iput v6, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 488
    iget v6, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getSuggestedMinimumWidth()I

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v11, 0x0

    .line 494
    invoke-static {v6, v8, v11}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->resolveSizeAndState(III)I

    move-result v6

    const v11, 0xffffff

    and-int/2addr v11, v6

    .line 500
    iget v12, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    sub-int/2addr v11, v12

    add-int v11, v11, v18

    if-nez v19, :cond_13

    if-eqz v11, :cond_12

    cmpl-float v12, v0, v17

    if-lez v12, :cond_12

    goto :goto_e

    .line 568
    :cond_12
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v5, v4

    move v4, v0

    move/from16 v0, v24

    goto/16 :goto_17

    :cond_13
    :goto_e
    const/4 v4, 0x0

    .line 509
    iput v4, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    move v12, v0

    move v4, v3

    move/from16 v0, v24

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_f
    if-ge v3, v0, :cond_1c

    .line 512
    invoke-virtual {v7, v3}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v15

    if-eqz v15, :cond_1b

    .line 513
    invoke-virtual {v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v10

    if-ne v10, v1, :cond_14

    goto/16 :goto_15

    .line 518
    :cond_14
    iget-wide v1, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    cmpl-double v17, v1, v22

    if-lez v17, :cond_15

    move-object/from16 v18, v15

    int-to-double v14, v11

    .line 520
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v1

    move/from16 v19, v11

    float-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v14, v10

    double-to-int v12, v14

    sub-int v14, v19, v12

    .line 522
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v1

    double-to-float v1, v10

    const/4 v2, 0x0

    .line 527
    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/high16 v2, 0x40000000    # 2.0f

    .line 526
    invoke-static {v10, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 528
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    iget v11, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v2, v11

    move-object/from16 v11, v18

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v2, v12

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v2, v12

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    invoke-static {v9, v2, v12}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildMeasureSpec(III)I

    move-result v2

    .line 531
    invoke-virtual {v11, v10, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measure(II)V

    goto :goto_10

    :cond_15
    move/from16 v19, v11

    move-object v11, v15

    move v1, v12

    move/from16 v14, v19

    :goto_10
    if-eqz v16, :cond_16

    .line 539
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v10

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v10, v12

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v10, v12

    .line 540
    invoke-virtual {v7, v11}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v2, v10

    iput v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    goto :goto_11

    .line 542
    :cond_16
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 543
    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v2

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v10, v12

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v10, v12

    .line 544
    invoke-virtual {v7, v11}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v12

    add-int/2addr v10, v12

    .line 543
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    :goto_11
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_17

    .line 547
    iget v2, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    const/4 v10, -0x1

    if-ne v2, v10, :cond_17

    const/4 v2, 0x1

    goto :goto_12

    :cond_17
    const/4 v2, 0x0

    .line 550
    :goto_12
    iget v10, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    iget v12, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v10, v12

    .line 551
    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v10

    .line 552
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v2, :cond_18

    goto :goto_13

    :cond_18
    move v10, v12

    .line 553
    :goto_13
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v20, :cond_19

    .line 556
    iget v4, v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    const/4 v10, -0x1

    if-ne v4, v10, :cond_1a

    const/16 v20, 0x1

    goto :goto_14

    :cond_19
    const/4 v10, -0x1

    :cond_1a
    const/16 v20, 0x0

    :goto_14
    move v12, v1

    move v4, v2

    move v11, v14

    goto :goto_16

    :cond_1b
    :goto_15
    move/from16 v19, v11

    const/4 v10, -0x1

    move/from16 v11, v19

    :goto_16
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v10, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_f

    .line 562
    :cond_1c
    iget v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingLeft:I

    iget v3, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    :goto_17
    if-nez v20, :cond_1d

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_1d

    goto :goto_18

    :cond_1d
    move v4, v5

    .line 576
    :goto_18
    iget v1, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v1, v2

    add-int/2addr v4, v1

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    or-int/lit8 v3, v6, 0x0

    .line 582
    invoke-static {v1, v9, v2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->resolveSizeAndState(III)I

    move-result v1

    .line 581
    invoke-virtual {v7, v3, v1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->setMeasuredDimension(II)V

    if-eqz v21, :cond_1e

    .line 586
    invoke-virtual {v7, v0, v8}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->forceUniformHeight(II)V

    :cond_1e
    return-void
.end method

.method measureNullChild(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected measureVertical(II)V
    .locals 32

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 67
    invoke-static/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v10

    .line 68
    invoke-static/range {p2 .. p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v11

    const/4 v12, 0x0

    .line 71
    iput v12, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildCount()I

    move-result v13

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    :goto_0
    const/4 v1, 0x2

    const-wide/16 v20, 0x0

    if-ge v6, v13, :cond_e

    move/from16 v22, v4

    .line 101
    invoke-virtual {v7, v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    if-nez v4, :cond_0

    .line 103
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    invoke-virtual {v7, v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureNullChild(I)I

    move-result v24

    add-int v2, v2, v24

    iput v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 106
    :cond_0
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 107
    invoke-virtual {v7, v4, v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildrenSkipCount(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result v1

    add-int/2addr v6, v1

    move v1, v6

    move v15, v13

    move/from16 v4, v22

    const/4 v13, 0x1

    goto/16 :goto_9

    :cond_1
    float-to-double v0, v0

    .line 111
    iget-wide v14, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v14

    double-to-float v14, v0

    .line 113
    iget-wide v0, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    cmpl-double v2, v0, v20

    if-lez v2, :cond_2

    .line 114
    iput v12, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    .line 120
    :cond_2
    iget v0, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-nez v0, :cond_3

    iget-wide v0, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    cmpl-double v2, v0, v20

    if-lez v2, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v15, 0x1

    goto :goto_1

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    const/4 v15, 0x0

    :goto_1
    if-ne v11, v0, :cond_4

    if-eqz v15, :cond_4

    .line 136
    iget v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 138
    iget v1, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v1, v0

    iget v2, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    move/from16 v27, v3

    move-object v1, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v28, v22

    const/high16 v0, 0x40000000    # 2.0f

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    if-eqz v15, :cond_5

    const/4 v0, -0x2

    .line 150
    iput v0, v4, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    :cond_5
    const/4 v0, 0x0

    cmpl-float v1, v14, v0

    if-nez v1, :cond_6

    .line 164
    iget v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    move/from16 v25, v0

    goto :goto_2

    :cond_6
    const/16 v25, 0x0

    :goto_2
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v6

    move/from16 v27, v3

    move/from16 v3, p1

    move-object/from16 v23, v4

    move/from16 v28, v22

    move/from16 v4, v26

    move/from16 v29, v5

    move/from16 v5, p2

    move/from16 v30, v6

    move/from16 v6, v25

    .line 165
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureChildBeforeLayout(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIIII)V

    .line 168
    invoke-virtual/range {v23 .. v23}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v0

    if-eqz v15, :cond_7

    move-object/from16 v1, v23

    .line 173
    iput v12, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    add-int v16, v16, v0

    goto :goto_3

    :cond_7
    move-object/from16 v1, v23

    .line 179
    :goto_3
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    add-int/2addr v0, v2

    .line 180
    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v0, v3

    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    const/high16 v0, 0x40000000    # 2.0f

    :goto_4
    if-eq v10, v0, :cond_8

    .line 188
    iget v0, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, -0x1

    :cond_9
    const/4 v0, 0x0

    .line 201
    :goto_5
    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    iget v4, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v3, v4

    .line 202
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    move/from16 v5, v27

    .line 203
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v18, :cond_a

    .line 209
    iget v6, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-ne v6, v2, :cond_a

    move v15, v13

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    move v15, v13

    const/4 v2, 0x0

    .line 213
    :goto_6
    iget-wide v12, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    cmpl-double v18, v12, v20

    if-lez v18, :cond_c

    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move v3, v4

    :goto_7
    move/from16 v12, v28

    .line 218
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v29

    goto :goto_8

    :cond_c
    move/from16 v12, v28

    if-eqz v0, :cond_d

    move v4, v3

    :cond_d
    move/from16 v3, v29

    .line 221
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v12

    :goto_8
    move/from16 v12, v30

    .line 225
    invoke-virtual {v7, v1, v12}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildrenSkipCount(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;I)I

    move-result v1

    add-int/2addr v1, v12

    move/from16 v18, v2

    move v3, v5

    const/4 v13, 0x1

    move v5, v0

    move v0, v14

    :goto_9
    add-int/2addr v1, v13

    move v6, v1

    move v13, v15

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_e
    move v12, v4

    move v15, v13

    const/4 v2, -0x1

    const/4 v13, 0x1

    move/from16 v31, v5

    move v5, v3

    move/from16 v3, v31

    .line 230
    iget v4, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    iget v11, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    iget v14, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v11, v14

    add-int/2addr v4, v11

    iput v4, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 232
    iget v4, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getSuggestedMinimumHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v6, 0x0

    .line 236
    invoke-static {v4, v9, v6}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->resolveSizeAndState(III)I

    move-result v4

    const v11, 0xffffff

    and-int/2addr v11, v4

    .line 241
    iget v14, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    sub-int/2addr v11, v14

    add-int v11, v11, v16

    if-nez v17, :cond_10

    if-eqz v11, :cond_f

    const/4 v14, 0x0

    cmpl-float v14, v0, v14

    if-lez v14, :cond_f

    goto :goto_a

    .line 300
    :cond_f
    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, v15

    goto/16 :goto_f

    :cond_10
    :goto_a
    const/4 v6, 0x0

    .line 249
    iput v6, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    move v14, v3

    move v12, v5

    const/4 v3, 0x0

    move v5, v0

    move v0, v15

    :goto_b
    if-ge v3, v0, :cond_17

    .line 252
    invoke-virtual {v7, v3}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v15

    .line 254
    invoke-virtual {v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v6

    if-ne v6, v1, :cond_11

    move v1, v14

    const/4 v14, -0x1

    goto/16 :goto_e

    :cond_11
    move/from16 v17, v14

    .line 258
    iget-wide v13, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->weight:D

    cmpl-double v6, v13, v20

    if-lez v6, :cond_12

    int-to-double v1, v11

    .line 263
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v13

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 265
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v13

    double-to-float v5, v5

    sub-int/2addr v11, v1

    const/4 v2, 0x0

    .line 271
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    .line 270
    invoke-static {v1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 272
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingLeft:I

    iget v13, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingRight:I

    add-int/2addr v2, v13

    iget v13, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v2, v13

    iget v13, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v2, v13

    iget v13, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    invoke-static {v8, v2, v13}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getChildMeasureSpec(III)I

    move-result v2

    .line 275
    invoke-virtual {v15, v2, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measure(II)V

    .line 279
    :cond_12
    iget v1, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v1, v2

    .line 280
    invoke-virtual {v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 281
    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-eq v10, v13, :cond_13

    .line 283
    iget v13, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_14

    const/4 v13, 0x1

    goto :goto_c

    :cond_13
    const/4 v14, -0x1

    :cond_14
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_15

    move v2, v1

    :cond_15
    move/from16 v1, v17

    .line 286
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v18, :cond_16

    .line 289
    iget v2, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-ne v2, v14, :cond_16

    const/16 v18, 0x1

    goto :goto_d

    :cond_16
    const/16 v18, 0x0

    .line 291
    :goto_d
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    .line 292
    invoke-virtual {v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v2

    iget v6, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v13, v6

    iget v6, v15, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v13, v6

    .line 293
    invoke-virtual {v7, v15}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getNextLocationOffset(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)I

    move-result v6

    add-int/2addr v13, v6

    .line 292
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move v14, v1

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v13, 0x1

    goto/16 :goto_b

    :cond_17
    move v1, v14

    .line 297
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    iget v3, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingTop:I

    iget v5, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mTotalLength:I

    move v5, v12

    :goto_f
    if-nez v18, :cond_18

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v10, v2, :cond_18

    goto :goto_10

    :cond_18
    move v1, v5

    .line 309
    :goto_10
    iget v2, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingLeft:I

    iget v3, v7, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->paddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    .line 314
    invoke-static {v1, v8, v2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v7, v1, v4}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->setMeasuredDimension(II)V

    if-eqz v19, :cond_19

    .line 318
    invoke-virtual {v7, v0, v9}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->forceUniformWidth(II)V

    :cond_19
    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLayout;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 55
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;

    if-nez p2, :cond_0

    return-void

    .line 58
    :cond_0
    nop

    nop

    .line 59
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 922
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 664
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 665
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->layoutVertical(IIII)V

    goto :goto_0

    .line 667
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->layoutHorizontal(IIII)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 44
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureVertical(II)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->measureHorizontal(II)V

    :goto_0
    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 914
    instance-of v0, p2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 915
    move-object v0, p2

    nop

    nop

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 917
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLayout;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, -0x63e8ccc602686e49L    # -2.345051748396213E-173

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 888
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    goto :goto_0

    .line 890
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXLayout;->onSetIntAttribute(JI)V

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .locals 8

    .line 927
    instance-of v0, p1, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;

    if-eqz v0, :cond_2

    .line 928
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->hasCornerRadius()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    move-object v0, p1

    nop

    nop

    .line 930
    new-instance v7, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-direct {v7}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;-><init>()V

    .line 931
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->cornerRadius:I

    if-lez v1, :cond_0

    .line 932
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->cornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v7, p1, v1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;F)V

    goto :goto_0

    .line 934
    :cond_0
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->cornerRadiusLeftTop:I

    int-to-float v3, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->cornerRadiusRightTop:I

    int-to-float v4, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->cornerRadiusLeftBottom:I

    int-to-float v5, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->cornerRadiusRightBottom:I

    int-to-float v6, v1

    move-object v1, v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;FFFF)V

    .line 937
    :goto_0
    invoke-virtual {v0, v7}, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->setClipRadiusHandler(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;)V

    goto :goto_1

    .line 939
    :cond_1
    move-object v0, p1

    nop

    nop

    .line 940
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeLinearLayout;->getCLipRadiusHandler()Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 942
    invoke-virtual {v0, p1, v1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;F)V

    .line 947
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->setBackground(Landroid/view/View;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 955
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->mOrientation:I

    return-void
.end method
