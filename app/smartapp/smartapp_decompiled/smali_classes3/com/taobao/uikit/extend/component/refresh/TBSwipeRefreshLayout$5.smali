.class Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TBSwipeRefreshLayout.java"


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

.field final synthetic val$end:I


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;I)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    iput p2, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->val$end:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1216
    iget p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->val$end:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$1000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1218
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$1102(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;Z)Z

    .line 1219
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$1200(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    move-result-object p1

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->LOADING:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V

    .line 1220
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$1000(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$OnPushLoadMoreListener;->onLoadMore()V

    goto :goto_0

    .line 1222
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$1102(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;Z)Z

    .line 1223
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout$5;->this$0:Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;->access$1200(Lcom/taobao/uikit/extend/component/refresh/TBSwipeRefreshLayout;)Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;

    move-result-object p1

    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;->changeToState(Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;)V

    :goto_0
    return-void
.end method
