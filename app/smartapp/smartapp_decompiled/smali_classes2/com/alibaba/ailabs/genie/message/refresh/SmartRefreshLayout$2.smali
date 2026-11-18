.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;Z)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1217
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1220
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLastOpenTime:J

    .line 1221
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->notifyStateChanged(Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;)V

    .line 1222
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;

    if-eqz p1, :cond_1

    .line 1223
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->val$notify:Z

    if-eqz p1, :cond_1

    .line 1224
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshListener;->onRefresh(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)V

    .line 1227
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    if-eqz p1, :cond_2

    .line 1228
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mRefreshHeader:Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v2, v2, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderMaxDragRate:F

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$2;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget v3, v3, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshInternal;->onStartAnimator(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;II)V

    :cond_2
    return-void
.end method
