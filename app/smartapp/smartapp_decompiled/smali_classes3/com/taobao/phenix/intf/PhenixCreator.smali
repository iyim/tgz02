.class public Lcom/taobao/phenix/intf/PhenixCreator;
.super Lcom/taobao/phenix/intf/AbsPhenixCreator;
.source "PhenixCreator.java"


# static fields
.field private static gScreenSize:[I


# instance fields
.field private mCancelListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/PhenixEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorResId:I

.field private mFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

.field private mIntoImageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMemMissListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlaceholderResId:I

.field private mProgressListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/ProgressPhenixEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryHandlerOnFailure:Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;

.field private mSuccessListener:Lcom/taobao/phenix/intf/event/IPhenixListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/taobao/phenix/strategy/ModuleStrategy;Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/taobao/phenix/intf/AbsPhenixCreator;-><init>()V

    .line 54
    new-instance v0, Lcom/taobao/phenix/request/ImageRequest;

    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/phenix/intf/Phenix;->isGenericTypeCheckEnabled()Z

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lcom/taobao/phenix/request/ImageRequest;-><init>(Ljava/lang/String;Lcom/taobao/phenix/cache/CacheKeyInspector;Z)V

    iput-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    if-eqz p1, :cond_0

    .line 56
    iget-object p2, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    iget-object p3, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/taobao/phenix/request/ImageRequest;->setModuleName(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    iget p3, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->schedulePriority:I

    invoke-virtual {p2, p3}, Lcom/taobao/phenix/request/ImageRequest;->setSchedulePriority(I)V

    .line 58
    iget-object p2, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    iget p3, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->memoryCachePriority:I

    invoke-virtual {p2, p3}, Lcom/taobao/phenix/request/ImageRequest;->setMemoryCachePriority(I)V

    .line 59
    iget-object p2, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    iget p3, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->diskCachePriority:I

    invoke-virtual {p2, p3}, Lcom/taobao/phenix/request/ImageRequest;->setDiskCachePriority(I)V

    .line 60
    iget-boolean p2, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->preloadWithSmall:Z

    invoke-virtual {p0, p2}, Lcom/taobao/phenix/intf/PhenixCreator;->preloadWithSmall(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    .line 61
    iget-boolean p1, p1, Lcom/taobao/phenix/strategy/ModuleStrategy;->scaleFromLarge:Z

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->scaleFromLarge(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/phenix/intf/Phenix;->isPreloadWithLowImage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->preloadWithSmall(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    .line 64
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/phenix/intf/Phenix;->isScaleWithLargeImage()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->scaleFromLarge(Z)Lcom/taobao/phenix/intf/PhenixCreator;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/phenix/intf/PhenixCreator;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mIntoImageRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/phenix/intf/PhenixCreator;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mPlaceholderResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/phenix/intf/PhenixCreator;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/phenix/intf/PhenixCreator;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mErrorResId:I

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/phenix/intf/PhenixCreator;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private fetchInto(Landroid/widget/ImageView;)Lcom/taobao/phenix/intf/PhenixTicket;
    .locals 1

    .line 371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mIntoImageRef:Ljava/lang/ref/WeakReference;

    .line 372
    new-instance p1, Lcom/taobao/phenix/intf/PhenixCreator$3;

    invoke-direct {p1, p0}, Lcom/taobao/phenix/intf/PhenixCreator$3;-><init>(Lcom/taobao/phenix/intf/PhenixCreator;)V

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    new-instance v0, Lcom/taobao/phenix/intf/PhenixCreator$2;

    invoke-direct {v0, p0}, Lcom/taobao/phenix/intf/PhenixCreator$2;-><init>(Lcom/taobao/phenix/intf/PhenixCreator;)V

    .line 385
    invoke-virtual {p1, v0}, Lcom/taobao/phenix/intf/PhenixCreator;->memCacheMissListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    new-instance v0, Lcom/taobao/phenix/intf/PhenixCreator$1;

    invoke-direct {v0, p0}, Lcom/taobao/phenix/intf/PhenixCreator$1;-><init>(Lcom/taobao/phenix/intf/PhenixCreator;)V

    .line 399
    invoke-virtual {p1, v0}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    .line 410
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    return-object p1
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 3

    .line 147
    sget-object v0, Lcom/taobao/phenix/intf/PhenixCreator;->gScreenSize:[I

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    .line 149
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, v0, v1

    sput-object v0, Lcom/taobao/phenix/intf/PhenixCreator;->gScreenSize:[I

    .line 151
    :cond_0
    sget-object p0, Lcom/taobao/phenix/intf/PhenixCreator;->gScreenSize:[I

    return-object p0
.end method


# virtual methods
.method public addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/phenix/request/ImageRequest;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public asThumbnail(IZ)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/phenix/request/ImageRequest;->asThumbnail(IZ)V

    :cond_1
    return-object p0
.end method

.method public varargs bitmapProcessors([Lcom/taobao/phenix/bitmap/BitmapProcessor;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    if-eqz p1, :cond_0

    .line 217
    array-length v0, p1

    if-lez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setBitmapProcessors([Lcom/taobao/phenix/bitmap/BitmapProcessor;)V

    :cond_0
    return-object p0
.end method

.method public cancelListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/PhenixEvent;",
            ">;)",
            "Lcom/taobao/phenix/intf/PhenixCreator;"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mCancelListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method

.method public diskCachePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setDiskCachePriority(I)V

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->error(I)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 120
    iput p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mErrorResId:I

    return-object p0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 133
    iget v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mErrorResId:I

    if-nez v0, :cond_0

    .line 136
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error image may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
            ">;)",
            "Lcom/taobao/phenix/intf/PhenixCreator;"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method

.method public fetch()Lcom/taobao/phenix/intf/PhenixTicket;
    .locals 10

    .line 418
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getPhenixTicket()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v1}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    if-eqz v1, :cond_0

    .line 422
    new-instance v2, Lcom/taobao/phenix/intf/event/FailPhenixEvent;

    invoke-direct {v2, v0}, Lcom/taobao/phenix/intf/event/FailPhenixEvent;-><init>(Lcom/taobao/phenix/intf/PhenixTicket;)V

    invoke-interface {v1, v2}, Lcom/taobao/phenix/intf/event/IPhenixListener;->onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z

    :cond_0
    return-object v0

    .line 427
    :cond_1
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/phenix/intf/Phenix;->getProducerSupplier()Lcom/taobao/phenix/chain/NormalChainProducerSupplier;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->get()Lcom/taobao/rxm/produce/Producer;

    move-result-object v2

    .line 429
    invoke-virtual {v1}, Lcom/taobao/phenix/chain/NormalChainProducerSupplier;->getSchedulerSupplierUsedInProducer()Lcom/taobao/rxm/schedule/SchedulerSupplier;

    move-result-object v1

    .line 430
    new-instance v9, Lcom/taobao/phenix/chain/PhenixLastConsumer;

    iget-object v4, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    .line 434
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/phenix/intf/Phenix;->getImageFlowMonitor()Lcom/taobao/phenix/request/ImageFlowMonitor;

    move-result-object v6

    .line 436
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/phenix/intf/Phenix;->getImageDecodingListener()Lcom/taobao/phenix/chain/ImageDecodingListener;

    move-result-object v8

    move-object v3, v9

    move-object v5, p0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/taobao/phenix/chain/PhenixLastConsumer;-><init>(Lcom/taobao/phenix/request/ImageRequest;Lcom/taobao/phenix/intf/PhenixCreator;Lcom/taobao/phenix/request/ImageFlowMonitor;Lcom/taobao/rxm/schedule/SchedulerSupplier;Lcom/taobao/phenix/chain/ImageDecodingListener;)V

    .line 437
    invoke-interface {v1}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forUiThread()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/taobao/phenix/chain/PhenixLastConsumer;->consumeOn(Lcom/taobao/rxm/schedule/Scheduler;)Lcom/taobao/rxm/consume/Consumer;

    move-result-object v1

    .line 430
    invoke-interface {v2, v1}, Lcom/taobao/rxm/produce/Producer;->produceResults(Lcom/taobao/rxm/consume/Consumer;)V

    return-object v0
.end method

.method public forceAnimationToBeStatic(Z)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->forceAnimationStatic(Z)V

    return-object p0
.end method

.method public getCancelListener()Lcom/taobao/phenix/intf/event/IPhenixListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/PhenixEvent;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mCancelListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object v0
.end method

.method public getFailureListener()Lcom/taobao/phenix/intf/event/IPhenixListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
            ">;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object v0
.end method

.method public getMemCacheMissListener()Lcom/taobao/phenix/intf/event/IPhenixListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mMemMissListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object v0
.end method

.method public getProgressListener()Lcom/taobao/phenix/intf/event/IPhenixListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/ProgressPhenixEvent;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mProgressListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object v0
.end method

.method public getRetryHandlerOnFailure()Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mRetryHandlerOnFailure:Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;

    return-object v0
.end method

.method public getSuccessListener()Lcom/taobao/phenix/intf/event/IPhenixListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
            ">;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mSuccessListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object v0
.end method

.method public id()I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/taobao/phenix/intf/PhenixTicket;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 323
    invoke-virtual {p0, p1, v0}, Lcom/taobao/phenix/intf/PhenixCreator;->into(Landroid/widget/ImageView;F)Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;F)Lcom/taobao/phenix/intf/PhenixTicket;
    .locals 2

    .line 327
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->limitSize(Landroid/view/View;)Lcom/taobao/phenix/intf/PhenixCreator;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getMaxViewWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewWidth(I)V

    .line 330
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getMaxViewHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {v0, p2}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewHeight(I)V

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->fetchInto(Landroid/widget/ImageView;)Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    return-object p1
.end method

.method public into(Landroid/widget/ImageView;II)Lcom/taobao/phenix/intf/PhenixTicket;
    .locals 0

    .line 336
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/phenix/intf/PhenixCreator;->limitSize(Landroid/view/View;II)Lcom/taobao/phenix/intf/PhenixCreator;

    .line 337
    invoke-direct {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->fetchInto(Landroid/widget/ImageView;)Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p1

    return-object p1
.end method

.method public limitSize(Landroid/view/View;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 3

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 345
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/taobao/phenix/intf/PhenixCreator;->limitSize(Landroid/view/View;II)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    return-object p1
.end method

.method public limitSize(Landroid/view/View;II)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 4

    if-eqz p1, :cond_3

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 352
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    if-lez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v3}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewWidth(I)V

    goto :goto_0

    .line 354
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_1

    .line 355
    iget-object v1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewWidth(I)V

    .line 357
    :cond_1
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_2

    .line 358
    iget-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewHeight(I)V

    goto :goto_1

    .line 359
    :cond_2
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_3

    .line 360
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewHeight(I)V

    .line 365
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getMaxViewWidth()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p1, p2}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewWidth(I)V

    .line 366
    :cond_4
    iget-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getMaxViewHeight()I

    move-result p1

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {p1, p3}, Lcom/taobao/phenix/request/ImageRequest;->setMaxViewHeight(I)V

    :cond_5
    return-object p0
.end method

.method public memCacheMissListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;",
            ">;)",
            "Lcom/taobao/phenix/intf/PhenixCreator;"
        }
    .end annotation

    .line 295
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mMemMissListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method

.method public memOnly(Z)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->memoryOnly(Z)V

    return-object p0
.end method

.method public memoryCachePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setMemoryCachePriority(I)V

    return-object p0
.end method

.method public notSharedDrawable(Z)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic onlyCache()Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/taobao/phenix/intf/PhenixCreator;->onlyCache()Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v0

    return-object v0
.end method

.method public onlyCache()Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/phenix/request/ImageRequest;->onlyCache(Z)V

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->placeholder(I)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/AbsPhenixCreator;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 89
    iput p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mPlaceholderResId:I

    return-object p0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 100
    iget v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mPlaceholderResId:I

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public preloadWithSmall(Z)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/taobao/phenix/request/ImageRequest;->allowSizeLevel(ZI)V

    return-object p0
.end method

.method public progressListener(ILcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/ProgressPhenixEvent;",
            ">;)",
            "Lcom/taobao/phenix/intf/PhenixCreator;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setProgressUpdateStep(I)V

    .line 313
    iput-object p2, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mProgressListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method

.method public releasableDrawable(Z)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->releasableDrawableSpecified(Z)V

    return-object p0
.end method

.method public retryHandler(Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mRetryHandlerOnFailure:Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;

    return-object p0
.end method

.method public scaleFromLarge(Z)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/taobao/phenix/request/ImageRequest;->allowSizeLevel(ZI)V

    return-object p0
.end method

.method public schedulePriority(I)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setSchedulePriority(I)V

    return-object p0
.end method

.method public secondary(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/request/ImageRequest;->setSecondaryPath(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setCacheKey4PlaceHolder(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->secondary(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    return-object p0
.end method

.method public setImageStrategyInfo(Ljava/lang/Object;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle_biz_code"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/phenix/intf/PhenixCreator;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    :cond_0
    return-object p0
.end method

.method public skipCache()Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->skipCache()V

    return-object p0
.end method

.method public succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/phenix/intf/event/IPhenixListener<",
            "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
            ">;)",
            "Lcom/taobao/phenix/intf/PhenixCreator;"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mSuccessListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator;->mImageRequest:Lcom/taobao/phenix/request/ImageRequest;

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageRequest;->getImageUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
