.class public Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WakeupTipsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mCorpusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;"
        }
    .end annotation
.end field

.field private mStatisticListener:Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mCorpusList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;)Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mStatisticListener:Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mCorpusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    check-cast p1, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;I)V
    .locals 6
    .param p1    # Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mCorpusList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->getAdapterPosition()I

    move-result v3

    .line 66
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->access$000(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    .line 69
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    .line 71
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->access$100(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 72
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mStatisticListener:Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;

    if-eqz v4, :cond_0

    .line 73
    invoke-interface {v4, v2, p2}, Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;->onItemShow(Ljava/lang/Object;I)V

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;->access$400(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;

    invoke-direct {p2, p0, v2, v3}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBindViewHolder: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WakeupTipsHolder"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/genie/genieui/R$layout;->layout_item_wakeup_corpus:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WakeupTipsHolder"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p2, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter$WakeupTipsHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setStatisticListener(Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mStatisticListener:Lcom/alibaba/ailabs/genie/genieui/utils/StatisticListener;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/response/GenieBallCorpus;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mCorpusList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->mCorpusList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieui/genietalk/WakeupTipsAdapter;->notifyDataSetChanged()V

    return-void
.end method
