.class Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$5;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->moveSpinnerInfinitely(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;)V
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$5;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1656
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$5;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLoadMoreListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$5;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->mLoadMoreListener:Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout$5;->this$0:Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/listener/OnLoadMoreListener;->onLoadMore(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)V

    :cond_0
    return-void
.end method
