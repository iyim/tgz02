.class public Lcom/alibaba/ailabs/appbox/BoxApplication;
.super Landroid/app/Application;
.source "BoxApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static final CHILD_MODE_AUTHORITY:Ljava/lang/String; = "content://com.alibaba.ailabs.childmode.provider/childMode"

.field private static final TAG:Ljava/lang/String; = "BoxApplication-l"

.field public static instance:Landroid/app/Application;


# instance fields
.field private mChildContentObserver:Landroid/database/ContentObserver;

.field private mDownadExceutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 343
    new-instance v0, Lcom/alibaba/ailabs/appbox/BoxApplication$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/BoxApplication$4;-><init>(Lcom/alibaba/ailabs/appbox/BoxApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/BoxApplication;->mChildContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/BoxApplication;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/BoxApplication;->mDownadExceutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static getInstance()Landroid/app/Application;
    .locals 1

    .line 125
    sget-object v0, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    return-object v0
.end method

.method private handleAguiCallBack()V
    .locals 5

    .line 282
    sget-object v0, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getGatewayStatus()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "status"

    .line 283
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AgisManager.callback get onGatewayStatus - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BoxApplication-l"

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v2, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getUserStatus()Landroid/os/Bundle;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AgisManager.callback get userStatus - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 291
    new-instance v0, Lcom/alibaba/ailabs/appbox/BoxApplication$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/BoxApplication$2;-><init>(Lcom/alibaba/ailabs/appbox/BoxApplication;)V

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    const-string v0, "AgisManager.callback not registerAguiCommonCallback at market - "

    .line 298
    invoke-static {v4, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "AgisManager.callback registerAguiCommonCallback at market - "

    .line 300
    invoke-static {v4, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/BoxApplication$3;

    sget-object v2, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/appbox/BoxApplication$3;-><init>(Lcom/alibaba/ailabs/appbox/BoxApplication;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->registerAguiCommonCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;)V

    :goto_0
    return-void
.end method

.method private static initAppEnv(Landroid/app/Application;)V
    .locals 4

    const-string v0, "initAppEnv"

    const-string v1, "initAppEnv..."

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BoxApplication-l"

    const-string v1, "initAppEnv.DEBUG = false"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v2, "28139418"

    .line 140
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string/jumbo v2, "turandot"

    .line 141
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 142
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;->getAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v2, "gwa-"

    .line 143
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->logTag(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const/4 v2, 0x1

    .line 145
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->ignoreSysLogCfg(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->initWithoutEnvConfig(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    return-void
.end method

.method private initCacheData()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initDownloader(Landroid/app/Application;)V
    .locals 4

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 180
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/appbox/BoxApplication;->mDownadExceutor:Ljava/util/concurrent/ExecutorService;

    .line 181
    invoke-static {p1}, Lcom/taobao/downloader/Downloader;->init(Landroid/content/Context;)V

    .line 182
    new-instance p1, Lcom/alibaba/ailabs/appbox/BoxApplication$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/BoxApplication$1;-><init>(Lcom/alibaba/ailabs/appbox/BoxApplication;)V

    sput-object p1, Lcom/taobao/downloader/Configuration;->threadExecutor:Lcom/taobao/downloader/adpater/ThreadExecutor;

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDownloader.cost = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BoxApplication-l"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSencordParty()V
    .locals 8

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 85
    new-instance v2, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 88
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->crashHandlerDisable(Z)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v2

    .line 93
    new-instance v4, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    invoke-direct {v4}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;-><init>()V

    const-string v5, "28139418@android"

    .line 94
    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v4

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appChannel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v4

    .line 96
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v4

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appVersion(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v4

    .line 99
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

    move-result-object v4

    .line 101
    new-instance v5, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getEnvType()I

    move-result v7

    aget-object v6, v6, v7

    const-string v7, "INNER"

    invoke-direct {v5, v7, v6}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 102
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v5

    .line 103
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreStaging()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v5

    .line 106
    new-instance v6, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    sget-object v7, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-direct {v6, v7}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    const/4 v7, 0x0

    .line 107
    invoke-virtual {v6, v7}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->useTLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v6

    .line 108
    invoke-virtual {v6, v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setUTConfig(Lcom/alibaba/ailabs/genie/second/config/UTConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v5}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v2

    .line 110
    invoke-virtual {v2, v7}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v4}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setCrashReporterConfig(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v3, v3}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v2

    const-string v3, "hdd0ikex-evihnruk"

    .line 113
    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setCrash(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    .line 115
    sget-object v2, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->init()V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSencordParty.cost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxApplication-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static readSystemEnv()I
    .locals 8

    const-string v0, "BoxApplication-l"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 167
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    .line 168
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 169
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "persist.sys.genie.env"

    aput-object v5, v4, v1

    const-string v5, "0"

    aput-object v5, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    nop

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.sys.genie.env = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private registerMarketBroadcastReceiver()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private stopGlobalGesture()V
    .locals 5

    const-string v0, "BoxApplication-l"

    const-string/jumbo v1, "stopGlobalGesture"

    .line 376
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    .line 380
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 383
    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/BoxApplication;->stopService(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 69
    invoke-static {p1}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public init(Landroid/app/Application;)V
    .locals 3

    const-string v0, "init"

    const-string v1, "BoxApplication"

    .line 210
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sput-object p1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    .line 213
    sget-object v1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {v1}, Lcom/alibaba/ailabs/base/util/MarketBaseUtil;->isDebugSignature(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/alibaba/ailabs/base/util/BaseConstant;->setDebugFlag(Z)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BoxApplication-l"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/childmodel/common/_ContextUtils;->bind(Landroid/app/Application;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/ailabs/appbox/utils/GloabConstant;->lasttime:J

    const-string p1, "onCreate1"

    .line 223
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 238
    sget-object p1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ProcessUtil;->isBusinessProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    sget-object p1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/BoxApplication;->initAppEnv(Landroid/app/Application;)V

    :cond_0
    const-string p1, "GLog.init"

    .line 243
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 245
    sget-object p1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ProcessUtil;->isBusinessProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    sget-object p1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    :cond_1
    const-string p1, "ContextUtils.init"

    .line 248
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 252
    sget-object p1, Lcom/alibaba/ailabs/appbox/BoxApplication;->instance:Landroid/app/Application;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ProcessUtil;->isBusinessProcess(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/BoxApplication;->initSencordParty()V

    .line 255
    :cond_2
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    const-string p1, "initHandler"

    .line 257
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/BoxApplication;->initCacheData()V

    const-string p1, "initCacheData"

    .line 260
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/BoxApplication;->registerMarketBroadcastReceiver()V

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/BoxApplication;->startGlobalGesture()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "BoxApplication"

    const-string v1, "onCreate"

    .line 74
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTerminate()V
    .locals 2

    .line 356
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    const-string v0, "BoxApplication-l"

    const-string v1, "onTerminate"

    .line 357
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/alibaba/ailabs/base/util/LogTime;->clearTime()V

    .line 359
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/BoxApplication;->stopGlobalGesture()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startGlobalGesture()V
    .locals 5

    const-string v0, "BoxApplication-l"

    const-string/jumbo v1, "startGlobalGesture"

    .line 363
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    .line 367
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 370
    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/appbox/service/AccessibilityServiceGesture;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
