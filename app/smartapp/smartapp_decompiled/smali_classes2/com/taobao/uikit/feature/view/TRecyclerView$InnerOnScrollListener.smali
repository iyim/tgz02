.class Lcom/taobao/uikit/feature/view/TRecyclerView$InnerOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/view/TRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/view/TRecyclerView;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerOnScrollListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerOnScrollListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v0}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$000(Lcom/taobao/uikit/feature/view/TRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 464
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerOnScrollListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$000(Lcom/taobao/uikit/feature/view/TRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerOnScrollListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v0}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$000(Lcom/taobao/uikit/feature/view/TRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 476
    iget-object v1, p0, Lcom/taobao/uikit/feature/view/TRecyclerView$InnerOnScrollListener;->this$0:Lcom/taobao/uikit/feature/view/TRecyclerView;

    invoke-static {v1}, Lcom/taobao/uikit/feature/view/TRecyclerView;->access$000(Lcom/taobao/uikit/feature/view/TRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 477
    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
