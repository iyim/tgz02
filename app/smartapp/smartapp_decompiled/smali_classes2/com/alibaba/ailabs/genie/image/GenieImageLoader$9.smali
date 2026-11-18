.class final Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;
.super Ljava/lang/Object;
.source "GenieImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->loadImageSkipMemoryCache(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;Landroid/widget/ImageView;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;->val$listener:Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    const-string p3, "GenieImageLoader"

    const-string p4, "loadImage 8 onLoadFailed"

    .line 281
    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->printStackTrace()V

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;->val$listener:Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    const-string p4, ""

    .line 287
    invoke-interface {p1, p4, p3, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;->onFail(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return p3
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 2
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

    .line 296
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadImage 8 onResourceReadyBitmap size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getDrawableSize(Landroid/graphics/drawable/Drawable;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " config ="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getDrawableConfig(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " url="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " dataSource="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/bumptech/glide/load/DataSource;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " isFirstResource ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, "width*height = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "*"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "GenieImageLoader"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->sendInfo(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 298
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;->val$listener:Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;

    if-eqz p1, :cond_0

    .line 299
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;->onSuccess()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 277
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
