.class public Landroid/taobao/windvane/config/WVConfigManager;
.super Ljava/lang/Object;
.source "WVConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/config/WVConfigManager$WVPageEventListener;,
        Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;
    }
.end annotation


# static fields
.field public static final CONFIGNAME_COMMON:Ljava/lang/String; = "common"

.field public static final CONFIGNAME_COOKIE:Ljava/lang/String; = "cookie_black_list"

.field public static final CONFIGNAME_CUSTOM:Ljava/lang/String; = "customs"

.field public static final CONFIGNAME_DOMAIN:Ljava/lang/String; = "domain"

.field public static final CONFIGNAME_LOCALE:Ljava/lang/String; = "locale"

.field public static final CONFIGNAME_MONITOR:Ljava/lang/String; = "monitor"

.field public static final CONFIGNAME_PACKAGE:Ljava/lang/String; = "package"

.field public static final CONFIGNAME_PREFIXES:Ljava/lang/String; = "prefixes"

.field public static final CONFIGNAME_URL_CONFIG:Ljava/lang/String; = "url_config"

.field public static final CONFIG_UPDATETIME:Ljava/lang/String; = "_updateTime"

.field public static final CONFIG_UPLOADDATA:Ljava/lang/String; = "_uploadData"

.field private static final DEFAULT_DEMAIN:Ljava/lang/String; = "https://wvcfg.alicdn.com/"

.field public static final SPNAME_CONFIG:Ljava/lang/String; = "wv_main_config"

.field private static final TAG:Ljava/lang/String; = "WVConfigManager"

.field private static volatile instance:Landroid/taobao/windvane/config/WVConfigManager; = null

.field public static launch:Z = false

.field private static updateInterval:J = 0x493e0L

.field private static updateIntervalServer:J = 0x493e0L

.field private static updateTime:J


# instance fields
.field private configDomain:Ljava/lang/String;

.field private enableUpdateConfig:Z

.field private mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/config/WVConfigHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mOtherConfigMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/config/IConfig;",
            ">;"
        }
    .end annotation
.end field

.field private updateConfigCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isTaobao()Z

    move-result v0

    sput-boolean v0, Landroid/taobao/windvane/config/WVConfigManager;->launch:Z

    const/4 v0, 0x0

    .line 79
    sput-object v0, Landroid/taobao/windvane/config/WVConfigManager;->instance:Landroid/taobao/windvane/config/WVConfigManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://wvcfg.alicdn.com/"

    .line 41
    iput-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->configDomain:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->enableUpdateConfig:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mOtherConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    new-instance v1, Landroid/taobao/windvane/config/WVConfigManager$WVPageEventListener;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVConfigManager$WVPageEventListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    return-void
.end method

.method static synthetic access$000()Landroid/taobao/windvane/config/WVConfigManager;
    .locals 1

    .line 39
    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager;->instance:Landroid/taobao/windvane/config/WVConfigManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/config/WVConfigManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/config/WVConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/taobao/windvane/config/WVConfigManager;->doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Landroid/taobao/windvane/config/WVConfigManager;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/taobao/windvane/config/WVConfigManager;->updateImmediately(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Landroid/taobao/windvane/config/WVConfigManager;)I
    .locals 0

    .line 39
    iget p0, p0, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    return p0
.end method

.method static synthetic access$402(Landroid/taobao/windvane/config/WVConfigManager;I)I
    .locals 0

    .line 39
    iput p1, p0, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    return p1
.end method

.method static synthetic access$404(Landroid/taobao/windvane/config/WVConfigManager;)I
    .locals 1

    .line 39
    iget v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    return v0
.end method

