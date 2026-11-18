.class public Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;
.super Landroid/app/Service;
.source "AuthPermissionService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthPermissionService"


# instance fields
.field private mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

.field private mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

.field private mAuthProtocolParametersJson:Ljava/lang/String;

.field private mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    return-object p0
.end method

.method private getAuthServiceEvent()V
    .locals 5

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/authservice/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 101
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    const-string v1, "4002"

    .line 102
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    const-string v1, "\u5f53\u524d\u6ca1\u6709\u7f51\u7edc"

    .line 103
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 106
    :try_start_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;-><init>()V

    .line 119
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setSuccess(Z)V

    const-string v1, "4005"

    .line 120
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorCode(Ljava/lang/String;)V

    const-string v1, "\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 121
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->setErrorMsg(Ljava/lang/String;)V

    .line 123
    :try_start_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;->authServiceResponse(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;)V
    :try_end_1
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 126
    invoke-virtual {v0}, Lcom/taobao/aranger/exception/IPCException;->printStackTrace()V

    .line 128
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    return-void

    :cond_1
    const-string v0, "======mAgisManager"

    const-string v1, "mAgisManager\u4e0d\u4e3a\u7a7a"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParametersJson:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService$1;-><init>(Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;)V

    const-string v3, "AliGenie.API"

    const-string v4, "GetAuthServiceEvent"

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I

    return-void
.end method


# virtual methods
.method public UserAuthListener(Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    if-nez v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "====bus\u5230AuthService\u7684\u5f15\u7528\u503c"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 262
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "========"

    const-string v1, "sanfang service oncreate"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "====="

    const-string v1, "AuthPermissionService\u9500\u6bc1"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 253
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    .line 255
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    .line 256
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParametersJson:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAgisManager:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "========"

    const-string v1, "onStartCommand"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->getAuthServiceEvent()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mRequestPermissionListener:Lcom/alibaba/ailabs/genie/authservice/api/IRequestPermissionListener;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->stopSelf()V

    .line 92
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public receiveUserPermissionData(Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->removeStickyEvent(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "====bus\u5230AuthService\u7684\u6570\u636e"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    if-nez v0, :cond_0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    .line 50
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParameters:Lcom/alibaba/ailabs/genie/authservice/api/AuthProtocolParameters;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/service/AuthPermissionService;->mAuthProtocolParametersJson:Ljava/lang/String;

    :cond_0
    return-void
.end method
