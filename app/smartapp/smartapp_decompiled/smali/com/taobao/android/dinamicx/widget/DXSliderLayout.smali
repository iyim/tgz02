.class public Lcom/taobao/android/dinamicx/widget/DXSliderLayout;
.super Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;
.source "DXSliderLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;,
        Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;,
        Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderScrollListener;,
        Lcom/taobao/android/dinamicx/widget/DXSliderLayout$Builder;
    }
.end annotation


# static fields
.field public static final DX_SLIDER_LAYOUT:J = 0x6a19fe9d2c852bedL

.field public static final DX_SLIDER_LAYOUT_AUTO_SCROLL:J = 0x2457c0d2d388f252L

.field public static final DX_SLIDER_LAYOUT_AUTO_SCROLL_INTERVAL:J = 0x4c58970c0c9adb9fL

.field public static final DX_SLIDER_LAYOUT_IS_INFINITE:J = -0x31168daadf6719e4L

.field public static final DX_SLIDER_LAYOUT_MANUAL_SWITCH_ENABLED:J = -0x62a307aea1b42552L

.field public static final DX_SLIDER_LAYOUT_ON_PAGE_CHANGE:J = -0x7c8e4c808bab3e54L

.field public static final DX_SLIDER_LAYOUT_PAGE_INDEX:J = 0x6c79bff736d9b59eL


# instance fields
.field private autoScroll:Z

.field private autoScrollInterval:I

.field private isInfinite:Z

.field private manualSwitchEnabled:Z

.field private pageIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->manualSwitchEnabled:Z

    const/16 v0, 0x3e8

    .line 59
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScrollInterval:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/widget/DXSliderLayout;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->isInfinite:Z

    return p0
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 83
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;-><init>()V

    return-object p1
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 4

    const/4 v0, 0x0

    const-wide v1, 0x2457c0d2d388f252L

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide v1, 0x4c58970c0c9adb9fL    # 6.174164198549043E59

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    const/16 p1, 0x3e8

    return p1

    :cond_1
    const-wide v1, -0x31168daadf6719e4L    # -1.4050084603547724E72

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    return v0

    :cond_2
    const-wide v1, -0x62a307aea1b42552L

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const-wide v1, 0x6c79bff736d9b59eL    # 3.4674635338830636E214

    cmp-long v3, p1, v1

    if-nez v3, :cond_4

    return v0

    .line 297
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getPageIndex()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->pageIndex:I

    return v0
.end method

.method public measureSpecForChild(II)I
    .locals 0

    return p2
.end method

.method protected newLinearLayoutManager(Landroid/content/Context;)Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 194
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method

