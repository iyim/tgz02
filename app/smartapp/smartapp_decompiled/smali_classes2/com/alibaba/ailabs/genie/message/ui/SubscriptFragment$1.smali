.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$1;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/refresh/listener/OnRefreshLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)V
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    return-void
.end method

.method public onRefresh(Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;)V
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/message/refresh/interfac/RefreshLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V

    return-void
.end method
