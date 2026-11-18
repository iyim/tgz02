.class Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;
.super Ljava/lang/Object;
.source "RequestPermissionModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->loadServiceAuthResponse(Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

.field final synthetic val$iGetServiceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;->val$iGetServiceAuthResponse:Lcom/alibaba/ailabs/genie/authservice/mvp/model/IRequestPermissionModel$IGetServiceAuthResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/authservice/utils/ParseDataUtils;->parseGateWayData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "=======payload"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "=====serviceAuthRespon"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->access$000(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$1;

    invoke-direct {p3, p0, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;-><init>()V

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->setSuccess(Z)V

    const-string p2, "4003"

    .line 58
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->setErrorCode(Ljava/lang/String;)V

    const-string p2, "\u63a5\u53e3\u8fd4\u56de\u9519\u8bef"

    .line 59
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;->access$000(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$2;

    invoke-direct {p3, p0, p1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1$2;-><init>(Lcom/alibaba/ailabs/genie/authservice/mvp/model/RequestPermissionModel$1;Lcom/alibaba/ailabs/genie/authservice/mvp/model/ServiceAuthResponse;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
