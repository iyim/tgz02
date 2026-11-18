.class public Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "DXScrollerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollListener"
.end annotation


# instance fields
.field private contentSize:Lcom/taobao/android/dinamicx/ItemSize;

.field private engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

.field private msg:Lcom/alibaba/fastjson/JSONObject;

.field private offsetX:I

.field private offsetY:I

.field private params:Lcom/alibaba/fastjson/JSONObject;

.field rootView:Lcom/taobao/android/dinamicx/DXRootView;

.field private scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

.field private scrollEventOnScrollBegin:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

.field private scrollEventOnScrollEnd:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

.field private scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

.field private scrollerSize:Lcom/taobao/android/dinamicx/ItemSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 401
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 405
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    const-wide v1, 0x49656b25a678ff54L    # 3.821195803932153E45

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    .line 408
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    const-wide v1, 0x7ee6f2871e21c03eL

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollBegin:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    .line 411
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    const-wide v1, 0x2558cd033dc2316eL    # 8.944747641615028E-129

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollEnd:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    .line 414
    new-instance v0, Lcom/taobao/android/dinamicx/ItemSize;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/ItemSize;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerSize:Lcom/taobao/android/dinamicx/ItemSize;

    .line 416
    new-instance v0, Lcom/taobao/android/dinamicx/ItemSize;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/ItemSize;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->initAnimation()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)I
    .locals 0

    .line 401
    iget p0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetX:I

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)I
    .locals 0

    .line 401
    iget p0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetY:I

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    return-object p0
.end method

.method private initAnimation()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->access$100(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->msg:Lcom/alibaba/fastjson/JSONObject;

    .line 433
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->msg:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "type"

    const-string v2, "BNDX"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->params:Lcom/alibaba/fastjson/JSONObject;

    .line 435
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->msg:Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->params:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->params:Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    const-string/jumbo v2, "widget"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->rootView:Lcom/taobao/android/dinamicx/DXRootView;

    .line 438
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    :cond_0
    return-void
.end method

.method private sendAnimationMsg(Ljava/lang/String;)V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->access$100(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->params:Lcom/alibaba/fastjson/JSONObject;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "offsetX"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->params:Lcom/alibaba/fastjson/JSONObject;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "offsetY"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->params:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->params:Lcom/alibaba/fastjson/JSONObject;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sourceId"

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->engineContext:Lcom/taobao/android/dinamicx/DXEngineContext;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->rootView:Lcom/taobao/android/dinamicx/DXRootView;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->msg:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/android/dinamicx/DXEngineContext;->postMessage(Lcom/taobao/android/dinamicx/DXRootView;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private sendScrollEvent(Landroid/support/v7/widget/RecyclerView;Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;)V
    .locals 1

    .line 484
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetX:I

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setOffsetX(I)V

    .line 485
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetY:I

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setOffsetY(I)V

    .line 487
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getOrientation()I

    move-result p1

    if-nez p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetX:I

    invoke-static {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->access$602(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;I)I

    goto :goto_0

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetY:I

    invoke-static {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->access$602(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;I)I

    .line 493
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz p1, :cond_1

    .line 494
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 497
    :cond_1
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method


# virtual methods
.method public fireScrollEventWithInit(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 463
    instance-of v0, p1, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;

    if-eqz v0, :cond_0

    .line 464
    nop

    nop

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->getScrolledX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->setOffsetX(I)V

    .line 465
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->getScrolledY()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->setOffsetY(I)V

    .line 467
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;

    invoke-direct {v0, p0}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener$1;-><init>(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getScrollerLayout()Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    return-object v0
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 454
    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollBegin:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->sendScrollEvent(Landroid/support/v7/widget/RecyclerView;Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;)V

    const-string/jumbo p1, "scroll_beigin"

    .line 455
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->sendAnimationMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 457
    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollEnd:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->sendScrollEvent(Landroid/support/v7/widget/RecyclerView;Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;)V

    const-string/jumbo p1, "scroll_end"

    .line 458
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->sendAnimationMsg(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 444
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetX:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetX:I

    .line 445
    iget p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetY:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetY:I

    .line 447
    iget-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->sendScrollEvent(Landroid/support/v7/widget/RecyclerView;Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;)V

    const-string/jumbo p1, "scrolling"

    .line 448
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->sendAnimationMsg(Ljava/lang/String;)V

    return-void
.end method

.method public setOffsetX(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetX:I

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0

    .line 515
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->offsetY:I

    return-void
.end method

.method public setScrollerLayout(Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .line 523
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerLayout:Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;

    .line 525
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    iget v1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentHorizontalLength:I

    iput v1, v0, Lcom/taobao/android/dinamicx/ItemSize;->width:I

    .line 527
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/taobao/android/dinamicx/ItemSize;->height:I

    .line 529
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setContentSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 530
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollBegin:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setContentSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 531
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollEnd:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setContentSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/taobao/android/dinamicx/ItemSize;->width:I

    .line 534
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    iget v1, p1, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->contentVerticalLength:I

    iput v1, v0, Lcom/taobao/android/dinamicx/ItemSize;->height:I

    .line 536
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setContentSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 537
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollBegin:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setContentSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 538
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollEnd:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->contentSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setContentSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 541
    :goto_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/taobao/android/dinamicx/ItemSize;->width:I

    .line 542
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Lcom/taobao/android/dinamicx/ItemSize;->height:I

    .line 544
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setScrollerSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 545
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollBegin:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setScrollerSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 546
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollEnd:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollerSize:Lcom/taobao/android/dinamicx/ItemSize;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setScrollerSize(Lcom/taobao/android/dinamicx/ItemSize;)V

    .line 548
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScroll:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 549
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollBegin:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 550
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$ScrollListener;->scrollEventOnScrollEnd:Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/expression/event/DXScrollEvent;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
