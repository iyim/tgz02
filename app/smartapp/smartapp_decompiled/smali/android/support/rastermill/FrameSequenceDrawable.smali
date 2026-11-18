.class public Landroid/support/rastermill/FrameSequenceDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FrameSequenceDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/FrameSequenceDrawable$FrameState;,
        Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;,
        Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;,
        Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY_MS:J = 0x64L

.field public static final LOOP_DEFAULT:I = 0x3

.field public static final LOOP_FINITE:I = 0x1

.field public static final LOOP_INF:I = 0x2

.field public static final LOOP_ONCE:I = 0x1

.field private static final MIN_DELAY_MS:J = 0x14L

.field private static final SCHEDULE_DELAY_MS:J = 0x96L

.field private static final STATE_DECODING:I = 0x2

.field private static final STATE_READY_TO_SWAP:I = 0x4

.field private static final STATE_SCHEDULED:I = 0x1

.field private static final STATE_WAITING_TO_SWAP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FrameSequenceDrawable"

.field private static sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field private static sDecodingThread:Landroid/os/HandlerThread;

.field private static sDecodingThreadHandler:Landroid/os/Handler;

.field private static sLazyDecodeThread:Landroid/os/HandlerThread;

.field private static sLazyDecodeThreadHandler:Landroid/os/Handler;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBackBitmap:Landroid/graphics/Bitmap;

.field private mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

.field private mCircleMaskEnabled:Z

.field private mCurrentLoop:I

.field private mDecodeRunnable:Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;

.field private mDestroyed:Z

.field private mFinishedCallbackRunnable:Ljava/lang/Runnable;

.field private mFirstFrame:Landroid/graphics/Bitmap;

.field private mFrameSequence:Landroid/support/rastermill/FrameSequence;

.field private mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

.field private mFrameState:Landroid/support/rastermill/FrameSequenceDrawable$FrameState;

.field private mFrontBitmap:Landroid/graphics/Bitmap;

.field private mLastSwap:J

.field private final mLock:Ljava/lang/Object;

.field private mLoopBehavior:I

.field private mLoopCount:I

.field private mNextFrameToDecode:I

.field private mNextSwap:J

.field private mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mState:I

