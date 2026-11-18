.class Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;
.super Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;
.source "TMEChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/TmeChannelRankListBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

.field final synthetic val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;Landroid/content/Context;ILjava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;I)V
    .locals 9

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 261
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankIvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    .line 262
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->setViewRoundedCorner(Landroid/view/View;I)V

    .line 263
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getCover()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_album_img:I

    .line 266
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_album_img:I

    .line 267
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_album_img:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :goto_0
    const-string v1, "#2B3852"

    .line 274
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 276
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankTitleTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 282
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "1"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_2

    .line 284
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankFirstTitleTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v5, v5, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 285
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->rank_order_tittle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 286
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 285
    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const/4 v5, 0x3

    const-string v6, "2"

    if-ge v0, v5, :cond_3

    .line 288
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankFirstTitleTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v5, v5, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 289
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->rank_order_tittle:I

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v4

    .line 290
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    .line 289
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankSecondTitleTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 292
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->rank_order_tittle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v4

    .line 293
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 292
    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 296
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankFirstTitleTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v5, v5, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 297
    invoke-static {v5}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->rank_order_tittle:I

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v4

    .line 298
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    .line 297
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankSecondTitleTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 301
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->rank_order_tittle:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v4

    .line 302
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v1

    .line 301
    invoke-virtual {v2, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rankThirdTitleTvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    .line 305
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->rank_order_tittle:I

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "3"

    aput-object v7, v6, v4

    .line 306
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getContentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/FavouriteMusicBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 305
    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$ViewHolderRank$1$KiknxD5EIHK0bUPlxAjyqXYtL40;

    invoke-direct {v2, p0, p3, p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/-$$Lambda$TMEChannelAdapter$ViewHolderRank$1$KiknxD5EIHK0bUPlxAjyqXYtL40;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;ILcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    sget p3, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->rank_init_empty:I

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->isExposed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 320
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getRawId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$400(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->setExposed(Z)V

    :cond_5
    return-void
.end method

.method public bridge synthetic dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 256
    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;I)V

    return-void
.end method

.method public synthetic lambda$dataBind$130$TMEChannelAdapter$ViewHolderRank$1(ILcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;Landroid/view/View;)V
    .locals 2

    .line 313
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u70b9\u51fb\u7b2c "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a\u699c\u5355"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TME-ChannelAdapter"

    invoke-static {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getRawId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    .line 316
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter$ViewHolderRank;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;->access$600(Lcom/alibaba/ailabs/genie/musicplayer/tme/adapter/TMEChannelAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/BillBoard$BillBoardBean;->getRawId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "billboardV2"

    invoke-virtual {p1, p3, v0, p2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createListByListID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
