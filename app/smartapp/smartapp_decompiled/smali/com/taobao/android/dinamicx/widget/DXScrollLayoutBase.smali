.class public Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;
.super Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;
.source "DXScrollLayoutBase.java"


# static fields
.field public static final DX_SCROLL_LAYOUT_BASE:J = -0x19d185cfae62788L

.field public static final DX_SCROLL_LAYOUT_BASE_INDICATOR_ID:J = 0x63de61898ca79d75L

.field public static final DX_SCROLL_LAYOUT_BASE_ON_PAGE_APPEAR:J = -0x7c8ecad46db9e341L

.field public static final DX_SCROLL_LAYOUT_BASE_ON_PAGE_DISAPPEAR:J = -0x482f1de1960621feL

.field public static final DX_SCROLL_LAYOUT_BASE_ON_SCROLL:J = 0x49656b25a678ff54L

.field public static final DX_SCROLL_LAYOUT_BASE_ON_SCROLL_BEGIN:J = 0x7ee6f2871e21c03eL

.field public static final DX_SCROLL_LAYOUT_BASE_ON_SCROLL_END:J = 0x2558cd033dc2316eL

.field public static final DX_SCROLL_LAYOUT_BASE_SCROLL_ENABLED:J = -0x73eaaf442fd472b9L

.field public static final DX_SCROLL_LAYOUT_BASE_SHOW_INDICATOR:J = -0x344011019d3ddb95L


# instance fields
.field private appearWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field protected contentHorizontalLength:I

.field protected contentVerticalLength:I

.field protected indicatorId:Ljava/lang/String;

.field protected indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

.field protected itemWidgetNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field protected pipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

.field protected scrollEnabled:Z

.field protected showIndicator:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->showIndicator:Z

    .line 82
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->scrollEnabled:Z

    return-void
.end method

