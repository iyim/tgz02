.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$6;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$6;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1255
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$6;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1256
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$6;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$400(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)V

    return-void
.end method
