.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;
.super Ljava/lang/Object;
.source "MarketTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->onDataLoaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataLoaded getContext():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 393
    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 394
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 395
    new-instance v3, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 404
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 405
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    new-instance v4, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;

    invoke-direct {v4, v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketTabAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$302(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 406
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 409
    :cond_2
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 421
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$700(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 423
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$700(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 425
    :cond_3
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    new-instance v2, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$3;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3$3;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;)V

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$802(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 449
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 450
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 451
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$1000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    if-nez v0, :cond_5

    .line 452
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    new-instance v2, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$ApplistItemDecoration;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$1002(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Landroid/support/v7/widget/RecyclerView$ItemDecoration;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 453
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$1000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 456
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 458
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDataLoaded"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
