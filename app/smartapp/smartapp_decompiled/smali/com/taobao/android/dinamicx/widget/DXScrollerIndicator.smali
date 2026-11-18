.class public Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXScrollerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INDICATOR_BG_COLOR:I = -0x212122

.field public static final DEFAULT_INDICATOR_COLOR:I = -0x8900

.field public static final DEFAULT_INDICATOR_RATIO:D = 0.5

.field public static final DX_SCROLLER_INDICATOR:J = 0x3a179f9fa4b860f4L

.field public static final DX_SCROLLER_INDICATOR_COLOR:J = -0x477d81e61d56b036L

.field public static final DX_SCROLLER_INDICATOR_INDICATOR_RATIO:J = -0x4779b648e81e9436L


# instance fields
.field private indicatorColor:I

.field private indicatorRatio:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const v0, -0x8900

    .line 35
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorColor:I

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 38
    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    const v0, -0x212122

    .line 58
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->backGroundColor:I

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 49
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;-><init>()V

    return-object p1
.end method

.method public getDefaultValueForDoubleAttr(J)D
    .locals 3

    const-wide v0, -0x4779b648e81e9436L    # -2.095948748302304E-36

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    return-wide p1

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForDoubleAttr(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 3

    const-wide v0, -0x477d81e61d56b036L    # -1.739034098969348E-36

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const p1, -0x8900

    return p1

    :cond_0
    const-wide v0, -0x27228264c32ab7d2L    # -1.1898785521381479E120

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const p1, -0x212122

    return p1

    .line 156
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorColor:I

    return v0
.end method

.method public getIndicatorRatio()D
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    return-wide v0
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 65
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;

    if-nez p2, :cond_0

    return-void

    .line 69
    :cond_0
    nop

    nop

    .line 70
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorColor:I

    .line 71
    iget-wide p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 54
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z
    .locals 10

    .line 76
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v2

    const-wide v4, 0x49656b25a678ff54L    # 3.821195803932153E45

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 81
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;

    if-nez v3, :cond_1

    return v0

    .line 86
    :cond_1
    check-cast p1, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    .line 88
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 93
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 94
    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 96
    invoke-virtual {v3, v0}, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;->setHorizontal(Z)V

    return v1

    .line 101
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->getScrollerSize()Lcom/taobao/android/dinamicx/ItemSize;

    move-result-object v0

    iget v0, v0, Lcom/taobao/android/dinamicx/ItemSize;->width:I

    .line 103
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->getContentSize()Lcom/taobao/android/dinamicx/ItemSize;

    move-result-object v2

    iget v2, v2, Lcom/taobao/android/dinamicx/ItemSize;->width:I

    sub-int/2addr v2, v0

    .line 108
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->getOffsetX()I

    move-result p1

    const-wide/16 v4, 0x0

    if-lez v2, :cond_4

    int-to-double v4, p1

    int-to-double v6, v2

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 116
    :cond_4
    iget-wide v6, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    .line 117
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->getMeasuredHeight()I

    move-result v9

    .line 116
    invoke-virtual/range {v3 .. v9}, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;->refreshScrollIndicator(DDII)V

    return v1

    :cond_5
    return v0
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 7

    .line 127
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    .line 129
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;

    .line 131
    move-object v0, p2

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;

    .line 133
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorColor:I

    const-string v1, "indicatorColor"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result p2

    .line 134
    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;->setScrollBarThumbColor(I)V

    .line 136
    iget-wide v3, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    .line 137
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->getMeasuredHeight()I

    move-result v6

    const-wide/16 v1, 0x0

    .line 136
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;->refreshScrollIndicator(DDII)V

    return-void
.end method

.method protected onSetDoubleAttribute(JD)V
    .locals 3

    const-wide v0, -0x4779b648e81e9436L    # -2.095948748302304E-36

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const-wide/16 p1, 0x0

    cmpl-double v0, p3, p1

    if-lez v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 181
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    :goto_0
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    goto :goto_1

    .line 183
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetDoubleAttribute(JD)V

    :goto_1
    return-void
.end method

.method protected onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, -0x477d81e61d56b036L    # -1.739034098969348E-36

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 172
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorColor:I

    goto :goto_0

    .line 174
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/view/View;)V
    .locals 4

    .line 142
    check-cast p1, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;

    .line 144
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->getMeasuredHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 145
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;->setRadii(F)V

    .line 146
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->backGroundColor:I

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/view/DXNativeScrollerIndicator;->setScrollBarTrackColor(I)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorColor:I

    return-void
.end method

.method public setIndicatorRatio(D)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator;->indicatorRatio:D

    return-void
.end method
