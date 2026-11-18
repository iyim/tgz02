.class public Lmtopsdk/mtop/global/init/InnerMtopInitTask;
.super Ljava/lang/Object;
.source "InnerMtopInitTask.java"

# interfaces
.implements Lmtopsdk/mtop/global/init/IMtopInitTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.InnerMtopInitTask"


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
.method public executeCoreTask(Lmtopsdk/mtop/global/MtopConfig;)V
    .locals 6

    .line 35
    sget-object v0, Lmtopsdk/mtop/global/MtopConfig;->logAdapterImpl:Lmtopsdk/common/log/LogAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lmtopsdk/mtop/global/MtopConfig;->logAdapterImpl:Lmtopsdk/common/log/LogAdapter;

    goto :goto_0

    :cond_0
    new-instance v0, Lmtopsdk/common/log/TLogAdapterImpl;

    invoke-direct {v0}, Lmtopsdk/common/log/TLogAdapterImpl;-><init>()V

    :goto_0
    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setLogAdapter(Lmtopsdk/common/log/LogAdapter;)V

    .line 37
    iget-object v0, p1, Lmtopsdk/mtop/global/MtopConfig;->instanceId:Ljava/lang/String;

    .line 39
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    const-string v2, "mtopsdk.InnerMtopInitTask"

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [executeInitCoreTask]MtopSDK initcore start. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    :try_start_0
    iget-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    const/4 v3, 0x1

    .line 45
    invoke-static {v1, v3, v3}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/intf/Mtop;IZ)V

    const/4 v4, 0x2

    .line 46
    invoke-static {v1, v4, v3}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/intf/Mtop;IZ)V

    const/4 v4, 0x4

    .line 47
    invoke-static {v1, v4, v3}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/intf/Mtop;IZ)V

    const/4 v4, 0x5

    .line 48
    invoke-static {v1, v4, v3}, Lmtopsdk/mtop/features/MtopFeatureManager;->setMtopFeatureFlag(Lmtopsdk/mtop/intf/Mtop;IZ)V

    .line 51
    iget-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Lmtopsdk/mtop/stat/UploadStatAppMonitorImpl;

    invoke-direct {v1}, Lmtopsdk/mtop/stat/UploadStatAppMonitorImpl;-><init>()V

    iput-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    .line 55
    :cond_2
    new-instance v1, Lmtopsdk/mtop/network/NetworkPropertyServiceImpl;

    invoke-direct {v1}, Lmtopsdk/mtop/network/NetworkPropertyServiceImpl;-><init>()V

    iput-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    .line 58
    iget-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    invoke-static {v1}, Lmtopsdk/xstate/XState;->init(Landroid/content/Context;)V

    const-string v1, "ttid"

    .line 59
    iget-object v3, p1, Lmtopsdk/mtop/global/MtopConfig;->ttid:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->networkPropertyService:Lmtopsdk/mtop/network/NetworkPropertyService;

    iget-object v3, p1, Lmtopsdk/mtop/global/MtopConfig;->ttid:Ljava/lang/String;

    invoke-interface {v1, v3}, Lmtopsdk/mtop/network/NetworkPropertyService;->setTtid(Ljava/lang/String;)V

    .line 62
    iget-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->sign:Lmtopsdk/security/ISign;

    if-nez v1, :cond_3

    .line 64
    new-instance v1, Lmtopsdk/security/InnerSignImpl;

    invoke-direct {v1}, Lmtopsdk/security/InnerSignImpl;-><init>()V

    .line 66
    :cond_3
    invoke-interface {v1, p1}, Lmtopsdk/security/ISign;->init(Lmtopsdk/mtop/global/MtopConfig;)V

    .line 68
    sget-object v3, Lmtopsdk/mtop/domain/EntranceEnum;->GW_INNER:Lmtopsdk/mtop/domain/EntranceEnum;

    iput-object v3, p1, Lmtopsdk/mtop/global/MtopConfig;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 69
    iput-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->sign:Lmtopsdk/security/ISign;

    .line 70
    new-instance v3, Lmtopsdk/security/ISign$SignCtx;

    iget v4, p1, Lmtopsdk/mtop/global/MtopConfig;->appKeyIndex:I

    iget-object v5, p1, Lmtopsdk/mtop/global/MtopConfig;->authCode:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lmtopsdk/security/ISign$SignCtx;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Lmtopsdk/security/ISign;->getAppKey(Lmtopsdk/security/ISign$SignCtx;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->appKey:Ljava/lang/String;

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p1, Lmtopsdk/mtop/global/MtopConfig;->processId:I

    .line 72
    new-instance v1, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;

    invoke-direct {v1}, Lmtopsdk/framework/manager/impl/InnerFilterManagerImpl;-><init>()V

    iput-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->filterManager:Lmtopsdk/framework/manager/FilterManager;

    .line 73
    iget-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    if-nez v1, :cond_4

    .line 74
    new-instance v1, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;

    iget-object v3, p1, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lmtopsdk/mtop/antiattack/AntiAttackHandlerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->antiAttackHandler:Lmtopsdk/mtop/antiattack/AntiAttackHandler;

    .line 76
    :cond_4
    iget-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->callFactory:Lmtopsdk/network/Call$Factory;

    if-nez v1, :cond_5

    .line 77
    new-instance v1, Lmtopsdk/network/impl/ANetworkCallFactory;

    iget-object v3, p1, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lmtopsdk/network/impl/ANetworkCallFactory;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Lmtopsdk/mtop/global/MtopConfig;->callFactory:Lmtopsdk/network/Call$Factory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [executeInitCoreTask]MtopSDK initCore error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    :cond_5
    :goto_1
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [executeInitCoreTask]MtopSDK initCore end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public executeExtraTask(Lmtopsdk/mtop/global/MtopConfig;)V
    .locals 5

    .line 91
    iget-object v0, p1, Lmtopsdk/mtop/global/MtopConfig;->instanceId:Ljava/lang/String;

    .line 92
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    const-string v2, "mtopsdk.InnerMtopInitTask"

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [executeInitExtraTask]MtopSDK initExtra start"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :try_start_0
    iget-boolean v1, p1, Lmtopsdk/mtop/global/MtopConfig;->enableNewDeviceId:Z

    if-eqz v1, :cond_1

    .line 99
    invoke-static {}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getInstance()Lmtopsdk/mtop/deviceid/DeviceIDManager;

    move-result-object v1

    iget-object v3, p1, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    iget-object v4, p1, Lmtopsdk/mtop/global/MtopConfig;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 102
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    iget-object v3, p1, Lmtopsdk/mtop/global/MtopConfig;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lmtopsdk/mtop/global/SwitchConfig;->initConfig(Landroid/content/Context;)V

    .line 105
    invoke-static {}, Lmtopsdk/config/AppConfigManager;->getInstance()Lmtopsdk/config/AppConfigManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmtopsdk/config/AppConfigManager;->reloadAppConfig(Lmtopsdk/mtop/global/MtopConfig;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [executeInitExtraTask] execute MtopSDK initExtraTask error."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_0
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [executeInitExtraTask]MtopSDK initExtra end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
