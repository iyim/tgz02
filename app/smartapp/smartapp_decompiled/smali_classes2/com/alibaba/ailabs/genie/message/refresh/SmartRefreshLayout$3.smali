.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1457
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1465
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1466
    iget p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    if-nez p1, :cond_1

    .line 1467
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    goto :goto_0

    .line 1468
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mViceState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-eq p1, v0, :cond_2

    .line 1474
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$3;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setViceState(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    :cond_2
    :goto_0
    return-void
.end method
