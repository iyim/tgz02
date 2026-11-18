.class Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;
.super Ljava/lang/Object;
.source "ImagePreviewAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

.field final synthetic val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

.field final synthetic val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    iput-object p5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$progressBar:Landroid/widget/ProgressBar;

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
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .line 309
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$2;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$1;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;)V

    .line 343
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

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

    .line 355
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageView:Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$imageGif:Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    iget-object p5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-static {p2, p1, p3, p4, p5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    .line 304
    check-cast p1, Ljava/io/File;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;->onResourceReady(Ljava/io/File;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
