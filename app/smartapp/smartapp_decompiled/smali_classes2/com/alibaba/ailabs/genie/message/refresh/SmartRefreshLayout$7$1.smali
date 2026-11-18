.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;I)V
    .locals 0

    .line 2669
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2673
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->val$offset:I

    if-gez v0, :cond_0

    .line 2674
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshContent:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    invoke-interface {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    .line 2676
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2680
    :cond_1
    :goto_0
    new-instance v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;)V

    .line 2695
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 2696
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    if-nez v0, :cond_6

    .line 2697
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_3

    goto :goto_1

    .line 2707
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_5

    .line 2708
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v3

    if-lt v0, v3, :cond_4

    .line 2709
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_2

    .line 2711
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v3

    invoke-interface {v0, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 2714
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_3

    .line 2698
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    .line 2699
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2700
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2701
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2704
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-interface {v0, v4, v4}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 2705
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v3, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v3}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :goto_2
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    .line 2718
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    .line 2720
    :cond_8
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
