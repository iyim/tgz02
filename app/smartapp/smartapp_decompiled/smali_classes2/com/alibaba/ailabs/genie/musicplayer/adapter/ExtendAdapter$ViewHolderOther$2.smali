.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;
.super Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendOtherBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

.field final synthetic val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;Landroid/content/Context;ILjava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->val$this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;I)V
    .locals 3

    .line 364
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->albumImgIvId:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 365
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object v1

    .line 366
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isDestroy(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 368
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 383
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->defalut_white_logo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 388
    :cond_1
    :goto_0
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->titleTvId:I

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->subTitleTvId:I

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$ViewHolderOther$2$PQZkp_Mq3ApO5TW3px1FbNtvKi8;

    invoke-direct {p1, p0, p3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$ViewHolderOther$2$PQZkp_Mq3ApO5TW3px1FbNtvKi8;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 360
    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;I)V

    return-void
.end method

.method public synthetic lambda$dataBind$67$ExtendAdapter$ViewHolderOther$2(ILandroid/view/View;)V
    .locals 2

    .line 391
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 392
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->getData()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 393
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther$2;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderOther;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    move-result-object v0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    const/4 v1, 0x4

    invoke-interface {v0, p2, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;->onItemClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;II)V

    nop

    :cond_1
    :goto_0
    return-void
.end method
