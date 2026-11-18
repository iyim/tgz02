.class public Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ImagePreviewActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "ImagePreview"


# instance fields
.field private btn_show_origin:Landroid/widget/Button;

.field private closeButtonStatus:Z

.field private context:Landroid/content/Context;

.field private currentItem:I

.field private currentItemOriginPathUrl:Ljava/lang/String;

.field private downloadButtonStatus:Z

.field private fm_center_progress_container:Landroid/widget/FrameLayout;

.field private fm_image_show_origin_container:Landroid/widget/FrameLayout;

.field private handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

.field private imageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private imagePreviewAdapter:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

.field private imgCloseButton:Landroid/widget/ImageView;

.field private img_download:Landroid/widget/ImageView;

.field private indicatorStatus:Z

.field private isShowCloseButton:Z

.field private isShowDownButton:Z

.field private isShowIndicator:Z

.field private isShowOriginButton:Z

.field private isUserCustomProgressView:Z

.field private lastProgress:I

.field private originalStatus:Z

.field private progressParentLayout:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private tv_indicator:Landroid/widget/TextView;

.field private viewPager:Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    .line 73
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->indicatorStatus:Z

    .line 75
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->originalStatus:Z

    .line 77
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->downloadButtonStatus:Z

    .line 79
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->closeButtonStatus:Z

    const-string v1, ""

    .line 81
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItemOriginPathUrl:Ljava/lang/String;

    .line 83
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->lastProgress:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItemOriginPathUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItemOriginPathUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowOriginButton:Z

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowOriginButton:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->checkCache(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->gone()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_center_progress_container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->lastProgress:I

    return p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->lastProgress:I

    return p1
.end method

.method public static activityStart(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 90
    const-class v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    check-cast p0, Landroid/app/Activity;

    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$anim;->fade_in:I

    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private checkCache(Ljava/lang/String;)Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/ImageLoader;->getGlideCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->gone()V

    const/4 p1, 0x1

    return p1

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->visible()V

    const/4 p1, 0x0

    return p1
.end method

.method private downloadCurrentImg()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItemOriginPathUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/image/DownloadPictureUtil;->downloadPicture(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getRealIndexWithPath(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private gone()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->sendEmptyMessage(I)Z

    return-void
.end method

.method private loadOriginImage(Ljava/lang/String;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->downloadOnly()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$2;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 461
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$3;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->addListener(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;)V

    return-void
.end method

.method private visible()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public convertPercentToBlackAlphaColor(F)I
    .locals 3

    const/4 v0, 0x0

    .line 278
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "000000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public finish()V
    .locals 2

    .line 273
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 274
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$anim;->fade_in:I

    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "url"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 312
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->visible()V

    .line 314
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->gone()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->btn_show_origin:Landroid/widget/Button;

    const-string v3, "0 %"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :goto_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->checkCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 322
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 323
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iput v2, v0, Landroid/os/Message;->what:I

    .line 325
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->sendMessage(Landroid/os/Message;)Z

    return v2

    .line 329
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->loadOriginImage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 330
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v0, v2, :cond_5

    .line 331
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 332
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->gone()V

    .line 334
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->getRealIndexWithPath(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_9

    .line 335
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    if-eqz p1, :cond_4

    .line 336
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_center_progress_container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 337
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getOnOriginProgressListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 338
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->progressParentLayout:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 339
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getOnOriginProgressListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->progressParentLayout:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;->finish(Landroid/view/View;)V

    .line 341
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imagePreviewAdapter:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadOrigin(Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;)V

    goto/16 :goto_1

    .line 343
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imagePreviewAdapter:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->loadOrigin(Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;)V

    goto/16 :goto_1

    .line 346
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v4, :cond_7

    .line 347
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 348
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "progress"

    .line 349
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 350
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->getRealIndexWithPath(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_9

    .line 351
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    if-eqz v0, :cond_6

    .line 352
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->gone()V

    .line 353
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_center_progress_container:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 354
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getOnOriginProgressListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->progressParentLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 356
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getOnOriginProgressListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->progressParentLayout:Landroid/view/View;

    .line 358
    invoke-interface {v0, v1, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;->progress(Landroid/view/View;I)V

    goto :goto_1

    .line 361
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->visible()V

    .line 362
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->btn_show_origin:Landroid/widget/Button;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "%s %%"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 365
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 366
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->btn_show_origin:Landroid/widget/Button;

    const-string v0, "\u67e5\u770b\u539f\u56fe"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_image_show_origin_container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 368
    iput-boolean v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->originalStatus:Z

    goto :goto_1

    .line 369
    :cond_8
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 370
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_image_show_origin_container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 371
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->originalStatus:Z

    :cond_9
    :goto_1
    return v2
.end method

.method public onBackPressed()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 399
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->img_download:I

    if-ne p1, v0, :cond_2

    .line 400
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 402
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 405
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    const-string v1, "\u60a8\u62d2\u7edd\u4e86\u5b58\u50a8\u6743\u9650\uff0c\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->_short(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->downloadCurrentImg()V

    goto :goto_0

    .line 415
    :cond_2
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->btn_show_origin:I

    if-ne p1, v0, :cond_3

    .line 416
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 417
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->imgCloseButton:I

    if-ne p1, v0, :cond_4

    .line 418
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->onBackPressed()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 97
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$layout;->sh_layout_preview:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->setContentView(I)V

    .line 100
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v0, 0x4000000

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 103
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    .line 104
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 106
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 107
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 111
    :cond_1
    :goto_0
    iput-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    .line 112
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->handlerHolder:Lcom/alibaba/ailabs/genie/image/viewpager/tool/common/HandlerUtils$HandlerHolder;

    .line 114
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getImageInfoList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    .line 115
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 119
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowDownButton()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowDownButton:Z

    .line 121
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowCloseButton()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowCloseButton:Z

    .line 122
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowIndicator()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowIndicator:Z

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItemOriginPathUrl:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowOriginButton(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowOriginButton:Z

    .line 127
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowOriginButton:Z

    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItemOriginPathUrl:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->checkCache(Ljava/lang/String;)Z

    .line 132
    :cond_3
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->rootView:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->rootView:Landroid/view/View;

    .line 133
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->viewPager:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->viewPager:Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;

    .line 134
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->tv_indicator:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    .line 136
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->fm_image_show_origin_container:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_image_show_origin_container:Landroid/widget/FrameLayout;

    .line 137
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->fm_center_progress_container:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_center_progress_container:Landroid/widget/FrameLayout;

    .line 139
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_image_show_origin_container:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_center_progress_container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 142
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getProgressLayoutId()I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v2, :cond_5

    .line 146
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getProgressLayoutId()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {p1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->progressParentLayout:Landroid/view/View;

    .line 147
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->progressParentLayout:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 148
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_center_progress_container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 149
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_center_progress_container:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->progressParentLayout:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 150
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    goto :goto_1

    .line 153
    :cond_4
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    goto :goto_1

    .line 157
    :cond_5
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isUserCustomProgressView:Z

    .line 160
    :goto_1
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->btn_show_origin:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->btn_show_origin:Landroid/widget/Button;

    .line 161
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->img_download:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->img_download:Landroid/widget/ImageView;

    .line 162
    sget p1, Lcom/alibaba/ailabs/genie/image/viewpager/R$id;->imgCloseButton:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imgCloseButton:Landroid/widget/ImageView;

    .line 164
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->img_download:Landroid/widget/ImageView;

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getDownIconResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imgCloseButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getCloseIconResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->btn_show_origin:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->img_download:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowIndicator:Z

    if-nez p1, :cond_6

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->indicatorStatus:Z

    goto :goto_2

    .line 178
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_7

    .line 179
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->indicatorStatus:Z

    goto :goto_2

    .line 182
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->indicatorStatus:Z

    .line 187
    :goto_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowDownButton:Z

    if-eqz p1, :cond_8

    .line 188
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->img_download:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->downloadButtonStatus:Z

    goto :goto_3

    .line 191
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->img_download:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->downloadButtonStatus:Z

    .line 195
    :goto_3
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->isShowCloseButton:Z

    if-eqz p1, :cond_9

    .line 196
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->closeButtonStatus:Z

    goto :goto_4

    .line 199
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->closeButtonStatus:Z

    .line 204
    :goto_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$string;->indicator:I

    .line 205
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance p1, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imageInfoList:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imagePreviewAdapter:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    .line 208
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->viewPager:Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imagePreviewAdapter:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 209
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->viewPager:Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;

    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->currentItem:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;->setCurrentItem(I)V

    .line 210
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->viewPager:Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;

    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/HackyViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void

    .line 116
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 438
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 439
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->reset()V

    .line 440
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imagePreviewAdapter:Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewAdapter;->closePage()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 426
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 427
    aget v0, p3, p1

    if-nez v0, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->downloadCurrentImg()V

    goto :goto_1

    .line 430
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->context:Landroid/content/Context;

    const-string v2, "\u60a8\u62d2\u7edd\u4e86\u5b58\u50a8\u6743\u9650\uff0c\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/tool/ui/ToastUtil;->_short(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 286
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->convertPercentToBlackAlphaColor(F)I

    move-result v0

    .line 287
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    .line 289
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->indicatorStatus:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :cond_0
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->originalStatus:Z

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_image_show_origin_container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 295
    :cond_1
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->downloadButtonStatus:Z

    if-eqz p1, :cond_2

    .line 296
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->img_download:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->closeButtonStatus:Z

    if-eqz p1, :cond_4

    .line 299
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->tv_indicator:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->fm_image_show_origin_container:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->img_download:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->imgCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
