.class public Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshKernelImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;)V
    .locals 0

    .line 3032
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 3342
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mReboundDuration:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public finishTwoLevel()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 3

    .line 3169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v0, v1, :cond_1

    .line 3170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevelFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 3171
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3172
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 3173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 3175
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getRefreshContent()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3043
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    return-object v0
.end method

.method public getRefreshLayout()Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 3037
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    return-object v0
.end method

.method public moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3197
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 3198
    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 3199
    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v0

    .line 3202
    :cond_2
    iget-object v8, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    .line 3203
    iget v9, v8, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    .line 3204
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput v1, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eqz p2, :cond_7

    .line 3206
    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-eqz v2, :cond_7

    .line 3207
    :cond_3
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTriggerRate:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 3208
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToTwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v2, v3, :cond_7

    .line 3209
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_0

    .line 3211
    :cond_4
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTriggerRate:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_5

    .line 3212
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_0

    .line 3213
    :cond_5
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-gez v2, :cond_6

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_6

    .line 3214
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto :goto_0

    .line 3215
    :cond_6
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-lez v2, :cond_7

    .line 3216
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 3219
    :cond_7
    :goto_0
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    const/4 v11, 0x0

    if-eqz v2, :cond_15

    if-ltz v1, :cond_9

    .line 3222
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v2, :cond_9

    .line 3223
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_8
    if-gez v9, :cond_9

    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-gtz v1, :cond_b

    .line 3231
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v4, :cond_b

    .line 3232
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v5, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v6, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v6, v6, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v1

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_a
    if-lez v9, :cond_b

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    :goto_4
    if-eqz v3, :cond_15

    .line 3241
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget-object v5, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v5, v5, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v3, v2, v4, v5}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->moveSpinner(III)V

    .line 3242
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    instance-of v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshFooter;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    .line 3243
    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v3, v4, :cond_c

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v4, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 3244
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3245
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 3247
    :cond_c
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v3

    sget-object v4, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_f

    .line 3248
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v3, 0x1

    .line 3249
    :goto_7
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_12

    .line 3250
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v4, :cond_11

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v4, 0x1

    :goto_a
    if-eqz v3, :cond_13

    if-gez v2, :cond_14

    if-gtz v9, :cond_14

    :cond_13
    if-eqz v4, :cond_15

    if-lez v2, :cond_14

    if-gez v9, :cond_15

    .line 3252
    :cond_14
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    :cond_15
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x40000000    # 2.0f

    if-gez v1, :cond_16

    if-lez v9, :cond_1e

    .line 3256
    :cond_16
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v2, :cond_1e

    .line 3258
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3259
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v6, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    .line 3260
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float v2, v2, v3

    float-to-int v7, v2

    int-to-float v2, v5

    mul-float v2, v2, v12

    .line 3261
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    if-nez v3, :cond_17

    const/4 v3, 0x1

    goto :goto_b

    :cond_17
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    :goto_b
    int-to-float v3, v3

    div-float v4, v2, v3

    .line 3263
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v2, v3, :cond_1e

    if-nez p2, :cond_1e

    .line 3264
    :cond_18
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eq v9, v2, :cond_1c

    .line 3265
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v2, v3, :cond_19

    .line 3266
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3267
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v3, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v14, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v14, v14, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {v2, v3, v14}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 3268
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto :goto_d

    .line 3270
    :cond_19
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v2, :cond_1b

    .line 3277
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    .line 3278
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3279
    instance-of v14, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v14, :cond_1a

    nop

    nop

    goto :goto_c

    :cond_1a
    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3280
    :goto_c
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 3281
    iget-object v15, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v15, v15, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v10

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v15, v10

    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v2, v14, v10}, Landroid/view/View;->measure(II)V

    .line 3282
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3283
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v14, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v14, v14, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderInsetStart:I

    add-int/2addr v3, v14

    .line 3284
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual {v2, v10, v3, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 3286
    :cond_1b
    :goto_d
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    move/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onMoving(ZFIII)V

    :cond_1c
    if-eqz p2, :cond_1e

    .line 3288
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3289
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 3290
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 3291
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    if-nez v10, :cond_1d

    const/4 v4, 0x1

    goto :goto_e

    :cond_1d
    move v4, v10

    :goto_e
    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3292
    iget-object v4, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v4, v4, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v4, v3, v2, v10}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_1e
    if-lez v1, :cond_1f

    if-gez v9, :cond_27

    .line 3296
    :cond_1f
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz v2, :cond_27

    .line 3298
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v4, v1

    .line 3299
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v5, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    .line 3300
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float v1, v1, v2

    float-to-int v6, v1

    int-to-float v1, v4

    mul-float v1, v1, v12

    .line 3301
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    if-nez v2, :cond_20

    const/4 v10, 0x1

    goto :goto_f

    :cond_20
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v10, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    :goto_f
    int-to-float v2, v10

    div-float v3, v1, v2

    .line 3303
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne v1, v2, :cond_27

    if-nez p2, :cond_27

    .line 3304
    :cond_21
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eq v9, v1, :cond_25

    .line 3305
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    if-ne v1, v2, :cond_22

    .line 3306
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3307
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v7, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v7, v7, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {v1, v2, v7}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 3308
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto :goto_11

    .line 3310
    :cond_22
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getSpinnerStyle()Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    if-eqz v1, :cond_24

    .line 3318
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    .line 3319
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 3320
    instance-of v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_23

    nop

    nop

    goto :goto_10

    :cond_23
    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->sDefaultMarginLP:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3321
    :goto_10
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 3322
    iget-object v9, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v9, v9, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    neg-int v9, v9

    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v1, v7, v9}, Landroid/view/View;->measure(II)V

    .line 3323
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3324
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v9, v9, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterInsetStart:I

    sub-int/2addr v2, v9

    .line 3325
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v2, v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v1, v7, v9, v10, v2}, Landroid/view/View;->layout(IIII)V

    .line 3327
    :cond_24
    :goto_11
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    move/from16 v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onMoving(ZFIII)V

    :cond_25
    if-eqz p2, :cond_27

    .line 3329
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3330
    iget-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v1, v1

    .line 3331
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 3332
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    if-nez v10, :cond_26

    const/4 v3, 0x1

    goto :goto_12

    :cond_26
    move v3, v10

    :goto_12
    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 3333
    iget-object v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-interface {v3, v2, v1, v10}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onHorizontalDrag(FII)V

    :cond_27
    return-object v0
