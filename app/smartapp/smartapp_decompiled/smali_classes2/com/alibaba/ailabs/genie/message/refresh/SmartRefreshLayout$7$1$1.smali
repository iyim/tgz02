.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;)V
    .locals 0

    .line 2680
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;->this$2:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2683
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 2686
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;->this$2:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mFooterLocked:Z

    .line 2687
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;->this$2:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz p1, :cond_1

    .line 2688
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;->this$2:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setNoMoreData(Z)Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;

    .line 2690
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;->this$2:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mState:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    if-ne p1, v0, :cond_2

    .line 2691
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1$1;->this$2:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7$1;->this$1:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$7;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    :cond_2
    return-void
.end method
