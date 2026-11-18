.class public Lcom/alibaba/analytics/core/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# static fields
.field private static final DEBUG_DATE:Ljava/lang/String; = "debug_date"

.field private static final DEBUG_TIME:J = 0xdbba00L

.field private static final TAG_OPENID:Ljava/lang/String; = "_openid"

.field private static final TAG_TURNOFF_REAL_TIME:Ljava/lang/String; = "real_time_debug"

.field private static final UTRTD_NAME:Ljava/lang/String; = "UTRealTimeDebug"

.field public static final s_instance:Lcom/alibaba/analytics/core/Variables;


# instance fields
.field private volatile bApIsRealTimeDebugging:Z

.field private volatile bInit:Z

.field private bPackageDebugSwitch:Z

.field private hasReadPackageBuildId:Z

.field private hasReadPackageDebugSwitch:Z

.field private isAllServiceClosed:Z

.field private isGzipUpload:Z

.field private isHttpService:Z

.field private isRealtimeServiceClosed:Z

.field private mAppVersion:Ljava/lang/String;

.field private mAppkey:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

.field private mContext:Landroid/content/Context;

.field private mDbMgr:Lcom/alibaba/analytics/core/db/DBMgr;

.field private mDebugSamplingOption:Z

.field private mDebuggingKey:Ljava/lang/String;

.field private mIsOldDevice:Z

.field private mIsRealTimeDebugging:Z

.field private mIsSelfMonitorTurnOn:Z

.field private volatile mIsTurnOffDebugPlugin:Z

.field private mLUserid:Ljava/lang/String;

.field private mLUsernick:Ljava/lang/String;

.field private mOaid:Ljava/lang/String;

.field private mOpenid:Ljava/lang/String;

.field private mPackageBuildId:Ljava/lang/String;

.field private volatile mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

.field private mSecret:Ljava/lang/String;

.field private mSessionProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTPKString:Ljava/lang/String;

.field private mTransferUrl:Ljava/lang/String;

.field private mUserid:Ljava/lang/String;

.field private mUsernick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/alibaba/analytics/core/Variables;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/Variables;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/Variables;->s_instance:Lcom/alibaba/analytics/core/Variables;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    .line 67
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mAppkey:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mSecret:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .line 71
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mChannel:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mAppVersion:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mUsernick:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mLUsernick:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mUserid:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mLUserid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->mIsRealTimeDebugging:Z

    .line 79
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mDebuggingKey:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mSessionProperties:Ljava/util/Map;

    .line 81
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->mDebugSamplingOption:Z

    .line 83
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mTransferUrl:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->bInit:Z

    .line 85
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mDbMgr:Lcom/alibaba/analytics/core/db/DBMgr;

    .line 86
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    .line 87
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->mIsTurnOffDebugPlugin:Z

    .line 88
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mTPKString:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->bApIsRealTimeDebugging:Z

    const-string v2, ""

    .line 95
    iput-object v2, p0, Lcom/alibaba/analytics/core/Variables;->mOaid:Ljava/lang/String;

    .line 100
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->isAllServiceClosed:Z

    .line 105
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->isHttpService:Z

    .line 110
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->isRealtimeServiceClosed:Z

    .line 115
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->isGzipUpload:Z

    const/4 v2, 0x1

    .line 121
    iput-boolean v2, p0, Lcom/alibaba/analytics/core/Variables;->mIsSelfMonitorTurnOn:Z

    .line 123
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->mIsOldDevice:Z

    .line 124
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->bPackageDebugSwitch:Z

    .line 125
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->hasReadPackageDebugSwitch:Z

    .line 126
    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mPackageBuildId:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->hasReadPackageBuildId:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/analytics/core/Variables;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/analytics/core/Variables;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mOaid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/analytics/core/Variables;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/alibaba/analytics/core/Variables;->trackInfoForPreLoad()V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/analytics/core/Variables;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/alibaba/analytics/core/Variables;->trackUtdidType()V

    return-void
