.class public Lmtopsdk/framework/filter/after/AntiAttackAfterFilter;
.super Ljava/lang/Object;
.source "AntiAttackAfterFilter.java"

# interfaces
.implements Lmtopsdk/framework/filter/IAfterFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.AntiAttackAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doAfter(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 6

    .line 39
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 42
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    const/16 v2, 0x1a3

    if-ne v2, v1, :cond_3

    .line 44
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Bx-action"

    .line 47
    invoke-static {v1, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "login"

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "STOP"

    if-eqz v2, :cond_0

    .line 51
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 52
    iget-object p1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 54
    iget-object v1, v0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->userInfo:Ljava/lang/String;

    const-string v2, "SESSION"

    .line 57
    invoke-static {v2}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/taobao/tao/remotebusiness/RequestPool;->addToRequestPool(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Lmtopsdk/mtop/intf/MtopBuilder;)V

    const/4 v2, 0x1

    .line 59
    invoke-static {p1, v1, v2, v0}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->login(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;ZLjava/lang/Object;)V

    return-object v3

    :cond_0
    const-string v2, "location"

    .line 63
    invoke-static {v1, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "x-location-ext"

    .line 64
    invoke-static {v1, v4}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v4, p1, Lmtopsdk/framework/domain/MtopContext;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v4}, Lmtopsdk/mtop/intf/Mtop;->getMtopConfig()Lmtopsdk/mtop/global/MtopConfig;

    move-result-object v4

    iget-object v4, v4, Lmtopsdk/mtop/global/MtopConfig;->antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    const-string v5, "mtopsdk.AntiAttackAfterFilter"

    if-eqz v4, :cond_1

    .line 67
    invoke-interface {v4, v2, v1}, Lmtopsdk/mtop/antiattack/AntiAttackHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    const-string v2, "didn\'t register AntiAttackHandler."

    invoke-static {v5, v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "ANDROID_SYS_API_41X_ANTI_ATTACK"

    .line 71
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    const-string v1, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5(419)!"

    .line 72
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doAfter] execute AntiAttackAfterFilter apiKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_2
    invoke-static {p1}, Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V

    return-object v3

    :cond_3
    const-string p1, "CONTINUE"

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mtopsdk.AntiAttackAfterFilter"

    return-object v0
.end method
