.class public Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private domain:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " SearchResultAdapter domain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    .line 31
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->domain:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->dataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method createErrorCard(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_card_search_error:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 80
    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->emptyImg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->emptyTitle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0xca

    if-ne p2, v2, :cond_0

    .line 83
    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_res_listen_inaudible:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "\u4e3b\u4eba\u7684\u8bdd\u6709\u70b9\u542c\u4e0d\u6e05\u5462\n\u6362\u4e2a\u65b9\u5f0f\u518d\u8bf4\u4e00\u6b21\u597d\u4e0d\u597d\uff1f"

    .line 84
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xcb

    if-ne p2, v2, :cond_1

    .line 86
    sget p2, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_res_listen_inaudible:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p2, "\u4e3b\u4eba\u7684\u8bdd\u6709\u4e9b\u96be\u61c2\uff0c\u6362\u4e2a\n\u65b9\u5f0f\u518d\u8bf4\u4e00\u6b21\u597d\u4e0d\u597d\uff1f"

    .line 87
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method createNoMoreData(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/globalsearch/R$layout;->gs_item_search_divider:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 96
    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$id;->dividerTitle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u8fd9\u91cc\u662f\u5e95\u7ebf\u54e6"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x3f19999a    # 0.6f

    .line 97
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->dataList:Ljava/util/List;

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
    .locals 0

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    .line 41
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "header"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->createErrorCard(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "footer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->createNoMoreData(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;-><init>(Landroid/content/Context;)V

    .line 47
    move-object v0, p1

    nop

    nop

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;->domain:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->setGroupInfo(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDataList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->setDataList(Ljava/util/List;)V

    .line 51
    :cond_2
    :goto_0
    new-instance p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter$MyViewHolder;-><init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchResultAdapter;Landroid/view/View;)V

    return-object p2
.end method
