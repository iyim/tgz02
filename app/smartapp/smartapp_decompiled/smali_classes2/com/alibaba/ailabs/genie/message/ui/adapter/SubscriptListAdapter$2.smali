.class Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;
.super Ljava/lang/Object;
.source "SubscriptListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->bind(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V
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
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;I)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    iput p3, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 109
    sget-object p1, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->MESSAGE_LIST_UN_SUBSCRIPT:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->PAGE_NAME:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->SPM:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$100(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2$1;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$002(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->cancel()V

    .line 121
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$002(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$100(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2$2;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2$2;-><init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$002(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->setCanceledOnTouchOutside(Z)V

    .line 131
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$000(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/SubSelectorDialog;->show()V

    return-void
.end method
