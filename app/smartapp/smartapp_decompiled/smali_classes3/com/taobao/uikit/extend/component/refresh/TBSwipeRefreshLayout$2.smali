.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$2;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->handlePullTouchEvent(Landroid/view/MotionEvent;I)Z
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

    .line 818
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$2;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

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
    .locals 1

    .line 828
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$2;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object p1

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_END:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

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
