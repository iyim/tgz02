.class public Lcom/taobao/android/dinamicx/DXLayoutManager;
.super Ljava/lang/Object;
.source "DXLayoutManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private doFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIIILcom/taobao/android/dinamicx/widget/DXWidgetNode;ZZZIF)V
    .locals 26

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_d

    .line 187
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->hasCornerRadius()Z

    move-result v2

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAccessibility()I

    move-result v3

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->hasAccessibilityOn()Z

    move-result v4

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez p9, :cond_6

    if-eqz v5, :cond_6

    if-nez v2, :cond_3

    .line 195
    move-object v2, v0

    check-cast v2, Lcom/taobao/android/dinamicx/widget/DXLayout;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXLayout;->isDisableFlatten()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_7

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v8

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v9

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 201
    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result v12

    if-ltz v12, :cond_5

    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v12

    if-ltz v12, :cond_5

    .line 202
    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result v12

    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    if-gt v12, v8, :cond_5

    .line 203
    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v12

    invoke-virtual {v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v12, v11

    if-le v12, v9, :cond_4

    :cond_5
    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    move/from16 v2, p9

    :cond_7
    :goto_3
    if-eqz v5, :cond_b

    if-nez v2, :cond_b

    if-nez v4, :cond_b

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBackGroundColor()I

    move-result v8

    if-nez v8, :cond_b

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBorderWidth()I

    move-result v8

    if-lez v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBorderColor()I

    move-result v8

    if-nez v8, :cond_b

    .line 221
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEventHandlersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEventHandlersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_b

    .line 222
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBackgroundGradient()Lcom/taobao/android/dinamicx/widget/DXWidgetNode$GradientInfo;

    move-result-object v8

    if-eqz v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v8, 0x1

    :goto_5
    if-eqz v8, :cond_c

    .line 226
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result v1

    add-int v1, p2, v1

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v9

    add-int v9, p3, v9

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v1

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v9

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v12

    invoke-virtual {v0, v12, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->shallowClone(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 233
    invoke-virtual {v0, v12}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setReferenceNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    .line 234
    invoke-virtual {v12, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setReferenceNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    .line 236
    invoke-virtual {v12, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setLeft(I)V

    .line 237
    invoke-virtual {v12, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTop(I)V

    .line 238
    invoke-virtual {v12, v10}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRight(I)V

    .line 239
    invoke-virtual {v12, v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setBottom(I)V

    move/from16 v20, v11

    move/from16 v25, v9

    move v9, v1

    move v1, v10

    move/from16 v10, v25

    goto :goto_6

    .line 242
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeft()I

    move-result v9

    add-int v9, p2, v9

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTop()I

    move-result v10

    add-int v10, p3, v10

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v9

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v10

    .line 248
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setReferenceNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    move/from16 v20, v12

    move-object v12, v1

    move v1, v11

    .line 253
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnabled()I

    move-result v11

    and-int v15, p10, v11

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAlpha()F

    move-result v11

    mul-float v11, v11, p11

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-eqz v8, :cond_e

    .line 257
    invoke-virtual {v12, v7}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setFlatten(Z)V

    move-object/from16 v8, p6

    .line 258
    invoke-virtual {v8, v12, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 259
    invoke-virtual {v12, v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setEnabled(I)V

    .line 260
    invoke-virtual {v12, v11}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAlpha(F)V

    if-eqz p7, :cond_d

    .line 262
    invoke-virtual {v12, v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAccessibility(I)V

    goto :goto_7

    :cond_d
    if-eqz p8, :cond_f

    const/4 v6, -0x1

    if-ne v3, v6, :cond_f

    .line 266
    invoke-virtual {v12, v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAccessibility(I)V

    goto :goto_7

    :cond_e
    move-object/from16 v8, p6

    :cond_f
    :goto_7
    if-eq v3, v13, :cond_11

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    move/from16 v4, p7

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v4, 0x1

    :goto_9
    if-ne v3, v14, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    move/from16 v3, p8

    :goto_a
    if-eqz v3, :cond_13

    .line 283
    invoke-virtual/range {p6 .. p6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryRootWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v6

    .line 284
    invoke-virtual {v6, v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAccessibility(I)V

    :cond_13
    if-eqz v2, :cond_14

    const/high16 v2, 0x3f800000    # 1.0f

    move-object v2, v12

    const/4 v6, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_14
    move-object v2, v8

    move v6, v9

    move/from16 v21, v10

    move/from16 v22, v11

    :goto_b
    if-eqz v5, :cond_16

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isDisableDarkMode()Z

    move-result v5

    const/4 v14, 0x0

    .line 301
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v8

    if-ge v14, v8, :cond_16

    .line 302
    invoke-virtual {v0, v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v9

    if-eqz v5, :cond_15

    .line 304
    invoke-virtual {v9, v7}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDisableDarkMode(Z)V

    :cond_15
    move-object/from16 v8, p0

    move v10, v6

    move/from16 v11, v21

    move v12, v1

    move/from16 v13, v20

    move/from16 v23, v14

    move-object v14, v2

    move/from16 v24, v15

    move v15, v4

    move/from16 v16, v3

    move/from16 v17, p9

    move/from16 v18, v24

    move/from16 v19, v22

    .line 307
    invoke-direct/range {v8 .. v19}, Lcom/taobao/android/dinamicx/DXLayoutManager;->doFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIIILcom/taobao/android/dinamicx/widget/DXWidgetNode;ZZZIF)V

    add-int/lit8 v14, v23, 0x1

    move/from16 v15, v24

    goto :goto_c

    :cond_16
    return-void

    .line 180
    :cond_17
    :goto_d
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setReferenceNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    return-void
.end method

.method private sizeIsNull(I)Z
    .locals 1

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected performFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;
    .locals 16

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    .line 118
    :cond_0
    :try_start_0
    new-instance v15, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;

    invoke-direct {v15}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 119
    :try_start_1
    invoke-virtual {v15, v0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setFlatten(Z)V

    .line 121
    invoke-virtual {v15, v15}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setReferenceNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    .line 122
    invoke-virtual {v1, v15}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->cloneWithWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setDXRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {v15, v0, v0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setMeasuredDimension(II)V

    return-object v15

    .line 128
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutWidth()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setLayoutWidth(I)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutHeight()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setLayoutHeight(I)V

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidthAndState()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeightAndState()I

    move-result v2

    invoke-virtual {v15, v0, v2}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->setMeasuredDimension(II)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v9, v15

    move/from16 v12, p3

    invoke-direct/range {v3 .. v14}, Lcom/taobao/android/dinamicx/DXLayoutManager;->doFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIIILcom/taobao/android/dinamicx/widget/DXWidgetNode;ZZZIF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v15, v2

    .line 135
    :goto_0
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 139
    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v3, 0x13884

    const-string v4, "Pipeline_Detail"

    const-string v5, "Pipeline_Detail_PerformFlatten"

    invoke-direct {v2, v4, v5, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DXLayoutManager#performFlatten "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 144
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v15
.end method

.method protected performLayout(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    if-eqz p2, :cond_2

    .line 94
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 95
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v1, 0x13883

    const-string v2, "Pipeline_Detail"

    const-string v3, "Pipeline_Detail_PerformLayout"

    invoke-direct {v0, v2, v3, v1}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DXLayoutManager#performLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected performMeasure(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IILcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 4

    const-string v0, "Pipeline_Detail_PerformMeasure"

    const-string v1, "Pipeline_Detail"

    if-eqz p1, :cond_3

    .line 26
    :try_start_0
    instance-of v2, p1, Lcom/taobao/android/dinamicx/widget/DXLayout;

    if-nez v2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0, p2}, Lcom/taobao/android/dinamicx/DXLayoutManager;->sizeIsNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result p2

    .line 41
    :cond_1
    invoke-direct {p0, p3}, Lcom/taobao/android/dinamicx/DXLayoutManager;->sizeIsNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result p3

    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p2, v3, v2}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 46
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutHeight()I

    move-result v2

    invoke-static {p3, v3, v2}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getChildMeasureSpec(III)I

    move-result p3

    .line 48
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 49
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measure(II)V

    goto :goto_1

    .line 27
    :cond_3
    :goto_0
    new-instance p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p2, 0x13881

    invoke-direct {p1, v1, v0, p2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p2, "DXLayoutManager#performMeasure widgetNode == null || !(widgetNode instanceof DXLayout)"

    .line 31
    iput-object p2, p1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 32
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    iget-object p2, p2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 52
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    if-eqz p4, :cond_5

    .line 55
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p2

    iget-object p2, p2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    if-eqz p2, :cond_5

    .line 56
    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p3, 0x13882

    invoke-direct {p2, v1, v0, p3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DXLayoutManager#performMeasure"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 61
    invoke-virtual {p4}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method
