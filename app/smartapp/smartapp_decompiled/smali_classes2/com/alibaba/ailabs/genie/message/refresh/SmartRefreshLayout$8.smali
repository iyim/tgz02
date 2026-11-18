.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->autoRefresh(IIFZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

.field final synthetic val$animationOnly:Z

.field final synthetic val$dragRate:F

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;FIZ)V
    .locals 0

    .line 2836
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->val$dragRate:F

    iput p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->val$duration:I

    iput-boolean p4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->val$animationOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2839
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq v0, v1, :cond_0

    return-void

    .line 2842
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 2843
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2844
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2845
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2848
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    .line 2849
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastTouchX:F

    .line 2850
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->setState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    .line 2852
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->val$dragRate:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2853
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->val$duration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2854
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;

    sget v2, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;->INTERPOLATOR_VISCOUS_FLUID:I

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/utils/SmartUtil;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2855
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8$1;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2863
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8$2;-><init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2883
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$8;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