.end method

.method private checkSettingsPermissionGranted()Z
    .locals 5

    const/4 v0, 0x0

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SETTINGS"

    .line 424
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 423
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private checkStoragePermissionGranted()Z
    .locals 5

    const/4 v0, 0x0

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 433
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/Variables;
    .locals 1

    .line 63
    sget-object v0, Lcom/alibaba/analytics/core/Variables;->s_instance:Lcom/alibaba/analytics/core/Variables;

    return-object v0
.end method

.method private getLocalInfo()V
    .locals 6

    .line 446
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const-string v1, "UTCommon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v2, "_lun"

    .line 447
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-static {v2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "UTF-8"

    const/4 v5, 0x2

    if-nez v3, :cond_0

    .line 451
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v5}, Lcom/alibaba/analytics/utils/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 452
    iput-object v3, p0, Lcom/alibaba/analytics/core/Variables;->mLUsernick:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 454
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v2, "_luid"

    .line 457
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 461
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v5}, Lcom/alibaba/analytics/utils/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 462
    iput-object v3, p0, Lcom/alibaba/analytics/core/Variables;->mLUserid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 464
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1
    :goto_1
    const-string v2, "_openid"

    .line 467
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 471
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v5}, Lcom/alibaba/analytics/utils/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 472
    iput-object v1, p0, Lcom/alibaba/analytics/core/Variables;->mOpenid:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private initRealTimeDebug()V
    .locals 7

    .line 727
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 730
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 731
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "UTRealTimeDebug"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-string v4, "debug_date"

    .line 732
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v4, 0x2

    .line 733
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "debugDate"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, ""

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    .line 735
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "debug_api_url"

    .line 737
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 736
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "debug_key"

    .line 739
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    invoke-virtual {p0, v2}, Lcom/alibaba/analytics/core/Variables;->turnOnRealTimeDebug(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public static isNotDisAM()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private setOpenid(Ljava/lang/String;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mOpenid:Ljava/lang/String;

    return-void
.end method

.method private setUserid(Ljava/lang/String;)V
    .locals 1

    .line 817
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mUserid:Ljava/lang/String;

    .line 818
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mLUserid:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setUsernick(Ljava/lang/String;)V
    .locals 1

    .line 797
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mUsernick:Ljava/lang/String;

    .line 798
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mLUsernick:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private storeOpenId(Ljava/lang/String;)V
    .locals 4

    .line 841
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "UTCommon"

    const/4 v2, 0x0

    .line 843
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 844
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 845
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "_openid"

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 846
    :try_start_1
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 848
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/alibaba/analytics/utils/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 850
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 852
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private storeRealTimeDebugSharePreference(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    .line 711
    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;Ljava/util/Map;)V

    .line 712
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "UTRealTimeDebug"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 713
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "debug_date"

    if-eqz p1, :cond_1

    const-string v2, "debug_store"

    .line 714
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "debug_api_url"

    .line 716
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 715
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "debug_key"

    .line 718
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 717
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 721
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 723
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private storeUserId(Ljava/lang/String;)V
    .locals 4

    .line 824
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "UTCommon"

    const/4 v2, 0x0

    .line 826
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 827
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_luid"

    .line 828
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/alibaba/analytics/utils/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 831
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private storeUsernick(Ljava/lang/String;)V
    .locals 4

    .line 804
    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "UTCommon"

    const/4 v2, 0x0

    .line 806
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 807
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_lun"

    .line 808
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lcom/alibaba/analytics/utils/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 811
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private trackInfoForPreLoad()V
    .locals 4

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getInfoForPreApk(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 321
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1021"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 323
    invoke-static {}, Lcom/ut/mini/UTAnalyticsDelegate;->getInstance()Lcom/ut/mini/UTAnalyticsDelegate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalyticsDelegate;->transferLog(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private trackUtdidType()V
    .locals 12

    const-string v0, "af3de43b346c5838"

    const-string v1, "0"

    const-string v2, "1"

    .line 332
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    .line 334
    invoke-static {}, Lcom/ut/device/UTDevice;->getType()I

    move-result v3

    .line 337
    iget-object v4, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const-string v5, "Alvin2"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    const-string v5, ""

    if-eqz v4, :cond_0

    :try_start_1
    const-string/jumbo v7, "t2"

    const-wide/16 v8, 0x0

    .line 339
    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-lez v4, :cond_0

    .line 341
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMdd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 348
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "mqBRboGZkQPcAkyk"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-object v7, v5

    .line 355
    :goto_1
    :try_start_3
    iget-object v8, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dxCRMxhQkdGePGnp"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_1
    move-object v8, v5

    .line 362
    :goto_2
    :try_start_4
    iget-object v9, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    iget-object v9, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_2
    move-object v0, v1

    .line 370
    :goto_3
    :try_start_5
    iget-object v9, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const-string v10, "ContextData"

    invoke-virtual {v9, v10, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v9, "K_1171477665"

    .line 372
    invoke-interface {v6, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_1
    move-object v6, v5

    :goto_4
    if-lez v3, :cond_9

    .line 376
    new-instance v9, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string v10, "UTDID"

    invoke-direct {v9, v10}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "type"

    .line 378
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v10, v3}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 380
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "time"

    .line 381
    invoke-virtual {v9, v3, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 384
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "settings"

    .line 385
    invoke-virtual {v9, v3, v7}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 388
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "oldSettings"

    .line 389
    invoke-virtual {v9, v3, v8}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 392
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "utdid2"

    .line 393
    invoke-virtual {v9, v3, v6}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 396
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    const-string/jumbo v4, "utdidws"

    if-nez v3, :cond_6

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 397
    invoke-virtual {v9, v4, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_5

    .line 399
    :cond_6
    invoke-virtual {v9, v4, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 402
    :goto_5
    invoke-direct {p0}, Lcom/alibaba/analytics/core/Variables;->checkSettingsPermissionGranted()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    const-string v3, "checkws"

    if-eqz v0, :cond_7

    .line 403
    :try_start_7
    invoke-virtual {v9, v3, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_6

    .line 405
    :cond_7
    invoke-virtual {v9, v3, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 408
    :goto_6
    invoke-direct {p0}, Lcom/alibaba/analytics/core/Variables;->checkStoragePermissionGranted()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    const-string v3, "checkwes"

    if-eqz v0, :cond_8

    .line 409
    :try_start_8
    invoke-virtual {v9, v3, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_7

    .line 411
    :cond_8
    invoke-virtual {v9, v3, v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 414
    :goto_7
    invoke-static {}, Lcom/ut/mini/UTAnalyticsDelegate;->getInstance()Lcom/ut/mini/UTAnalyticsDelegate;

    move-result-object v0

    invoke-virtual {v9}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalyticsDelegate;->transferLog(Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :cond_9
    return-void
.end method

.method private updateUserIdAndOpenId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 576
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/Variables;->setUserid(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/Variables;->setOpenid(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mUserid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 579
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/Variables;->setUserid(Ljava/lang/String;)V

    .line 580
    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/Variables;->setOpenid(Ljava/lang/String;)V

    .line 582
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/Variables;->storeUserId(Ljava/lang/String;)V

    .line 583
    invoke-direct {p0, p2}, Lcom/alibaba/analytics/core/Variables;->storeOpenId(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mAppVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/UTMCDevice;->getDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 503
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mAppVersion:Ljava/lang/String;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/SpSetting;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getConfMgr()Lcom/alibaba/analytics/core/config/UTBaseConfMgr;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;
    .locals 1

    .line 754
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mDbMgr:Lcom/alibaba/analytics/core/db/DBMgr;

    return-object v0
.end method

.method public declared-synchronized getDebugKey()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mDebuggingKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugSamplingOption()Z
    .locals 1

    monitor-enter p0

    .line 634
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mDebugSamplingOption:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostPackageImei()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/analytics/core/device/Device;->getDevice(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHostPackageImsi()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/analytics/core/device/Device;->getDevice(Landroid/content/Context;)Lcom/alibaba/analytics/core/device/DeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/alibaba/analytics/core/device/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLongLoginUsernick()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mLUsernick:Ljava/lang/String;

    return-object v0
.end method

.method public getLongLoingUserid()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mLUserid:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mOaid:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mOpenid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageBuildId()Ljava/lang/String;
    .locals 2

    .line 783
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->hasReadPackageBuildId:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mPackageBuildId:Ljava/lang/String;

    return-object v0

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v1, "build_id"

    .line 790
    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mPackageBuildId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 791
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->hasReadPackageBuildId:Z

    .line 792
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mPackageBuildId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestAuthenticationInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mSecret:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSessionProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mSessionProperties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTPKString()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mTPKString:Ljava/lang/String;

    return-object v0
.end method

.method public getTpkMD5()Ljava/lang/String;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mTPKString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/analytics/core/Variables;->mTPKString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 750
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mTransferUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mUserid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsernick()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mUsernick:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized init(Landroid/app/Application;)V
    .locals 5

    monitor-enter p0

    .line 205
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    .line 206
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "UTDC init failed"

    .line 207
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "context:null"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 210
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "init"

    aput-object v3, v0, v2

    iget-boolean v3, p0, Lcom/alibaba/analytics/core/Variables;->bInit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->bInit:Z

    if-nez v0, :cond_2

    .line 213
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/alibaba/analytics/core/Variables$1;

    invoke-direct {v4, p0}, Lcom/alibaba/analytics/core/Variables$1;-><init>(Lcom/alibaba/analytics/core/Variables;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    invoke-static {}, Lcom/alibaba/analytics/core/selfmonitor/CrashDispatcher;->getInstance()Lcom/alibaba/analytics/core/selfmonitor/CrashDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/selfmonitor/CrashDispatcher;->init()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 238
    :try_start_3
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;->getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;->init()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 243
    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 246
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/analytics/core/Variables;->getLocalInfo()V

    .line 249
    new-instance v0, Lcom/alibaba/analytics/core/db/SQLiteCheckHelper;

    iget-object v2, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ut.db"

    invoke-direct {v0, v2, v4}, Lcom/alibaba/analytics/core/db/SQLiteCheckHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Lcom/alibaba/analytics/core/db/SQLiteCheckHelper;->checkIntegrity()V

    .line 253
    new-instance v0, Lcom/alibaba/analytics/core/db/DBMgr;

    iget-object v2, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ut.db"

    invoke-direct {v0, v2, v4}, Lcom/alibaba/analytics/core/db/DBMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mDbMgr:Lcom/alibaba/analytics/core/db/DBMgr;

    .line 255
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->register(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    const-string v0, "com.taobao.orange.OrangeConfig"

    .line 265
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    if-eqz v3, :cond_1

    .line 270
    :try_start_7
    new-instance v0, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    goto :goto_2

    .line 272
    :cond_1
    new-instance v0, Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    .line 274
    :goto_2
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    invoke-static {}, Lcom/alibaba/analytics/core/config/UTSampleConfBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTSampleConfBiz;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->addConfBiz(Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    invoke-static {}, Lcom/alibaba/analytics/core/config/UTStreamConfBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTStreamConfBiz;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->addConfBiz(Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    new-instance v2, Lcom/alibaba/analytics/core/config/UTBussinessConfBiz;

    invoke-direct {v2}, Lcom/alibaba/analytics/core/config/UTBussinessConfBiz;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->addConfBiz(Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;)V

    .line 277
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->addConfBiz(Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;)V

    .line 278
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    invoke-static {}, Lcom/alibaba/analytics/core/config/UTRealtimeConfBiz;->getInstance()Lcom/alibaba/analytics/core/config/UTRealtimeConfBiz;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->addConfBiz(Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 281
    :try_start_8
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->addConfBiz(Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;)V

    .line 283
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->registerConfigListener()V

    .line 284
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string/jumbo v2, "sw_plugin"

    new-instance v3, Lcom/alibaba/analytics/core/config/DebugPluginSwitch;

    invoke-direct {v3}, Lcom/alibaba/analytics/core/config/DebugPluginSwitch;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V

    .line 285
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string v2, "audid"

    new-instance v3, Lcom/alibaba/analytics/core/config/AudidConfigListener;

    invoke-direct {v3}, Lcom/alibaba/analytics/core/config/AudidConfigListener;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 289
    :catch_3
    :try_start_9
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mConfMgr:Lcom/alibaba/analytics/core/config/UTBaseConfMgr;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->requestOnlineConfig()V

    .line 291
    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->getInstance()Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/logbuilder/TimeStampAdjustMgr;->startSync()V

    .line 294
    invoke-static {p1}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->init(Landroid/app/Application;)V

    .line 296
    invoke-static {}, Lcom/ut/mini/UTAnalyticsDelegate;->getInstance()Lcom/ut/mini/UTAnalyticsDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/mini/UTAnalyticsDelegate;->initUT(Landroid/app/Application;)V

    .line 298
    invoke-direct {p0}, Lcom/alibaba/analytics/core/Variables;->initRealTimeDebug()V

    .line 299
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadMgr;->getInstance()Lcom/alibaba/analytics/core/sync/UploadMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start()V

    .line 301
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object p1

    new-instance v0, Lcom/alibaba/analytics/core/Variables$2;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/core/Variables$2;-><init>(Lcom/alibaba/analytics/core/Variables;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    .line 310
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/Variables;->bInit:Z

    goto :goto_3

    .line 312
    :cond_2
    invoke-static {}, Lcom/alibaba/analytics/core/config/UTConfigMgr;->postAllServerConfig()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 314
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAllServiceClosed()Z
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->isAllServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApRealTimeDebugging()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->bApIsRealTimeDebugging:Z

    return v0
.end method

.method public isDebugPackage()Z
    .locals 2

    .line 766
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->hasReadPackageDebugSwitch:Z

    if-eqz v0, :cond_0

    .line 767
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->bPackageDebugSwitch:Z

    return v0

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v1, "package_type"

    .line 773
    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 774
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 775
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->bPackageDebugSwitch:Z

    .line 776
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->hasReadPackageDebugSwitch:Z

    .line 778
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->bPackageDebugSwitch:Z

    return v0
.end method

.method public isGzipUpload()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->isGzipUpload:Z

    return v0
.end method

.method public declared-synchronized isHttpService()Z
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->isHttpService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInit()Z
    .locals 1

    .line 762
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->bInit:Z

    return v0
.end method

.method public isOldDevice()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsOldDevice:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "UTCommon"

    .line 600
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "_isolddevice"

    .line 601
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsOldDevice:Z

    .line 603
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsOldDevice:Z

    return v0
.end method

.method public declared-synchronized isRealTimeDebug()Z
    .locals 1

    monitor-enter p0

    .line 654
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsRealTimeDebugging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRealtimeServiceClosed()Z
    .locals 1

    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->isRealtimeServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSelfMonitorTurnOn()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsSelfMonitorTurnOn:Z

    return v0
.end method

.method public isTurnOffDebugPlugin()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsTurnOffDebugPlugin:Z

    return v0
.end method

.method public declared-synchronized resetRealTimeDebugFlag()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 663
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsRealTimeDebugging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllServiceClosed(Z)V
    .locals 0

    monitor-enter p0

    .line 156
    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/analytics/core/Variables;->isAllServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mAppVersion:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 525
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mChannel:Ljava/lang/String;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 745
    invoke-static {p1}, Lcom/alibaba/analytics/utils/Logger;->setDebug(Z)V

    return-void
.end method

.method public declared-synchronized setDebugKey(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 646
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mDebuggingKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDebugSamplingOption()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 628
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mDebugSamplingOption:Z

    .line 630
    sput-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setGzipUpload(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/alibaba/analytics/core/Variables;->isGzipUpload:Z

    return-void
.end method

.method public declared-synchronized setHttpService(Z)V
    .locals 0

    monitor-enter p0

    .line 148
    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/analytics/core/Variables;->isHttpService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIsOldDevice(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/alibaba/analytics/core/Variables;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "UTCommon"

    .line 591
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 592
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_isolddevice"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setRealTimeDebugFlag()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 659
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsRealTimeDebugging:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRealtimeServiceClosed(Z)V
    .locals 0

    monitor-enter p0

    .line 164
    :try_start_0
    iput-boolean p1, p0, Lcom/alibaba/analytics/core/Variables;->isRealtimeServiceClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRequestAuthenticationInstance(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mRequestAuthenticationInstance:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    if-eqz p1, :cond_0

    .line 512
    invoke-interface {p1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mAppkey:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mSecret:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setSessionProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 638
    :try_start_0
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mSessionProperties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTPKString(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/analytics/core/Variables;->mTPKString:Ljava/lang/String;

    return-void
.end method

.method public turnOffDebugPlugin()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsTurnOffDebugPlugin:Z

    return-void
.end method

.method public turnOffRealTimeDebug()V
    .locals 3

    .line 671
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->resetRealTimeDebugFlag()V

    const/4 v0, 0x0

    .line 672
    invoke-virtual {p0, v0}, Lcom/alibaba/analytics/core/Variables;->setDebugKey(Ljava/lang/String;)V

    .line 673
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadMgr;->getInstance()Lcom/alibaba/analytics/core/sync/UploadMgr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-virtual {v1, v2}, Lcom/alibaba/analytics/core/sync/UploadMgr;->setMode(Lcom/alibaba/analytics/core/sync/UploadMode;)V

    .line 674
    invoke-direct {p0, v0}, Lcom/alibaba/analytics/core/Variables;->storeRealTimeDebugSharePreference(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->bApIsRealTimeDebugging:Z

    return-void
.end method

.method public turnOffSelfMonitor()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsSelfMonitorTurnOn:Z

    return-void
.end method

.method public turnOnDebug()V
    .locals 1

    const/4 v0, 0x1

    .line 521
    invoke-virtual {p0, v0}, Lcom/alibaba/analytics/core/Variables;->setDebug(Z)V

    return-void
.end method

.method public turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 679
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 680
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string/jumbo v1, "real_time_debug"

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 681
    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Server Config turn off RealTimeDebug Mode!"

    aput-object v1, p1, v0

    const-string v0, "Variables"

    invoke-static {v0, p1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, "debug_api_url"

    .line 685
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "debug_key"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 687
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 688
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 690
    invoke-static {v0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->setRealTimeDebugFlag()V

    .line 693
    invoke-virtual {p0, v2}, Lcom/alibaba/analytics/core/Variables;->setDebugKey(Ljava/lang/String;)V

    :cond_1
    const-string v0, "debug_sampling_option"

    .line 696
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->setDebugSamplingOption()V

    .line 700
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/analytics/core/Variables;->setDebug(Z)V

    .line 701
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadMgr;->getInstance()Lcom/alibaba/analytics/core/sync/UploadMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->REALTIME:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadMgr;->setMode(Lcom/alibaba/analytics/core/sync/UploadMode;)V

    .line 704
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/Variables;->storeRealTimeDebugSharePreference(Ljava/util/Map;)V

    return-void
.end method

.method public turnOnSelfMonitor()V
    .locals 1

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/Variables;->mIsSelfMonitorTurnOn:Z

    return-void
.end method

.method public updateUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/Variables;->setUsernick(Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, p2, p3}, Lcom/alibaba/analytics/core/Variables;->updateUserIdAndOpenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/Variables;->storeUsernick(Ljava/lang/String;)V

    return-void
.end method
