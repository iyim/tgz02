.class public Lcom/alibaba/ailabs/genie/time/service/TimerService;
.super Landroid/app/Service;
.source "TimerService.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;
    }
.end annotation


# static fields
.field private static final INTERVAL_5_SECOND:I = 0x1388

.field private static final INTERVAL_ONE_SECOND:I = 0x3e8

.field public static final JOB_ID:I = 0x4de

.field private static final MSG_CALCULATE:I = 0x1

.field private static final MSG_CHECK_TIME:I = 0x5

.field private static final MSG_DAY_END:I = 0x2

.field private static final MSG_ONE_SECOND:I = 0x3

.field private static final MSG_REPORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TimerService2"

.field private static mReportInterval:I = 0x927c0


# instance fields
.field private executor:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

.field private mCalculateThread:Landroid/os/HandlerThread;

.field private mCount:J

.field private mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

.field private final mInterval:I

.field private mLastVideoTime:J

.field private mParam:Landroid/app/job/JobParameters;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private mStatisticsInfo:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;

.field private mUiHandler:Landroid/os/Handler;

.field private mVideoTimeReportInterval:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x2710

    .line 56
    iput v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mInterval:I

    const-string v0, "\\s*|\\t|\\r|\\n"

    .line 57
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mPattern:Ljava/util/regex/Pattern;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    const v0, 0x1d4c0

    .line 89
    iput v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mVideoTimeReportInterval:I

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mUiHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/alibaba/ailabs/genie/time/service/TimerService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/time/service/TimerService$1;-><init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->runnable:Ljava/lang/Runnable;

    .line 330
    new-instance v0, Lcom/alibaba/ailabs/genie/time/service/TimerService$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/time/service/TimerService$3;-><init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 51
    sget v0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mReportInterval:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 51
    sput p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mReportInterval:I

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/time/service/TimerService;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mVideoTimeReportInterval:I

    return p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/time/service/TimerService;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mVideoTimeReportInterval:I

    return p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/time/service/TimerService;)J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mCount:J

    return-wide v0
.end method

.method static synthetic access$208(Lcom/alibaba/ailabs/genie/time/service/TimerService;)J
    .locals 4

    .line 51
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mCount:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/time/service/TimerService;)J
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->calculateTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/time/service/TimerService;J)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->uploadTime(J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/time/service/TimerService;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->executor:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

    return-object p0
.end method

.method static synthetic access$802(Lcom/alibaba/ailabs/genie/time/service/TimerService;J)J
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mLastVideoTime:J

    return-wide p1
.end method

.method private calculateTime()J
    .locals 12

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mStatisticsInfo:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->calculate(I)Ljava/util/Map;

    move-result-object v0

    const-string v2, "TimerService2"

    const-string v3, "MSG_CALCULATE, start-1"

    .line 283
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getVideoAppList()Ljava/util/List;

    move-result-object v5

    const-string v6, "MSG_CALCULATE, start-2"

    .line 287
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    .line 288
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 289
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v1, v6, :cond_1

    .line 291
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 292
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    if-eqz v8, :cond_0

    .line 294
    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->getUsedTimeByDay()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",usedTime:"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "s"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long/2addr v3, v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "MSG_CALCULATE, start-3"

    .line 300
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalVideoTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-wide v3
.end method

.method private registerBR()V
    .locals 2

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 371
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.REBOOT"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "ACTION_SCREEN_SAVER"

    .line 376
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private uploadTime(J)V
    .locals 4

    const-string v0, "TimerService2"

    const-wide/16 v1, -0x1

    cmp-long v3, v1, p1

    if-eqz v3, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mLastVideoTime:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    const-string p1, "\u4e24\u6b21\u65f6\u95f4\u76f8\u540c\uff0c\u4e0d\u518d\u91cd\u590d\u4e0a\u4f20"

    .line 317
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;->getInstance()Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/time/service/TimerService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/service/TimerService$2;-><init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;J)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;->reportTime(JLcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "usedTime\u4e3a-1\u6216\u80050\uff0creturn"

    .line 313
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 12

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "TimerService2"

    const-string v1, "onCreate"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->registerBR()V

    .line 111
    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->executor:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeScheduledExecutor;

    .line 112
    new-instance v1, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mStatisticsInfo:Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;

    .line 114
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "useTimeThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mCalculateThread:Landroid/os/HandlerThread;

    .line 115
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mCalculateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v1, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mCalculateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;-><init>(Lcom/alibaba/ailabs/genie/time/service/TimerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    .line 118
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->runnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f40

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 119
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "sp_time"

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "time"

    const-wide/16 v4, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastTime:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const/4 v1, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    const-wide/16 v9, 0x2710

    cmp-long v11, v5, v9

    if-gez v11, :cond_0

    .line 123
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "currentApp"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimerService\u53d1\u751f\u4e86crash\u91cd\u542f, currentApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendErrorToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->setCurrentApp(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "\u673a\u5668\u91cd\u542f\u4e86"

    .line 127
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getLastAppEvent()Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appEvent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 132
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->insertBackgroundEvent(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-string v2, "appEvent is NULL"

    .line 135
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v7, v8}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    iget v2, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mVideoTimeReportInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "TimerService2"

    const-string v1, "onDestroy"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/time/service/TimerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mHandler:Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 182
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/service/TimerService$MyHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/service/TimerService;->mCalculateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "TimerService2"

    const-string p2, "onStartCommand"

    .line 166
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
