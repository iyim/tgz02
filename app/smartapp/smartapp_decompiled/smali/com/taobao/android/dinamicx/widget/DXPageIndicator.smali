.class public Lcom/taobao/android/dinamicx/widget/DXPageIndicator;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXPageIndicator$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_OFF_COLOR:I = 0xdedede

.field public static final DEFAULT_ON_COLOR:I = 0xff7700

.field public static final DX_PAGE_INDICATOR:J = -0x4086d67427203ed9L

.field public static final DX_PAGE_INDICATOR_HIDES_FOR_SINGLE_PAGE:J = 0x4c2551f98f0de525L

.field public static final DX_PAGE_INDICATOR_OFF_COLOR:J = 0x4945269bba959042L

.field public static final DX_PAGE_INDICATOR_ON_COLOR:J = 0x47d683a2d07d8563L

.field public static final DX_PAGE_INDICATOR_PAGE_COUNT:J = 0x6c79b3c2fff5edafL


# instance fields
.field private hidesForSinglePage:Z

.field private itemMargin:I

.field private itemRoundDiameter:I

.field private offColor:I

.field private onColor:I

.field private pageCount:I

.field private pageIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const v0, 0xff7700

    .line 35
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->onColor:I

    const v0, 0xdedede

    .line 38
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->offColor:I

    .line 68
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "8ap"

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getPx(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    .line 69
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "3ap"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getPx(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemMargin:I

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 64
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;-><init>()V

    return-object p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 3

    const-wide v0, 0x47d683a2d07d8563L    # 1.1970603625758675E38

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const p1, 0xff7700

    return p1

    :cond_0
    const-wide v0, 0x4945269bba959042L    # 9.433578156288161E44

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const p1, 0xdedede

    return p1

    .line 196
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getItemMargin()I
    .locals 1

    .line 264
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemMargin:I

    return v0
.end method

.method public getItemRoundDiameter()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    return v0
.end method

.method public getOffColor()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->offColor:I

    return v0
.end method

.method public getOnColor()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->onColor:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    return v0
.end method

.method public isHidesForSinglePage()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->hidesForSinglePage:Z

    return v0
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 81
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;

    if-nez p2, :cond_0

    return-void

    .line 85
    :cond_0
    nop

    nop

    .line 86
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->hidesForSinglePage:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->hidesForSinglePage:Z

    .line 87
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    .line 88
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    .line 89
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->offColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->offColor:I

    .line 90
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->onColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->onColor:I

    .line 91
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemMargin:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemMargin:I

    .line 92
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 74
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z
    .locals 6

    .line 165
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v2

    const-wide v4, -0x7c8e4c808bab3e54L    # -4.434513990302719E-292

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 170
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    if-gtz v0, :cond_1

    return v1

    .line 174
    :cond_1
    check-cast p1, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    .line 175
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;

    if-eqz v0, :cond_2

    .line 179
    iget v2, p1, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;->pageIndex:I

    invoke-virtual {v0, v2}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->setSelectedView(I)V

    .line 182
    :cond_2
    iget p1, p1, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;->pageIndex:I

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 123
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 124
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 156
    :cond_2
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v0

    .line 157
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_5

    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    .line 137
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 138
    :goto_3
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    if-ge v4, v1, :cond_7

    .line 139
    iget v2, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    if-eq v4, v1, :cond_4

    .line 142
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemMargin:I

    add-int/2addr v0, v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 147
    :cond_6
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v4

    move v0, v4

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 151
    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    goto :goto_5

    .line 153
    :cond_8
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v1

    .line 160
    :goto_5
    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 97
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;

    .line 102
    check-cast p2, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;

    .line 103
    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->setItemRoundDiameter(I)V

    .line 104
    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemMargin:I

    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->setItemMargin(I)V

    .line 106
    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->onColor:I

    const/4 v1, 0x1

    const-string v2, "onColor"

    invoke-virtual {p0, v2, v1, v0}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v0

    .line 107
    iget v2, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->offColor:I

    const-string v3, "offColor"

    invoke-virtual {p0, v3, v1, v2}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v2

    .line 109
    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->setSelectedDrawable(I)V

    .line 110
    invoke-virtual {p2, v2}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->setUnselectedDrawable(I)V

    .line 112
    iget-boolean v0, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->hidesForSinglePage:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    if-gtz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p2, p1, p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->addChildViews(II)V

    goto :goto_0

    .line 116
    :cond_2
    iget v1, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    .line 117
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    invoke-virtual {p2, v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;->addChildViews(II)V

    :goto_0
    return-void
.end method

.method protected onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, 0x47d683a2d07d8563L    # 1.1970603625758675E38

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 203
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->onColor:I

    goto :goto_1

    :cond_0
    const-wide v0, 0x4945269bba959042L    # 9.433578156288161E44

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 205
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->offColor:I

    goto :goto_1

    :cond_1
    const-wide v0, 0x6c79b3c2fff5edafL    # 3.461044083727279E214

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 207
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    goto :goto_1

    :cond_2
    const-wide v0, 0x4c2551f98f0de525L    # 6.691457682444843E58

    cmp-long v2, p1, v0

    if-nez v2, :cond_4

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 209
    :goto_0
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->hidesForSinglePage:Z

    goto :goto_1

    .line 211
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_1
    return-void
.end method

.method public setHidesForSinglePage(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->hidesForSinglePage:Z

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemMargin:I

    return-void
.end method

.method public setItemRoundDiameter(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->itemRoundDiameter:I

    return-void
.end method

.method public setOffColor(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->offColor:I

    return-void
.end method

.method public setOnColor(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->onColor:I

    return-void
.end method

.method public setPageCount(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageCount:I

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXPageIndicator;->pageIndex:I

    return-void
.end method
