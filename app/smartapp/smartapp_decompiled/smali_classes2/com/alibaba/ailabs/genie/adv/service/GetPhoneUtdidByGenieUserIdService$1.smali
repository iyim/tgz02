.class Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService$1;
.super Ljava/lang/Object;
.source "GetPhoneUtdidByGenieUserIdService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;->getPhoneUtdid(Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;

.field final synthetic val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService$1;->this$0:Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUtdIdByUid; request.response; traceid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "success"

    .line 102
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "msgCode"

    .line 103
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "msgInfo"

    .line 104
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "model"

    .line 107
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "retCode"

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/GetPhoneUtdidByGenieUserIdService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
