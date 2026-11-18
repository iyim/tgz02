.class public Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;
.super Ljava/lang/Object;
.source "AlarmClockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;,
        Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager; = null

.field public static final KEY_ALARM_CRON:Ljava/lang/String; = "alarm_cron"

.field public static final KEY_ALARM_DB_ID:Ljava/lang/String; = "alarm_db_id"

.field public static final KEY_DEST_TIME_MILLS:Ljava/lang/String; = "dest_time_mills"

.field public static final REASON_ALARM_PLAY_FINISH:Ljava/lang/String; = "play_finish"

.field public static final REASON_STOP_BY_EXCEPTION:Ljava/lang/String; = "finish_exception"

.field public static final REASON_STOP_BY_FOCUS_LOSS:Ljava/lang/String; = "focus_loss"

.field public static final REASON_STOP_BY_LOSS_FOCUS_EXCEED_TIME:Ljava/lang/String; = "REASON_STOP_BY_LOSS_FOCUS_EXCEED_TIME"

.field public static final REASON_STOP_BY_OTHER_CLOCK:Ljava/lang/String; = "finish_by_other_clock"

.field public static final REASON_STOP_BY_USER_TOUCH:Ljava/lang/String; = "user_touch"

.field public static final REASON_STOP_BY_WAKE_UP:Ljava/lang/String; = "REASON_STOP_BY_WAKE_UP"

.field private static final SUPPORT_POWER_OFF_ALARM:Z = true

.field public static SYNC_ALL_ALARM_DATA_SUCCESS:Z = true

.field private static final TAG:Ljava/lang/String; = "AlarmClockManager"

.field public static final TIME_ALARM_SCHEDULE_DATA_SYNC_INTERVAL:I = 0x1499700

.field public static final TIME_ALARM_SYSTEM_BOOT_FIRST_SYSC_DELAY:I = 0x1d4c0

.field public static TIME_ALARM_WAITING:I = 0x3a98


# instance fields
.field private mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

.field private mAlarmIdTTSPairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmIntent:Landroid/content/Intent;

.field private mAlarmPendingIntent:Landroid/app/PendingIntent;

.field private mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

.field private mContext:Landroid/content/Context;

.field private mExternalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mGetWeatherTime:J

.field private volatile mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private mMessageListAlarms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAlarms:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAlarmRunnable:Ljava/lang/Runnable;

.field private mSyncAlarmDataRunnable:Ljava/lang/Runnable;

.field private mWeatherInfo:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

