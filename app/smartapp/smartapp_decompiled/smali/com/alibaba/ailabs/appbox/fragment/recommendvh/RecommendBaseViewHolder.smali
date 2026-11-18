.class public abstract Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecommendBaseViewHolder.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/fragment/recommendvh/ItemViewInRecycleCallback;


# instance fields
.field protected itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;->itemViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract bindData(Ljava/lang/Object;)V
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;->itemViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    .line 30
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method