.field private mTempRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable$1;

    invoke-direct {v0}, Landroid/support/rastermill/FrameSequenceDrawable$1;-><init>()V

    sput-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;)V
    .locals 1

    .line 307
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sAllocatingBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-direct {p0, p1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;-><init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
    .locals 7

    .line 310
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    const/4 v1, 0x1

    .line 200
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    .line 201
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    .line 208
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    .line 210
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    new-instance v2, Landroid/support/rastermill/FrameSequenceDrawable$2;

    invoke-direct {v2, p0}, Landroid/support/rastermill/FrameSequenceDrawable$2;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;)V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFinishedCallbackRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 313
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    .line 315
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->isLazy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->active()V

    .line 320
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getRawBufferData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 321
    invoke-static {}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->getInstance()Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getRawByteData()[B

    move-result-object v3

    .line 322
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getWidth()I

    move-result v4

    .line 323
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getOptions()Lcom/bumptech/glide/load/Options;

    move-result-object v6

    .line 321
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alibaba/ailabs/genie/load/image/common/GenieDownsampler;->decode([BIILcom/bumptech/glide/load/Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    .line 327
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 330
    :cond_0
    invoke-static {}, Landroid/support/rastermill/FrameSequenceDrawable;->initializeLazyDecodingThread()V

    .line 331
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sLazyDecodeThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/rastermill/FrameSequenceDrawable$3;

    invoke-direct {v2, p0, p1, v1, p2}, Landroid/support/rastermill/FrameSequenceDrawable$3;-><init>(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/support/rastermill/FrameSequence;Ljava/nio/ByteBuffer;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 340
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result v3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 342
    invoke-direct {p0, p1, p2}, Landroid/support/rastermill/FrameSequenceDrawable;->initFrameSequence(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    :goto_0
    return-void

    .line 311
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Landroid/support/rastermill/FrameSequenceDrawable;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/support/rastermill/FrameSequenceDrawable;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$1000(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/rastermill/FrameSequenceDrawable;->initFrameSequence(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Landroid/support/rastermill/FrameSequenceDrawable;)I
    .locals 0

    .line 47
    iget p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    return p0
.end method

.method static synthetic access$202(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0

    .line 47
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    return p1
.end method

.method static synthetic access$300(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 47
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Landroid/support/rastermill/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 47
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/rastermill/FrameSequenceDrawable;)I
    .locals 0

    .line 47
    iget p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    return p0
.end method

.method static synthetic access$402(Landroid/support/rastermill/FrameSequenceDrawable;I)I
    .locals 0

    .line 47
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequence$State;
    .locals 0

    .line 47
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/rastermill/FrameSequenceDrawable;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    return-wide v0
.end method

.method static synthetic access$602(Landroid/support/rastermill/FrameSequenceDrawable;J)J
    .locals 0

    .line 47
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/support/rastermill/FrameSequenceDrawable;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;
    .locals 0

    .line 47
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    return-object p0
.end method

.method static synthetic access$900(Landroid/support/rastermill/FrameSequenceDrawable;)Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;
    .locals 0

    .line 47
    iget-object p0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    return-object p0
.end method

.method private static acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 303
    invoke-interface {p0, p1, p2}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->acquireBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private checkDestroyedLocked()V
    .locals 2

    .line 417
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform operation on recycled drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDecodeRunnable()Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;
    .locals 2

    .line 759
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodeRunnable:Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodeRunnable:Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;

    .line 763
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDecodeRunnable:Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;

    return-object v0
.end method

.method private hasFirstFrame()Z
    .locals 1

    .line 755
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initFrameSequence(Landroid/support/rastermill/FrameSequence;Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 351
    :cond_0
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    .line 352
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->createState()Landroid/support/rastermill/FrameSequence$State;

    move-result-object v0

    iput-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    .line 354
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getWidth()I

    move-result v0

    .line 355
    invoke-virtual {p1}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result p1

    .line 357
    iput-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    .line 358
    invoke-static {p2, v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 359
    invoke-static {p2, v0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->acquireAndValidateBitmap(Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    const-wide/16 p1, 0x0

    .line 368
    iput-wide p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    const/4 p1, -0x1

    .line 370
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    .line 371
    iget-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1, p1}, Landroid/support/rastermill/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    .line 373
    iget-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    invoke-static {}, Landroid/support/rastermill/FrameSequenceDrawable;->initializeDecodingThread()V

    .line 377
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 378
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 379
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    :cond_1
    return-void
.end method

.method private static initializeDecodingThread()V
    .locals 4

    .line 70
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FrameSequence decoding thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    .line 74
    sget-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Landroid/support/rastermill/FrameSequenceDrawable;->sDecodingThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sDecodingThreadHandler:Landroid/os/Handler;

    .line 77
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initializeLazyDecodingThread()V
    .locals 4

    .line 81
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sLazyDecodeThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FrameSequence lazy decode thread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sLazyDecodeThread:Landroid/os/HandlerThread;

    .line 85
    sget-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sLazyDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Landroid/support/rastermill/FrameSequenceDrawable;->sLazyDecodeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/support/rastermill/FrameSequenceDrawable;->sLazyDecodeThreadHandler:Landroid/os/Handler;

    .line 88
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private performDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 545
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;->performDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private performDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 549
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 551
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 552
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 553
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 554
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    int-to-float v1, v1

    div-float/2addr v4, v1

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 559
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 560
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 562
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float v2, p2, v2

    div-float/2addr p2, v4

    .line 567
    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    sub-float v4, v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float v6, v1, p2

    div-float/2addr v6, v5

    add-float/2addr v0, v2

    div-float/2addr v0, v5

    add-float/2addr v1, p2

    div-float/2addr v1, v5

    invoke-virtual {v3, v4, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 573
    iget-object p2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mTempRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 574
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 577
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private scheduleDecodeLocked()V
    .locals 2

    .line 582
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 584
    iput v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 585
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    .line 588
    sget-object v0, Landroid/support/rastermill/FrameSequenceDrawable;->sDecodingThreadHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->getDecodeRunnable()Landroid/support/rastermill/FrameSequenceDrawable$DecodeRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    const-string v0, "FrameSequenceDrawable"

    const-string v1, "destroy() called"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->hasFirstFrame()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 449
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 456
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 465
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 466
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 468
    iget v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 469
    iget-object v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 470
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    move-object v1, v3

    :cond_2
    const/4 v3, 0x1

    .line 473
    iput-boolean v3, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    .line 474
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v2}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_3

    .line 479
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBitmapProvider:Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;

    invoke-interface {v0, v1}, Landroid/support/rastermill/FrameSequenceDrawable$BitmapProvider;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    :cond_3
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequenceState:Landroid/support/rastermill/FrameSequence$State;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence$State;->destroy()V

    return-void

    :catchall_0
    move-exception v1

    .line 474
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 457
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BitmapProvider must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 488
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->hasFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Landroid/support/rastermill/FrameSequenceDrawable;->performDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    .line 495
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " draw() called with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "circus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 501
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    .line 504
    iget-wide v6, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextSwap:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v1, v6, v3

    if-gtz v1, :cond_2

    .line 505
    iput v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 509
    :cond_2
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    if-ne v1, v2, :cond_7

    .line 512
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 513
    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mBackBitmap:Landroid/graphics/Bitmap;

    .line 514
    iput-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrontBitmap:Landroid/graphics/Bitmap;

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    const-string v1, "circus"

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "draw() called with: mLastSwap = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLastSwap:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v2}, Landroid/support/rastermill/FrameSequence;->getFrameCount()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_5

    .line 526
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    add-int/2addr v1, v6

    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    .line 527
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    if-ne v1, v6, :cond_3

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    iget v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    if-eq v1, v2, :cond_4

    :cond_3
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    if-ne v1, v5, :cond_5

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    iget-object v2, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    .line 528
    invoke-virtual {v2}, Landroid/support/rastermill/FrameSequence;->getDefaultLoopCount()I

    move-result v2

    if-ne v1, v2, :cond_5

    :cond_4
    const/4 v6, 0x0

    :cond_5
    if-eqz v6, :cond_6

    .line 534
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleDecodeLocked()V

    goto :goto_0

    .line 536
    :cond_6
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFinishedCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v3, v4}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 539
    :cond_7
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    invoke-direct {p0, p1}, Landroid/support/rastermill/FrameSequenceDrawable;->performDraw(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception p1

    .line 539
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 431
    :try_start_0
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 432
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 434
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    :catch_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 744
    :try_start_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getRawBufferData()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCircleMaskEnabled()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 751
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 717
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->hasFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    .line 721
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 708
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->hasFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .line 726
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 730
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    :goto_0
    return v1
.end method

.method public getSize()I
    .locals 2

    .line 682
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->hasFirstFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0

    .line 686
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v0}, Landroid/support/rastermill/FrameSequence;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mFrameSequence:Landroid/support/rastermill/FrameSequence;

    invoke-virtual {v1}, Landroid/support/rastermill/FrameSequence;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " invalidateSelf() called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "circus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isDestroyed()Z
    .locals 2

    .line 423
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-boolean v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 425
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 3

    .line 640
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mDestroyed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 642
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    const-string v0, "FrameSequenceDrawable"

    const-string v1, "invalidateSelf run() called"

    .line 593
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    .line 599
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 602
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const-string v0, "FrameSequenceDrawable"

    const-string v1, "invalidateSelf run() called. invalidateSelf"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->invalidateSelf()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 602
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " scheduleSelf() called with: when = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "circus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setCircleMaskEnabled(Z)V
    .locals 1

    .line 390
    iget-boolean v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    if-eq v0, p1, :cond_0

    .line 391
    iput-boolean p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCircleMaskEnabled:Z

    .line 393
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 394
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 703
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 693
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method public setLoopBehavior(I)V
    .locals 0

    .line 162
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopBehavior:I

    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    .line 169
    iput p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLoopCount:I

    return-void
.end method

.method public setOnFinishedListener(Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mOnFinishedListener:Landroid/support/rastermill/FrameSequenceDrawable$OnFinishedListener;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 3

    .line 656
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setVisible() called with: visible = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], restart = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "circus"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->hasInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 665
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 666
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-nez p1, :cond_2

    .line 672
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-eqz v0, :cond_4

    .line 674
    :cond_3
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->stop()V

    .line 675
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->start()V

    :cond_4
    :goto_0
    return v0
.end method

.method public start()V
    .locals 3

    const-string v0, "circus"

    const-string/jumbo v1, "start() called"

    .line 613
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "circus"

    const-string/jumbo v1, "start() called. running"

    .line 616
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_0
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->checkDestroyedLocked()V

    .line 620
    iget v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 621
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 623
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mCurrentLoop:I

    .line 624
    invoke-direct {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->scheduleDecodeLocked()V

    .line 625
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "circus"

    const-string/jumbo v1, "stop() called"

    .line 631
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Landroid/support/rastermill/FrameSequenceDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0, p0}, Landroid/support/rastermill/FrameSequenceDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 2

    .line 647
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    .line 648
    :try_start_0
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mNextFrameToDecode:I

    const/4 v1, 0x0

    .line 649
    iput v1, p0, Landroid/support/rastermill/FrameSequenceDrawable;->mState:I

    .line 650
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 650
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
