.class public Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;
.source "DXGridLayoutWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode$Builder;
    }
.end annotation


# static fields
.field public static final DX_GRID_LAYOUT:J = 0x6c1a25039b88a40eL

.field public static final DX_GRID_LAYOUT_COLUMN_COUNT:J = 0x3e2dcaff35b84aa2L

.field public static final DX_GRID_LAYOUT_COLUMN_SPACING:J = -0x62359d8f1a671aa0L

.field public static final DX_GRID_LAYOUT_ITEM_HEIGHT:J = -0xc592173175f40eeL

.field public static final DX_GRID_LAYOUT_ITEM_WIDTH:J = -0x4c0ef077d6a17548L

.field public static final DX_GRID_LAYOUT_LINE_COLOR:J = -0x1405b2550b0fdf50L

.field public static final DX_GRID_LAYOUT_LINE_WIDTH:J = -0x140589ac044baa4fL

.field public static final DX_GRID_LAYOUT_NEED_SEPARATOR:J = -0x6eada72f9864faa6L

.field public static final DX_GRID_LAYOUT_ROW_COUNT:J = 0x55acab8dfcc06869L

.field public static final DX_GRID_LAYOUT_ROW_SPACING:J = -0x52c9ac8efe5e31d9L


# instance fields
.field private columnCount:I

.field private columnSpacing:I

.field private itemHeight:I

.field private itemWidth:I

.field private lineColor:I

