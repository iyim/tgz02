.class public Lcom/alibaba/ailabs/genie/image/GenieImageLoader;
.super Ljava/lang/Object;
.source "GenieImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieImageLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkDiskCacheSize(Landroid/content/Context;)V
    .locals 1

    .line 492
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeUtils;->isOverTimeImageCacheCleared(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "GenieImageLoader"

    const-string v0, "not 12 hours return"

    .line 493
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 496
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$13;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$13;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static clear(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 591
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    return-void
.end method

.method public static clearMemory(Landroid/content/Context;)V
    .locals 0

    .line 488
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public static downloadImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 329
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->checkDiskCacheSize(Landroid/content/Context;)V

    .line 330
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 332
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 333
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/high16 p1, -0x80000000

    .line 334
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 335
    :try_start_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_0

    const-string p1, "GenieImageLoader"

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static downloadImage(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    .line 353
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->checkDiskCacheSize(Landroid/content/Context;)V

    .line 354
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asFile()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 356
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 357
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 358
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 360
    :try_start_0
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    if-eqz p0, :cond_0

    const-string p1, "GenieImageLoader"

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "file path "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 367
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 365
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static downloadImageAll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 409
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->checkDiskCacheSize(Landroid/content/Context;)V

    .line 410
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/DownloadImageTarget;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/image/DownloadImageTarget;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static downloadImageOnly(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 373
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->checkDiskCacheSize(Landroid/content/Context;)V

    .line 374
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 375
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 376
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$10;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$10;-><init>()V

    .line 377
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const/high16 p1, -0x80000000

    .line 394
    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/RequestBuilder;->downloadOnly(II)Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p0

    .line 395
    invoke-interface {p0}, Lcom/bumptech/glide/request/FutureTarget;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 399
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 397
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getDefaultOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 555
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 557
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultOptions(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 562
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 563
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    .line 564
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 566
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawableConfig(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 1

    .line 597
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 598
    nop

    nop

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 599
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method public static getDrawableSize(Landroid/graphics/drawable/Drawable;)J
    .locals 2

    .line 606
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 607
    nop

    nop

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 608
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getSkipMemoryCacheOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 2

    .line 571
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const/4 v1, 0x1

    .line 573
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 575
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getSkipMemoryCacheOptions(II)Lcom/bumptech/glide/request/RequestOptions;
    .locals 1

    .line 580
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 581
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    .line 582
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    const/4 p1, 0x1

    .line 584
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 586
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static loadCircleImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 1

    .line 514
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 515
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->circleCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    .line 518
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    sget-object p4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 520
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    .line 521
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/Integer;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;)V
    .locals 0

    .line 184
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$7;

    invoke-direct {p1, p4, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$7;-><init>(Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;Landroid/widget/ImageView;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 212
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getDefaultOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 80
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$3;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$3;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 96
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 0

    .line 58
    invoke-static {p3, p4}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getDefaultOptions(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    .line 59
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$2;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$2;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IIII)V
    .locals 1

    .line 221
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 222
    invoke-virtual {v0}, Lcom/bumptech/glide/request/RequestOptions;->centerCrop()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 223
    invoke-virtual {v0, p5}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p5

    .line 224
    invoke-virtual {p5, p6}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p5

    .line 225
    invoke-virtual {p5, p3, p4}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    sget-object p4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 226
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    .line 227
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$8;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$8;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 241
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getDefaultOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 121
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$5;

    invoke-direct {p1, p3, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$5;-><init>(Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;Landroid/widget/ImageView;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 148
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;)V
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$4;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$4;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestOptions;Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;)V
    .locals 0

    .line 152
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$6;

    invoke-direct {p1, p4, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$6;-><init>(Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;Landroid/widget/ImageView;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImageSkipMemoryCache(Landroid/content/Context;ILandroid/view/View;)V
    .locals 2

    .line 526
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 528
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 529
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$14;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$14;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static loadImageSkipMemoryCache(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .line 319
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImageSkipMemoryCache(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 0

    .line 256
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 258
    invoke-static {p3, p4}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 259
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadImageSkipMemoryCache(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;IILcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;)V
    .locals 0

    .line 274
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 275
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 276
    invoke-static {p3, p4}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;

    invoke-direct {p1, p5, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$9;-><init>(Lcom/alibaba/ailabs/genie/image/GenieImageLoader$GenieImageLoadListener;Landroid/widget/ImageView;)V

    .line 277
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 304
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static preloadImage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 419
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->checkDiskCacheSize(Landroid/content/Context;)V

    .line 420
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 421
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 422
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$11;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$11;-><init>()V

    .line 423
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 440
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->preload()Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static preloadImage(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    .line 456
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->checkDiskCacheSize(Landroid/content/Context;)V

    .line 457
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    .line 458
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 459
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getSkipMemoryCacheOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p1, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$12;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$12;-><init>()V

    .line 460
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 477
    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/RequestBuilder;->preload(II)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static sendInfo(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setBackground(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 44
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-static {}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;->getDefaultOptions()Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$1;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/ailabs/genie/image/GenieImageLoader$1;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static declared-synchronized tearDown()V
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/genie/image/GenieImageLoader;

    monitor-enter v0

    .line 481
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/Glide;->tearDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
