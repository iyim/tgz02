.class public Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerViewAdapter.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/adapter/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;",
        ">;",
        "Lcom/alibaba/android/ultron/vfw/adapter/IAdapter;"
    }
.end annotation


# instance fields
.field protected mComponentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation
.end field

.field protected mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field protected mVHProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mComponentList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 31
    const-class v0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mVHProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mComponentList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mComponentList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mComponentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mVHProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;I)V
    .locals 2

    const-string v0, "RecyclerViewBindView"

    const-string v1, "onBind start"

    .line 62
    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mComponentList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mVHProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    if-eqz p2, :cond_2

    .line 67
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 68
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getInnerViewHolder()Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getInnerViewHolder()Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    if-eqz p2, :cond_1

    const-string p1, "name"

    .line 69
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "native-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 71
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind end, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 3

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 51
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->createZeroHeightView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const-string v0, "RecyclerViewCreateView"

    const-string v1, "createView start"

    .line 54
    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mVHProviderManager:Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object p1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createView end, viewtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mComponentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->mComponentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method
