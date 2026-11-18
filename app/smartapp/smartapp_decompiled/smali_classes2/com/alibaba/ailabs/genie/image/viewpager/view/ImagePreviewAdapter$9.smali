.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;
.super Ljava/lang/Object;
.source "ImagePreviewAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadGifImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

.field final synthetic val$imageGif:Landroid/widget/ImageView;

.field final synthetic val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Landroid/widget/ImageView;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->val$imageGif:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->val$progressBar:Landroid/widget/ProgressBar;

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
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 541
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->val$imageGif:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 542
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setVisibility(I)V

    .line 543
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getErrorPlaceHolder()I

    move-result p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->resource(I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V

    return p2
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 550
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->val$progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 537
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;->onResourceReady(Lcom/bumptech/glide/load/resource/gif/GifDrawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
