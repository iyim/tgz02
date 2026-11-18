.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "TBSwipeRefreshLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;
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

    .line 197
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

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
    .locals 2

    .line 205
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$100(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$200(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$300(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$300(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPullRefreshListener;->onRefresh()V

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object p1

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iget v0, p1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mOriginalOffsetTop:I

    iget-object v1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iget v1, v1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$400(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)V

    .line 217
    :goto_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;->getTop()I

    move-result v0

    iput v0, p1, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    .line 218
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$1;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$500(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)V

    :cond_2
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
