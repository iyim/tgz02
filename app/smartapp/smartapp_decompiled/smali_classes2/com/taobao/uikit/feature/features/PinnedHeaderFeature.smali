.class public Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;
.super Lcom/taobao/uikit/feature/features/AbsFeature;
.source "PinnedHeaderFeature.java"

# interfaces
.implements Lcom/taobao/uikit/feature/callback/MeasureCallback;
.implements Lcom/taobao/uikit/feature/callback/InterceptTouchEventCallback;
.implements Lcom/taobao/uikit/feature/callback/LayoutCallback;
.implements Lcom/taobao/uikit/feature/callback/CanvasCallback;
.implements Lcom/taobao/uikit/feature/callback/FocusCallback;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;,
        Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "Landroid/widget/ListView;",
        ">;",
        "Lcom/taobao/uikit/feature/callback/MeasureCallback;",
        "Lcom/taobao/uikit/feature/callback/InterceptTouchEventCallback;",
        "Lcom/taobao/uikit/feature/callback/LayoutCallback;",
        "Lcom/taobao/uikit/feature/callback/CanvasCallback;",
        "Lcom/taobao/uikit/feature/callback/FocusCallback;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final TAG:Ljava/lang/String; = "PinnedHeaderFeature"


# instance fields
.field private mAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I

.field private mHeightMeasureSpec:I

.field private mInternalAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;

.field private mLastHeaderDown:Z

.field private mWidthMeasureSpec:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/AbsFeature;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewVisible:Z

    .line 50
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mLastHeaderDown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    return-object p0
.end method

.method private configureHeaderView(I)V
    .locals 6

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mInternalAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;

    invoke-interface {v0, p1}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;->getPinnedHeaderState(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v2, 0xff

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    goto :goto_2

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 277
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 278
    iget-object v4, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-ge v0, v4, :cond_4

    if-lez v4, :cond_4

    sub-int/2addr v0, v4

    add-int v5, v4, v0

    mul-int/lit16 v5, v5, 0xff

    .line 284
    div-int v2, v5, v4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 289
    :goto_1
    iget-object v4, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mInternalAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;

    iget-object v5, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-interface {v4, v5, p1, v2}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;->configurePinnedHeader(Landroid/view/View;II)V

    .line 290
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->measureHeadView()V

    .line 291
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 292
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewWidth:I

    iget v4, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewHeight:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 296
    :cond_5
    iput-boolean v3, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewVisible:Z

    goto :goto_2

    .line 263
    :cond_6
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mInternalAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;

    iget-object v4, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-interface {v0, v4, p1, v2}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;->configurePinnedHeader(Landroid/view/View;II)V

    .line 264
    invoke-direct {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->measureHeadView()V

    .line 265
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-eqz p1, :cond_7

    .line 266
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    iget v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewWidth:I

    iget v2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewHeight:I

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 269
    :cond_7
    iput-boolean v3, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewVisible:Z

    goto :goto_2

    .line 258
    :cond_8
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewVisible:Z

    :goto_2
    return-void
.end method

.method private measureHeadView()V
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/uikit/feature/view/ViewGroupHelper;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/feature/view/ViewGroupHelper;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mWidthMeasureSpec:I

    iget v3, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeightMeasureSpec:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taobao/uikit/feature/view/ViewGroupHelper;->measureChild(Landroid/view/View;III)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewWidth:I

    .line 245
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewHeight:I

    :cond_1
    return-void
.end method


# virtual methods
.method public afterDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 342
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/uikit/feature/view/ViewGroupHelper;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/taobao/uikit/feature/view/ViewGroupHelper;

    iget-object v3, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    .line 345
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getDrawingTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p1

    .line 344
    invoke-interface/range {v1 .. v6}, Lcom/taobao/uikit/feature/view/ViewGroupHelper;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;JI)Z

    :cond_0
    return-void
.end method

.method public afterDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public afterOnLayout(ZIIII)V
    .locals 0

    .line 312
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 313
    iget p2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewWidth:I

    iget p3, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewHeight:I

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 314
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method public afterOnMeasure(II)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/uikit/feature/view/ViewGroupHelper;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/uikit/feature/view/ViewGroupHelper;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/taobao/uikit/feature/view/ViewGroupHelper;->measureChild(Landroid/view/View;III)V

    .line 169
    :cond_0
    iput p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mWidthMeasureSpec:I

    .line 170
    iput p2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeightMeasureSpec:I

    .line 171
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewWidth:I

    .line 172
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewHeight:I

    :cond_1
    return-void
.end method

.method public afterOnWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 387
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public beforeDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnDraw(Landroid/graphics/Canvas;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnLayout(ZIIII)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnMeasure(II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public beforeOnWindowFocusChanged(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 130
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 133
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderViewWidth:I

    iget-object v5, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    .line 134
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 135
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 139
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-boolean v2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mLastHeaderDown:Z

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 142
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->invalidate(Landroid/graphics/Rect;)V

    .line 144
    iput-boolean v1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mLastHeaderDown:Z

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 149
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mLastHeaderDown:Z

    :cond_2
    return v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 397
    invoke-direct {p0, p2}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public bridge synthetic setHost(Landroid/view/View;)V
    .locals 0

    .line 34
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->setHost(Landroid/widget/ListView;)V

    return-void
.end method

.method public setHost(Landroid/widget/ListView;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 122
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 123
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    .line 193
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mHeaderView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->getHost()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    :cond_0
    return-void
.end method

.method public setSectionAdapter(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    .line 205
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$SectionAdapter;

    if-eqz p1, :cond_0

    .line 206
    new-instance p1, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;

    invoke-direct {p1, p0}, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$1;-><init>(Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/PinnedHeaderFeature;->mInternalAdapter:Lcom/taobao/uikit/feature/features/PinnedHeaderFeature$PinnedHeaderAdapterInternal;

    :cond_0
    return-void
.end method
