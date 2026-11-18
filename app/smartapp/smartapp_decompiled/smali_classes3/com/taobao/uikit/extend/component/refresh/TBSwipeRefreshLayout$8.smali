.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToBottomPosition(ILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

.field final synthetic val$animateToBottomPosition:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1304
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iput-object p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;->val$animateToBottomPosition:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1308
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;->val$animateToBottomPosition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$8;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$400(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)V

    return-void
.end method
