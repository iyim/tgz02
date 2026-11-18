.class Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$008(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->loadDataFromNet()V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;->onRedChangeListener(I)V

    return-void
.end method

.method public onRefresh(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$002(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;I)I

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->loadDataFromNet()V

    return-void
.end method