.field private mWeatherOneDay:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIdTTSPairs:Ljava/util/Map;

    .line 109
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mSyncAlarmDataRunnable:Ljava/lang/Runnable;

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    .line 134
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    .line 135
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmReceiver;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIntent:Landroid/content/Intent;

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 138
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v0, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 139
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

    .line 140
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 142
    :cond_0
    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AlarmClockManager"

    const-string v1, "AlarmClockManager constructor Interrupt wait, e"

    .line 145
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Ljava/lang/Runnable;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mSyncAlarmDataRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->showAlarmRingUI(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherInfo:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;)Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherInfo:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;J)J
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mGetWeatherTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->deleteAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getAlarmByDBIdWithCurrentTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->doSomeReady(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->add2MessageListAlarms(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->resetPendingAlarms()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->updateRing(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)Z

    move-result p0

    return p0
.end method

.method private add2MessageListAlarms(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "AlarmClockManager"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add2MessageListAlarms alarmInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private callAlarmManagerSetExact(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 9

    const-string v0, "AlarmClockManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1236
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callAlarmManagerSetExact manager:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " triggerAtMillis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const-class v3, Landroid/app/AlarmManager;

    const-string v4, "setExact"

    const/4 v5, 0x3

    .line 1241
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Landroid/app/PendingIntent;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1243
    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p4, v4, v8

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "callAlarmManagerSetExact err"

    .line 1247
    invoke-static {v0, v3, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 1252
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->trySetAlarm(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private callCancelPowerOffAlarm(Landroid/app/AlarmManager;)V
    .locals 7

    const-string v0, "AlarmClockManager"

    .line 1276
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callCancelPowerOffAlarm manager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "cancelPoweroffAlarm"

    const/4 v3, 0x1

    .line 1278
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1279
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "callCancelPowerOffAlarm err"

    .line 1281
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private cancelAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 4

    .line 985
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAlarm alarm info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmClockManager"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 989
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    .line 990
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 989
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAlarm dbAlarmInfo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAlarm dbId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 994
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "null"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 997
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIntent:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v1, p1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 1000
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1002
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    .line 1003
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    :cond_1
    return-void
.end method

.method private clearPendingAlarm()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 897
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private deleteAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 965
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->removePendingAlarm(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 966
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "server delete clock"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->closeAlarmUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->cancelAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 970
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->delete(Ljava/lang/String;)I

    .line 972
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAllAlarmWithUpdatedTime()Ljava/util/HashSet;

    move-result-object p1

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAlarm: size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 976
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ysjAlarm"

    .line 975
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 978
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-gtz p1, :cond_3

    .line 979
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 980
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->callCancelPowerOffAlarm(Landroid/app/AlarmManager;)V

    :cond_3
    return-void
.end method

.method private doSomeReady(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 2

    .line 487
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmType;->needGetWeatherData(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->readyWeatherData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AlarmClockManager"

    const-string v1, "doSomeReady err"

    .line 491
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getAlarmByDBIdWithCurrentTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
    .locals 3

    .line 929
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 931
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    .line 936
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdWithCurrentTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->INSTANCE:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->INSTANCE:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    .line 153
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->INSTANCE:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getWeatherOneDay(Lorg/json/JSONObject;)Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 667
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 668
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 669
    new-instance v0, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWeatherOneDay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmClockManager"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private hasComingAlarmInMessageList()Z
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AlarmClockManager"

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasComingAlarmInMessageList result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readyWeatherData()V
    .locals 6

    const-string v0, "AlarmClockManager"

    const-string v1, "readyWeatherData"

    .line 496
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherInfo:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mGetWeatherTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-string v1, "readyWeatherData has cached weather, no need get"

    .line 498
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x4e73e

    .line 501
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$7;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/mtop/NetApi;->getWeatherData(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V

    return-void
.end method

.method private removeFromMessageListAlarms(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v1, "AlarmClockManager"

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFromMessageListAlarms alarmInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removePendingAlarm(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
    .locals 5

    .line 877
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    monitor-enter v0

    .line 878
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 882
    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    :cond_2
    if-eqz v2, :cond_3

    .line 888
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 890
    :cond_3
    monitor-exit v0

    return-object v2

    .line 879
    :cond_4
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 890
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private removePendingAlarmById(Ljava/lang/String;)V
    .locals 4

    .line 859
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    monitor-enter v0

    .line 860
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    if-nez v1, :cond_0

    .line 861
    monitor-exit v0

    return-void

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    if-eqz v2, :cond_1

    .line 864
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 870
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 872
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private resetPendingAlarms()V
    .locals 8

    .line 940
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 941
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    const-string v3, "AlarmClockManager"

    if-eqz v2, :cond_1

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetPendingAlarms cancel alarmInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIntent:Landroid/content/Intent;

    const/high16 v7, 0x8000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 947
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const v4, 0x9ca2

    .line 948
    invoke-static {v4, v2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->removeBgMessage(ILjava/lang/Object;)V

    .line 950
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 952
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v4, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdUpdateTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 954
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetPendingAlarms set next time Alarm info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto :goto_0

    .line 958
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private setPowerOffAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 6

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerOffAlarmInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "setPowerOffAlarm with null AlarmInfo"

    .line 1289
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1293
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->TIME_ALARM_WAITING:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRTCAlarmPowerOff alarmInfo:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->preSetRtc(J)Ljava/util/Date;

    .line 1296
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->setPowerOffAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 1297
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "alarm_db_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1298
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getCron()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alarm_cron"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1299
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "dest_time_mills"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1301
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1302
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRTCAlarm dbId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ,date = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-virtual {v2}, Ljava/util/Date;->getSeconds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1303
    invoke-static {v1, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIntent:Landroid/content/Intent;

    const/high16 v5, 0x8000000

    invoke-static {v3, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    .line 1312
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 1313
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->callAlarmManagerSetExact(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    .line 1314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerOffAlarm alarmInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " id = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 2

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRTCAlarm alarmInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setPowerOffAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    return-void
.end method

.method private showAlarmRingUI(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V
    .locals 2

    .line 1195
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mShowAlarmRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1196
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mShowAlarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1198
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$ShowAlarmRingRunnable;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mShowAlarmRunnable:Ljava/lang/Runnable;

    .line 1199
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mShowAlarmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private trySetAlarm(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 4

    const-string v0, "AlarmClockManager"

    .line 1259
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetAlarm() called with: manager = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], triggerAtMillis = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], operation = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 1264
    invoke-virtual {p1, v3, p2, p3, p4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 1267
    :cond_0
    invoke-virtual {p1, v3, p2, p3, p4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "trySetAlarm err"

    .line 1270
    invoke-static {v0, p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateRing(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1175
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    .line 1176
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v1

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRing dbInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmClockManager"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    return v0

    .line 1181
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTtsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1182
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getTtsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setTtsUrl(Ljava/lang/String;)V

    .line 1184
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1185
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setUrl(Ljava/lang/String;)V

    .line 1187
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getVolume()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1188
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getVolume()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setVolume(I)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public clearAllAlarms()V
    .locals 3

    const-string v0, "AlarmClockManager"

    const-string v1, "clearAllAlarms, close current alarm && delete alarm db"

    .line 775
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x9ca2

    const/4 v1, 0x0

    .line 776
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->removeBgMessage(ILjava/lang/Object;)V

    .line 777
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 778
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAllAlarmsWithoutTime()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 782
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 783
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->cancelAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method public closeAlarmUI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAlarmUI alarmId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlarmRingDialog\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    if-eqz v0, :cond_0

    .line 839
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->finish(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 840
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    :cond_0
    return-void
.end method

.method public closeAlarmUITmpWithouterminate()V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->finishTmp()V

    :cond_0
    return-void
.end method

.method public closeAlarmUIWithOutAlarmID(Ljava/lang/String;)V
    .locals 2

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeAlarmUIWithOutAlarmID reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlarmRingDialog\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 792
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->finish(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 793
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    :cond_0
    return-void
.end method

.method public getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mMessageListAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 904
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 910
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 912
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    return-object p1
.end method

.method public getDelayedLatestAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 925
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getDelayedLatestAlarm()Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTtsByAlarmId(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIdTTSPairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getWeatherCode()Ljava/lang/String;
    .locals 5

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mGetWeatherTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherInfo:Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mtop/response/WeatherBaseInfo;->getWeatherCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeatherOneDay()Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherOneDay:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    return-object v0
.end method

.method public handleAlarmRing(Landroid/os/Message;)V
    .locals 4

    const-string v0, "AlarmClockManager"

    const-string v1, "Step#3 handle AlarmRing after delay X ms"

    .line 374
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 375
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    if-nez v1, :cond_1

    .line 376
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle AlarmRing with empty alarm info or error type, obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 380
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->removeFromMessageListAlarms(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 381
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 382
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete in db"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This alarm is delete in db, alarmInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Step#3 getAlarmInfoByAlarmIdWithCurrentTime != null, playRing"

    .line 385
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$6;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    const-wide/16 v2, 0x1f4

    .line 388
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public handleAlarmTimeUp(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "AlarmClockManager"

    const-string v1, "Step#2 handleAlarmTimeUp"

    .line 260
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "alarm_db_id"

    const/4 v2, -0x1

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 263
    new-instance v1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$4;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;I)V

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    .line 276
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$5;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleCloseAlarmCommand()V
    .locals 2

    const-string v0, "handleCloseAlarmCommand"

    const-string v1, "AlarmClockManager"

    .line 846
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->resetPendingAlarms()V

    .line 848
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->closeAlarmUIWithOutAlarmID(Ljava/lang/String;)V

    return-void
.end method

.method public handleConnectNetwork()V
    .locals 1

    .line 760
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->scheduleSyncData()V

    const v0, 0x1d4c0

    .line 761
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleSyncData(I)V

    return-void
.end method

.method public handleDeleteAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V
    .locals 2

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteAlarmContents alarmContents:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$8;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleReceiveRingInfo(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-string v0, "AlarmClockManager"

    const-string v1, "Step#Other1 handle ReceiveRingInfo directly from BaseService AliGenie.Alarm.Play or PlayOnce from gw"

    .line 564
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->receiveOriginDataSyncRingInfo(Ljava/lang/String;)V

    .line 566
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;-><init>(Ljava/lang/String;)V

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle ReceiveRingInfo ringInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 572
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringInfo.getAlarmId():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAlarmId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAlarmId()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 575
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAlarmId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringInfo.getAudioUrl():"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAudioUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAlarmId()Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAudioUrl()Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->updateRingUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAudioUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setUrl(Ljava/lang/String;)V

    .line 586
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringInfo.getTTSUrl():"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getTTSUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getTTSUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 588
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAlarmId()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getTTSUrl()Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-virtual {p1, v3, v4}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->updateRingTtsUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getTTSUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setTtsUrl(Ljava/lang/String;)V

    .line 596
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringInfo.getVolume():"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getVolume()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getVolume()I

    move-result p1

    if-lez p1, :cond_4

    .line 598
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getAlarmId()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getVolume()I

    move-result v3

    .line 598
    invoke-virtual {p1, v0, v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->updateRingVolume(Ljava/lang/String;I)V

    .line 600
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmRingInfo;->getVolume()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->setVolume(I)V

    goto :goto_0

    .line 603
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle ReceiveRingInfo but no find the alarm, ringInfoStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public handleReceiveSpeakTTS(Ljava/lang/String;)V
    .locals 10

    const-string v0, "alarmId"

    .line 614
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->handleReceiveOtherTtsInfo(Ljava/lang/String;)V

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleReceiveSpeakTTS, renderData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmClockManager"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "commands"

    .line 618
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 620
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 621
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v6, "payload"

    .line 624
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v6, "alarmMockSkill"

    .line 627
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 628
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "text"

    .line 629
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 630
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 631
    iget-object v8, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIdTTSPairs:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleReceiveSpeakTTS put alarmId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " tts:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x2

    .line 634
    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v3

    const-string v7, "needFeedback"

    .line 636
    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "1"

    goto :goto_1

    :cond_2
    const-string v7, "0"

    :goto_1
    const/4 v9, 0x1

    aput-object v7, v8, v9

    .line 638
    iget-object v7, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIdTTSPairs:Ljava/util/Map;

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :cond_3
    invoke-direct {p0, v5}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getWeatherOneDay(Lorg/json/JSONObject;)Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherOneDay:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    .line 643
    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherOneDay:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mExternalHandler:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mExternalHandler:Ljava/lang/ref/WeakReference;

    .line 644
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 645
    iget-object v5, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mExternalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    .line 647
    iget-object v6, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mWeatherOneDay:Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherOneDay;->getTemperature()Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 649
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/16 v8, 0x65

    .line 650
    iput v8, v7, Landroid/os/Message;->what:I

    .line 652
    invoke-virtual {v6}, Lcom/alibaba/ailabs/basedomain/model/weather/Temperature;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 654
    invoke-virtual {v5, v7}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 660
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReceiveSpeakTTS err, origin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public handleSyncAllAlarmDataSuccess()V
    .locals 2

    const-string v0, "AlarmClockManager"

    const-string v1, "handleSyncAllAlarmDataSuccess"

    .line 769
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 770
    sput-boolean v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->SYNC_ALL_ALARM_DATA_SUCCESS:Z

    .line 771
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mSyncAlarmDataRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->removeMainThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public handleSyncData()V
    .locals 1

    const/16 v0, 0x3e8

    .line 765
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleSyncData(I)V

    return-void
.end method

.method public handleSyncData(I)V
    .locals 3

    const/4 v0, 0x0

    .line 754
    sput-boolean v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->SYNC_ALL_ALARM_DATA_SUCCESS:Z

    .line 755
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mSyncAlarmDataRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->removeMainThreadTask(Ljava/lang/Runnable;)V

    .line 756
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mSyncAlarmDataRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postMainThreadTaskDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public handleSystemBoot()V
    .locals 11

    const-string v0, "AlarmClockManager"

    const-string v1, "handleSystemBoot, set old alarms & sync all alarm data"

    .line 729
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "handleSystemBoot"

    .line 730
    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->uploadMsg(Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAllAlarmWithUpdatedTime()Ljava/util/HashSet;

    move-result-object v1

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSystemBoot allAlarms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 735
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto :goto_0

    .line 739
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmScheduleSyncDataReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 740
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 743
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AlarmManager;

    if-nez v4, :cond_1

    const-string v0, "handleSystemBoot error AlarmManager is null"

    .line 745
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->uploadMsg(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v5, 0x0

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long v6, v0, v2

    const-wide/32 v8, 0x1499700

    .line 748
    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public handleUserOnline()V
    .locals 6

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUserOnline, clear db & sync all alarm data, elapsed real time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    .line 718
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    sub-long/2addr v0, v2

    const v2, 0x1d4c0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 722
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleSyncData(I)V

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleSyncData(I)V

    :goto_0
    return-void
.end method

.method public handleUserUnbind()V
    .locals 2

    const-string v0, "AlarmClockManager"

    const-string v1, "user unbind, close current alarm && delete alarm db"

    .line 713
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->clearAllAlarms()V

    return-void
.end method

.method public hasPendingAlarm()Z
    .locals 2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasPendingAlarm mPendingAlarms.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmClockManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->hasComingAlarmInMessageList()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasPendingOtherTts(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmIdTTSPairs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isAlarmRingUIShow()Z
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 802
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlarmRingUIShow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAlarmRingDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmRingDialog:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmClockManager"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onRingFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step#6 onRing Finish reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "AlarmClockManager"

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "finish_by_other_clock"

    .line 1025
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->resetAudio()V

    .line 1029
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "onRingFinish with lock"

    .line 1030
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

    if-eqz v1, :cond_1

    .line 1032
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;->onComplete(Ljava/lang/String;)V

    .line 1034
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    const-string v1, "onRingFinish without lock"

    .line 1036
    invoke-static {v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

    if-eqz v1, :cond_3

    .line 1038
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "onRingFinish Interrupt wait, e"

    .line 1042
    invoke-static {v2, v3, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1044
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1046
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step#6 onRingFinish but no found alarm info reason\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1050
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingFinish dump:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->dump(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->uploadMsg(Ljava/lang/String;)V

    .line 1051
    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->setAlarmState(Z)V

    .line 1053
    invoke-static {v1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->playRingEnd(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;Ljava/lang/String;)V

    .line 1054
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, -0x1

    .line 1055
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "focus_loss"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "user_touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "play_finish"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "finish_exception"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 v3, 0x3

    :cond_5
    :goto_1
    const-string p2, "normal"

    if-eqz v3, :cond_d

    const-string v0, "user"

    if-eq v3, v10, :cond_c

    if-eq v3, v9, :cond_b

    if-eq v3, v8, :cond_8

    if-eq v3, v7, :cond_6

    goto/16 :goto_5

    :cond_6
    const-string v0, "Step#6.6 onRingFinish REASON_STOP_BY_OTHER_CLOCK"

    .line 1146
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->syncAlarmFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    .line 1150
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmInfoByAlarmIdWithCurrentTime(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 1154
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->removePendingAlarmById(Ljava/lang/String;)V

    .line 1156
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    .line 1157
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1156
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdUpdateTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1159
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto/16 :goto_5

    :cond_8
    const-string p1, "Step#6.5 mAlarmRingTask onError \u95f9\u949f\u64ad\u653e\u9519\u8bef"

    .line 1126
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    .line 1128
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDelayTime()I

    move-result p1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getRepeat()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_a

    .line 1129
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->hasComingAlarmInMessageList()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 1139
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delay()Ljava/util/Date;

    .line 1140
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto/16 :goto_5

    .line 1130
    :cond_a
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->removePendingAlarm(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 1132
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    .line 1133
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1132
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdUpdateTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1135
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto/16 :goto_5

    :cond_b
    const-string p1, "Step#6.4 onRingFinish REASON_STOP_BY_FOCUS_LOSS"

    .line 1110
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->closeAlarmUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    move-result-object p1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->syncAlarmFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->resetPendingAlarms()V

    .line 1116
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdUpdateTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    .line 1117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRingFinish REASON_STOP_BY_FOCUS_LOSS ,set next:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 1119
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto/16 :goto_5

    .line 1095
    :cond_c
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v3, "REASON_STOP_BY_USER_TOUCH"

    invoke-virtual {p1, p2, v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->closeAlarmUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    move-result-object p1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->syncAlarmFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->resetPendingAlarms()V

    .line 1100
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdUpdateTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    .line 1101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Step#6.3 onRingFinish REASON_STOP_BY_USER_TOUCH, set next:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_12

    .line 1103
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto/16 :goto_5

    .line 1057
    :cond_d
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->delay()Ljava/util/Date;

    .line 1058
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDelayTime()I

    move-result p1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getRepeat()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_f

    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->hasComingAlarmInMessageList()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_3

    :cond_e
    const-string p1, "Step#6.2 onRingFinish repeat it!"

    .line 1072
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->resetPendingAlarms()V

    .line 1074
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mPendingAlarms:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    goto :goto_4

    .line 1059
    :cond_f
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->removePendingAlarm(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    .line 1061
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mAlarmDatabaseHelper:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;

    .line 1062
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getDbId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1061
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmDatabaseHelper;->getAlarmByDBIdUpdateTime(I)Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;

    move-result-object p1

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Step#6.1 onRingFinish exceed count or has coming alarm in message list, set next:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 1068
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->setRTCAlarm(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;)V

    .line 1078
    :cond_10
    :goto_4
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;

    move-result-object p1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmStatusManager;->syncAlarmFinished(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmInfo;->isHoursReport()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1082
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$9;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$9;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_11
    const-string p1, "onRingFinish with empty reason"

    .line 1167
    invoke-static {v2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7292045d -> :sswitch_4
        -0x3e188dd6 -> :sswitch_3
        -0x30204402 -> :sswitch_2
        -0x685649d -> :sswitch_1
        0x735ee9cb -> :sswitch_0
    .end sparse-switch
.end method

.method public processAddAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V
    .locals 2

    const-string v0, "AlarmClockManager"

    const-string v1, "processAddAlarmContents before post it to bg thread, "

    .line 194
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public processDeleteAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V
    .locals 2

    const-string v0, "AlarmClockManager"

    const-string v1, "processDeleteAlarmContents before post it to bg thread, "

    .line 162
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$2;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerOnCompleteListener(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;)V
    .locals 4

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

    .line 810
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 812
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AlarmClockManager"

    const-string v1, "registerOnCompleteListener Interrupt wait, e"

    .line 815
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setExternalHandler(Ljava/lang/ref/WeakReference;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;",
            ">;)",
            "Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mExternalHandler:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public unregisterOnCompleteListener()V
    .locals 5

    const-string v0, "AlarmClockManager"

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "unregisterOnCompleteListener with lock"

    .line 822
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;

    .line 824
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_0
    const-string v1, "unregisterOnCompleteListener without lock"

    .line 826
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iput-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->mIPlayCompleteListener:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "unregisterOnCompleteListener Interrupt wait, e"

    .line 830
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
