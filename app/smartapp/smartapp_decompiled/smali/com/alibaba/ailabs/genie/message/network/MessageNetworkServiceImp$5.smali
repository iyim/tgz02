.class Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;
.super Ljava/lang/Object;
.source "MessageNetworkServiceImp.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->listUnreadMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private msgCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;->this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;->val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 2

    .line 218
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;->this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->access$000(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "model"

    .line 221
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "msgCode"

    .line 222
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;->msgCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo p1, "result"

    .line 225
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-class p3, Lcom/alibaba/ailabs/genie/message/network/bean/NotificationBean;

    invoke-static {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 227
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result----> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ListUnreadMessages"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;->val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$5;->msgCode:Ljava/lang/String;

    invoke-interface {p3, p2, v0, p1}, Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
