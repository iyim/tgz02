.class Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;
.super Ljava/lang/Object;
.source "ProxyService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/authservice/api/ICloudRequestPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloudAuthServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "====\u56de\u4f20\u5230\u4ee3\u7406serviced\u7684Model"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;-><init>()V

    .line 172
    new-instance v1, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;-><init>()V

    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getPermissions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;->setPermissions(Ljava/util/List;)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;->setSkillInfo(Ljava/lang/String;)V

    .line 181
    :cond_1
    new-instance v2, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;-><init>()V

    .line 182
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->setEventDetail(Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext$EventDetail;)V

    const-string v1, "Permission"

    .line 183
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->setCoinEventNs(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "Granted"

    .line 185
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->setCoinEventName(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 186
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;->setCoinEventName(Ljava/lang/String;)V

    .line 190
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;->setEventIssuedContext(Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel$EventIssuedContext;)V

    if-eqz p1, :cond_4

    .line 191
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getTraceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->getTraceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/authservice/service/SendToCoinModel;->setTraceId(Ljava/lang/String;)V

    .line 195
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "=====sendCoinModelJson"

    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    const/4 v1, 0x0

    const-string v2, "AliGenie.Routine"

    const-string v3, "EventIssued"

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventDirect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 202
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "=====eventDirect"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->access$110(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)I

    .line 205
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->access$100(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "=====mCloudLinkCount"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->access$100(Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;)I

    move-result p1

    if-nez p1, :cond_5

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/service/ProxyService;->stopSelf()V

    :cond_5
    return-void
.end method
