.class public Lcom/taobao/phenix/animate/AnimatedImageDrawable;
.super Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;
.source "AnimatedImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SUBTRACT_FRAME_DELAY:I = 0xa

.field private static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field private static final MIN_FRAME_DURATION_MS:I = 0xb

.field private static final TIMEOUT_FOR_DRAW_MS:I = 0x3e8

.field private static sOneSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;


# instance fields
.field private mAccruedFrameDurations:[I

.field private mAllowPlaying:Z

.field private mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

.field private mCurrAbsFrameNum:I

.field private mCurrRelFrameNum:I

.field private final mDurationMs:I

.field private final mFrameCount:I

.field private mFrameDurations:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mInvalidateTask:Ljava/lang/Runnable;

.field private mIsPaused:Z

.field private mLastFrameAbsNum:I

.field private mLoopCountAtLastPause:I

.field private mLoopListener:Lcom/taobao/phenix/animate/AnimatedLoopListener;

.field private mMaxLoopCount:I

.field private final mNextFrameTask:Ljava/lang/Runnable;

.field private mNextFrameTaskMs:J

.field private mRenderingBitmap:Landroid/graphics/Bitmap;

.field private mStartFrameMustBeRendered:I

.field private final mStartTask:Ljava/lang/Runnable;

.field private mStartTimeMs:J

.field private final mTimeout4DrawTask:Ljava/lang/Runnable;

.field private mWaitingForUpdate:Z


# direct methods
.method public constructor <init>(Lcom/taobao/pexode/animate/AnimatedImage;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/taobao/pexode/animate/AnimatedImage;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/taobao/pexode/animate/AnimatedImage;)V
    .locals 10

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    new-instance p1, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;-><init>(Lcom/taobao/phenix/animate/AnimatedImageDrawable;I)V

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 37
    new-instance p1, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p3}, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;-><init>(Lcom/taobao/phenix/animate/AnimatedImageDrawable;I)V

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    .line 38
    new-instance p1, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;

    const/4 p4, 0x2

    invoke-direct {p1, p0, p4}, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;-><init>(Lcom/taobao/phenix/animate/AnimatedImageDrawable;I)V

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    .line 39
    new-instance p1, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;

    const/4 p4, 0x3

    invoke-direct {p1, p0, p4}, Lcom/taobao/phenix/animate/AnimatedImageDrawable$WeakFrameTask;-><init>(Lcom/taobao/phenix/animate/AnimatedImageDrawable;I)V

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mTimeout4DrawTask:Ljava/lang/Runnable;

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    .line 115
    invoke-interface {p5}, Lcom/taobao/pexode/animate/AnimatedImage;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mImageWidth:I

    .line 116
    invoke-interface {p5}, Lcom/taobao/pexode/animate/AnimatedImage;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mImageHeight:I

    .line 117
    invoke-interface {p5}, Lcom/taobao/pexode/animate/AnimatedImage;->getFrameDurations()[I

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameDurations:[I

    .line 118
    invoke-interface {p5}, Lcom/taobao/pexode/animate/AnimatedImage;->getLoopCount()I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mMaxLoopCount:I

    .line 119
    invoke-interface {p5}, Lcom/taobao/pexode/animate/AnimatedImage;->getFrameCount()I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    .line 120
    iput p2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    .line 121
    iput p2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopCountAtLastPause:I

    const-wide/16 p1, -0x1

    .line 122
    iput-wide p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTaskMs:J

    .line 123
    iput-boolean p3, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mWaitingForUpdate:Z

    .line 124
    iput-boolean p3, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    .line 125
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->accrueAndFixDurations()I

    move-result p1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mDurationMs:I

    .line 129
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/phenix/intf/Phenix;->getSchedulerSupplierUsedInProducer()Lcom/taobao/rxm/schedule/SchedulerSupplier;

    move-result-object p1

    if-nez p1, :cond_1

    .line 130
    const-class p2, Lcom/taobao/phenix/animate/AnimatedImageDrawable;

    monitor-enter p2

    .line 131
    :try_start_0
    sget-object p1, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->sOneSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    if-nez p1, :cond_0

    .line 132
    new-instance p1, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/16 v6, 0x5dc

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/taobao/phenix/chain/DefaultSchedulerSupplier;-><init>(Lcom/taobao/rxm/schedule/Scheduler;IIIIIIII)V

    sput-object p1, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->sOneSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    .line 144
    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    sget-object p1, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->sOneSchedulerSupplier:Lcom/taobao/rxm/schedule/SchedulerSupplier;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 144
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 147
    :cond_1
    :goto_0
    new-instance p2, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    invoke-interface {p1}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forDecode()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p5, p1, p3}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;-><init>(Lcom/taobao/pexode/animate/AnimatedImage;Lcom/taobao/rxm/schedule/Scheduler;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/phenix/animate/AnimatedImageDrawable;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->doInvalidateSelf()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private accrueAndFixDurations()I
    .locals 5

    .line 152
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAccruedFrameDurations:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 158
    :goto_0
    iget v2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    if-ge v0, v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameDurations:[I

    aget v3, v2, v0

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    const/16 v3, 0x64

    .line 160
    aput v3, v2, v0

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAccruedFrameDurations:[I

    aput v1, v2, v0

    .line 163
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameDurations:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private computeAndScheduleNextFrame(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    .line 220
    iget v1, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mDurationMs:I

    if-nez v1, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 224
    iget-wide v3, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartTimeMs:J

    sub-long v3, v1, v3

    .line 225
    iget v5, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mDurationMs:I

    int-to-long v6, v5

    div-long v6, v3, v6

    long-to-int v7, v6

    int-to-long v5, v5

    .line 226
    rem-long/2addr v3, v5

    long-to-int v4, v3

    .line 227
    invoke-direct {v0, v4}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->getFrameNumWithTimestamp(I)I

    move-result v3

    .line 228
    iget v5, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrRelFrameNum:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v5, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 229
    :goto_0
    iput v3, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrRelFrameNum:I

    .line 230
    iget v9, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    mul-int v7, v7, v9

    add-int/2addr v7, v3

    iput v7, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrAbsFrameNum:I

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x4

    const-string v11, "AnimatedImage"

    if-eqz v5, :cond_3

    .line 237
    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v6

    iget v5, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrRelFrameNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v3

    const-string v1, "%s schedule next frame changed to %d, drawing=%b, now=%d"

    invoke-static {v11, v1, v4}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->doInvalidateSelf()V

    goto :goto_1

    .line 240
    :cond_3
    iget-object v5, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAccruedFrameDurations:[I

    iget v12, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrRelFrameNum:I

    aget v5, v5, v12

    iget-object v13, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameDurations:[I

    aget v13, v13, v12

    add-int/2addr v5, v13

    sub-int/2addr v5, v4

    add-int/2addr v12, v8

    .line 241
    rem-int/2addr v12, v9

    int-to-long v4, v5

    add-long/2addr v4, v1

    const-wide/16 v13, 0xa

    add-long/2addr v4, v13

    .line 250
    iget-wide v13, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTaskMs:J

    const-wide/16 v15, -0x1

    cmp-long v9, v13, v15

    if-eqz v9, :cond_4

    cmp-long v9, v13, v4

    if-lez v9, :cond_5

    :cond_4
    const/4 v9, 0x6

    .line 251
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v7

    iget-wide v6, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTaskMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v3

    const-string v1, "%s schedule next frame=%d at %d[last:%d], drawing=%b, now=%d"

    invoke-static {v11, v1, v9}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v1, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 253
    iget-object v1, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 254
    iput-wide v4, v0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTaskMs:J

    :cond_5
    :goto_1
    return-void
.end method

.method private doEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopCountAtLastPause:I

    .line 395
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    invoke-virtual {v0}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->dropCaches()V

    return-void
.end method

.method private doInvalidateSelf()V
    .locals 4

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mWaitingForUpdate:Z

    .line 171
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mTimeout4DrawTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mTimeout4DrawTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    invoke-virtual {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->invalidateSelf()V

    return-void
.end method

.method private getFrameNumWithTimestamp(I)I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAccruedFrameDurations:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private updateRenderingBitmap(II)Z
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    invoke-virtual {v0, p1}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->getCachedBitmapAt(I)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 276
    iget-object v2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    invoke-virtual {v2, v1}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->freeBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    :cond_1
    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mRenderingBitmap:Landroid/graphics/Bitmap;

    .line 280
    iget p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLastFrameAbsNum:I

    sub-int v1, p2, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    const/4 v1, 0x2

    .line 281
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    sub-int p1, p2, p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "AnimatedImage"

    const-string v0, "%s dropped %d frames"

    invoke-static {p1, v0, v1}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_2
    iput p2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLastFrameAbsNum:I

    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x3

    .line 289
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    iget-boolean v3, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mWaitingForUpdate:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-boolean v3, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "AnimatedImage"

    const-string v6, "%s start to draw, waiting=%b, playing=%b"

    invoke-static {v3, v6, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mTimeout4DrawTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    iget-boolean v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mWaitingForUpdate:Z

    const/4 v6, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_e

    .line 294
    :cond_0
    iput-boolean v2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mWaitingForUpdate:Z

    .line 297
    :try_start_0
    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    if-ltz v1, :cond_1

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAccruedFrameDurations:[I

    iget v9, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    aget v1, v1, v9

    int-to-long v9, v1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartTimeMs:J

    .line 300
    :cond_1
    invoke-direct {p0, v2, v4}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->computeAndScheduleNextFrame(ZZ)V

    .line 301
    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrRelFrameNum:I

    iget v7, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrAbsFrameNum:I

    iget v8, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLastFrameAbsNum:I

    .line 303
    invoke-direct {p0, v1, v7}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->updateRenderingBitmap(II)Z

    move-result v9

    const-string v10, "%s drew frame=%d|%d, success=%B"

    const/4 v11, 0x4

    .line 304
    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v0

    invoke-static {v3, v10, v11}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_a

    .line 307
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v10, -0x1

    .line 309
    iput v10, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    .line 312
    :cond_3
    iget v10, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopCountAtLastPause:I

    add-int/lit8 v11, v7, 0x1

    iget v12, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    div-int/2addr v11, v12

    add-int/2addr v10, v11

    .line 316
    iget v11, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopCountAtLastPause:I

    add-int/2addr v8, v4

    iget v12, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    div-int/2addr v8, v12

    add-int/2addr v11, v8

    if-eq v10, v11, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 323
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopCountAtLastPause:I

    if-nez v0, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    if-eqz v8, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopListener:Lcom/taobao/phenix/animate/AnimatedLoopListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopListener:Lcom/taobao/phenix/animate/AnimatedLoopListener;

    iget v7, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mMaxLoopCount:I

    .line 324
    invoke-interface {v0, v10, v7}, Lcom/taobao/phenix/animate/AnimatedLoopListener;->onLoopCompleted(II)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    if-eqz v8, :cond_9

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mMaxLoopCount:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mMaxLoopCount:I

    if-lt v10, v0, :cond_9

    .line 326
    :cond_8
    iput-boolean v2, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    goto :goto_2

    .line 328
    :cond_9
    invoke-direct {p0, v4, v4}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->computeAndScheduleNextFrame(ZZ)V

    .line 331
    :goto_2
    iget-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    if-nez v0, :cond_a

    .line 332
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->doEnd()V

    .line 336
    :cond_a
    iget-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    :cond_b
    if-eqz v9, :cond_c

    move-object v7, v6

    const/4 v0, 0x1

    goto :goto_3

    .line 344
    :cond_c
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    move-object v7, v0

    const/4 v0, 0x0

    .line 347
    :goto_3
    iget-boolean v8, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    if-eqz v8, :cond_d

    .line 348
    iget-object v8, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    add-int/2addr v1, v0

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    rem-int/2addr v1, v0

    invoke-virtual {v8, v1, v7}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->startCacheFrom(ILjava/lang/Runnable;)V

    goto :goto_4

    .line 350
    :cond_d
    iget-object v8, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    add-int/2addr v1, v0

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    rem-int/2addr v1, v0

    invoke-virtual {v8, v1, v4, v7}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->startCacheFrom(IILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 354
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v2

    aput-object v0, v1, v4

    const-string v0, "%s frame render error=%s"

    invoke-static {v3, v0, v1}, Lcom/taobao/phenix/common/UnitedLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_e
    :goto_4
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 358
    invoke-virtual {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v6, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method public getDurationMs()I
    .locals 1

    .line 439
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mDurationMs:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mImageHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 426
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mImageWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    return v0
.end method

.method onNextFrame()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 203
    iput-wide v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTaskMs:J

    .line 204
    iget-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mDurationMs:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v1, v0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->computeAndScheduleNextFrame(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method onStart()V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 181
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrRelFrameNum:I

    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrRelFrameNum:I

    .line 184
    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrAbsFrameNum:I

    .line 185
    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    .line 187
    :goto_0
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->doInvalidateSelf()V

    return-void
.end method

.method onTimeout4Draw()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    .line 401
    iput-wide v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mNextFrameTaskMs:J

    const/4 v0, 0x0

    .line 402
    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartFrameMustBeRendered:I

    .line 403
    iput v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLastFrameAbsNum:I

    const/4 v1, 0x0

    .line 404
    iput-object v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mRenderingBitmap:Landroid/graphics/Bitmap;

    .line 405
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->doEnd()V

    const/4 v1, 0x1

    .line 406
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string v0, "AnimatedImage"

    const-string v2, "%s timeout for draw, maybe terminate"

    invoke-static {v0, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 363
    invoke-virtual {p0, v0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->pause(Z)V

    return-void
.end method

.method public pause(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mIsPaused:Z

    const/4 v1, 0x0

    .line 371
    iput-boolean v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    if-eqz p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAnimatedFramesBuffer:Lcom/taobao/phenix/animate/AnimatedFramesBuffer;

    invoke-virtual {p1}, Lcom/taobao/phenix/animate/AnimatedFramesBuffer;->dropCaches()V

    .line 377
    :cond_0
    iget p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopCountAtLastPause:I

    iget v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mCurrAbsFrameNum:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    div-int/2addr v1, v0

    add-int/2addr p1, v1

    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopCountAtLastPause:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 411
    invoke-virtual {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAnimatedLoopListener(Lcom/taobao/phenix/animate/AnimatedLoopListener;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mLoopListener:Lcom/taobao/phenix/animate/AnimatedLoopListener;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 416
    invoke-virtual {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->invalidateSelf()V

    return-void
.end method

.method public setMaxLoopCount(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mMaxLoopCount:I

    return-void
.end method

.method public start()V
    .locals 3

    .line 191
    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mDurationMs:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mFrameCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iput-boolean v1, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    .line 195
    iget-object v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mStartTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 381
    iput-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mIsPaused:Z

    .line 382
    iput-boolean v0, p0, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->mAllowPlaying:Z

    .line 383
    invoke-direct {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->doEnd()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatedImageDrawable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/phenix/animate/AnimatedImageDrawable;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
