.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;
.super Ljava/lang/Object;
.source "ImagePreviewAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
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
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .line 318
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-static {p2, p3, p4, v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$100(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/GlideException;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResourceReady(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 325
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object p2, p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object p3, p3, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    iget-object p5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->this$2:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    iget-object p5, p5, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    iget-object p5, p5, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-static {p2, p1, p3, p4, p5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 314
    check-cast p1, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2$2;->onResourceReady(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
