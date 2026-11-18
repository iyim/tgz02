.class public Lcom/alibaba/ailabs/genie/commonpay/PayApplication;
.super Landroid/app/Application;
.source "PayApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field private static final TAG:Ljava/lang/String; = "PayApplication"

.field private static volatile mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 81
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/PayApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static initAppEnv(Landroid/app/Application;)V
    .locals 2

    const-string v0, "PayApplication"

    const-string v1, "initAppEnv..."

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "28194131"

    .line 46
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 47
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;->getAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "turandot"

    .line 48
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "pay"

    .line 49
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->logTag(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 50
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    return-void
.end method

.method public static initSecondLibs(Landroid/app/Application;)V
    .locals 7

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "PayApplication"

    const-string v3, "initSecondLibs..."

    .line 55
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "staging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreStaging()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v3, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 62
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->crashHandlerDisable(Z)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v3

    .line 66
    new-instance v4, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v5

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getEnvType()I

    move-result v6

    aget-object v5, v5, v6

    const-string v6, "INNER"

    invoke-direct {v4, v6, v5}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v4

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreStaging()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v4

    .line 71
    new-instance v5, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-direct {v5, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    .line 72
    invoke-virtual {v5, v3}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setUTConfig(Lcom/alibaba/ailabs/genie/second/config/UTConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 73
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 74
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->isDebug()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSecondLibs.cost = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->init(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 32
    sput-object p0, Lcom/alibaba/ailabs/genie/commonpay/PayApplication;->mApplication:Landroid/app/Application;

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/PayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/commonpay/PayApplication;->initAppEnv(Landroid/app/Application;)V

    .line 37
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/commonpay/PayApplication;->initSecondLibs(Landroid/app/Application;)V

    return-void
.end method
