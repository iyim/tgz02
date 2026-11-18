.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;
.super Ljava/lang/Object;
.source "MusicPlayerView.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->loadAlbum(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$CoverBean;Landroid/widget/ImageView;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

.field final synthetic val$albumIvId:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;Landroid/widget/ImageView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->val$albumIvId:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLoadFailed$165$MusicPlayerView$4(Landroid/widget/ImageView;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_default_album_img:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->access$500(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

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

    const-string p1, "MusicPlayerView"

    const-string p2, "---onLoadFailed--"

    .line 237
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 239
    sget-object p1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/BasePlayerView;->mHandler:Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->val$albumIvId:Landroid/widget/ImageView;

    new-instance p3, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$4$_6J45gnGl7RRq0khIAqfujQ3I-w;

    invoke-direct {p3, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/-$$Lambda$MusicPlayerView$4$_6J45gnGl7RRq0khIAqfujQ3I-w;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

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

    const-string p1, "MusicPlayerView"

    const-string p2, "---onResourceReady--"

    .line 247
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 234
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/MusicPlayerView$4;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
