.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TYPE_BOTTOM:I

.field private final TYPE_HEADER:I

.field private context:Landroid/content/Context;

.field private mSource:Ljava/lang/String;

.field private playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->TYPE_HEADER:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->TYPE_BOTTOM:I

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->playlists:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->playlists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-le p1, v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->playlists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 57
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 60
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$141$PlayListAdapter(ILandroid/view/View;)V
    .locals 3

    .line 75
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->mSource:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->playlists:Ljava/util/List;

    .line 77
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "collect"

    .line 76
    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createListByListID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;I)V
    .locals 4
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_song_list_default:I

    .line 67
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_song_list_default:I

    .line 68
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;-><init>(FI)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 70
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->playlists:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->getCover()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;->centerImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 72
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;->playListName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->playlists:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->getCollectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;->playListContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->playlists:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/PlaylistItemBean;->getIntro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$PlayListAdapter$QGRhpvGA89PtNmtZFS5sUzBxlLk;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$PlayListAdapter$QGRhpvGA89PtNmtZFS5sUzBxlLk;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 39
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_play_list_record_header:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 41
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_play_list_record_footer:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 43
    :cond_1
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_play_list_record:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/PlayListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
