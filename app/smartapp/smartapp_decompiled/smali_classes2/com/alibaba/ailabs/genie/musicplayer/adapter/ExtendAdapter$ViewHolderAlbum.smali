.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ExtendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderAlbum"
.end annotation


# instance fields
.field adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

.field album:Landroid/widget/ImageView;

.field listBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;",
            ">;"
        }
    .end annotation
.end field

.field lyPlayAll:Landroid/widget/LinearLayout;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;)V
    .locals 6

    .line 274
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    .line 275
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/databinding/ExtendAlbumBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 277
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->listRyId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 279
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->albumIvId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->album:Landroid/widget/ImageView;

    .line 280
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->bg_play_all:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->lyPlayAll:Landroid/widget/LinearLayout;

    .line 281
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$1;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;Landroid/content/Context;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 288
    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$2;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->extend_list_item:I

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;Landroid/content/Context;ILjava/util/List;Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    .line 302
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->lyPlayAll:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$ViewHolderAlbum$KY-SodZth5cNBfc9BpNPELYl6dA;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$ViewHolderAlbum$KY-SodZth5cNBfc9BpNPELYl6dA;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$64$ExtendAdapter$ViewHolderAlbum(Landroid/view/View;)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->listBeanList:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;

    move-result-object p1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;->onPlayAllClick(I)V

    return-void
.end method

.method public refreshData(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V
    .locals 1

    .line 312
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->listBeanList:Ljava/util/List;

    .line 313
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->adapter:Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->listBeanList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->setData(Ljava/util/List;)V

    .line 314
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->listBeanList:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 315
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->listBeanList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getCover()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;->getImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->album:Landroid/widget/ImageView;

    .line 333
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 335
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->defalut_white_logo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->album:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    :goto_0
    return-void
.end method
