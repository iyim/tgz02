.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MusicSourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TYPE_FOURTH:I = 0x4

.field private static final TYPE_MORE:I = 0x5

.field private static final TYPE_THREE:I = 0x3


# instance fields
.field private context:Landroid/content/Context;

.field private isSetting:Z

.field private itemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->isSetting:Z

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    return v1

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    return v1

    .line 108
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$92$MusicSourceAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 162
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->itemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;->playFirst(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$93$MusicSourceAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 163
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->itemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;->bindNow(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$94$MusicSourceAdapter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 164
    iget-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->itemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

    invoke-interface {p4, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;->unbind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$95$MusicSourceAdapter(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->itemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;->showChannelFragment(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;I)V
    .locals 7
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->sourceName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicVipIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsAuthorized()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicDesc:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->bind_certain_music_hint:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingNow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->playFirst:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->isSetting:Z

    if-nez v0, :cond_5

    .line 122
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingNow:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getStrVipExpire()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->isIsVip()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 128
    iget-object v4, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicDesc:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    sget v6, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->vip_expirte_date:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicVipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicDesc:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->binded:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicDesc:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->binded_not_vip:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :cond_3
    :goto_0
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingNow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->playFirst:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->isSetting:Z

    if-eqz v0, :cond_4

    if-lez p2, :cond_5

    .line 144
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->playFirst:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 147
    :cond_4
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_5
    :goto_1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    .line 152
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_portrait:I

    .line 153
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideCircleTransform;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/GlideCircleTransform;-><init>()V

    .line 154
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 155
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->musicIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getExtension()Ljava/lang/String;

    move-result-object p2

    .line 162
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->playFirst:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$50ndwv9a9f1T1rA1r5ZNsiuXjQo;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$50ndwv9a9f1T1rA1r5ZNsiuXjQo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingNow:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$iDpdG8-4fqFgZpMi48Js6wgjmOw;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$iDpdG8-4fqFgZpMi48Js6wgjmOw;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->bindingCancel:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$OT7_ODWmQ3rbbWkLwJtht-Sfy7s;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$OT7_ODWmQ3rbbWkLwJtht-Sfy7s;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$ONhjL-BpJcjFn8NIVqlLdfRRpqc;

    invoke-direct {p2, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$MusicSourceAdapter$ONhjL-BpJcjFn8NIVqlLdfRRpqc;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 89
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_item_music_source_three:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 91
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_item_music_source_four:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 93
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->tme_item_music_source_five:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 95
    :cond_2
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->item_music_source:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public reOrderSource(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 56
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before modelBean src is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->notifyDataSetChanged()V

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->sourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after modelBean src is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;)V

    .line 73
    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;-><init>()V

    .line 74
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->setAppId(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->setOrder(I)V

    .line 76
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getOpenPlatFormId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->setOpenPlatFormId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/AppsBySceneResponse$ModelBean;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/musicplayer/apis/ReOrderAppsRequest$BaseRawApp;->setSrc(Ljava/lang/String;)V

    .line 79
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public setItemClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->itemClickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter$ItemClickListener;

    return-void
.end method

.method public setSetting(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->isSetting:Z

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/MusicSourceAdapter;->notifyDataSetChanged()V

    return-void
.end method
