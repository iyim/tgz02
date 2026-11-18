.class Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$7;
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


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$700(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;->cancel()V

    .line 227
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$002(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    .line 228
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$7;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$702(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubDialog;

    return-void
.end method
