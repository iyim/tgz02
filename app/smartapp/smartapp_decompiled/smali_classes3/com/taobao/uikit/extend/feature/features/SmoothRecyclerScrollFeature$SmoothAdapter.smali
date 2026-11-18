.class Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SmoothRecyclerScrollFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmoothAdapter"
.end annotation


# instance fields
.field private mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;


# direct methods
.method protected constructor <init>(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 116
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->access$000(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;Landroid/view/View;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->this$0:Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;->access$100(Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature;Landroid/view/View;)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/SmoothRecyclerScrollFeature$SmoothAdapter;->mDelegateAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
