.class public Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TopicMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;",
            ">;"
        }
    .end annotation
.end field

.field delegateAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private isHasRefreshed:Z

.field itemCount:I

.field lastReturnIndex:I

.field lastViewTypeIndex:I

.field tDataPosInType:I

.field tTypePos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->dataItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->isHasRefreshed:Z

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->delegateAdapters:Ljava/util/List;

    const/4 v1, -0x1

    .line 33
    iput v1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tDataPosInType:I

    .line 36
    iput v1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tTypePos:I

    .line 39
    iput v1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->lastViewTypeIndex:I

    .line 128
    iput v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->itemCount:I

    return-void
.end method

.method private getDataAndCalPosition(I)Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;
    .locals 5

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tDataPosInType:I

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tTypePos:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->dataItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    move v3, v2

    const/4 v2, 0x0

    .line 86
    :goto_1
    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->dataItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;->getRowItemCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_0

    .line 89
    iput v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tTypePos:I

    .line 90
    iput v2, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tDataPosInType:I

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->dataItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addDelegate(Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->delegateAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->dataItems:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->isHasRefreshed:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->itemCount:I

    if-eqz v0, :cond_0

    return v0

    .line 136
    :cond_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->isHasRefreshed:Z

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->dataItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    .line 139
    iget v2, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->itemCount:I

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;->getRowItemCount()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->itemCount:I

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getItemCount is  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getItemCount "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->itemCount:I

    return v0

    :cond_2
    return v1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 46
    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->lastViewTypeIndex:I

    if-ne v0, p1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 47
    iget p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->lastReturnIndex:I

    return p1

    .line 49
    :cond_0
    iput p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->lastViewTypeIndex:I

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->getDataAndCalPosition(I)Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemViewType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tTypePos:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->delegateAdapters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;

    .line 59
    iget v2, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tTypePos:I

    invoke-interface {v1, v0, v2}, Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;->isForViewType(Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->delegateAdapters:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->lastReturnIndex:I

    .line 62
    iget p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->lastReturnIndex:I

    return p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "\u6ca1\u6709\u627e\u5230\u53ef\u4ee5\u5904\u7406\u7684\u59d4\u6258Adapter"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->delegateAdapters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;

    .line 117
    iget v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->tDataPosInType:I

    .line 125
    invoke-interface {p2, p1, v0, v0}, Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->delegateAdapters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;

    .line 104
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public refreshDataItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->dataItems:Ljava/util/List;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->isHasRefreshed:Z

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicMainAdapter;->notifyDataSetChanged()V

    return-void
.end method
