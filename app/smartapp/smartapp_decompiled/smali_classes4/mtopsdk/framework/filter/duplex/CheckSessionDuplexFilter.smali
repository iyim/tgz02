.class public Lmtopsdk/framework/filter/duplex/CheckSessionDuplexFilter;
.super Ljava/lang/Object;
.source "CheckSessionDuplexFilter.java"

# interfaces
.implements Lmtopsdk/framework/filter/IBeforeFilter;
.implements Lmtopsdk/framework/filter/IAfterFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CheckSessionDuplexFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doAfter(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 8

    .line 97
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 98
    instance-of v1, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    const-string v2, "CONTINUE"

    if-nez v1, :cond_0

    return-object v2

    .line 102
    :cond_0
    check-cast v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 103
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 104
    iget-object v3, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 105
    iget-object v4, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 108
    invoke-virtual {v3}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v5

    iget-boolean v5, v5, Lmtopsdk/mtop/global/MtopConfig;->notifySessionResult:Z

    if-eqz v5, :cond_1

    .line 109
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    const-string v6, "x-session-ret"

    invoke-static {v5, v6}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {v5}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 112
    invoke-virtual {v7, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Date"

    invoke-static {v5, v6}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v3, v7}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->setSessionInvalid(Lmtopsdk/mtop/intf/Mtop;Landroid/os/Bundle;)V

    .line 118
    :cond_1
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRetryTime()I

    move-result v1

    if-nez v1, :cond_3

    .line 120
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v1, "mtopsdk.CheckSessionDuplexFilter"

    const-string v2, "execute CheckSessionAfterFilter."

    invoke-static {v1, p1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    iget-object p1, v0, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;

    const-string v1, "SESSION"

    .line 124
    invoke-static {v1}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object v1

    invoke-virtual {v1, v3, p1, v0}, Lcom/taobao/tao/remotebusiness/RequestPool;->addToRequestPool(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Lmtopsdk/mtop/intf/MtopBuilder;)V

    .line 125
    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isShowLoginUI()Z

    move-result v0

    invoke-static {v3, p1, v0, v4}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;ZLjava/lang/Object;)V

    const-string p1, "STOP"

    return-object p1

    :cond_3
    return-object v2
.end method

.method public doBefore(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 10

    const-string v0, "mtopsdk.CheckSessionDuplexFilter"

    .line 43
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 45
    instance-of v2, v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    const-string v3, "CONTINUE"

    if-nez v2, :cond_0

    return-object v3

    .line 50
    :cond_0
    check-cast v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 52
    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 53
    iget-object v4, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 54
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v5

    .line 61
    :try_start_0
    iget-object v6, v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v6, v6, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "STOP"

    const-string v8, "SESSION"

    if-eqz v5, :cond_2

    .line 62
    :try_start_1
    invoke-static {v4, v6}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->isSessionValid(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 63
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    iget-object v5, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v9, "execute CheckSessionBeforeFilter.isSessionInvalid = false"

    invoke-static {v0, v5, v9}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    invoke-static {v8}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v1}, Lcom/taobao/tao/remotebusiness/RequestPool;->addToRequestPool(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Lmtopsdk/mtop/intf/MtopBuilder;)V

    .line 67
    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isShowLoginUI()Z

    move-result v1

    invoke-static {v4, v6, v1, v2}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;ZLjava/lang/Object;)V

    return-object v7

    :cond_2
    if-eqz v5, :cond_6

    .line 72
    invoke-virtual {v4, v6}, Lmtopsdk/mtop/intf/Mtop;->getMultiAccountSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 73
    invoke-static {v4, v6}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLoginContext(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginContext;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 74
    iget-object v9, v5, Lcom/taobao/tao/remotebusiness/login/LoginContext;->sid:Ljava/lang/String;

    invoke-static {v9}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 75
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v2, "session in loginContext is valid but mtopInstance\'s sid is null"

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_3
    iget-object v1, v5, Lcom/taobao/tao/remotebusiness/login/LoginContext;->sid:Ljava/lang/String;

    iget-object v2, v5, Lcom/taobao/tao/remotebusiness/login/LoginContext;->userId:Ljava/lang/String;

    invoke-virtual {v4, v6, v1, v2}, Lmtopsdk/mtop/intf/Mtop;->registerMultiAccountSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    goto :goto_0

    .line 80
    :cond_4
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 81
    iget-object v5, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v9, "execute CheckSessionBeforeFilter.isSessionInvalid = true,getLoginContext = null"

    invoke-static {v0, v5, v9}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_5
    invoke-static {v8}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object v5

    invoke-virtual {v5, v4, v6, v1}, Lcom/taobao/tao/remotebusiness/RequestPool;->addToRequestPool(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Lmtopsdk/mtop/intf/MtopBuilder;)V

    .line 84
    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isShowLoginUI()Z

    move-result v1

    invoke-static {v4, v6, v1, v2}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;ZLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v7

    :catch_0
    move-exception v1

    .line 89
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v2, " execute CheckSessionBeforeFilter error."

    invoke-static {v0, p1, v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "mtopsdk.CheckSessionDuplexFilter"

    return-object v0
.end method
