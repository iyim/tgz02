.class public Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;
.super Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;
.source "DXScrollerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;,
        Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;,
        Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$Builder;
    }
.end annotation


# static fields
.field public static final DXSCROLLERLAYOUT_OPENSCROLLERANIMATION:J = -0x62dd126066899453L

.field public static final DX_SCROLLER_LAYOUT:J = 0x480f2cdb5773b9d2L

.field public static final DX_SCROLLER_LAYOUT_CONTENT_OFFSET:J = 0x184c1a61a546d96fL

.field public static final DX_SCROLLER_LAYOUT_ITEM_PREFETCH:J = 0x33a770d7553c3becL

.field public static final DX_TAG_HAS_SCROLL_LISTENER:I


# instance fields
.field private contentOffset:I

.field private itemPrefetch:Z

.field private openScrollerAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget v0, Lcom/taobao/android/dinamic/R$id;->dx_recycler_view_has_scroll_listener:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->DX_TAG_HAS_SCROLL_LISTENER:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemPrefetch:Z

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->openScrollerAnimation:Z

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->openScrollerAnimation:Z

    return p0
.end method

.method static synthetic access$602(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    return p1
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0

    .line 72
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;-><init>()V

    return-object p1
.end method

.method public closeDefaultAnimator(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    .line 112
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 114
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 116
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/SimpleItemAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getContentOffset()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    return v0
.end method

.method protected newLinearLayoutManager(Landroid/content/Context;)Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 172
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected newScrollListener()Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;
    .locals 1

    .line 195
    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;-><init>()V

    return-object v0
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 79
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    if-nez p2, :cond_0

    return-void

    .line 83
    :cond_0
    nop

    nop

    .line 84
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    .line 85
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemPrefetch:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemPrefetch:Z

    .line 86
    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->openScrollerAnimation:Z

    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->openScrollerAnimation:Z

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 104
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->closeDefaultAnimator(Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 123
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->onRenderView(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    instance-of v0, p2, Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    check-cast p2, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;

    .line 136
    invoke-virtual {p0, p1, v0, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->setLayoutManager(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V

    .line 139
    iget v1, v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 142
    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentHorizontalLength:I

    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentVerticalLength:I

    invoke-virtual {p2, v4, v1, v2, v3}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->needScrollAfterLayout(IIII)V

    goto :goto_0

    .line 144
    :cond_2
    iget v2, v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentHorizontalLength:I

    iget v3, v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentVerticalLength:I

    invoke-virtual {p2, v1, v4, v2, v3}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->needScrollAfterLayout(IIII)V

    .line 148
    :cond_3
    :goto_0
    invoke-virtual {p0, v0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->setAdapter(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0, v0, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->setScrollListener(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onSetIntAttribute(JI)V
    .locals 5

    const-wide v0, 0x184c1a61a546d96fL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 92
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    goto :goto_0

    :cond_0
    const-wide v0, 0x33a770d7553c3becL

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_2

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    .line 94
    :cond_1
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemPrefetch:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x62dd126066899453L    # -2.507737811597129E-168

    cmp-long v4, p1, v0

    if-nez v4, :cond_4

    if-ne p3, v3, :cond_3

    const/4 v2, 0x1

    .line 96
    :cond_3
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->openScrollerAnimation:Z

    goto :goto_0

    .line 98
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXScrollLayoutBase;->onSetIntAttribute(JI)V

    :goto_0
    return-void
.end method

.method protected setAdapter(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V
    .locals 2

    .line 199
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;

    iget-object v1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->pipeline:Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;

    invoke-direct {v0, v1, p3, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;-><init>(Lcom/taobao/android/dinamicx/DXSimpleRenderPipeline;Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)V

    const/4 p3, 0x1

    .line 202
    invoke-virtual {v0, p3}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->setHasStableIds(Z)V

    .line 203
    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemWidgetNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->setDataSource(Ljava/util/ArrayList;)V

    .line 204
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object p3, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemWidgetNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->setDataSource(Ljava/util/ArrayList;)V

    .line 209
    iget p3, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    const/4 v1, -0x1

    if-gt p3, v1, :cond_1

    .line 210
    check-cast p2, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;

    iget p3, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentHorizontalLength:I

    iget p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentVerticalLength:I

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, p3, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->needScrollAfterLayout(IIII)V

    .line 212
    :cond_1
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollerAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public setContentOffset(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentOffset:I

    return-void
.end method

.method protected setLayoutManager(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 153
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->newLinearLayoutManager(Landroid/content/Context;)Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;

    move-result-object v0

    .line 156
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getOrientation()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 160
    invoke-virtual {v0, p3}, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->setOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 162
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->setOrientation(I)V

    .line 165
    :goto_0
    iget-boolean p1, p2, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->itemPrefetch:Z

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->setItemPrefetchEnabled(Z)V

    .line 166
    iget-boolean p1, p2, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->scrollEnabled:Z

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/view/DXLinearLayoutManager;->setScrollEnabled(Z)V

    return-void
.end method

.method protected setScrollListener(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 177
    sget v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->DX_TAG_HAS_SCROLL_LISTENER:I

    .line 178
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->newScrollListener()Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->setScrollerLayout(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V

    .line 182
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 183
    sget p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->DX_TAG_HAS_SCROLL_LISTENER:I

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/widget/RecyclerView;->setTag(ILjava/lang/Object;)V

    .line 184
    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->fireScrollEventWithInit(Landroid/support/v7/widget/RecyclerView;)V

    .line 185
    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$000(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->setScrollerLayout(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V

    .line 189
    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->fireScrollEventWithInit(Landroid/support/v7/widget/RecyclerView;)V

    .line 190
    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->access$000(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)V

    :goto_0
    return-void
.end method
