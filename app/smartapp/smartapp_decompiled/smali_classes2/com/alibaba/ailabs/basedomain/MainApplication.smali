.class public Lcom/alibaba/ailabs/basedomain/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/IBaseApplication;


# static fields
.field public static final MTOP_ONLINE_APPKEY:Ljava/lang/String; = "25036185"

.field public static final MTOP_TTID:Ljava/lang/String; = "genie@baseDomain"

.field public static final PKG:Ljava/lang/String; = "com.alibaba.ailabs.basedomain"

.field private static final TAG:Ljava/lang/String; = "BasedomainMainApplication"

.field public static final debugMode:Z = true

.field private static volatile mApplication:Lcom/alibaba/ailabs/basedomain/MainApplication;

.field private static mContext:Landroid/content/Context;

.field public static volatile mRealApplication:Landroid/app/Application;


# instance fields
.field private mAllLivedActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mAllLivedActivity:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/basedomain/MainApplication;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mVisibleActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/MainApplication;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mAllLivedActivity:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static declared-synchronized getApplication()Lcom/alibaba/ailabs/basedomain/MainApplication;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/basedomain/MainApplication;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/MainApplication;->mApplication:Lcom/alibaba/ailabs/basedomain/MainApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 168
    sget-object v0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mRealApplication:Landroid/app/Application;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 180
    sget-object v0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mRealApplication:Landroid/app/Application;

    new-instance v1, Lcom/alibaba/ailabs/basedomain/MainApplication$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/MainApplication$3;-><init>(Lcom/alibaba/ailabs/basedomain/MainApplication;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private initAppEnv()V
    .locals 2

    .line 116
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "25036185"

    .line 118
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 119
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;->getAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 120
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    return-void
.end method

.method private initSecondSDK()V
    .locals 5

    .line 124
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getEnvType()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "INNER"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 125
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->isAdatepr(Z)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreEnvIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    .line 132
    new-instance v2, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 134
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 135
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->crashHandlerDisable(Z)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v2

    .line 150
    new-instance v3, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;-><init>()V

    .line 151
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v3

    .line 152
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appChannel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v3

    .line 153
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v3

    .line 155
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppUtils;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->appVersion(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

    move-result-object v3

    .line 158
    new-instance v4, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-direct {v4, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    .line 159
    invoke-virtual {v4, v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setUTConfig(Lcom/alibaba/ailabs/genie/second/config/UTConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setCrashReporterConfig(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 163
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 4

    const-string v0, "BasedomainMainApplication"

    const-string v1, "MainApplication init begin"

    .line 51
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sput-object p0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mApplication:Lcom/alibaba/ailabs/basedomain/MainApplication;

    .line 53
    sput-object p1, Lcom/alibaba/ailabs/basedomain/MainApplication;->mRealApplication:Landroid/app/Application;

    .line 54
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/basedomain/MainApplication;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/misc/ProcessUtil;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainApplication init begin; processName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.alibaba.ailabs.genie.smartapp:business"

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/tg/UtilsConfig;->setAppContext(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 63
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->enable(Z)V

    .line 65
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/MainApplication;->init()V

    const-string p1, "MainApplication init end"

    .line 67
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance p1, Lcom/alibaba/ailabs/basedomain/MainApplication$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/basedomain/MainApplication$1;-><init>(Lcom/alibaba/ailabs/basedomain/MainApplication;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isAnyVisibleActivity()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mVisibleActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "BasedomainMainApplication"

    const-string v1, "MainApplication init begin"

    .line 86
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sput-object p0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mApplication:Lcom/alibaba/ailabs/basedomain/MainApplication;

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/basedomain/MainApplication;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/tg/UtilsConfig;->getInstance()Lcom/alibaba/ailabs/tg/UtilsConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/tg/UtilsConfig;->setAppContext(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 91
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->enable(Z)V

    .line 98
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/MainApplication;->init()V

    const-string v1, "MainApplication init end"

    .line 100
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/alibaba/ailabs/basedomain/MainApplication$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/MainApplication$2;-><init>(Lcom/alibaba/ailabs/basedomain/MainApplication;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/NetworkTaskPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
