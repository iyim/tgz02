.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishRefresh(IZLjava/lang/Boolean;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

.field final synthetic val$more:I

.field final synthetic val$noMoreData:Ljava/lang/Boolean;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;ILjava/lang/Boolean;Z)V
    .locals 0

    .line 2462
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->val$more:I

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    iput-boolean p4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2463
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 2467
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 2468
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v3, :cond_0

    .line 2470
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    goto/16 :goto_0

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v3, :cond_3

    .line 2477
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2478
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2479
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2486
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2487
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 2489
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 2492
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v0, :cond_4

    .line 2493
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->count:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->count:I

    .line 2494
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->val$more:I

    int-to-long v5, v1

    invoke-virtual {v0, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2496
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 2497
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2498
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 2501
    :cond_4
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->val$noMoreData:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2502
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto/16 :goto_1

    .line 2505
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->val$success:Z

    invoke-interface {v0, v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I

    move-result v0

    const v3, 0x7fffffff

    if-ge v0, v3, :cond_c

    .line 2509
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v3, :cond_8

    .line 2510
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2511
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v3, :cond_7

    .line 2512
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    iput v4, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    .line 2513
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput v2, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    .line 2514
    iput-boolean v2, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    const/4 v8, 0x0

    .line 2515
    iget v9, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->access$001(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2516
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v8, 0x2

    iget v9, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->access$101(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2518
    :cond_7
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v3, :cond_8

    .line 2519
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput v2, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 v8, 0x1

    .line 2520
    iget v9, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v10, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    const/4 v11, 0x0

    move-wide v4, v12

    move-wide v6, v12

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->access$201(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2521
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean v2, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    .line 2522
    iput v2, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    .line 2525
    :cond_8
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-lez v3, :cond_a

    .line 2527
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v4, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2528
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    if-eqz v2, :cond_9

    .line 2529
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    invoke-interface {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    :cond_9
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    .line 2532
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 2534
    :cond_a
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v1, :cond_b

    .line 2535
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 2537
    :cond_b
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v2, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 2539
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$6;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :cond_c
    :goto_1
    return-void
.end method
