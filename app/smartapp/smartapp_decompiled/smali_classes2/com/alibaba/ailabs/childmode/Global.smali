.class public Lcom/alibaba/ailabs/childmode/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static final AI_GENES_LABS_HELP_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/helpPage?type=3"

.field public static final AUTHORITY:Ljava/lang/String; = "com.alibaba.ailabs.childmode.provider"

.field public static final CHILD_MODE_SETTING_URL:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

.field public static final ChILD_MODE_VERSION_PROPERITY:Ljava/lang/String; = "persist.sys.version.child.mode"

.field public static final DAY:I = 0x15180

.field public static final EYEYIELD_HELP_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/helpPage?type=1"

.field public static final EYE_SHIELD_MODE_SWICH_PROPERITY:Ljava/lang/String; = "persist.sys.is.eyeshield.mode"

.field public static final FIRST_SET_PASSWORD_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/password?type=3"

.field public static final FORBIDDEN_TIME_EDIT_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/forbidden_time_page"

.field public static final HELP_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/helpPage?type=0"

.field public static final HOUR:I = 0xe10

.field private static IS_CHILD_MODE:Z = false

.field public static final LISTEN_MODE_HELP_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/helpPage?type=2"

.field public static final LISTEN_MODE_SWICH_PROPERITY:Ljava/lang/String; = "persist.sys.is.listen.mode"

.field public static final ONE_MINUTE:I = 0xea60

.field private static PASSWORD:Ljava/lang/String; = null

.field public static final PROP_PERSIST_DEMO:Ljava/lang/String; = "persist.demo"

.field public static final PROP_STATUS_CALL_MUTE:Ljava/lang/String; = "persist.sys.call_mute"

.field public static final PROP_STATUS_DND_ENABLE:Ljava/lang/String; = "persist.sys.is.notdisturb"

.field public static final PROP_STATUS_DND_GLOBAL_ENABLE:Ljava/lang/String; = "persist.sys.dndmode.global.enable"

.field public static final PROP_STATUS_LOW_SENSITIVITY:Ljava/lang/String; = "persist.sys.is.low_sensitive"

.field public static final PROP_STATUS_MSG_MUTE:Ljava/lang/String; = "persist.sys.message_mute"

.field public static final PROP_STATUS_WAKEUP_QUIET:Ljava/lang/String; = "persist.sys.wake_feedback"

.field public static final PROP_VALUE_DISABLE:Ljava/lang/String; = "0"

.field public static final PROP_VALUE_ENABLE:Ljava/lang/String; = "1"

.field public static final REQUEST_CODE_ADD_TIME:I = 0x1

.field public static final REQUEST_CODE_FIRST_SETTING_PASSWORD:I = 0x2

.field public static final REQUEST_CODE_FORBIDDEN_TIME_ADD:I = 0x5

.field public static final REQUEST_CODE_FORBIDDEN_TIME_EDIT:I = 0x6

.field public static final REQUEST_CODE_NEED_PASSWORD:I = 0x3

.field public static final REQUEST_CODE_TIME_PICKER:I = 0x4

.field public static final REQUEST_CODE_VERIFY:I = 0x0

.field public static final RESET_SETTING_PASSWORD_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/password?type=2"

.field public static final SCREEN_OFF_TIMEOUT_PROPERITY:Ljava/lang/String; = "persist.sys.cache.screen_off_timeout"

.field public static final SETTING_PASSWORD_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/password?type=0"

.field public static final SHORT_CUT_MODE:Ljava/lang/String; = "persist.sys.is.shortcut"

.field public static final TAG:Ljava/lang/String; = "Global"

.field public static final TEN_SEC_SCRRENOFF_TIME:I = 0x2710

.field public static final URI_CHILD_FACE:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/childface"

.field public static VALUE_SYSTEM_S1L:Ljava/lang/String; = "ailabs_s1l"

.field public static final VERIFY_PASSWORD_URI:Ljava/lang/String; = "genie://com.alibaba.ailabs.genie.datacenter/password?type=1"

.field private static VERSION:I = -0x1

.field private static mContext:Landroid/content/Context; = null

.field private static mCurrentDialog:Landroid/app/Dialog; = null

.field private static mCurrentStone:I = -0x1

.field private static volatile sInstance:Lcom/alibaba/ailabs/childmode/Global; = null

