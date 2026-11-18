.class public abstract Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;
.super Ljava/lang/Object;
.source "StickyViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StickyViewManager"


# instance fields
.field private final layout:Landroid/view/ViewGroup;

.field private final vhProvider:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

.field private viewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->viewHolders:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->layout:Landroid/view/ViewGroup;

    .line 25
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->vhProvider:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    return-void
.end method


# virtual methods
.method protected abstract getIDMComponents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end method

.method public rebuildView()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->layout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->viewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->viewHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->getIDMComponents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 45
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 46
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->vhProvider:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result v2

    .line 47
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->vhProvider:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v2

    .line 49
    iget-object v3, v2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 51
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->viewHolders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getStatus()I

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x8

    .line 55
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->vhProvider:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public refreshView()V
    .locals 6

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->getIDMComponents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->viewHolders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 69
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/viewmanager/StickyViewManager;->vhProvider:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v5, v3, v4}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 70
    invoke-interface {v4}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 72
    iget-object v3, v3, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 74
    :cond_0
    iget-object v3, v3, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
