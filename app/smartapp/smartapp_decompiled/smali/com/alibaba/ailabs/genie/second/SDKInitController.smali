.class public Lcom/alibaba/ailabs/genie/second/SDKInitController;
.super Ljava/lang/Object;
.source "SDKInitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKInitController"


# instance fields
.field private hasInitASRCompleted:Z

.field private hasInitCRCompleted:Z

.field private hasInitCompleted:Z

.field private hasInitMtopCompleted:Z

.field private hasInitSGCompleted:Z

.field private hasInitUTCompleted:Z

.field private mASRConfig:Z

.field private mApplication:Landroid/app/Application;

.field private mBackground:Z

.field private mContext:Landroid/content/Context;

.field private mCrashAppId:Ljava/lang/String;

.field private mCrashReporterConfig:Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

.field private mDisplayASRUI:Z

.field private mInitFinishListener:Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;

.field private mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

.field private mOpenSdkLog:Z

.field private mUTConfig:Lcom/alibaba/ailabs/genie/second/config/UTConfig;

.field private mUseTLog:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mApplication:Landroid/app/Application;

    .line 79
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->init(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 83
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->enable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/UTConfig;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mUTConfig:Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mOpenSdkLog:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/second/SDKInitController;)Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mCrashReporterConfig:Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

    return-object p0
.end method

.method private initAliTVASRManager()V
    .locals 1

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitASRCompleted:Z

    return-void
.end method

.method private initBroadcast()V
    .locals 3

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInit()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/genie/second/genie/UserReceiver;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/genie/UserReceiver;-><init>()V

    .line 257
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    .line 260
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/UserReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private initCrashReporter()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initMtop()V
    .locals 3

    .line 271
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mUseTLog:Z

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setTLogEnabled(Z)V

    .line 272
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mOpenSdkLog:Z

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setPrintLog(Z)V

    .line 273
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->setLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)V

    .line 279
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/intf/MtopSetting;->setAppKeyIndex(Ljava/lang/String;II)V

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/mtop/intf/MtopSetting;->setAppVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/mtop/intf/MtopSetting;->setAuthCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getTtid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/intf/Mtop;->instance(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/Mtop;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lmtopsdk/mtop/intf/Mtop;

    .line 288
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->setMtop(Lmtopsdk/mtop/intf/Mtop;)V

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitMtopCompleted:Z

    return-void
.end method

.method private initSecurityGuard()V
    .locals 2

    .line 267
    invoke-static {}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInitializer()Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/taobao/wireless/security/sdk/initialize/IInitializeComponent;->initialize(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitSGCompleted:Z

    return-void
.end method

.method private initUserTrack()V
    .locals 4

    const/4 v0, 0x0

    .line 315
    sput-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bTimeStampAdjust:Z

    const/4 v0, 0x1

    .line 316
    invoke-static {v0}, Lcom/ut/mini/UTAnalytics;->setDisableWindvane(Z)V

    .line 317
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mApplication:Landroid/app/Application;

    new-instance v3, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController$2;-><init>(Lcom/alibaba/ailabs/genie/second/SDKInitController;)V

    invoke-virtual {v1, v2, v3}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V

    .line 372
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitUTCompleted:Z

    return-void
.end method

.method private internalInit()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 214
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->init(Landroid/content/Context;)V

    .line 216
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->initBroadcast()V

    .line 218
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->initSecurityGuard()V

    .line 219
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitSGCompleted:Z

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    if-eqz v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->initMtop()V

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->isAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtop()Lmtopsdk/mtop/intf/Mtop;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->setMtopInstance(Lmtopsdk/mtop/intf/Mtop;)V

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitMtopCompleted:Z

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mUTConfig:Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    if-eqz v0, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->initUserTrack()V

    .line 231
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitUTCompleted:Z

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mCrashReporterConfig:Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

    if-eqz v0, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->initCrashReporter()V

    .line 236
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCRCompleted:Z

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mCrashAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mCrashAppId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mOpenSdkLog:Z

    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;Z)Lcom/uc/crashsdk/export/CrashApi;

    .line 243
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mASRConfig:Z

    if-eqz v0, :cond_5

    .line 244
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->initAliTVASRManager()V

    .line 245
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitASRCompleted:Z

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized hasInit()Z
    .locals 1

    monitor-enter p0

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->internalInit()V

    return-object p0
.end method

.method public declared-synchronized initAsync(Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mInitFinishListener:Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;

    .line 194
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->internalInit()V

    .line 196
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mInitFinishListener:Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;

    if-eqz p1, :cond_1

    .line 197
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->hasInitCompleted:Z

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mInitFinishListener:Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;->onSuccess()V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mInitFinishListener:Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/second/SDKInitController$IInitFinishListener;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mOpenSdkLog:Z

    return-object p0
.end method

.method public setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mASRConfig:Z

    .line 156
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mDisplayASRUI:Z

    return-object p0
.end method

.method public setASRConfig(ZZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mASRConfig:Z

    .line 168
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mDisplayASRUI:Z

    .line 169
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mBackground:Z

    return-object p0
.end method

.method public setCrash(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mCrashAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setCrashReporterConfig(Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mCrashReporterConfig:Lcom/alibaba/ailabs/genie/second/config/CrashReporterConfig;

    return-object p0
.end method

.method public setIPv6OnlySupport()Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIpv6BlackListEnable(Z)V

    .line 89
    sget-object v0, Lcom/alibaba/ailabs/genie/second/config/IPConfig;->AMDC_INIT_HOST:[Ljava/lang/String;

    sput-object v0, Lanet/channel/strategy/dispatch/DispatchConstants;->initHostArray:[Ljava/lang/String;

    .line 91
    invoke-static {}, Lanet/channel/util/Inet64Util;->startIpStackDetect()V

    .line 93
    new-instance v0, Lcom/alibaba/ailabs/genie/second/SDKInitController$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController$1;-><init>(Lcom/alibaba/ailabs/genie/second/SDKInitController;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    return-object p0
.end method

.method public setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    .line 130
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mMtopConfig:Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)V

    return-object p0
.end method

.method public setUTConfig(Lcom/alibaba/ailabs/genie/second/config/UTConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mUTConfig:Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    return-object p0
.end method

.method public useTLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/SDKInitController;->mUseTLog:Z

    return-object p0
.end method
