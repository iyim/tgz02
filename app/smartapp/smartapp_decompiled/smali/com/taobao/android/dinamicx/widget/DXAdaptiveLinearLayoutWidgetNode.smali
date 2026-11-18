.class public Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;
.source "DXAdaptiveLinearLayoutWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode$Builder;
    }
.end annotation


# static fields
.field public static final DXADAPTIVELINEARLAYOUT_ALWAYSSHOWINDICATOR:J = 0x1c32ca07e4dd98e2L

.field public static final DXADAPTIVELINEARLAYOUT_MOREINDICATORUSERID:J = -0x2db45cb0c9f4751L


# instance fields
.field private alwaysShowIndicator:Z

.field private moreIndicatorUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->alwaysShowIndicator:Z

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 60
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;-><init>()V

    return-object p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 3

    const-wide v0, 0x1c32ca07e4dd98e2L    # 7.596794749480184E-173

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method protected measureHorizontal(II)V
    .locals 20

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 218
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 219
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    const/4 v10, 0x0

    .line 225
    iput v10, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getVirtualChildCount()I

    move-result v11

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x2

    if-ge v13, v11, :cond_5

    .line 228
    invoke-virtual {v6, v13}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 230
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, p1

    move-object/from16 v19, v3

    move/from16 v3, v17

    const/high16 v10, 0x40000000    # 2.0f

    move/from16 v4, p2

    move v12, v5

    move/from16 v5, v18

    .line 235
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 237
    invoke-virtual/range {v19 .. v19}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v0

    .line 240
    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    add-int/2addr v2, v0

    move-object/from16 v0, v19

    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    const/4 v1, -0x1

    if-eq v9, v10, :cond_1

    .line 244
    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 252
    :goto_1
    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    iget v4, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v3, v4

    .line 253
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 254
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v15, :cond_2

    .line 255
    iget v0, v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 258
    :goto_3
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v15, v0

    move v14, v5

    move v5, v1

    goto :goto_5

    :cond_4
    :goto_4
    move v12, v5

    move v5, v12

    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    move v12, v5

    const/high16 v10, 0x40000000    # 2.0f

    .line 264
    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingLeft:I

    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    const/4 v1, 0x0

    .line 269
    iget-object v2, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->moreIndicatorUserId:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 270
    invoke-virtual {v6, v2}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 271
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_6

    .line 273
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v2, v3

    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v2, v3

    const/16 v17, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    const/16 v17, 0x0

    :goto_6
    if-eqz v17, :cond_7

    .line 278
    iget-boolean v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->alwaysShowIndicator:Z

    if-nez v3, :cond_7

    .line 279
    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    sub-int/2addr v3, v2

    iput v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    .line 282
    :cond_7
    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-le v3, v8, :cond_c

    if-eqz v17, :cond_8

    .line 286
    iget-boolean v4, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->alwaysShowIndicator:Z

    if-nez v4, :cond_8

    .line 287
    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    add-int/2addr v3, v2

    iput v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    .line 288
    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    :cond_8
    add-int/lit8 v2, v11, -0x1

    :goto_7
    if-ltz v2, :cond_d

    .line 292
    invoke-virtual {v6, v2}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    .line 294
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v5

    if-ne v5, v0, :cond_9

    goto :goto_8

    :cond_9
    if-ne v4, v1, :cond_a

    if-eqz v17, :cond_a

    goto :goto_8

    .line 304
    :cond_a
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v3, v5

    .line 305
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 306
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 307
    invoke-virtual {v4, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setVisibility(I)V

    if-gt v3, v8, :cond_b

    goto :goto_9

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_c
    if-eqz v17, :cond_d

    .line 313
    iget-boolean v2, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->alwaysShowIndicator:Z

    if-nez v2, :cond_d

    .line 314
    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setVisibility(I)V

    :cond_d
    :goto_9
    if-nez v15, :cond_e

    if-eq v9, v10, :cond_e

    move v14, v12

    .line 322
    :cond_e
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingTop:I

    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 325
    invoke-static {v3, v7}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->resolveSize(II)I

    move-result v1

    move/from16 v2, p2

    invoke-static {v0, v2}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->resolveSize(II)I

    move-result v0

    invoke-virtual {v6, v1, v0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->setMeasuredDimension(II)V

    .line 326
    iput v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    if-eqz v16, :cond_f

    .line 328
    invoke-virtual {v6, v11, v7}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->forceUniformHeight(II)V

    :cond_f
    return-void
.end method

.method protected measureVertical(II)V
    .locals 21

    move-object/from16 v6, p0

    move/from16 v7, p2

    .line 128
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 129
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 130
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const/4 v11, 0x0

    .line 132
    iput v11, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getVirtualChildCount()I

    move-result v12

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    :goto_0
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x2

    if-ge v14, v12, :cond_6

    .line 151
    invoke-virtual {v6, v14}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 152
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, p1

    move-object/from16 v20, v3

    move/from16 v3, v18

    const/high16 v11, 0x40000000    # 2.0f

    move/from16 v4, p2

    move v13, v5

    move/from16 v5, v19

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 157
    invoke-virtual/range {v20 .. v20}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v0

    .line 160
    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    add-int/2addr v2, v0

    .line 161
    invoke-virtual/range {v20 .. v20}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {v20 .. v20}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    const/4 v1, -0x1

    if-eq v8, v11, :cond_1

    move-object/from16 v2, v20

    .line 164
    iget v3, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v2, v20

    :cond_2
    const/4 v3, 0x0

    .line 172
    :goto_1
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginLeft()I

    move-result v4

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 174
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 175
    invoke-static {v15, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz v16, :cond_3

    .line 176
    iget v2, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_4

    move v0, v4

    .line 179
    :cond_4
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v16, v1

    move v15, v5

    move v5, v0

    goto :goto_4

    :cond_5
    :goto_3
    move v13, v5

    move v5, v13

    :goto_4
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    move v13, v5

    const/high16 v11, 0x40000000    # 2.0f

    .line 185
    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingTop:I

    iget v3, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    .line 186
    iget v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v10, :cond_8

    add-int/lit8 v2, v12, -0x1

    :goto_5
    if-ltz v2, :cond_8

    .line 190
    invoke-virtual {v6, v2}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 192
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginBottom()I

    move-result v4

    sub-int/2addr v1, v4

    .line 193
    invoke-virtual {v3, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setVisibility(I)V

    if-gt v1, v10, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    if-nez v16, :cond_9

    if-eq v9, v11, :cond_9

    goto :goto_7

    :cond_9
    move v13, v15

    .line 204
    :goto_7
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingLeft:I

    iget v2, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->paddingRight:I

    add-int/2addr v0, v2

    add-int/2addr v13, v0

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v2, p1

    .line 207
    invoke-static {v0, v2}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->resolveSize(II)I

    move-result v0

    invoke-static {v1, v7}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->resolveSize(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->setMeasuredDimension(II)V

    .line 208
    iput v1, v6, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->mTotalLength:I

    if-eqz v17, :cond_a

    .line 210
    invoke-virtual {v6, v12, v7}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->forceUniformWidth(II)V

    :cond_a
    return-void
.end method

.method public onBeforeBindChildData()V
    .locals 10

    .line 335
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->propertyInitFlag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getListData()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getListData()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->moreIndicatorUserId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 348
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAutoId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->removeChildWithAutoId(I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 356
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 357
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 361
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getListData()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 362
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->getListData()Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    .line 364
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 365
    invoke-virtual {p0, v8, v6, v5}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->bindContext(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Ljava/lang/Object;I)V

    goto :goto_2

    .line 370
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 372
    invoke-virtual {v8}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v9

    .line 373
    invoke-virtual {v9, v6}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubData(Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v9, v5}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setSubdataIndex(I)V

    .line 376
    invoke-static {v8, v9}, Lcom/taobao/android/dinamicx/widget/DXLayoutUtil;->deepCopyChildNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v8

    .line 377
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 382
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v0, 0x0

    .line 386
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 387
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {p0, v1, v2}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-void

    .line 339
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->removeAllChild()V

    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 73
    instance-of v0, p1, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 78
    nop

    nop

    .line 80
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->alwaysShowIndicator:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->alwaysShowIndicator:Z

    .line 81
    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->moreIndicatorUserId:Ljava/lang/String;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->moreIndicatorUserId:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 122
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeAdaptiveLinearLayout;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeAdaptiveLinearLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, 0x1c32ca07e4dd98e2L    # 7.596794749480184E-173

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    :goto_0
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->alwaysShowIndicator:Z

    goto :goto_1

    .line 98
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onSetIntAttribute(JI)V

    :goto_1
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, -0x2db45cb0c9f4751L    # -6.618963437067522E294

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 87
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode;->moreIndicatorUserId:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method
