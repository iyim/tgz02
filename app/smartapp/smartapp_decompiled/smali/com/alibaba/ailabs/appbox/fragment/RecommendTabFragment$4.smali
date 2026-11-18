.class Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;
.super Ljava/lang/Object;
.source "RecommendTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->onDataLoaded(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

.field final synthetic val$isFromCache:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Z)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->val$isFromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 398
    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 399
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 400
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 412
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    new-instance v2, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;

    invoke-direct {v2, v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$202(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 414
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    if-nez v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$ApplistItemDecoration;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$ApplistItemDecoration;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$402(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Landroid/support/v7/widget/RecyclerView$ItemDecoration;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 426
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$300(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$400(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 432
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->val$isFromCache:Z

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$500(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Z)V

    .line 433
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$4;->val$isFromCache:Z

    const-string v1, "RecommendTabFragment"

    if-eqz v0, :cond_5

    const-string v0, "cacheData_show"

    .line 434
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "getMarketByCate_show"

    .line 436
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
