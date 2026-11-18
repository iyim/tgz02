.class public Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;
.super Ljava/lang/Object;
.source "ProductSettingManager.java"


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation


# static fields
.field private static final KEY_BOOT_MODE_INFO:Ljava/lang/String; = "powerOnSetting"

.field private static volatile sInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;


# instance fields
.field private isListener:Z

.field private isSilenceListener:Z

.field private listener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStartShowPicTime:J

.field private silencelistener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isListener:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isSilenceListener:Z

    .line 66
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->listener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    .line 78
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->silencelistener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    .line 103
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)Lcom/alibaba/ailabs/genie/data/GenieDataListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->listener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isListener:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->changeBootInfoAndJump()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)Lcom/alibaba/ailabs/genie/data/GenieDataListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->silencelistener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    return-object p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isSilenceListener:Z

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->startJumpApp(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private changeBootInfoAndJump()V
    .locals 3

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getBootInfo(Z)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v0

    const-string v1, "BootApp"

    if-eqz v0, :cond_0

    const-string v2, "changeBootInfoAndJump info"

    .line 148
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->modeChangeJump(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->startJumpApp(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    .line 153
    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    const-string v2, "followLast"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startApkService()V

    const-string v0, "changeBootInfoAndJump info NULL"

    .line 163
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getBootInfoByFile()Ljava/lang/String;
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    const-string v1, "product_attribute_mirror"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v2, "data"

    .line 431
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "powerOnSetting"

    .line 435
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "value"

    .line 437
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "BootApp"

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powerOnSettingFile\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .line 108
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->sInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    if-nez v0, :cond_1

    .line 109
    const-class v0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->sInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->sInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    .line 113
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->sInstance:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    return-object v0
.end method

.method private installApk(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 3

    .line 247
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getApp()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->downloadAndInstall(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V

    return-void
.end method

.method private modeChangeJump(Ljava/lang/String;)V
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modeChangeJump : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootApp"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->isChildMode()Z

    move-result v0

    const-string v2, "default"

    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "kidMode"

    .line 177
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const-string p1, "modeChangeJump needJump"

    .line 182
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->goHomeActivityAndSetProperties()V

    :cond_2
    return-void
.end method

.method private startActivityForStatus(Landroid/content/Intent;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "BootApp"

    .line 403
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mStartShowPicTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImgShowTime()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->calcTimeoutTime(JJJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    .line 405
    sget-object p1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpDelay:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    return-object p1

    .line 408
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start activity tmpIntent = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 412
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start activity uri = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string p2, "delayCloseLoadWindow"

    const-string v1, "180000"

    .line 415
    invoke-virtual {v5, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, ""

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    .line 418
    :goto_0
    sget-object p1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpSuccess:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start activity erro = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object p1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpErro:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    return-object p1
.end method

.method private startJumpApp(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 11

    .line 192
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnType()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    const-string v4, "BootApp"

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_2

    const-string v0, "-- start IMG show"

    .line 193
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnStartPictureUrl()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImgShowTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->showLoadingWindow(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mStartShowPicTime:J

    .line 202
    iget-wide v4, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mStartShowPicTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImgShowTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->calcTimeoutTime(JJJ)J

    move-result-wide v0

    .line 203
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$4;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$4;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getApp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mStartShowPicTime:J

    const-string v0, "-- start APP show"

    .line 213
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->jumpAction(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    move-result-object v0

    .line 215
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->NotInstall:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    if-ne v0, v1, :cond_3

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->showLoadingWindow(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->installApk(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    return-void

    .line 221
    :cond_3
    sget-object v1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpDelay:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    if-ne v0, v1, :cond_4

    .line 222
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->showLoadingWindow(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-wide v5, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mStartShowPicTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImgShowTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long v9, v0, v2

    invoke-static/range {v5 .. v10}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->calcTimeoutTime(JJJ)J

    move-result-wide v0

    .line 224
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$5;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$5;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    const-string p1, "-- ending APP show"

    .line 233
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->dismissLoadingView()V

    .line 238
    :cond_5
    :goto_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startApkService()V

    return-void
.end method


# virtual methods
.method public getBootInfo(Z)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object p1

    const-string v1, "powerOnSetting"

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getProductSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 290
    :goto_0
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "BootApp"

    if-eqz v1, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getBootInfoByFile()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "launchAppInfo NULL"

    .line 294
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 299
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchAppInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    new-instance p1, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "powerOnMode"

    .line 304
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setMode(Ljava/lang/String;)V

    const-string v0, "powerOnAnimationURL"

    .line 306
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "powerOffAnimationURL"

    .line 307
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "powerOnAnimationMd5"

    .line 308
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "powerOffAnimationMd5"

    .line 309
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPowerOnAnimationURL(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPowerOffAnimationURL(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPowerOnMD5(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPowerOffMD5(Ljava/lang/String;)V

    const-string v0, "powerOnType"

    .line 315
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "powerOnStartPictureUrl"

    .line 316
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "powerOnStartPictureShowTime"

    .line 317
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 319
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPowerOnType(Ljava/lang/Long;)V

    .line 320
    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPowerOnStartPictureShowTime(Ljava/lang/Long;)V

    .line 321
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPowerOnStartPictureUrl(Ljava/lang/String;)V

    const-string v0, "powerOnLaunchApp"

    .line 323
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "app"

    .line 325
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setApp(Ljava/lang/String;)V

    const-string v5, "packageName"

    .line 328
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "actionUrl"

    .line 329
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "downloadUrl"

    .line 330
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {p1, v6}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setActionUrl(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setDownLoadUrl(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setPackageName(Ljava/lang/String;)V

    :cond_2
    const-string v1, "loadingImg"

    .line 335
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "loadingText"

    .line 336
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "loadingImgShowTime"

    .line 337
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 338
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setLoadingImgShowTime(Ljava/lang/Long;)V

    .line 339
    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setLoadingText(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setLoadingImg(Ljava/lang/String;)V

    .line 343
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnType()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_4

    .line 344
    invoke-virtual {p1, v3}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setLoadingImg(Ljava/lang/String;)V

    const-string v0, ""

    .line 346
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setLoadingText(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->setLoadingImgShowTime(Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    .line 351
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const-string v0, "getBootInfo\uff1aover return"

    .line 353
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getStartShowPicTime()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mStartShowPicTime:J

    return-wide v0
.end method

.method public jumpAction(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;
    .locals 5

    .line 369
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpAction:begin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BootApp"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 373
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 374
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 376
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->isJumpPackageInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "NotInstall"

    .line 377
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    sget-object p1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->NotInstall:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    return-object p1

    .line 381
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "startActivityForStatus getLaunchIntentForPackage"

    .line 382
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0, v2, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->startActivityForStatus(Landroid/content/Intent;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    move-result-object p1

    return-object p1

    .line 385
    :cond_1
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "uriString Empty!!!"

    .line 386
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget-object p1, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;->JumpErro:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    return-object p1

    .line 395
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 396
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "startActivityForStatus"

    .line 397
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0, v1, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->startActivityForStatus(Landroid/content/Intent;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$JumpActionStatus;

    move-result-object p1

    return-object p1
.end method

.method public registDeviceMirrorListener()V
    .locals 3

    .line 127
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isListener:Z

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->listener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->registerListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registDeviceMirrorListener time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootApp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registDeviceMirrorSilenceListener()V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isSilenceListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->isSilenceListener:Z

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->silencelistener:Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->registerListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registDeviceMirrorSilenceListener time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootApp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStartShowPicTime(J)V
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->mStartShowPicTime:J

    return-void
.end method