.field public static sProtoVideoAutoTime:I = 0x75300


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    .line 123
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/Global;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .locals 1

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->mCurrentDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 27
    sput-object p0, Lcom/alibaba/ailabs/childmode/Global;->mCurrentDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static getAvailableTime()I
    .locals 2

    .line 274
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getPreventAdditionMgrListener()Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getPreventAdditionMgrListener()Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/childmode/PreventAdditionMgrListener;->getPreventAddtionMgrAvailableTime()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCacheScreenOffTimeout(I)I
    .locals 1

    const-string v0, "persist.sys.cache.screen_off_timeout"

    .line 422
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 112
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDNDGlableEnable()I
    .locals 3

    const-string v0, "persist.sys.dndmode.global.enable"

    const/4 v1, -0x1

    .line 405
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDNDGlableEnablepersist.sys.dndmode.global.enable ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Global"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/Global;
    .locals 2

    .line 127
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->sInstance:Lcom/alibaba/ailabs/childmode/Global;

    if-nez v0, :cond_1

    .line 128
    const-class v0, Lcom/alibaba/ailabs/childmode/Global;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/childmode/Global;->sInstance:Lcom/alibaba/ailabs/childmode/Global;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcom/alibaba/ailabs/childmode/Global;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/childmode/Global;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/childmode/Global;->sInstance:Lcom/alibaba/ailabs/childmode/Global;

    .line 132
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 134
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/childmode/Global;->sInstance:Lcom/alibaba/ailabs/childmode/Global;

    return-object p0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/childmode/Global;->PASSWORD:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenOffTimeout()I
    .locals 3

    .line 529
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings.System.SCREEN_OFF_TIMEOUT get error is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Global"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 145
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/Global;->initGenieData(Landroid/content/Context;)V

    const-string v0, "persist.sys.version.child.mode"

    .line 147
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getIntSystemProperties(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alibaba/ailabs/childmode/Global;->VERSION:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    return-void
.end method

.method private initGenieData(Landroid/content/Context;)V
    .locals 4

    .line 160
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/database/DbManager;->getConfigInfoTable(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getPassword()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/childmode/Global;->PASSWORD:Ljava/lang/String;

    .line 163
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/alibaba/ailabs/childmode/Global;->IS_CHILD_MODE:Z

    .line 164
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/database/ConfigInfoTable;->getVersion()I

    move-result v0

    sput v0, Lcom/alibaba/ailabs/childmode/Global;->VERSION:I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initGenieData before PASSWORD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/childmode/Global;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,IS_CHILD_MODE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alibaba/ailabs/childmode/Global;->IS_CHILD_MODE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", VERSION = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/alibaba/ailabs/childmode/Global;->VERSION:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Global"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/childmode/Global;->PASSWORD:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/ailabs/childmode/Global;->IS_CHILD_MODE:Z

    .line 171
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getVersion(Landroid/content/Context;)I

    move-result p1

    sput p1, Lcom/alibaba/ailabs/childmode/Global;->VERSION:I

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initGenieData after PASSWORD = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->PASSWORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/alibaba/ailabs/childmode/Global;->IS_CHILD_MODE:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/alibaba/ailabs/childmode/Global;->VERSION:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isCCLite()Z
    .locals 2

    .line 539
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->VALUE_SYSTEM_S1L:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCharging(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 428
    :try_start_0
    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Global"

    if-eqz p0, :cond_0

    .line 430
    :try_start_1
    invoke-virtual {p0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCOF:updateScreenOffSettingToSystem: Get charging status="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "SCOF:updateScreenOffSettingToSystem: Failed to get BatteryManager, is_charging status is invalid"

    .line 433
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DoNotDisturb"

    const-string v1, "isCharging ex"

    const-string v2, ""

    .line 436
    invoke-static {p0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static isChildMode()Z
    .locals 1

    .line 241
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isChildMode(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/ailabs/childmode/Global;->IS_CHILD_MODE:Z

    .line 242
    sget-boolean v0, Lcom/alibaba/ailabs/childmode/Global;->IS_CHILD_MODE:Z

    return v0
.end method

.method public static isDemo()Z
    .locals 3

    const-string v0, "persist.demo"

    .line 384
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " is demo device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Global"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDndMode()Z
    .locals 2

    const-string v0, "persist.sys.dndmode.global.enable"

    const/4 v1, -0x1

    .line 390
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getIntSystemProperties(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isEyeYieldMode()Z
    .locals 1

    .line 184
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isShieldEyeMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isListenMode()Z
    .locals 1

    const-string v0, "persist.sys.is.listen.mode"

    .line 207
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getBooleanSystemProperties(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOneMinOff(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "disturb_status"

    .line 416
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "screen_off"

    .line 417
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 418
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDndMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isShotCutEnable()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "persist.sys.is.shortcut"

    const/4 v2, 0x0

    .line 258
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "Global"

    if-nez v2, :cond_0

    .line 261
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "isShortCut, err"

    .line 263
    invoke-static {v3, v4, v2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShortCut :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " shortStr:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static needValidate()Z
    .locals 3

    .line 549
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needValidate password:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isChildMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Global"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static notifyChangeEyeMode(Z)V
    .locals 2

    .line 283
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.alibaba.ailabs.childmode.provider"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/eyeYieldMode"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?isOpened="

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 287
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 291
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static notifyListenModeUri(Z)V
    .locals 2

    .line 317
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.alibaba.ailabs.childmode.provider"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/listenMode"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?isOpened="

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 322
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 324
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static notifyShortCutUri(ZZ)V
    .locals 2

    .line 299
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://com.alibaba.ailabs.childmode.provider"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, "/shortCut"

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "?isOpened="

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 305
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 309
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 116
    sput-object p0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDNDEnable(Z)V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDNDEnablepersist.sys.is.notdisturb ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "persist.sys.is.notdisturb"

    .line 396
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static setDNDGlableEnable(Z)V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDNDGlableEnablepersist.sys.dndmode.global.enable ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    const-string v0, "persist.sys.dndmode.global.enable"

    .line 401
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static setEyeYieldMode(ZZ)V
    .locals 3

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin isEyeYieldMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " new isEyeYieldMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "setEyeYieldMode without checkCameraOpen, trace:"

    .line 193
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 196
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist.sys.is.eyeshield.mode"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/alibaba/ailabs/childmode/Global;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setEyeMode(Landroid/content/Context;Z)V

    .line 198
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/Global;->notifyChangeEyeMode(Z)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEyeYieldMode changed isEyeYieldMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " notify other checkCameraOpen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 201
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/Global;->showCameraOpen(Z)V

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "After setEyeYieldMode isEyeYieldMode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static setListenMode(Z)V
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Global.isListenMode() origin isListenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " new isListenMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist.sys.is.listen.mode"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/Global;->notifyListenModeUri(Z)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListenMode changed isListenMode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " notify other"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setShortCutMode(Z)V
    .locals 3

    :try_start_0
    const-string v0, "persist.sys.is.shortcut"

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 247
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/childmode/Global;->notifyShortCutUri(ZZ)V

    const-string v0, "Global"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShotcutMode changed isChildMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " notify other"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static showCameraOpen(Z)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCameraOpen isEyeYieldMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->isOpenCameraPrivacy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "need show open camera dialog"

    .line 225
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 227
    new-instance v0, Lcom/alibaba/ailabs/childmode/Global$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/childmode/Global$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V
    .locals 5

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenOffSettingToSystem SCOF:Update system screen off time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; enable 1min off="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "Global.isListenMode()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/Global;->isCharging(Landroid/content/Context;)Z

    move-result v0

    .line 450
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDemo()Z

    move-result v2

    const v3, 0xea60

    if-eqz v2, :cond_0

    .line 452
    sget p1, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const p1, 0xea60

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 459
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    if-le p1, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 463
    :goto_1
    invoke-static {v3}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenSaver(Z)V

    goto :goto_3

    .line 460
    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenSaver(Z)V

    .line 466
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenOffTimeout cacheScreenOffTimeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " screenOffTimeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getScreenOffTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "final screenOffTimeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, p1

    :goto_4
    invoke-static {p0, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeoutAndNotify(Landroid/content/Context;I)V

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen_off_1min="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isCharge="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DoNotDisturb"

    const-string v0, "updateScreenOffSettingToSystem"

    invoke-static {p2, v0, p0, p1}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateScreenOffSettingToSystem(Landroid/content/Context;Z)V
    .locals 5

    .line 478
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/Global;->isOneMinOff(Landroid/content/Context;)Z

    move-result v0

    const v1, 0xea60

    .line 480
    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result v2

    if-eqz p1, :cond_0

    const/16 v1, 0x2710

    goto :goto_0

    .line 485
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDemo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    sget v1, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 489
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/Global;->isCharging(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 498
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateScreenOffSettingToSystem SCOF:Update system screen off time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; enable 1min off="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Global"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    .line 503
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenSaver(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 501
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenSaver(Z)V

    .line 507
    :goto_2
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeoutAndNotify(Landroid/content/Context;I)V

    .line 509
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isOneMinOff\uff1a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "screenOffTime\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache_screen_off_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoNotDisturb"

    invoke-static {v1, p0, p1, v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateScreenOffTimeout(Landroid/content/Context;I)V
    .locals 6

    .line 334
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/Global;->isOneMinOff(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "Global"

    const-string v2, "updateScreenOffTimeout"

    const-string v3, "DoNotDisturb"

    if-nez v0, :cond_3

    .line 335
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 341
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result p1

    .line 343
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    goto :goto_0

    :cond_1
    move v0, p1

    .line 344
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreenOffTimeout cacheScreenOffTimeout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " screenOffTimeout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getScreenOffTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " final screenOffTimeout is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenSaver(Z)V

    .line 349
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeoutAndNotify(Landroid/content/Context;I)V

    .line 351
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cacheScreenOffTimeout="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 336
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isOneMinOff="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sendInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not updateScreenOffTimeout isOneMinOff: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isListenMode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateScreenOffTimeoutAndNotify(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 513
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeoutAndNotify(Landroid/content/Context;IZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static updateScreenOffTimeoutAndNotify(Landroid/content/Context;IZ)V
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  screen_off_timeout \u66f4\u65b0\u606f\u5c4f\u65f6\u95f4\u5e76notify\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_off_timeout"

    .line 520
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 523
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public static updateScreenSaver(Z)V
    .locals 4

    .line 366
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 367
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDemo()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const-string v3, "screensaver_activate_on_sleep"

    if-eqz v1, :cond_0

    .line 368
    :try_start_1
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const-string v0, "Global"

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screensaver_activate_on_sleep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