.field private linePts:[F

.field private lineWidth:I

.field private measuredRowCount:I

.field private needSeparator:Z

.field private rowCount:I

.field private rowSpacing:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    const v1, -0x808081

    .line 50
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineColor:I

    .line 52
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "0.5np"

    invoke-static {v1, v2, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getPx(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineWidth:I

    .line 54
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->needSeparator:Z

    .line 56
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowCount:I

    .line 59
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->measuredRowCount:I

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 83
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;-><init>()V

    return-object p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 4

    const/4 v0, 0x0

    const-wide v1, 0x3e2dcaff35b84aa2L    # 3.4683566416108314E-9

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide v1, -0x1405b2550b0fdf50L    # -1.3835940524865397E212

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    const p1, -0x808081

    return p1

    :cond_1
    const-wide v1, -0x6eada72f9864faa6L    # -3.09789473159013E-225

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    return v0

    :cond_2
    const-wide v1, 0x55acab8dfcc06869L    # 5.1371027844492825E104

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    return v0

    .line 378
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V
    .locals 2

    .line 208
    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginLeft:I

    iget v1, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginRight:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget p3, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutWidth:I

    invoke-static {p2, v0, p3}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getChildMeasureSpec(III)I

    move-result p2

    .line 210
    iget p3, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    add-int/2addr p3, v0

    add-int/2addr p3, p5

    iget p5, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutHeight:I

    invoke-static {p4, p3, p5}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getChildMeasureSpec(III)I

    move-result p3

    .line 213
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->measure(II)V

    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 101
    instance-of v0, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 106
    nop

    nop

    .line 108
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    .line 109
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    .line 110
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    .line 111
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    .line 112
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineColor:I

    .line 113
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineWidth:I

    .line 114
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->needSeparator:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->needSeparator:Z

    .line 115
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowCount:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowCount:I

    .line 116
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    .line 117
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->linePts:[F

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->linePts:[F

    .line 118
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->measuredRowCount:I

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->measuredRowCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 88
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 224
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    const/4 p2, 0x0

    if-lez p1, :cond_a

    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    if-lez p1, :cond_a

    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    if-gtz p1, :cond_0

    goto/16 :goto_a

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getVirtualChildCount()I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    const/4 p5, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ge p4, p1, :cond_5

    .line 231
    invoke-virtual {p0, p4}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getVirtualChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    .line 232
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    div-int v4, p4, v3

    .line 233
    rem-int v3, p4, v3

    .line 235
    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    mul-int v5, v5, v4

    iget v6, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    mul-int v4, v4, v6

    add-int/2addr v5, v4

    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingTop:I

    add-int/2addr v5, v4

    .line 236
    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    mul-int v4, v4, v3

    iget v6, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    mul-int v3, v3, v6

    add-int/2addr v4, v3

    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingLeft:I

    add-int/2addr v4, v3

    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 240
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredWidth()I

    move-result v3

    .line 241
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getMeasuredHeight()I

    move-result v6

    .line 243
    iget v7, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layoutGravity:I

    if-nez v7, :cond_1

    .line 244
    iget v8, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->propertyInitFlag:I

    and-int/2addr v8, v1

    if-nez v8, :cond_1

    .line 245
    iget v7, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->childGravity:I

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getDirection()I

    move-result v8

    invoke-static {v7, v8}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getAbsoluteGravity(II)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 269
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v8

    :goto_1
    add-int/2addr v4, v8

    goto :goto_3

    .line 262
    :pswitch_0
    iget v8, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    sub-int/2addr v8, v3

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v9

    goto :goto_2

    .line 255
    :pswitch_1
    iget v8, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    sub-int/2addr v8, v3

    div-int/2addr v8, v0

    .line 256
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLeftMarginWithDirection()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRightMarginWithDirection()I

    move-result v9

    :goto_2
    sub-int/2addr v8, v9

    goto :goto_1

    :goto_3
    if-eq v7, v1, :cond_3

    if-eq v7, v0, :cond_2

    if-eq v7, p5, :cond_3

    const/4 p5, 0x5

    if-eq v7, p5, :cond_2

    const/4 p5, 0x7

    if-eq v7, p5, :cond_3

    const/16 p5, 0x8

    if-eq v7, p5, :cond_2

    .line 291
    iget p5, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    :goto_4
    add-int/2addr v5, p5

    goto :goto_6

    .line 284
    :cond_2
    iget p5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    sub-int/2addr p5, v6

    iget v0, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    goto :goto_5

    .line 277
    :cond_3
    iget p5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    sub-int/2addr p5, v6

    div-int/2addr p5, v0

    iget v0, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginTop:I

    add-int/2addr p5, v0

    iget v0, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->marginBottom:I

    :goto_5
    sub-int/2addr p5, v0

    goto :goto_4

    :goto_6
    add-int/2addr v3, v4

    add-int/2addr v6, v5

    .line 294
    invoke-virtual {v2, v4, v5, v3, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->layout(IIII)V

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    .line 299
    :cond_5
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->needSeparator:Z

    if-eqz p1, :cond_9

    .line 300
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    sub-int/2addr p1, v1

    iget p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->measuredRowCount:I

    add-int/lit8 p4, p2, -0x1

    add-int/2addr p1, p4

    mul-int/lit8 p1, p1, 0x4

    .line 301
    new-array p1, p1, [F

    sub-int/2addr p2, v1

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_7
    if-ge p4, p2, :cond_6

    add-int/lit8 v2, p5, 0x1

    .line 307
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingLeft:I

    int-to-float v3, v3

    aput v3, p1, p5

    add-int/lit8 p5, v2, 0x1

    add-int/lit8 v3, p4, 0x1

    .line 308
    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    mul-int v4, v4, v3

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    mul-int v6, p4, v5

    add-int/2addr v4, v6

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, p1, v2

    add-int/lit8 v2, p5, 0x1

    .line 309
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingRight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, p1, p5

    add-int/lit8 p5, v2, 0x1

    .line 310
    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    mul-int v4, v4, v3

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    mul-int p4, p4, v5

    add-int/2addr v4, p4

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    iget p4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingTop:I

    add-int/2addr v4, p4

    int-to-float p4, v4

    aput p4, p1, v2

    move p4, v3

    goto :goto_7

    .line 314
    :cond_6
    iget p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    sub-int/2addr p2, v1

    :goto_8
    if-ge p3, p2, :cond_7

    add-int/lit8 p4, p5, 0x1

    add-int/lit8 v2, p3, 0x1

    .line 316
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    mul-int v3, v3, v2

    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    mul-int v5, p3, v4

    add-int/2addr v3, v5

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingLeft:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    aput v3, p1, p5

    add-int/lit8 p5, p4, 0x1

    .line 317
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingTop:I

    int-to-float v3, v3

    aput v3, p1, p4

    add-int/lit8 p4, p5, 0x1

    .line 318
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    mul-int v3, v3, v2

    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    mul-int p3, p3, v4

    add-int/2addr v3, p3

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    iget p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingLeft:I

    add-int/2addr v3, p3

    int-to-float p3, v3

    aput p3, p1, p5

    add-int/lit8 p5, p4, 0x1

    .line 319
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getMeasuredHeight()I

    move-result p3

    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingBottom:I

    sub-int/2addr p3, v3

    int-to-float p3, p3

    aput p3, p1, p4

    move p3, v2

    goto :goto_8

    .line 322
    :cond_7
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->linePts:[F

    .line 325
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    iget p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 326
    iget p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineWidth:I

    if-le p2, p1, :cond_8

    .line 327
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineWidth:I

    .line 331
    :cond_8
    invoke-virtual {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->setDisableFlatten(Z)V

    goto :goto_9

    .line 333
    :cond_9
    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->linePts:[F

    :goto_9
    return-void

    .line 225
    :cond_a
    :goto_a
    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->linePts:[F

    return-void

    nop

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

.method protected onMeasure(II)V
    .locals 12

    .line 131
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getVirtualChildCount()I

    move-result v0

    .line 133
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 134
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    invoke-static {v3, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_0

    .line 137
    invoke-virtual {p0, v11}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, v1

    move v7, v9

    .line 138
    invoke-virtual/range {v3 .. v8}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->measureChildWithMargins(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;IIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v1

    .line 143
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 156
    :goto_2
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    if-gtz v3, :cond_3

    goto :goto_3

    .line 158
    :cond_3
    iget v10, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowCount:I

    if-gtz v10, :cond_5

    .line 159
    rem-int v5, v0, v3

    if-nez v5, :cond_4

    .line 160
    div-int v10, v0, v3

    goto :goto_3

    .line 162
    :cond_4
    div-int/2addr v0, v3

    add-int/lit8 v10, v0, 0x1

    .line 168
    :cond_5
    :goto_3
    iput v10, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->measuredRowCount:I

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_4

    .line 198
    :cond_6
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v0

    .line 199
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_6

    :cond_7
    :goto_4
    if-eqz v1, :cond_9

    .line 172
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    if-lez v0, :cond_8

    .line 173
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    mul-int v1, v1, v0

    .line 174
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    sub-int/2addr v0, v4

    mul-int v3, v3, v0

    .line 175
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingLeft:I

    iget v5, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingRight:I

    add-int/2addr v0, v5

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    move v0, v1

    goto :goto_5

    .line 178
    :cond_8
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingLeft:I

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingRight:I

    add-int/2addr v0, v1

    goto :goto_5

    .line 181
    :cond_9
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v0

    :goto_5
    if-eqz v2, :cond_b

    if-lez v10, :cond_a

    .line 186
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    mul-int v1, v1, v10

    .line 187
    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    sub-int/2addr v10, v4

    mul-int v2, v2, v10

    .line 188
    iget v3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingTop:I

    iget v4, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    goto :goto_6

    .line 192
    :cond_a
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingTop:I

    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->paddingBottom:I

    add-int/2addr v1, v2

    goto :goto_6

    .line 195
    :cond_b
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v1

    .line 202
    :goto_6
    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 383
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    .line 385
    check-cast p2, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;

    .line 386
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->needSeparator:Z

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineColor:I

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineWidth:I

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->linePts:[F

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/taobao/android/dinamicx/view/DXNativeGridLayout;->setLines(ZII[F)V

    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, 0x3e2dcaff35b84aa2L    # 3.4683566416108314E-9

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 343
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnCount:I

    goto/16 :goto_1

    :cond_0
    const-wide v0, -0x62359d8f1a671aa0L

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 345
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->columnSpacing:I

    goto :goto_1

    :cond_1
    const-wide v0, -0xc592173175f40eeL    # -1.279204613468684E249

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 347
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemHeight:I

    goto :goto_1

    :cond_2
    const-wide v0, -0x4c0ef077d6a17548L    # -1.698701101471017E-58

    cmp-long v2, p1, v0

    if-nez v2, :cond_3

    .line 349
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->itemWidth:I

    goto :goto_1

    :cond_3
    const-wide v0, -0x1405b2550b0fdf50L    # -1.3835940524865397E212

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    .line 351
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineColor:I

    goto :goto_1

    :cond_4
    const-wide v0, -0x140589ac044baa4fL    # -1.391948681031443E212

    cmp-long v2, p1, v0

    if-nez v2, :cond_5

    .line 353
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->lineWidth:I

    goto :goto_1

    :cond_5
    const-wide v0, -0x6eada72f9864faa6L    # -3.09789473159013E-225

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    if-eqz p3, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 355
    :goto_0
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->needSeparator:Z

    goto :goto_1

    :cond_7
    const-wide v0, 0x55acab8dfcc06869L    # 5.1371027844492825E104

    cmp-long v2, p1, v0

    if-nez v2, :cond_8

    .line 357
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowCount:I

    goto :goto_1

    :cond_8
    const-wide v0, -0x52c9ac8efe5e31d9L    # -6.85000883324359E-91

    cmp-long v2, p1, v0

    if-nez v2, :cond_9

    .line 359
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode;->rowSpacing:I

    goto :goto_1

    .line 361
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode;->onSetIntAttribute(JI)V

    :goto_1
    return-void
.end method
