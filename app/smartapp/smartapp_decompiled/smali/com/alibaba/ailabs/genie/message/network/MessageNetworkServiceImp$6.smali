.class Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;
.super Ljava/lang/Object;
.source "MessageNetworkServiceImp.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->listSubscribeInfos(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V
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

    .line 248
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;->this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;->val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 6

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  code---->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "listSubscribeInfos"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;->this$0:Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

    invoke-static {v1, p3}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;->access$000(Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v1, "model"

    .line 257
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "msgCode"

    .line 258
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;->msgCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo p3, "subscribedList"

    .line 261
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    const-string/jumbo v2, "unSubscribeList"

    .line 262
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 263
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 264
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_0
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p3

    if-ge v0, p3, :cond_1

    .line 267
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    const-class v3, Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;

    invoke-static {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 269
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result----> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ListSubscribeInfos"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;->val$callback:Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp$6;->msgCode:Ljava/lang/String;

    invoke-interface {p3, p2, v0, p1}, Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
