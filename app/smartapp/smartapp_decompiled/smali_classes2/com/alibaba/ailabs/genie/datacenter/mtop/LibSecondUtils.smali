.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/LibSecondUtils;
.super Ljava/lang/Object;
.source "LibSecondUtils.java"


# static fields
.field public static final MTOP_ONLINE_APPKEY:Ljava/lang/String; = "25047489"

.field public static final MTOP_TTID:Ljava/lang/String; = "genie@childMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/app/Application;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/LibSecondUtils;->initAppEnv(Landroid/app/Application;)V

    .line 22
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/LibSecondUtils;->initSecondSDK(Landroid/app/Application;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static initAppEnv(Landroid/app/Application;)V
    .locals 2

    .line 25
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "25047489"

    .line 27
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 28
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;->getAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 29
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    return-void
.end method

.method private static initSecondSDK(Landroid/app/Application;)V
    .locals 4

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getEnvType()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "INNER"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 34
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->isAdatepr(Z)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreEnvIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    .line 41
    new-instance v2, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->crashHandlerDisable(Z)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v2

    .line 47
    new-instance v3, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    .line 48
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 49
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setUTConfig(Lcom/alibaba/ailabs/genie/second/config/UTConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 51
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 52
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    return-void
.end method
