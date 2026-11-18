.class public Lcom/alibaba/ailabs/genie/load/image/GenieGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "GenieGlideModule.java"


# static fields
.field private static final MAX_SIZE_BITMAP_POOL:J = 0x400000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/Glide;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerComponents() called with: context = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], glide = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], registry = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "circus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/module/AppGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    .line 49
    :try_start_0
    invoke-virtual {p3}, Lcom/bumptech/glide/Registry;->getImageHeaderParsers()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :try_start_1
    new-instance v1, Lcom/alibaba/ailabs/genie/load/image/GenieImageHeaderParser;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/load/image/GenieImageHeaderParser;-><init>()V

    invoke-virtual {p3, v1}, Lcom/bumptech/glide/Registry;->register(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v1, Lcom/alibaba/ailabs/genie/load/image/GenieImageHeaderParser;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/load/image/GenieImageHeaderParser;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "Gif"

    const-string v2, "Bitmap"

    const-string v3, "BitmapDrawable"

    .line 60
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/bumptech/glide/Registry;->setResourceDecoderBucketPriorityList(Ljava/util/List;)Lcom/bumptech/glide/Registry;

    .line 64
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    const-wide/32 v3, 0x400000

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    .line 65
    invoke-virtual {p2}, Lcom/bumptech/glide/Glide;->getArrayPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object p2

    .line 67
    new-instance v3, Lcom/alibaba/ailabs/genie/load/image/gif/ByteBufferGifDecoder;

    invoke-direct {v3, v0}, Lcom/alibaba/ailabs/genie/load/image/gif/ByteBufferGifDecoder;-><init>(Ljava/util/List;)V

    .line 68
    new-instance v4, Lcom/alibaba/ailabs/genie/load/image/gif/StreamGifDecoder;

    invoke-direct {v4, v0, p2}, Lcom/alibaba/ailabs/genie/load/image/gif/StreamGifDecoder;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->getInstance()Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v5, v0, p1, v2, p2}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->init(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)V

    .line 73
    const-class p1, Ljava/io/InputStream;

    const-class p2, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    .line 74
    invoke-virtual {p3, v1, p1, p2, v4}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Ljava/nio/ByteBuffer;

    const-class p3, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    .line 80
    invoke-virtual {p1, v1, p2, p3, v3}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Ljava/io/InputStream;

    const-class p3, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    new-instance v0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDecoder;

    invoke-direct {v0, v4}, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 86
    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Ljava/nio/ByteBuffer;

    const-class p3, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    new-instance v0, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDecoder;

    invoke-direct {v0, v3}, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;)V

    .line 92
    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Lcom/alibaba/ailabs/genie/load/image/gif/GenieGifDrawable;

    new-instance p3, Lcom/alibaba/ailabs/genie/load/image/gif/GifDrawableEncoder;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/load/image/gif/GifDrawableEncoder;-><init>()V

    .line 99
    invoke-virtual {p1, p2, p3}, Lcom/bumptech/glide/Registry;->prepend(Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceEncoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Lcom/bumptech/glide/load/model/GlideUrl;

    const-class p3, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/OkHttpUrlLoader$Factory;-><init>()V

    .line 100
    invoke-virtual {p1, p2, p3, v0}, Lcom/bumptech/glide/Registry;->replace(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
