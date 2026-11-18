.class Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3$2;
.super Ljava/lang/Object;
.source "SubscriptListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;

    iget v0, v0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$300(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;ILcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    .line 154
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->cancel()V

    return-void
.end method
