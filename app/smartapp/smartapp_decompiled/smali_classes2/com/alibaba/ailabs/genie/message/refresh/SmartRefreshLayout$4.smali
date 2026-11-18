.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$4;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 1478
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$4;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$4;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$4;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mKernel:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;->moveSpinner(IZ)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshKernel;

    :cond_0
    return-void
.end method
