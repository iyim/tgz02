.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$4;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->animatorFooterToBottom(II)V
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

    .line 1203
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$4;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$4;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$802(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)I

    .line 1209
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$4;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$900(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    return-void
.end method
