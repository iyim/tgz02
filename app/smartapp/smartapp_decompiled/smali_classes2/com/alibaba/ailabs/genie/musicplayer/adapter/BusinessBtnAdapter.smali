.class public Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BusinessBtnAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;,
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private btnClick:Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;

.field private buttonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;",
            ">;",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "BusinessBtnAdapter"

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->buttonList:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->btnClick:Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->buttonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$71$BusinessBtnAdapter(ILandroid/view/View;)V
    .locals 1

    .line 42
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->btnClick:Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;

    if-eqz p2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->buttonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$BtnClick;->businessClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->buttonList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->buttonList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;->businessTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->buttonList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$BusinessButton;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;->businessTv:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$BusinessBtnAdapter$yUQIDsH31oqXlap1HA5zauyJbQU;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$BusinessBtnAdapter$yUQIDsH31oqXlap1HA5zauyJbQU;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->TAG:Ljava/lang/String;

    const-string p2, "get(position) == null"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
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

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 32
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_business_btn:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 33
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/BusinessBtnAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
