.class public Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;
.super Ljava/lang/Object;
.source "FrameAnimController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_FPS:I = 0x14

.field private static final MSG_PLAY_NEXT:I = 0x0

.field private static final MSG_STOP:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentFrame:I

.field private fps:I

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

.field private lastShow:J

.field private loadCallback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

.field private final lock:Ljava/lang/Object;

.field private loop:Z

.field private lostFrame:I

.field private mListener:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;

.field private matrix:Landroid/graphics/Matrix;

.field private next:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private path:[Ljava/lang/String;

.field private playDuration:I

.field private playPath:[Ljava/lang/String;

.field private stop:Z

.field private textureView:Landroid/view/TextureView;

.field private final tgBitmap:Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/TextureView;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FrameAnimController"

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->playDuration:I

    const/16 v1, 0x14

    .line 28
    iput v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->fps:I

    .line 30
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->tgBitmap:Lcom/alibaba/ailabs/genie/genieui/widget/TgBitmap;

    .line 31
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->currentFrame:I

    .line 33
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->lostFrame:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->lock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->stop:Z

    .line 41
    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$1;-><init>(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->loadCallback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

    .line 65
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->matrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->paint:Landroid/graphics/Paint;

    .line 171
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->path:[Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->textureView:Landroid/view/TextureView;

    .line 74
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "render"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 76
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->uiHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;-><init>(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    .line 156
    new-instance p1, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->loadCallback:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;-><init>(Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader$LoadCallback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    .line 157
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->IMAGE_LOADER_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->stop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->mListener:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Matrix;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Paint;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->loadImage(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->loop:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)[Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->playPath:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->next:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->next:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->playDuration:I

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Landroid/view/TextureView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->lastShow:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->lostFrame:I

    return p1
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->currentFrame:I

    return p0
.end method

.method static synthetic access$904(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)I
    .locals 1

    .line 19
    iget v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->currentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->currentFrame:I

    return v0
.end method

.method private getImagePath(I)Ljava/lang/String;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->playPath:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->loop:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->playPath:[Ljava/lang/String;

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private loadImage(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->path:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->getImagePath(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 177
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->path:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->load([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isStop()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->stop:Z

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pause()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 211
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setAnimation([Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 186
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->loop:Z

    .line 191
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->playPath:[Ljava/lang/String;

    .line 192
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->imageLoader:Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieui/widget/ImageLoader;->clean()V

    const/4 p1, 0x0

    .line 193
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->loadImage(I)V

    return-void

    .line 187
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "setAnimation: animation is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAnimationListener(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->mListener:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;

    return-void
.end method

.method public setFps(I)V
    .locals 1

    .line 181
    iput p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->fps:I

    const/16 v0, 0x3e8

    .line 182
    div-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->playDuration:I

    return-void
.end method

.method public setTAG(Ljava/lang/String;)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->stop:Z

    .line 199
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->currentFrame:I

    .line 201
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->mListener:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;->onAnimationPlayStart()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 223
    iput v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->currentFrame:I

    const/4 v1, 0x0

    .line 224
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->next:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 225
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->stop:Z

    .line 226
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
