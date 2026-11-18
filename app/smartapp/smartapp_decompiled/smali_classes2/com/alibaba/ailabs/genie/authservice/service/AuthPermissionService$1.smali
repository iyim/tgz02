.class Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;
.super Ljava/lang/Object;
.source "AuthPermissionService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->getAuthServiceEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 4

    const-string p1, "======s"

    .line 138
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/authservice/utils/ParseDataUtils;->parseGateWayData(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 142
    new-instance p3, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {p3}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 143
    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    const-string v0, "4003"

    .line 144
    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    const-string v0, "\u63a5\u53e3\u8fd4\u56de\u9519\u8bef"

    .line 145
    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 150
    invoke-virtual {p3}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 152
    :goto_0
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    const-class v0, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    invoke-static {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;

    .line 156
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "======Service:response"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 161
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->isSuccess()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    .line 162
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 165
    :try_start_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 166
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 168
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 170
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    goto/16 :goto_6

    .line 171
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getApiAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getApiAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 175
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 176
    new-instance p2, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    invoke-direct {p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;-><init>()V

    .line 177
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getApiAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->setApiAccessToken(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setData(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;)V

    .line 179
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->isSuccess()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    .line 182
    :try_start_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 183
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_2
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 185
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 187
    :goto_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    goto/16 :goto_6

    .line 189
    :cond_2
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getUnauthorized()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getUnauthorized()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 194
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 195
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;-><init>()V

    .line 197
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getUnauthorized()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-ge p2, v1, :cond_3

    .line 200
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getUnauthorized()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Unauthorized;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions$Unauthorized;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 202
    :cond_3
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->setUnauthorized(Ljava/util/List;)V

    .line 204
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setData(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;)V

    .line 205
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->isSuccess()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    .line 206
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 210
    :try_start_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 211
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_3
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 213
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 215
    :goto_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    goto/16 :goto_6

    .line 217
    :cond_4
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 218
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 219
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 220
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getData()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData;->getPermissions()Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse$PermissionData$Permissions;->getAuthorized()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_5

    .line 222
    new-instance p1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 223
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->isSuccess()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    .line 224
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/mvp/model/GetAuthServiceResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 227
    :try_start_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 228
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_4
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 230
    invoke-virtual {p1}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 232
    :goto_5
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    goto :goto_6

    .line 235
    :cond_5
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/alibaba/ailabs/genie/authservice/activity/AuthPermissionActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x10000000

    .line 236
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "authServiceResponse"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 239
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;->this$0:Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    :goto_6
    return-void
.end method
