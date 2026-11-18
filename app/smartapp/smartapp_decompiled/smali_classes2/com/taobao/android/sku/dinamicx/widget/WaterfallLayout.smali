.class public Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;
.super Lcom/taobao/android/dinamicx/widget/DXLayout;
.source "WaterfallLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout$Builder;
    }
.end annotation


# static fields
.field public static final DX_WIDGET_ID:J

.field private static final NAME:Ljava/lang/String; = "WaterfallLayout"


# instance fields
.field private rowChildren:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private startY_axis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WaterfallLayout"

    .line 29
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->DX_WIDGET_ID:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXLayout;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->rowChildren:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->startY_axis:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 51
    new-instance p1, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;

    invoke-direct {p1}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;-><init>()V

    return-object p1
.end method

.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 87
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iget v2, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
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

    .line 63
    instance-of v0, p2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p2

    nop

    nop

    iget v1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->layoutGravityAttr:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    :cond_0
    iget v0, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->widthAttr:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    iget p1, p1, Lcom/taobao/android/dinamicx/model/DXLayoutParamAttribute;->heightAttr:I

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p2
.end method

.method protected layoutWaterfall(IIII)V
    .locals 6

    .line 232
    iget-object p1, p0, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->rowChildren:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    const-string p4, "WaterfallLayout"

    if-nez p3, :cond_1

    const-string p3, "null rowChildren entry"

    .line 234
    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_1
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    .line 238
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 243
    :cond_2
    iget-object p4, p0, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->startY_axis:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 245
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p2, p3

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getPaddingLeftWithDirection()I

    move-result p3

    .line 249
    invoke-virtual {p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getPaddingTop()I

    move-result p4

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 252
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 254
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v2

    .line 255
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v3

    .line 256
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v4

    add-int/2addr p3, v4

    add-int v4, p4, p2

    .line 257
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginTop()I

    move-result v5

    add-int/2addr v4, v5

    add-int v5, p3, v2

    add-int/2addr v3, v4

    .line 259
    invoke-virtual {v1, p3, v4, v5, v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layout(IIII)V

    .line 261
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    goto :goto_1

    :cond_5
    :goto_2
    const-string p3, "null or empty rowChildren value"

    .line 239
    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected measureWaterfall(II)V
    .locals 21

    move-object/from16 v6, p0

    .line 142
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 143
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 145
    iget-object v0, v6, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->rowChildren:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v0, v6, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->startY_axis:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getVirtualChildCount()I

    move-result v9

    .line 154
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v0, v6, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->startY_axis:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v11, v9, :cond_4

    .line 163
    invoke-virtual {v6, v11}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 165
    invoke-virtual {v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v18, v5

    move/from16 v5, v17

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    .line 170
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginRight()I

    move-result v1

    add-int v5, v0, v1

    .line 171
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v0

    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual/range {v18 .. v18}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMarginBottom()I

    move-result v1

    add-int v4, v0, v1

    if-le v5, v7, :cond_1

    .line 174
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v19, v4

    move/from16 v4, p2

    move/from16 v20, v5

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    move/from16 v0, v19

    goto :goto_1

    :cond_1
    move/from16 v20, v5

    move v0, v4

    .line 176
    :goto_1
    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int v13, v13, v20

    if-le v13, v7, :cond_2

    .line 182
    iget-object v1, v6, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->rowChildren:Ljava/util/Map;

    add-int/lit8 v2, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, v6, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->startY_axis:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {v10}, Ljava/util/List;->clear()V

    move-object/from16 v1, v18

    .line 187
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v16, v16, v0

    move v15, v0

    move v14, v2

    move v12, v7

    move/from16 v13, v20

    goto :goto_2

    :cond_2
    move-object/from16 v1, v18

    .line 194
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v15, v0

    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_4
    if-nez v12, :cond_5

    .line 200
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 202
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 203
    iget-object v0, v6, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->rowChildren:Ljava/util/Map;

    add-int/lit8 v1, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, v6, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->startY_axis:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-interface {v10}, Ljava/util/List;->clear()V

    add-int v16, v16, v15

    .line 212
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getPaddingLeftWithDirection()I

    move-result v0

    add-int/2addr v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getPaddingRightWithDirection()I

    move-result v0

    add-int/2addr v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getPaddingTop()I

    move-result v1

    add-int v16, v16, v1

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getPaddingBottom()I

    move-result v1

    add-int v1, v16, v1

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, p1

    .line 215
    invoke-static {v0, v2}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->resolveSize(II)I

    move-result v0

    move/from16 v2, p2

    invoke-static {v1, v2}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {v6, v0, v1}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onBindEvent(Landroid/content/Context;Landroid/view/View;J)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXLayout;->onBindEvent(Landroid/content/Context;Landroid/view/View;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 82
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeFrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 226
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->layoutWaterfall(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/sku/dinamicx/widget/WaterfallLayout;->measureWaterfall(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXLayout;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
