.class public Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ImagePreviewAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImagePreview"


# instance fields
.field private activity:Landroid/app/Activity;

.field private finalLoadUrl:Ljava/lang/String;

.field private imageGifHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;",
            ">;"
        }
    .end annotation
.end field

.field private imageHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;",
            ">;"
        }
    .end annotation
.end field

.field private imageInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageInfo:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)Landroid/app/Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadFailed(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/GlideException;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadSuccess(Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private loadFailed(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/16 v0, 0x8

    .line 419
    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 420
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x0

    .line 421
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setVisibility(I)V

    .line 423
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setZoomEnabled(Z)V

    .line 424
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getErrorPlaceHolder()I

    move-result p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->resource(I)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V

    .line 426
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowErrorToast()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    if-eqz p4, :cond_0

    const-string p3, ":\n"

    .line 429
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/bumptech/glide/load/engine/GlideException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 431
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0xc8

    if-le p3, p4, :cond_1

    const/16 p3, 0xc7

    .line 432
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 434
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->_short(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private loadGifImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 2

    const/4 v0, 0x0

    .line 529
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 530
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 535
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 536
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getErrorPlaceHolder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 535
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$9;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Landroid/widget/ImageView;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ProgressBar;)V

    .line 537
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 554
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private loadImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 1

    const/16 v0, 0x8

    .line 481
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x0

    .line 482
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setVisibility(I)V

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->setImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V

    const/4 p3, -0x1

    .line 486
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setOrientation(I)V

    .line 487
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->uri(Landroid/net/Uri;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object p3

    .line 488
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isBmpImageWithMime(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tilingDisabled()Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    .line 491
    :cond_0
    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V

    .line 493
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$8;

    invoke-direct {p1, p0, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$8;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Landroid/widget/ProgressBar;)V

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setOnImageEventListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose$OnImageEventListener;)V

    return-void
.end method

.method private loadSuccess(Ljava/io/File;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V
    .locals 1

    .line 440
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isGifImageWithMime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadGifImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_0

    .line 445
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    :goto_0
    return-void
.end method

.method private setImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isLongImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 452
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 453
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getLongImageMinScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 454
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getLongImageMaxScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 455
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getLongImageMaxScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    goto/16 :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isWideImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 458
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isSmallImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 460
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 461
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMinScale()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 462
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMaxScale()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 463
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWideImageDoubleScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x3

    .line 465
    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 466
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getSmallImageMinScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 467
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getSmallImageMaxScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 468
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getSmallImageMaxScale(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p2, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    .line 471
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMinScale()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 472
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMaxScale()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 473
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMediumScale()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closePage()V
    .locals 4

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 66
    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->destroyDrawingCache()V

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->recycle()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 77
    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->destroyDrawingCache()V

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 371
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageInfo:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    .line 373
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 374
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    if-eqz p2, :cond_0

    .line 376
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->resetScaleAndCenter()V

    .line 377
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->destroyDrawingCache()V

    .line 378
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 382
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    :cond_0
    :goto_0
    :try_start_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    .line 386
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    if-eqz p1, :cond_1

    .line 388
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->destroyDrawingCache()V

    const/4 p2, 0x0

    .line 389
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    :cond_1
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader;->clearMemory(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-object p1

    .line 177
    :cond_0
    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$layout;->sh_item_photoview:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 178
    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->progress_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    .line 179
    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->fingerDragHelper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;

    .line 180
    sget v2, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->photo_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    .line 181
    sget v2, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->gif_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    .line 183
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageInfo:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    .line 184
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 187
    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinimumScaleType(I)V

    const/4 v4, 0x2

    .line 188
    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomStyle(I)V

    .line 189
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getZoomTransitionDuration()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomDuration(I)V

    .line 190
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMinScale()F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMinScale(F)V

    .line 191
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMaxScale()F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setMaxScale(F)V

    .line 192
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMediumScale()F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setDoubleTapZoomScale(F)V

    .line 194
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getZoomTransitionDuration()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setZoomTransitionDuration(I)V

    .line 195
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMinScale()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setMinimumScale(F)V

    .line 196
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getMaxScale()F

    move-result v4

    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setMaximumScale(F)V

    .line 197
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    new-instance v4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$1;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;I)V

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    new-instance v4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$2;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$2;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;I)V

    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    new-instance v4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$3;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$3;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;I)V

    invoke-virtual {v5, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    new-instance v4, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$4;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$4;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;I)V

    invoke-virtual {v6, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 241
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableDragClose()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 242
    new-instance p2, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;

    invoke-direct {p2, p0, v6, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$5;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V

    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper;->setOnAlphaChangeListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/FingerDragHelper$onAlphaChangedListener;)V

    .line 265
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {p2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getLoadStrategy()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    move-result-object p2

    .line 273
    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->Default:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p2, v1, :cond_2

    .line 274
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_2
    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysOrigin:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p2, v1, :cond_3

    .line 276
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_3
    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysThumb:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p2, v1, :cond_4

    .line 278
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_4
    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->NetworkAuto:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p2, v1, :cond_6

    .line 280
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/NetworkUtil;->isWiFi(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 281
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_5
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    .line 286
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    .line 287
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->finalLoadUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 290
    invoke-virtual {v7, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {p2, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader;->getGlideCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 294
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 295
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isGifImageWithMime(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 297
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 298
    invoke-direct {p0, p2, v5, v6, v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadGifImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 300
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-direct {p0, p2, v5, v6, v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Landroid/widget/ImageView;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 304
    :cond_8
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$7;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;Landroid/widget/ProgressBar;)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter$6;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;)V

    .line 358
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 365
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadOrigin(Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;)V
    .locals 7

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 105
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;

    .line 107
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->imageGifHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;

    .line 109
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader;->getGlideCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 111
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isGifImageWithMime(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_9

    .line 117
    invoke-virtual {v1, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 121
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getErrorPlaceHolder()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/photoview/PhotoView;->setVisibility(I)V

    :cond_3
    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader;->getGlideCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getBitmapDegree(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getImageBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v1

    .line 139
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    aget v4, v4, v5

    .line 140
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object p1

    aget p1, p1, v3

    .line 141
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isBmpImageWithMime(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tilingDisabled()Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    .line 144
    :cond_4
    invoke-virtual {v1, v4, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->dimensions(II)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    .line 147
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->uri(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    move-result-object v4

    .line 149
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    aget v5, v6, v5

    .line 150
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->getWidthHeight(Ljava/lang/String;)[I

    move-result-object v6

    aget v3, v6, v3

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/ImageUtil;->isBmpImageWithMime(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->tilingDisabled()Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    .line 154
    :cond_6
    invoke-virtual {v4, v5, v3}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;->dimensions(II)Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->setImageSpec(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;)V

    const/4 p1, -0x1

    .line 158
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setOrientation(I)V

    .line 159
    invoke-virtual {v0, v4, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/SubsamplingScaleImageViewDragClose;->setImage(Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;Lcom/alibaba/ailabs/genie/image/viewpager/view/helper/ImageSource;)V

    goto :goto_0

    .line 163
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 166
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->notifyDataSetChanged()V

    :cond_9
    :goto_0
    return-void

    .line 102
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 404
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
