.class Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;
.super Ljava/lang/Object;
.source "ExtendAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;I)V
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
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;Landroid/widget/ImageView;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLoadFailed$69$ExtendAdapter$2$1(Landroid/widget/ImageView;)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->defalut_white_logo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

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

    .line 471
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->this$1:Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2;->val$itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->val$iv:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$2$1$X7-X3CaJyf8xueP6apFED2YjJDU;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/-$$Lambda$ExtendAdapter$2$1$X7-X3CaJyf8xueP6apFED2YjJDU;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

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

    .line 468
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$2$1;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
