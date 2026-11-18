.class Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;
.super Ljava/lang/Object;
.source "RequestPermissionModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->cloudServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

.field final synthetic val$cloudGetServiceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;->val$cloudGetServiceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$CloudGetServiceAuthResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 2

    .line 82
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "traceId"

    .line 83
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/authservice/utils/ParseDataUtils;->parseGateWayData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 87
    new-instance p3, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;-><init>()V

    if-eqz p2, :cond_1

    .line 89
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "=======payload"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;

    .line 92
    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setTraceId(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse$ResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse$ResponseData;->getGrantedPermissions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setPermissions(Ljava/util/List;)V

    .line 96
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->isSuccess()Z

    move-result p1

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setSuccess(Z)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setErrorMsg(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setErrorCode(Ljava/lang/String;)V

    .line 101
    :goto_0
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "========proxyModel"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->access$000(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$1;

    invoke-direct {p2, p0, p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const-string p1, "\u63a5\u53e3\u8fd4\u56de\u9519\u8bef"

    .line 110
    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setErrorMsg(Ljava/lang/String;)V

    const-string p1, "4003"

    .line 111
    invoke-virtual {p3, p1}, Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;->setErrorCode(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->access$000(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$2;

    invoke-direct {p2, p0, p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2$2;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$2;Lcom/alibaba/ailabs/genie/authservice/api/ProxyModel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
