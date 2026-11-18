.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;
.super Ljava/lang/Object;
.source "ChildAppListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->onDataLoaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$100(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_6

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 293
    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 294
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setOrientation(I)V

    .line 295
    new-instance v1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$1;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 308
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$100(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    new-instance v2, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$300(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v5}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$102(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 310
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$400(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$100(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$500(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)V

    .line 313
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$600(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$300(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 315
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$600(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$300(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 318
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$600(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 321
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$600(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/appbox/view/VerticalScrollBar;->setVisibility(I)V

    .line 323
    :cond_5
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$400(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 324
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$400(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$2;-><init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 347
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$400(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$800(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    if-nez v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    new-instance v1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$300(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListItemDecoration;-><init>(Ljava/util/List;I)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$802(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;Landroid/support/v7/widget/RecyclerView$ItemDecoration;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 350
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$400(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$800(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/view/RowScrollRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$100(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    :goto_0
    return-void
.end method
