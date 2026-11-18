.class public Lcom/alibaba/ailabs/genie/load/image/gif/GifDrawableResource;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GifDrawableResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Initializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;",
        ">;",
        "Lcom/bumptech/glide/load/engine/Initializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;",
            ">;"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/load/image/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;->getFrameByteCount()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public recycle()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/load/image/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;->stop()V

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/load/image/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;->recycle()V

    return-void
.end method
