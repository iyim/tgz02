.class Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$5;
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

.field final synthetic val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$5;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 200
    sget-object p1, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->MESSAGE_LIST_SUBSCRIPT:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->PAGE_NAME:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->SPM:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->access$500(Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;)Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter$5;->val$subscribeInfo:Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;->subscribe(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    return-void
.end method
