.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;
.super Ljava/lang/Object;
.source "ExtendAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->refreshData(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLoadFailed$65$ExtendAdapter$ViewHolderAlbum$3()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->defalut_white_logo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->album:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/GlideException;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 321
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum;->itemView:Landroid/view/View;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$ViewHolderAlbum$3$pAsgQqsuh90UF1X3bVlQ9NKgc6w;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$ViewHolderAlbum$3$pAsgQqsuh90UF1X3bVlQ9NKgc6w;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 318
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$ViewHolderAlbum$3;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
