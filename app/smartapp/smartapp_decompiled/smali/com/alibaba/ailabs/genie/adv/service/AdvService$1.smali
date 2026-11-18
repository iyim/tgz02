.class Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;
.super Ljava/lang/Object;
.source "AdvService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/adv/mtop/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/adv/service/AdvService;->getAdvertise(Ljava/lang/String;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/adv/service/AdvService;

.field final synthetic val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/adv/service/AdvService;Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->this$0:Lcom/alibaba/ailabs/genie/adv/service/AdvService;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;)V
    .locals 6

    const-string/jumbo v0, "response data is null"

    const/4 v1, -0x3

    const-string/jumbo v2, "retMsg"

    const-string/jumbo v3, "retCode"

    if-eqz p1, :cond_4

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adv; request.response; traceid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;->getTraceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdvService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/adv/mtop/response/MtopBizRsp;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string/jumbo v0, "success"

    .line 116
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "msgCode"

    .line 117
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "msgInfo"

    .line 118
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "model"

    .line 119
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz v0, :cond_5

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_5

    .line 132
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x5

    .line 133
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "response model is error"

    .line 134
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_5

    .line 140
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x6

    .line 141
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "response is error"

    .line 142
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_5

    .line 148
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x4

    .line 149
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mtop failure"

    .line 150
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_5

    .line 156
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 157
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    goto :goto_0

    .line 163
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    if-eqz p1, :cond_5

    .line 164
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 165
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/adv/service/AdvService$1;->val$asyncServerCallback:Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/router/ipc/IpcServer$AsyncServerCallback;->ret(Landroid/os/Bundle;)V

    :cond_5
    :goto_0
    return-void
.end method
