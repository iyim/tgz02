.class Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4$2;
.super Ljava/lang/Object;
.source "SubscriptListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$500(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;->subscribe(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    .line 188
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->cancel()V

    .line 189
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$002(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    return-void
.end method
