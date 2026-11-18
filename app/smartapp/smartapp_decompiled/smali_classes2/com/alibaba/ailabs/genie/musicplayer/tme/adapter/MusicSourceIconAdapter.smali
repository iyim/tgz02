.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MusicSourceIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private sourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
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
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->sourceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->sourceList:Ljava/util/List;

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

    .line 22
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;I)V
    .locals 3
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    .line 43
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 44
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isCM()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->migu_icon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;->musicIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;->musicIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 53
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;->musicIcon:Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 55
    :cond_1
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;->musicIcon:Landroid/widget/ImageView;

    const p2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
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
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 34
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_music_source_icon:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceIconAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
