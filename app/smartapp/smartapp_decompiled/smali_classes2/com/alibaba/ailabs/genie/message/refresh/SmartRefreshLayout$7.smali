.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

.field final synthetic val$more:I

.field final synthetic val$noMoreData:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;IZZ)V
    .locals 0

    .line 2603
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$more:I

    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$noMoreData:Z

    iput-boolean p4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2604
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 2608
    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->count:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 2609
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v1, v6, :cond_0

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v1, v6, :cond_0

    .line 2611
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    goto/16 :goto_0

    .line 2612
    :cond_0
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v1, v6, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v1, :cond_3

    .line 2619
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2620
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2621
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2628
    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v1, v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2629
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 2631
    :cond_2
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 2634
    :cond_3
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    if-eqz v1, :cond_4

    .line 2635
    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->count:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->count:I

    .line 2636
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$more:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2638
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    return-void

    .line 2641
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v1, :cond_d

    .line 2642
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {v1, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    goto/16 :goto_5

    .line 2645
    :cond_5
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v7, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$success:Z

    invoke-interface {v1, v6, v7}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onFinish(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;Z)I

    move-result v1

    const v6, 0x7fffffff

    if-ge v1, v6, :cond_d

    .line 2648
    iget-boolean v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v6, :cond_6

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    invoke-interface {v6}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->canLoadMore()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 2649
    :goto_1
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iget-object v7, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v7, v7, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :goto_2
    sub-int v4, v6, v4

    .line 2651
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v6, :cond_b

    .line 2652
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 2653
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v6, :cond_a

    .line 2654
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v7, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    iput v7, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchY:F

    .line 2655
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v7, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    sub-int/2addr v7, v4

    iput v7, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    .line 2656
    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean v5, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 2657
    iget-boolean v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    if-eqz v6, :cond_9

    move v6, v4

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    .line 2658
    :goto_3
    iget-object v14, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v11, 0x0

    iget v12, v14, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    iget-object v7, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v7, v7, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    int-to-float v6, v6

    add-float/2addr v7, v6

    iget-object v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v8, v8, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float v13, v7, v8

    const/16 v17, 0x0

    move-wide v7, v15

    move-wide v9, v15

    move-object v2, v14

    move/from16 v14, v17

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->access$301(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2659
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v11, 0x2

    iget v12, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    add-float v13, v3, v6

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->access$401(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2661
    :cond_a
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v2, :cond_b

    .line 2662
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput v5, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 v11, 0x1

    .line 2663
    iget v12, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v13, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchY:F

    const/4 v14, 0x0

    move-wide v7, v15

    move-wide v9, v15

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->access$501(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2664
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean v5, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mNestedInProgress:Z

    .line 2665
    iput v5, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mTouchSpinner:I

    .line 2669
    :cond_b
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;

    invoke-direct {v3, v0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;I)V

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v4, :cond_c

    int-to-long v4, v1

    goto :goto_4

    :cond_c
    const-wide/16 v4, 0x0

    :goto_4
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_5
    return-void
.end method