.method protected newScrollListener()Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;
    .locals 1

    .line 187
    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderScrollListener;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderScrollListener;-><init>()V

    return-object v0
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 90
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    if-nez p2, :cond_0

    return-void

    .line 94
    :cond_0
    nop

    nop

    .line 96
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->isInfinite:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->isInfinite:Z

    .line 97
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->pageIndex:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->pageIndex:I

    .line 98
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScrollInterval:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScrollInterval:I

    .line 99
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScroll:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScroll:Z

    .line 100
    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->manualSwitchEnabled:Z

    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->manualSwitchEnabled:Z

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 109
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z
    .locals 7

    .line 237
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->onEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 246
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRootView;->hasDXRootViewLifeCycle()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    .line 249
    invoke-virtual {v0, v2}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setNeedProcessViewLifeCycle(Z)V

    .line 251
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;->getEventId()J

    move-result-wide v3

    const-wide v5, 0x4965225aadb79e3eL    # 3.7704665857095116E45

    cmp-long p1, v5, v3

    if-nez p1, :cond_2

    .line 254
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->startTimer()V

    return v1

    :cond_2
    const-wide v5, 0x4ac97ab3686b8a81L    # 1.9065875833331544E52

    cmp-long p1, v5, v3

    if-nez p1, :cond_3

    .line 258
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->stopTimer()V

    return v1

    :cond_3
    return v2
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 114
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    instance-of p1, p2, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    if-nez p1, :cond_1

    return-void

    .line 126
    :cond_1
    nop

    nop

    .line 127
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineContext;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setDinamicXEngine(Lcom/taobao/android/dinamicx/DinamicXEngine;)V

    .line 130
    iget-object v0, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->itemWidgetNodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->itemWidgetNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-boolean v2, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->isInfinite:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    const v2, 0x1fffffff

    .line 138
    div-int/2addr v2, v0

    mul-int v2, v2, v0

    iget v3, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->pageIndex:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 143
    :cond_4
    iget v2, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->pageIndex:I

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    .line 151
    :cond_5
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/DXRootView;->hasDXRootViewLifeCycle()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {p2, v3}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setNeedProcessViewLifeCycle(Z)V

    .line 152
    invoke-virtual {p2, v2}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setCurrentIndex(I)V

    .line 154
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;

    invoke-direct {v5, p0, p2, v2}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$1;-><init>(Lcom/taobao/android/dinamicx/widget/DXSliderLayout;Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;

    invoke-direct {v3, p1, v0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;-><init>(Lcom/taobao/android/dinamicx/widget/DXSliderLayout;I)V

    .line 162
    invoke-virtual {p2, v3}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setOnPageChangeListener(Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;)V

    .line 167
    invoke-virtual {v3, v2}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->onPageSelected(I)V

    .line 172
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->manualSwitchEnabled:Z

    invoke-virtual {p2, v0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setManualSwitchEnabled(Z)V

    .line 174
    iget-boolean v0, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->isInfinite:Z

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScrollInterval:I

    if-lez v0, :cond_6

    iget-boolean v0, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScroll:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->scrollEnabled:Z

    if-eqz v0, :cond_6

    .line 176
    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScrollInterval:I

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setInterval(I)V

    .line 177
    invoke-virtual {p2, v4}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setAutoPlay(Z)V

    .line 178
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->startTimer()V

    goto :goto_2

    .line 180
    :cond_6
    invoke-virtual {p2, v1}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->setAutoPlay(Z)V

    .line 181
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->stopTimer()V

    :goto_2
    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x2457c0d2d388f252L

    cmp-long v4, p1, v2

    if-nez v4, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScroll:Z

    goto :goto_3

    :cond_1
    const-wide v2, 0x4c58970c0c9adb9fL    # 6.174164198549043E59

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    .line 271
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->autoScrollInterval:I

    goto :goto_3

    :cond_2
    const-wide v2, 0x6c79bff736d9b59eL    # 3.4674635338830636E214

    cmp-long v4, p1, v2

    if-nez v4, :cond_3

    .line 273
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->pageIndex:I

    goto :goto_3

    :cond_3
    const-wide v2, -0x31168daadf6719e4L    # -1.4050084603547724E72

    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 275
    :goto_1
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->isInfinite:Z

    goto :goto_3

    :cond_5
    const-wide v2, -0x62a307aea1b42552L

    cmp-long v4, p1, v2

    if-nez v4, :cond_7

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 277
    :goto_2
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->manualSwitchEnabled:Z

    goto :goto_3

    .line 279
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->onSetIntAttribute(JI)V

    :goto_3
    return-void
.end method

.method protected setAdapter(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V
    .locals 2

    .line 211
    move-object v0, p1

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    .line 212
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 213
    iget-boolean v0, v0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->isInfinite:Z

    if-eqz v0, :cond_1

    .line 214
    instance-of v0, v1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;

    if-eqz v0, :cond_0

    .line 215
    nop

    nop

    .line 216
    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemWidgetNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->setDataSource(Ljava/util/ArrayList;)V

    .line 217
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;

    iget-object v1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->pipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    invoke-direct {v0, v1, p3, p1}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;-><init>(Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)V

    .line 220
    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemWidgetNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;->setDataSource(Ljava/util/ArrayList;)V

    .line 221
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 224
    :cond_1
    instance-of v0, v1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$AutoLoopScrollerAdapter;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 228
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->setAdapter(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V

    .line 230
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;

    const/4 p2, 0x0

    .line 231
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->setNeedSetLayoutParams(Z)V

    :goto_0
    return-void
.end method

.method protected setLayoutManager(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->setLayoutManager(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V

    .line 201
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;

    .line 202
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getOrientation()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateSpeedPerPixel(I)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/view/DXScrollLinearLayoutManager;->calculateSpeedPerPixel(I)V

    :goto_0
    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->pageIndex:I

    return-void
.end method
