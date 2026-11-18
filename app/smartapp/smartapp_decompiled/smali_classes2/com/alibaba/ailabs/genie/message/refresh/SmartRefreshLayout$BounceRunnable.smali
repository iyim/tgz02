.class public Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BounceRunnable"
.end annotation


# instance fields
.field mFrame:I

.field mFrameDelay:I

.field mLastTime:J

.field mOffset:F

.field mSmoothDistance:I

.field mVelocity:F

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;FI)V
    .locals 3

    .line 1385
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1378
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrame:I

    const/16 v0, 0xa

    .line 1379
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    const/4 v0, 0x0

    .line 1382
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mOffset:F

    .line 1386
    iput p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    .line 1387
    iput p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    .line 1388
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mLastTime:J

    .line 1389
    iget-object p3, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {p3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 1391
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_0

    .line 1393
    :cond_0
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object p2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1399
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_5

    .line 1400
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1401
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    if-eqz v0, :cond_0

    .line 1402
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v0, v0

    const-wide v2, 0x3fdcccccc0000000L    # 0.44999998807907104

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    goto :goto_0

    .line 1404
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v0, v0

    const-wide v2, 0x3feb333340000000L    # 0.8500000238418579

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    goto :goto_0

    .line 1407
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    float-to-double v0, v0

    const-wide v2, 0x3fee666660000000L    # 0.949999988079071

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrame:I

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    .line 1409
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1410
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    .line 1411
    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mVelocity:F

    mul-float v4, v4, v2

    .line 1412
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 1413
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mLastTime:J

    .line 1414
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mOffset:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mOffset:F

    .line 1415
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mOffset:F

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->moveSpinnerInfinitely(F)V

    .line 1416
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1418
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_1

    .line 1420
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v0, :cond_4

    .line 1421
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 1423
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1424
    iget v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 1425
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->px2dp(I)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    .line 1426
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$BounceRunnable;->mSmoothDistance:I

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    :cond_5
    :goto_2
    return-void
.end method
