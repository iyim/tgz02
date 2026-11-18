.class Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;
.super Ljava/lang/Object;
.source "SubscriptListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->subDialog(ILcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

.field final synthetic val$position:I

.field final synthetic val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;ILcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->val$position:I

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 217
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$600(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;->getId()Ljava/lang/Long;

    .line 218
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$500(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;->unSubscribe(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    .line 219
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$700(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->cancel()V

    .line 220
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$002(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    .line 221
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$702(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    return-void
.end method
