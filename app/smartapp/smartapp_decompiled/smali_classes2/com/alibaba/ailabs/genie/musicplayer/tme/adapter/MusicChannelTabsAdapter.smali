.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MusicChannelTabsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;

.field private sourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->sourceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemClickListener()Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$147$MusicChannelTabsAdapter(ILandroid/view/View;)V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->getItemClickListener()Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->getItemClickListener()Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->getSrc()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;->clickTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;I)V
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;->tabTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$TabItemBean;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;->tabTextView:Landroid/widget/TextView;

    const-string v1, "#2B3852"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;->tabTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;->tabTextView:Landroid/widget/TextView;

    const-string v1, "#4A5A78"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;->tabTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 58
    :goto_0
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;->tabTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicChannelTabsAdapter$YM-iNUQztVC8G1xR5tHliC8a-EE;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicChannelTabsAdapter$YM-iNUQztVC8G1xR5tHliC8a-EE;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_item_channel_title:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter;->mItemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicChannelTabsAdapter$ItemClickListener;

    return-void
.end method