.end method

.method public requestDefaultTranslationContentFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3372
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3373
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p1, :cond_1

    .line 3374
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    .line 3375
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    goto :goto_0

    .line 3377
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3378
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p1, :cond_1

    .line 3379
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    .line 3380
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestDrawBackgroundFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3349
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3350
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    .line 3352
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3353
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderBackgroundColor:I

    goto :goto_0

    .line 3354
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3355
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterBackgroundColor:I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public requestFloorDuration(I)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 1

    .line 3402
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput p1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFloorDuration:I

    return-object p0
.end method

.method public requestNeedTouchEventFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3362
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3363
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    goto :goto_0

    .line 3364
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3365
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public requestRemeasureHeightFor(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3388
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3389
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_1

    .line 3390
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->unNotify()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    goto :goto_0

    .line 3392
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshFooter:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3393
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-eqz p1, :cond_1

    .line 3394
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->unNotify()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeightStatus:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 3048
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$10;->$SwitchMap$com$alibaba$ailabs$genie$message$refresh$constant$RefreshState:[I

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3133
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3130
    :pswitch_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_0

    .line 3127
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_0

    .line 3119
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3120
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3122
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3111
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3114
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3103
    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToTwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3106
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToTwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3096
    :pswitch_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_4

    .line 3097
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3099
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3089
    :pswitch_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3090
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3092
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3080
    :pswitch_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_7

    .line 3081
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 3083
    sget-object p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_0

    .line 3085
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3071
    :pswitch_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3072
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 3074
    sget-object p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    goto/16 :goto_0

    .line 3076
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto/16 :goto_0

    .line 3064
    :pswitch_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-nez p1, :cond_a

    .line 3065
    :cond_9
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 3067
    :cond_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 3057
    :pswitch_a
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 3058
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 3060
    :cond_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 3050
    :pswitch_b
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_c

    .line 3051
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 3052
    :cond_c
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 3053
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_d
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTwoLevel(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;
    .locals 3

    if-eqz p1, :cond_1

    .line 3142
    new-instance p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl$1;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;)V

    .line 3151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    .line 3152
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3153
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, v1, :cond_0

    .line 3154
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3155
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3157
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3160
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3161
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    :cond_2
    :goto_0
    return-object p0
.end method
