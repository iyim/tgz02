.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->setAutoRefreshing(Z)V
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

    .line 1090
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1101
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$600(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1104
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3$1;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3$1;-><init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;)V

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$3;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    .line 1109
    invoke-static {v1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$700(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)J

    move-result-wide v1

    .line 1104
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
