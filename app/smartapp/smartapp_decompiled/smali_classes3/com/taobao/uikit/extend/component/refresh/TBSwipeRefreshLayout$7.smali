.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/animation/Animator$AnimatorListener;)V
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

    .line 1275
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1279
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1281
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iget v1, v1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iget v2, v2, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v3, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iget v3, v3, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mFrom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->setProgress(F)V

    .line 1283
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$7;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$400(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)V

    return-void
.end method