.method private forceUniformHeight(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;I)V"
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 272
    iget v2, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 275
    iget v8, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    .line 276
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v4, p2

    move v6, v0

    .line 279
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 280
    iput v8, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private forceUniformWidth(Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;I)V"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 366
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 369
    iget v2, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 372
    iget v8, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    .line 373
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v4, v0

    move v6, p2

    .line 375
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 376
    iput v8, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private queryIndicatorNodeByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 471
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 477
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, -0x1

    move-object v6, v0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-ne v7, p0, :cond_2

    move v4, v2

    goto :goto_1

    .line 481
    :cond_2
    invoke-virtual {v7}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v2

    move-object v6, v7

    :cond_3
    :goto_1
    if-eq v4, v3, :cond_4

    if-eq v5, v3, :cond_4

    return-object v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public addAppearWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    if-nez v0, :cond_1

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)V
    .locals 2

    .line 499
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)V

    if-nez p1, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 509
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 510
    invoke-virtual {v1, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->bindRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 4

    const/4 v0, 0x1

    const-wide v1, -0x73eaaf442fd472b9L

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide v1, -0x344011019d3ddb95L    # -7.830088364578436E56

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    return v0

    .line 400
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method protected measureHorizontal(II)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    const/4 v8, 0x0

    .line 194
    iput v8, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->mTotalLength:I

    .line 199
    invoke-static/range {p2 .. p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v9

    .line 203
    iget-object v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    .line 204
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-nez v5, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget v0, v5, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    iget v0, v5, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    invoke-virtual {v6, v0, v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->measureSpecForChild(II)I

    move-result v2

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v4, p2

    move-object/from16 v18, v5

    move/from16 v5, v17

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    const/4 v0, -0x1

    if-eq v9, v10, :cond_2

    .line 214
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutHeight()I

    move-result v1

    if-ne v1, v0, :cond_2

    move-object/from16 v1, v18

    const/4 v2, 0x1

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v1, v18

    const/4 v2, 0x0

    .line 222
    :goto_1
    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    iget v4, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v3, v4

    .line 223
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 224
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-eqz v15, :cond_3

    .line 226
    iget v5, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    if-ne v5, v0, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    .line 227
    :goto_3
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 230
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentHorizontalLength:I

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    add-int/2addr v2, v3

    iget v1, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentHorizontalLength:I

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 234
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getLayoutWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getMinWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 235
    invoke-static {v0, v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->resolveSize(II)I

    move-result v0

    if-nez v15, :cond_7

    if-eq v9, v10, :cond_7

    move v13, v14

    .line 241
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getMinHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, p2

    .line 246
    invoke-static {v1, v2}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->resolveSize(II)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->setMeasuredDimension(II)V

    if-eqz v16, :cond_8

    .line 248
    iget-object v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 249
    invoke-direct {v6, v0, v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->forceUniformHeight(Ljava/util/List;I)V

    :cond_8
    return-void
.end method

.method public measureSpecForChild(II)I
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const p1, 0x7fffff

    const/4 p2, 0x0

    .line 288
    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method protected measureVertical(II)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p2

    const/4 v8, 0x0

    .line 294
    iput v8, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->mTotalLength:I

    .line 299
    invoke-static/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v9

    .line 302
    iget-object v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-nez v5, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget v0, v5, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->visibility:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 308
    :cond_1
    iget v0, v5, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    invoke-virtual {v6, v0, v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->measureSpecForChild(II)I

    move-result v4

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move-object/from16 v18, v5

    move/from16 v5, v17

    .line 310
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    const/4 v0, -0x1

    if-eq v9, v10, :cond_2

    .line 313
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutWidth()I

    move-result v1

    if-ne v1, v0, :cond_2

    move-object/from16 v1, v18

    const/4 v2, 0x1

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v1, v18

    const/4 v2, 0x0

    .line 321
    :goto_1
    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    iget v4, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v3, v4

    .line 322
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 323
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-eqz v15, :cond_3

    .line 325
    iget v5, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    if-ne v5, v0, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    .line 326
    :goto_3
    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 329
    iget v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentVerticalLength:I

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr v2, v3

    iget v1, v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    iput v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentVerticalLength:I

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 334
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getLayoutHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getMinHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 335
    invoke-static {v0, v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->resolveSize(II)I

    move-result v0

    if-nez v15, :cond_7

    if-eq v9, v10, :cond_7

    move v13, v14

    .line 341
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getMinWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, p1

    .line 345
    invoke-static {v1, v2}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->resolveSize(II)I

    move-result v1

    invoke-virtual {v6, v1, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->setMeasuredDimension(II)V

    if-eqz v16, :cond_8

    .line 348
    iget-object v0, v6, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 349
    invoke-direct {v6, v0, v7}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->forceUniformWidth(Ljava/util/List;I)V

    :cond_8
    return-void
.end method

.method public onBeforeBindChildData()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onBeforeBindChildData()V

    .line 124
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->indicatorId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->queryIndicatorNodeByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {v0}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->isWidgetNodeGone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z

    .line 128
    iget-boolean v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->showIndicator:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setVisibility(I)V

    .line 130
    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 132
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setVisibility(I)V

    .line 136
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 138
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 141
    :cond_2
    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->setDisableFlatten(Z)V

    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 89
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;

    if-nez p2, :cond_0

    return-void

    .line 93
    :cond_0
    nop

    nop

    .line 94
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->indicatorId:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->indicatorId:Ljava/lang/String;

    .line 95
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->scrollEnabled:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->scrollEnabled:Z

    .line 96
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->showIndicator:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->showIndicator:Z

    .line 97
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    .line 98
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 99
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->pipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->pipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    .line 100
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentHorizontalLength:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentHorizontalLength:I

    .line 101
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentVerticalLength:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->contentVerticalLength:I

    .line 102
    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->pipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v2

    const/4 v3, 0x3

    .line 110
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->pipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->removeAllChild()V

    .line 117
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onMeasure(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getChildrenCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->removeAllChild()V

    .line 164
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->removeAllChild()V

    :cond_1
    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x344011019d3ddb95L    # -7.830088364578436E56

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->showIndicator:Z

    goto :goto_2

    :cond_1
    const-wide v2, -0x73eaaf442fd472b9L

    cmp-long v4, p1, v2

    if-nez v4, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 387
    :goto_1
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->scrollEnabled:Z

    goto :goto_2

    .line 389
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onSetIntAttribute(JI)V

    :goto_2
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x63de61898ca79d75L    # 1.1740853414869537E173

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 407
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->indicatorId:Ljava/lang/String;

    goto :goto_0

    .line 409
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryWTByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 3

    .line 422
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->queryWTByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 425
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 429
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 430
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByAutoId(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_2
    return-object v0
.end method

.method public queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 3

    .line 449
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 452
    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->itemWidgetNodes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 456
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 457
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_2
    return-object v0
.end method

.method public removeAppearWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 569
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x4965225aadb79e3eL    # 3.7704665857095116E45

    .line 521
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 522
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 524
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 529
    new-instance v1, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    const-wide v2, -0x7c8ecad46db9e341L    # -4.310890008164946E-292

    invoke-direct {v1, v2, v3}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;-><init>(J)V

    .line 530
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getSubdataIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;->setItemIndex(I)V

    .line 531
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide v0, 0x4ac97ab3686b8a81L    # 1.9065875833331544E52

    .line 534
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    .line 535
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 537
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    .line 541
    :cond_4
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 542
    new-instance v1, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;

    const-wide v2, -0x482f1de1960621feL    # -7.752420407638896E-40

    invoke-direct {v1, v2, v3}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;-><init>(J)V

    .line 543
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getSubdataIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXViewEvent;->setItemIndex(I)V

    .line 544
    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void

    .line 548
    :cond_6
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 550
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 551
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->appearWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 552
    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->sendBroadcastEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .locals 8

    .line 171
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->hasCornerRadius()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;

    .line 173
    new-instance v7, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    invoke-direct {v7}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;-><init>()V

    .line 174
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->cornerRadius:I

    if-lez v1, :cond_0

    .line 175
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->cornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v7, p1, v1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;F)V

    goto :goto_0

    .line 177
    :cond_0
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->cornerRadiusLeftTop:I

    int-to-float v3, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->cornerRadiusRightTop:I

    int-to-float v4, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->cornerRadiusLeftBottom:I

    int-to-float v5, v1

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->cornerRadiusRightBottom:I

    int-to-float v6, v1

    move-object v1, v7

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;FFFF)V

    .line 180
    :goto_0
    invoke-virtual {v0, v7}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->setClipRadiusHandler(Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;)V

    goto :goto_1

    .line 182
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;

    .line 183
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->getCLipRadiusHandler()Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, p1, v1}, Lcom/taobao/android/dinamicx/view/CLipRadiusHandler;->setRadius(Landroid/view/View;F)V

    .line 189
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode;->setBackground(Landroid/view/View;)V

    return-void
.end method