.method private doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 12

    move-object v8, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p4

    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    const-string v1, "3"

    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromZCache3_0:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-eq v7, v0, :cond_0

    goto/16 :goto_2

    .line 386
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 388
    :try_start_0
    invoke-static {p2, p1}, Landroid/taobao/windvane/config/WVConfigUtils;->isNeedUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 394
    :goto_0
    sget-object v5, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 398
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update key=["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "],needUpdate=["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WVConfigManager"

    invoke-static {v5, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeLocaleChange:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-ne v7, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_5

    .line 405
    iget-object v0, v8, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/taobao/windvane/config/WVConfigHandler;

    if-eqz v10, :cond_6

    .line 408
    invoke-virtual {v10}, Landroid/taobao/windvane/config/WVConfigHandler;->getUpdateStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 411
    sget-wide v5, Landroid/taobao/windvane/config/WVConfigManager;->updateTime:J

    sub-long/2addr v0, v5

    sget-wide v5, Landroid/taobao/windvane/config/WVConfigManager;->updateInterval:J

    cmp-long v11, v0, v5

    if-gez v11, :cond_4

    return-void

    .line 415
    :cond_4
    invoke-virtual {v10, v2}, Landroid/taobao/windvane/config/WVConfigHandler;->setUpdateStatus(Z)V

    .line 416
    invoke-virtual {v10, p2}, Landroid/taobao/windvane/config/WVConfigHandler;->setSnapshotN(Ljava/lang/String;)V

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 419
    new-instance v11, Landroid/taobao/windvane/config/WVConfigManager$4;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/taobao/windvane/config/WVConfigManager$4;-><init>(Landroid/taobao/windvane/config/WVConfigManager;Landroid/taobao/windvane/config/WVConfigHandler;Ljava/lang/String;Ljava/lang/String;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    move-object v0, p3

    invoke-virtual {v10, p3, v11}, Landroid/taobao/windvane/config/WVConfigHandler;->update(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigUpdateCallback;)V

    goto :goto_1

    .line 472
    :cond_5
    iget v0, v8, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    add-int/2addr v0, v2

    iput v0, v8, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    .line 475
    :cond_6
    :goto_1
    iget v0, v8, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    iget-object v1, v8, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 476
    iput v9, v8, Landroid/taobao/windvane/config/WVConfigManager;->updateConfigCount:I

    .line 477
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0x1772

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    :cond_7
    :goto_2
    return-void
.end method

.method public static getInstance()Landroid/taobao/windvane/config/WVConfigManager;
    .locals 2

    .line 121
    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager;->instance:Landroid/taobao/windvane/config/WVConfigManager;

    if-nez v0, :cond_1

    .line 122
    const-class v0, Landroid/taobao/windvane/config/WVConfigManager;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/config/WVConfigManager;->instance:Landroid/taobao/windvane/config/WVConfigManager;

    if-nez v1, :cond_0

    .line 124
    new-instance v1, Landroid/taobao/windvane/config/WVConfigManager;

    invoke-direct {v1}, Landroid/taobao/windvane/config/WVConfigManager;-><init>()V

    sput-object v1, Landroid/taobao/windvane/config/WVConfigManager;->instance:Landroid/taobao/windvane/config/WVConfigManager;

    .line 126
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 128
    :cond_1
    :goto_0
    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager;->instance:Landroid/taobao/windvane/config/WVConfigManager;

    return-object v0
.end method

.method private updateImmediately(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 5

    .line 150
    iget-boolean v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->enableUpdateConfig:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->checkAppKeyAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 154
    invoke-static {}, Landroid/taobao/windvane/connect/ConnectManager;->getInstance()Landroid/taobao/windvane/connect/ConnectManager;

    move-result-object v2

    .line 155
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->getTargetValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {p0, v4, v4, v3, v4}, Landroid/taobao/windvane/config/WVConfigManager;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/taobao/windvane/config/WVConfigManager$1;

    invoke-direct {v4, p0, v0, v1, p1}, Landroid/taobao/windvane/config/WVConfigManager$1;-><init>(Landroid/taobao/windvane/config/WVConfigManager;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    .line 154
    invoke-virtual {v2, v3, v4}, Landroid/taobao/windvane/connect/ConnectManager;->connectSync(Ljava/lang/String;Landroid/taobao/windvane/connect/HttpConnectListener;)Landroid/taobao/windvane/connect/HttpResponse;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkIfUpdate(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)Z
    .locals 9

    .line 241
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromZCache3_0:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-eq p1, v0, :cond_0

    return v1

    .line 244
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 246
    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeLocaleChange:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    sget-wide v5, Landroid/taobao/windvane/config/WVConfigManager;->updateTime:J

    sub-long v5, v2, v5

    sget-wide v7, Landroid/taobao/windvane/config/WVConfigManager;->updateInterval:J

    cmp-long p1, v5, v7

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    .line 251
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->checkAppKeyAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    sput-wide v2, Landroid/taobao/windvane/config/WVConfigManager;->updateTime:J

    .line 261
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->checkAppKeyAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 262
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "package_uploadData"

    const-string/jumbo v3, "wv_main_config"

    const-string v5, "0"

    .line 263
    invoke-static {v3, v2, v5}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uploadDate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WVConfigManager.updateConfig ==> "

    invoke-static {v7, v6}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v5, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_8

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppService;->getWvPackageAppConfig()Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    move-result-object v6

    invoke-interface {v6}, Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;->getGlobalConfig()Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->getAppsTable()Ljava/util/Map;

    move-result-object v6

    .line 269
    :goto_2
    sget-object v7, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v7, v7, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_6

    .line 270
    sget-object v7, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v7, v7, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    if-eqz v7, :cond_5

    .line 271
    invoke-virtual {v7}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isAppInstalled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 272
    iget-object v8, v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    sget-object v7, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v7, v7, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    array-length v7, v7

    sub-int/2addr v7, v4

    if-eq v1, v7, :cond_5

    const-string v7, ","

    .line 274
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    :cond_6
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 279
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->commitZCacheDiurnalOverview(Ljava/lang/String;)V

    .line 281
    :cond_7
    invoke-static {v3, v2, v0}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return p1
.end method

.method public configDomainByEnv()Ljava/lang/String;
    .locals 3

    .line 615
    sget-object v0, Landroid/taobao/windvane/config/WVConfigManager$5;->$SwitchMap$android$taobao$windvane$config$EnvEnum:[I

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v1}, Landroid/taobao/windvane/config/EnvEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://wvcfg.alicdn.com"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const-string v0, "https://h5.waptest.taobao.com"

    return-object v0

    :cond_1
    const-string v0, "http://h5.wapa.taobao.com"

    return-object v0

    :cond_2
    return-object v2
.end method

.method public getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 558
    invoke-static {}, Landroid/taobao/windvane/config/WVLocaleConfig;->getInstance()Landroid/taobao/windvane/config/WVLocaleConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/config/WVLocaleConfig;->mCurrentLocale:Ljava/lang/String;

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    iget-object v2, p0, Landroid/taobao/windvane/config/WVConfigManager;->configDomain:Ljava/lang/String;

    const-string v3, "https://wvcfg.alicdn.com/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    iget-object v2, p0, Landroid/taobao/windvane/config/WVConfigManager;->configDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVConfigManager;->configDomainByEnv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, "/bizcache/5/windvane/"

    .line 566
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    .line 568
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    .line 570
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p4

    invoke-virtual {p4}, Landroid/taobao/windvane/config/GlobalConfig;->getAppKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->dealAppVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "a"

    if-nez p3, :cond_3

    const-string/jumbo p2, "wv_main_config"

    const-string p3, "abt"

    .line 582
    invoke-static {p2, p3, p1}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p2, 0x0

    .line 583
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p4, 0x61

    if-gt p4, p2, :cond_2

    const/16 p4, 0x63

    if-le p2, p4, :cond_3

    :cond_2
    move-object p3, p1

    .line 588
    :cond_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/settings.json"

    .line 589
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CONFIG_URL"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getConfigVersions()Ljava/util/HashMap;
    .locals 10

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 516
    iget-object v1, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_2

    .line 517
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 518
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 519
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "wv_main_config"

    const-string v4, "0"

    .line 520
    invoke-static {v3, v2, v4}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    .line 521
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 522
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 523
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    const-string v3, "NO VERSION"

    goto :goto_1

    .line 525
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    const-string v3, "CUSTOM VERION"

    .line 529
    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public registedHandler(Ljava/lang/String;)Landroid/taobao/windvane/config/WVConfigHandler;
    .locals 1

    .line 485
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/config/WVConfigHandler;

    :goto_0
    return-object p1
.end method

.method public registerConfigImpl(Ljava/lang/String;Landroid/taobao/windvane/config/IConfig;)V
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mOtherConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerHandler(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigHandler;)V
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetConfig()V
    .locals 4

    .line 501
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 503
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "wv_main_config"

    const-string v3, "0"

    .line 505
    invoke-static {v2, v1, v3}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 508
    sput-wide v0, Landroid/taobao/windvane/config/WVConfigManager;->updateTime:J

    return-void
.end method

.method public setConfigDomain(Ljava/lang/String;)V
    .locals 2

    .line 546
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iput-object p1, p0, Landroid/taobao/windvane/config/WVConfigManager;->configDomain:Ljava/lang/String;

    .line 549
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeConfigDomain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WVConfigManager"

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUpdateConfigEnable(Z)V
    .locals 0

    .line 142
    iput-boolean p1, p0, Landroid/taobao/windvane/config/WVConfigManager;->enableUpdateConfig:Z

    return-void
.end method

.method public setUpdateInterval(J)V
    .locals 0

    .line 539
    sput-wide p1, Landroid/taobao/windvane/config/WVConfigManager;->updateIntervalServer:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateConfig(Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 295
    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->zType:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "]"

    const-string v5, "ZCache"

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 296
    sget-object v2, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeAppActive:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-eq p1, v2, :cond_2

    sget-object v2, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromTypeLocaleChange:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    sget-wide v7, Landroid/taobao/windvane/config/WVConfigManager;->updateTime:J

    sub-long v7, v0, v7

    sget-wide v9, Landroid/taobao/windvane/config/WVConfigManager;->updateInterval:J

    cmp-long v2, v7, v9

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_5

    const-string/jumbo v7, "update config zcache 2.0"

    .line 302
    invoke-static {v5, v7}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 305
    :cond_3
    sget-object v2, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->WVConfigUpdateFromZCache3_0:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    if-eq p1, v2, :cond_4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skip update config, updateType=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo v2, "update config zcache 3.0"

    .line 309
    invoke-static {v5, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    .line 313
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->checkAppKeyAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 314
    sput-wide v0, Landroid/taobao/windvane/config/WVConfigManager;->updateTime:J

    .line 315
    sget-boolean v0, Landroid/taobao/windvane/config/WVConfigManager;->launch:Z

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x7530

    .line 316
    sput-wide v0, Landroid/taobao/windvane/config/WVConfigManager;->updateInterval:J

    goto :goto_3

    .line 318
    :cond_6
    sget-wide v0, Landroid/taobao/windvane/config/WVConfigManager;->updateIntervalServer:J

    sput-wide v0, Landroid/taobao/windvane/config/WVConfigManager;->updateInterval:J

    .line 320
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateInterval=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Landroid/taobao/windvane/config/WVConfigManager;->updateInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVConfigManager"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/taobao/windvane/config/WVConfigManager$2;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/config/WVConfigManager$2;-><init>(Landroid/taobao/windvane/config/WVConfigManager;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 329
    :cond_7
    invoke-static {}, Landroid/taobao/windvane/config/WVConfigUtils;->checkAppKeyAvailable()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 330
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "package_uploadData"

    const-string/jumbo v1, "wv_main_config"

    const-string v2, "0"

    .line 331
    invoke-static {v1, v0, v2}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadDate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WVConfigManager.updateConfig ==> "

    invoke-static {v5, v4}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_b

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppService;->getWvPackageAppConfig()Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    move-result-object v4

    invoke-interface {v4}, Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;->getGlobalConfig()Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipGlobalConfig;->getAppsTable()Ljava/util/Map;

    move-result-object v4

    .line 337
    :goto_4
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v5, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    .line 338
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v5, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    if-eqz v5, :cond_8

    .line 339
    invoke-virtual {v5}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isAppInstalled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 340
    iget-object v7, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v5, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 341
    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v5, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->monitoredApps:[Ljava/lang/String;

    array-length v5, v5

    sub-int/2addr v5, v6

    if-eq v3, v5, :cond_8

    const-string v5, ","

    .line 342
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 346
    :cond_9
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 347
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;->commitZCacheDiurnalOverview(Ljava/lang/String;)V

    .line 349
    :cond_a
    invoke-static {v1, v0, p1}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 8

    .line 361
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 365
    invoke-static {}, Landroid/taobao/windvane/thread/WVThreadPool;->getInstance()Landroid/taobao/windvane/thread/WVThreadPool;

    move-result-object v0

    new-instance v7, Landroid/taobao/windvane/config/WVConfigManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/taobao/windvane/config/WVConfigManager$3;-><init>(Landroid/taobao/windvane/config/WVConfigManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    invoke-virtual {v0, v7}, Landroid/taobao/windvane/thread/WVThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/taobao/windvane/config/WVConfigManager;->doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateConfigByKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 608
    iget-object v0, p0, Landroid/taobao/windvane/config/WVConfigManager;->mOtherConfigMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/taobao/windvane/config/IConfig;

    if-eqz p1, :cond_0

    .line 610
    invoke-interface {p1, p2}, Landroid/taobao/windvane/config/IConfig;->setConfig(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
