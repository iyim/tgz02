.class public Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;
.super Landroid/app/Application;
.source "SmartAppApplication.java"


# annotations
.annotation build Lcom/alibaba/ailabs/genie/annotation/ModulesApplication;
.end annotation


# static fields
.field public static final MTOP_ONLINE_APPKEY:Ljava/lang/String; = "26062527"

.field public static final MTOP_TTID:Ljava/lang/String; = "genie@launcher"

.field private static final TAG:Ljava/lang/String; = "SmartAppApplication"

.field private static volatile mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication; = null

.field public static sCurrentProcessName:Ljava/lang/String; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static sDebug:Z = false


# instance fields
.field private crashSDKUploadUUID:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->handler:Landroid/os/Handler;

    .line 385
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$5;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$5;-><init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->crashSDKUploadUUID:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->startIoTService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;
    .locals 1

    .line 72
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)Ljava/lang/Runnable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->crashSDKUploadUUID:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 663
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 664
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 665
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get app versionName error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SystemUtils"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "1.0"

    return-object p0
.end method

.method public static getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;
    .locals 1

    .line 423
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    return-object v0
.end method

.method private initBundleApplication(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 326
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 327
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/second/IBaseApplication;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Lcom/alibaba/ailabs/genie/second/IBaseApplication;

    sget-object p2, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-interface {p1, p2}, Lcom/alibaba/ailabs/genie/second/IBaseApplication;->init(Landroid/app/Application;)V

    goto :goto_0

    .line 329
    :cond_0
    instance-of v0, p1, Lcom/alibaba/ailabs/genie/second/IBaseProcessApplication;

    if-eqz v0, :cond_1

    .line 330
    check-cast p1, Lcom/alibaba/ailabs/genie/second/IBaseProcessApplication;

    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-interface {p1, v0, p2}, Lcom/alibaba/ailabs/genie/second/IBaseProcessApplication;->init(Landroid/app/Application;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 333
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initCrashReportConfig()V
    .locals 4

    const-string v0, "SmartAppApplication"

    const-string v1, "initCrashReportConfig."

    .line 358
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initAppEnv()V

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "mAddPvForNewDay"

    .line 363
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "mDisableSignals"

    const/16 v3, 0x4000

    .line 369
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "genielauncher"

    const-string v3, "mBuildId"

    .line 375
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lcom/uc/crashsdk/export/CrashApi;->createInstanceEx(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Bundle;)Lcom/uc/crashsdk/export/CrashApi;

    .line 377
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->crashSDKUploadUUID:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    const-string v1, "com.alibaba.ailabs.genie.smartapp:core"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/crashsdk/export/CrashApi;->setForeground(Z)V

    :cond_0
    return-void
.end method

.method private initMainProcess()V
    .locals 5

    .line 215
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initAppEnv()V

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initSecondSDK()V

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initUTSDK()V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================application oncreate, processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", begin11 time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SmartAppApplication"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;->getInstance()Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;->startService(Landroid/content/Context;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", begin33 time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$2;-><init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 266
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/UtIpcService;->registerUTService(Landroid/app/Application;)V

    .line 267
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initOtherDelay()V

    return-void
.end method

.method private initOtherDelay()V
    .locals 3

    .line 275
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$3;-><init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$4;-><init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V

    const-wide/32 v1, 0x88b8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initWindVane()V
    .locals 3

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================application oncreate, initWindVane, begin77 time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAppApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 619
    :try_start_0
    invoke-static {v0}, Landroid/taobao/windvane/WindVaneSDK;->openLog(Z)V

    .line 621
    sget-object v0, Landroid/taobao/windvane/config/EnvEnum;->ONLINE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-static {v0}, Landroid/taobao/windvane/WindVaneSDK;->setEnvMode(Landroid/taobao/windvane/config/EnvEnum;)V

    .line 623
    new-instance v0, Landroid/taobao/windvane/config/WVAppParams;

    invoke-direct {v0}, Landroid/taobao/windvane/config/WVAppParams;-><init>()V

    const-string v1, "26062527"

    .line 624
    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->appKey:Ljava/lang/String;

    const-string v1, "genie-smartapp"

    .line 625
    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->appTag:Ljava/lang/String;

    const-string v1, "1.0.1"

    .line 626
    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->appVersion:Ljava/lang/String;

    const-string v1, "Uv+oSMKtIFt+4W0hDRGe8LN+G6iae9BK7++bvofc2QbvhvrsdE06x5ztEgtWp5KMbhn/uUicmQ/duplH+NoUuw=="

    const-string v2, "C47RAzbTrFZu74Od68I33lQuHdxhYQOxjB1QbWsVbKO3sPHBpKcBk6nDre1Ycx78Bwtqv8rW2q52DackJci43A=="

    .line 627
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    .line 628
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "http://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.20-U4-3/release64/libkernelu4_zip_uc.so"

    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreRelease64(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "https://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.20-U4-3/release32/libkernelu4_zip_uc.so"

    .line 629
    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreRelease32(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "https://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.20-U4-3/debug64/libkernelu4_zip_uc.so"

    .line 630
    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreDebug64(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    move-result-object v1

    const-string v2, "https://ailabs.alibabausercontent.com/genie-screen-apk/genie_uc_core/8.6.2.20-U4-3/debug32/libkernelu4_zip_uc.so"

    .line 631
    invoke-virtual {v1, v2}, Lcom/taobao/uc/UCSoSettings;->setUCCoreDebug32(Ljava/lang/String;)Lcom/taobao/uc/UCSoSettings;

    .line 633
    invoke-static {p0, v0}, Landroid/taobao/windvane/WindVaneSDK;->init(Landroid/content/Context;Landroid/taobao/windvane/config/WVAppParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 635
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private matchProcess([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 293
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const-string v5, ":"

    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    :cond_0
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private modulesApplicationInit()V
    .locals 8

    .line 305
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    .line 307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 311
    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/ApplicationManager;->sModules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 312
    check-cast v2, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;

    .line 313
    iget-object v3, v2, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;->mProcessList:[Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->matchProcess([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 315
    iget-object v5, v2, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;->mApplication:Ljava/lang/Class;

    sget-object v6, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initBundleApplication(Ljava/lang/Class;Ljava/lang/String;)V

    .line 316
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBundleApplication key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/smartapp/MoudleApplicationInfo;->mApplication:Ljava/lang/Class;

    .line 317
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; cost time="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartAppApplication"

    .line 316
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startIoTProcWhenBusinessStart()V
    .locals 3

    .line 182
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->isOnLine(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SmartAppApplication"

    const-string v1, "GenieApi.isOnLine"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->startIoTService()V

    goto :goto_0

    .line 186
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$1;

    sget-object v2, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$1;-><init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->registerAguiCommonCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;)V

    :goto_0
    return-void
.end method

.method private startIoTService()V
    .locals 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startIoTService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAppApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.alibaba.ailabs.genie.iot"

    const-string v3, "com.alibaba.ailabs.genie.iot.house.HouseService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 210
    sget-object v1, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    const-string v0, "SmartAppApplication"

    const-string v1, "application attachBaseContext."

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sput-object p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mApplication:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    .line 95
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "cold_start"

    .line 98
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/utils/GenieTimeMonitorUtils;->beginTimeCalculate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 593
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 595
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 596
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 601
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v1, :cond_2

    goto :goto_0

    .line 606
    :cond_2
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 607
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 572
    const-class v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    monitor-enter v0

    .line 573
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 574
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mMainHandler:Landroid/os/Handler;

    .line 576
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 578
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public initAppEnv()V
    .locals 2

    .line 427
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;-><init>()V

    const/4 v1, 0x1

    .line 428
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->isDebug(Z)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    const-string v1, "26062527"

    .line 429
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->appKey(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 430
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/SecondaryUtil;->getAuthCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;

    .line 431
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->init(Landroid/app/Application;Lcom/alibaba/ailabs/genie/utils/AppEnv$AppEnvConfig;)V

    return-void
.end method

.method public initSecondSDK()V
    .locals 4

    .line 435
    new-instance v0, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    invoke-static {}, Lmtopsdk/mtop/domain/EnvModeEnum;->values()[Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getEnvType()I

    move-result v2

    aget-object v1, v1, v2

    const-string v2, "INNER"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;-><init>(Ljava/lang/String;Lmtopsdk/mtop/domain/EnvModeEnum;)V

    .line 436
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->isAdatepr(Z)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    .line 438
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getPreStaging()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->projectStaging(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    .line 442
    new-instance v2, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->channel(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 444
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/AppEnv;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->authCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v2

    .line 445
    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->crashHandlerDisable(Z)Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/config/UTConfig$Builder;->build()Lcom/alibaba/ailabs/genie/second/config/UTConfig;

    move-result-object v1

    .line 448
    new-instance v2, Lcom/alibaba/ailabs/genie/second/SDKInitController;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;-><init>(Landroid/app/Application;)V

    .line 449
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setMtopConfig(Lcom/alibaba/ailabs/genie/second/config/MtopConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setUTConfig(Lcom/alibaba/ailabs/genie/second/config/UTConfig;)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    const/4 v1, 0x0

    .line 452
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->openSdkLog(Z)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 453
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->setASRConfig(ZZ)Lcom/alibaba/ailabs/genie/second/SDKInitController;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/SDKInitController;->init()Lcom/alibaba/ailabs/genie/second/SDKInitController;

    .line 455
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/DefaultGlobalMtopSetting;->getMtopConfig()Lcom/alibaba/ailabs/genie/second/config/MtopConfig;

    move-result-object v0

    const-string v1, "SmartAppApplication"

    if-eqz v0, :cond_0

    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "global mtop projectStaging is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/config/MtopConfig;->getProjectStaging()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "global mtop setting is null"

    .line 459
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initUTSDK()V
    .locals 2

    .line 469
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;-><init>()V

    .line 470
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;->app_version:Ljava/lang/String;

    const-string v1, "26062527"

    .line 471
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;->app_key:Ljava/lang/String;

    .line 472
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/ut/UtReport;->initUT(Lcom/alibaba/ailabs/genie/utils/ut/UtConfig;)V

    return-void
.end method

.method public onCreate()V
    .locals 7

    .line 104
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=================application oncreate, begin time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmartAppApplication"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-boolean v2, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sDebug:Z

    if-eqz v2, :cond_0

    .line 110
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 113
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    .line 113
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 120
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/smartapp/utils/ApplicationUtils;->setApplication(Landroid/app/Application;)V

    .line 123
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/second/utils/ContextUtils;->init(Landroid/content/Context;)V

    .line 126
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->init(Landroid/content/Context;)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=================application oncreate, processName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/APPLog;->init()V

    .line 148
    :try_start_0
    sget-object v2, Lcom/alibaba/ailabs/genie/smartapp/DensityManager;->sMetaBeans:Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/density/GenieDensityInstaller;->installIfNeed(Landroid/app/Application;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "application main process oncreate."

    .line 155
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initMainProcess()V

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin99 time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin44 time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initCrashReportConfig()V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin55 time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin100 time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->modulesApplicationInit()V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", begin101 time="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v2, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    const-string v5, "com.alibaba.ailabs.genie.smartapp:business"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->startIoTProcWhenBusinessStart()V

    .line 175
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cost time="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "SmartAppApplication"

    const-string v1, "onLowMemory"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 401
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 417
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 418
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->unregisterUnbindReceiver(Landroid/content/Context;)V

    const-string v0, "SmartAppApplication"

    const-string v1, "#####onTerminate"

    .line 419
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 406
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAppApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/second/utils/MemoryMonitorUtils;->onTrimMemory(Landroid/content/Context;I)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    const-string v0, "clearMemory"

    .line 410
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->trimMemory(I)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 582
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method
