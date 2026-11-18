.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CollectSongsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TYPE_BOTTOM:I

.field private final TYPE_HEADER:I

.field private context:Landroid/content/Context;

.field private mSource:Ljava/lang/String;

.field private showFooter:Z

.field private songList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->TYPE_HEADER:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->TYPE_BOTTOM:I

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->showFooter:Z

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->mSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

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

    .line 64
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x2

    return p1

    .line 67
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 70
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$145$CollectSongsAdapter(ILandroid/view/View;)V
    .locals 4

    .line 107
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getValid()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VALID"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 108
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 112
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->mSource:Ljava/lang/String;

    const-string v2, "GENIE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "pos"

    const-string v3, "type"

    if-eqz v1, :cond_0

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "playFavorite"

    .line 115
    invoke-virtual {v0, v3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "packageType"

    const-string v1, "CONTENT"

    .line 116
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "audioType"

    const-string v1, "music"

    .line 117
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "playFavoriteSong"

    .line 119
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->mSource:Ljava/lang/String;

    const-string v3, "source"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->song_no_copyright:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->showToastView(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;I)V
    .locals 4
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_song_list_default:I

    .line 77
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_song_list_default:I

    .line 78
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;

    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideRoundTransformNew;-><init>(FI)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 80
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;->getLarge()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$CoverBeanX;->getImg()Ljava/lang/String;

    move-result-object v1

    .line 86
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 91
    :cond_1
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getValid()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean$ValidBeanX;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songTag:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songTag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_no_copyright:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songTagLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_source_qq:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songTagLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_source_kg:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->songList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->songTagLeft:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_source_kw:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$CollectSongsAdapter$Et_LOrLvYyYxVJEeBhsPmzPWb9c;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$CollectSongsAdapter$Et_LOrLvYyYxVJEeBhsPmzPWb9c;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    instance-of p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;

    if-eqz p2, :cond_7

    .line 129
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->showFooter:Z

    if-eqz p2, :cond_6

    .line 130
    nop

    nop

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;->songEnd:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 132
    :cond_6
    nop

    nop

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;->songEnd:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
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

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;
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

    .line 49
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_collect_songs_header:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 51
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_collect_songs_footer:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$FooterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 53
    :cond_1
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_collect_songs:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setShowFooter(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/CollectSongsAdapter;->showFooter:Z

    return-void
.end method
