.class public Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewHolder.java"


# instance fields
.field private dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerHolder:Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

.field private mModifiedCount:I

.field private mShouldDowngrade:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/view/View;Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mModifiedCount:I

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    .line 30
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mInnerHolder:Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    return-void
.end method


# virtual methods
.method public cloneWithNewItemView(Landroid/view/View;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 2

    .line 73
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mInnerHolder:Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;)V

    .line 74
    iget p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mModifiedCount:I

    iput p1, v0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mModifiedCount:I

    .line 75
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    .line 76
    iget-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mShouldDowngrade:Z

    iput-boolean p1, v0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mShouldDowngrade:Z

    return-object v0
.end method

.method public getComponentDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDowngradeState()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mShouldDowngrade:Z

    return v0
.end method

.method public getInnerViewHolder()Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mInnerHolder:Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    return-object v0
.end method

.method public getModifiedCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mModifiedCount:I

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public rebindComponentDataMap(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    const-string v1, "DinamicXComponent"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    const-string v0, "triggerViewHolder"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->dataMap:Ljava/util/Map;

    return-object p1
.end method

.method public setDowngradeState(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mShouldDowngrade:Z

    return-void
.end method

.method public setInnerHolder(Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mInnerHolder:Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    return-void
.end method

.method public setModifiedCount(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->mModifiedCount:I

    return-void
.end method
