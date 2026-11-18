.class public Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;
.super Ljava/lang/Object;
.source "NativeViewHolderProvider.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;


# instance fields
.field private mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field private mType2ViewType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewType2Type:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mViewTypeCount:I

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mType2ViewType:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mViewType2Type:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    return-void
.end method

.method private createViewHolderInternal(Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 1

    if-nez p2, :cond_0

    .line 62
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->createZeroHeightView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;)V

    return-object p2

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mType2ViewType:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-interface {p2, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;->create(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    move-result-object p2

    .line 69
    invoke-virtual {p2, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;)V

    return-object v0
.end method


# virtual methods
.method public bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getInnerViewHolder()Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->bindData(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    :cond_0
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mViewType2Type:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->createViewHolderInternal(Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mType2ViewType:Ljava/util/Map;

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mType2ViewType:Ljava/util/Map;

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public register(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mType2ViewType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mViewTypeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mViewTypeCount:I

    .line 38
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mType2ViewType:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mType2ViewType:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 43
    :goto_0
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->mViewType2Type:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
