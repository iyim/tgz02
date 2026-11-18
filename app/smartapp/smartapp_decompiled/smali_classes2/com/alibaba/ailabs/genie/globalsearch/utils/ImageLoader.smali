.class public Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field private static sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;


# instance fields
.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private defaultCircleOptions:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

.field private mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

.field private mTopCircleOptions:Lcom/bumptech/glide/request/RequestOptions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " new ImageLoader "

    .line 38
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->d(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;
    .locals 2

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    return-object v0
.end method

.method public static resetData(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x0

    .line 118
    sput-object p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->sInstance:Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public displayCircleImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 88
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->defaultCircleOptions:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public displayCircleImageNoCache(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 80
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->defaultCircleOptions:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public displayCircleImageWithDp(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    .line 96
    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    int-to-float p3, p3

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->ALL:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    invoke-direct {v1, p3, v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;-><init>(FILcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;)V

    .line 97
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p3, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public displayImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public displayImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 69
    invoke-virtual {v1, p3}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 70
    invoke-virtual {p3, v1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p3

    if-eqz v0, :cond_0

    .line 72
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public displayTopCircleImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mTopCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->contextRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->contextRef:Ljava/lang/ref/WeakReference;

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->TOP:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;-><init>(FILcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;)V

    .line 45
    new-instance v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;->ALL:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;

    invoke-direct {v1, p1, v3, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;-><init>(FILcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform$CornerType;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->defaultCircleOptions:Lcom/alibaba/ailabs/genie/globalsearch/utils/GlideRoundTransform;

    .line 46
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_default_white_logo:I

    .line 47
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_default_white_logo:I

    .line 48
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 49
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    .line 50
    new-instance p1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_default_white_logo:I

    .line 51
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/globalsearch/R$drawable;->gs_default_white_logo:I

    .line 52
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 54
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 55
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/ImageLoader;->mTopCircleOptions:Lcom/bumptech/glide/request/RequestOptions;

    :cond_0
    return-void
.end method
