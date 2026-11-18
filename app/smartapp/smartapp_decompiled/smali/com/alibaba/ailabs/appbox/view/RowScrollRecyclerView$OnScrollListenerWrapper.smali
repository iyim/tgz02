.class Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RowScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field private isUpScroll:Z

.field private onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private showNavIfNeed()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 8

    .line 314
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_a

    .line 319
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$100(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$100(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;

    if-eqz v0, :cond_a

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$100(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;

    .line 321
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 322
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 324
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$200(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$300(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$300(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;->onScrollEnd(II)V

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$202(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;Z)Z

    return-void

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$400(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_5

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_4

    .line 337
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 342
    :cond_2
    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v6}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$500(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v6}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$500(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-gt v6, v5, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, -0x1

    goto :goto_3

    .line 348
    :cond_5
    iget-boolean v3, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->isUpScroll:Z

    if-eqz v3, :cond_7

    .line 350
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 355
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->getSpanCount()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v1

    :goto_3
    if-eq v3, v4, :cond_a

    .line 364
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$600(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 365
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 367
    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v6, v3}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$702(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;I)I

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    if-eqz v4, :cond_9

    .line 371
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v1, v5}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$202(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;Z)Z

    .line 372
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$400(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 373
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$800(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->smoothScrollToPositionFromTop(IF)V

    goto :goto_4

    .line 378
    :cond_8
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$900(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/ailabs/appbox/view/SpeedyLinearLayoutManager;->smoothScrollToPosition(IF)V

    goto :goto_4

    .line 381
    :cond_9
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$300(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$300(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollEndListener;->onScrollEnd(II)V

    .line 390
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_b

    .line 391
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_b
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 397
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    if-lez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 398
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->isUpScroll:Z

    .line 400
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->isUpScroll:Z

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$1000(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$502(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;I)I

    goto :goto_1

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$1100(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->access$502(Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;I)I

    .line 406
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->showNavIfNeed()V

    .line 408
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_2
    return-void
.end method

.method setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView$OnScrollListenerWrapper;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method
