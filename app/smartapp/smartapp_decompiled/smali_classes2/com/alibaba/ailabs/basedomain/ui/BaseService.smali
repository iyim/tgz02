.class public Lcom/alibaba/ailabs/basedomain/ui/BaseService;
.super Lcom/alibaba/ailabs/basedomain/common/AutoStopService;
.source "BaseService.java"


# static fields
.field public static final BAIKE_BASE:Ljava/lang/String; = "aligenie.baike.base"

.field public static final TAG:Ljava/lang/String; = "BaseService"

.field public static final TASK_TYPE_ALARM_DATA_SYNC:Ljava/lang/String; = "AliGenie.Alarm.DataSync"

.field public static final TASK_TYPE_ALARM_DISMISS_BY_OTHER:Ljava/lang/String; = "alarm_dismiss_by_other"

.field public static final TASK_TYPE_ALARM_SCHEDULE_SYNC_DATA:Ljava/lang/String; = "schedule_sync_alarm_data"

.field public static final TASK_TYPE_ALARM_SYSTEM_BOOT:Ljava/lang/String; = "alarm_system_boot"

.field public static final TASK_TYPE_ALARM_TIME_UP:Ljava/lang/String; = "alarm_time_up"

.field public static final TASK_TYPE_BIND_USER:Ljava/lang/String; = "alarm_bind_user"

.field public static final TASK_TYPE_UNBIND_USER:Ljava/lang/String; = "alarm_unbind_user"

.field public static final TASK_TYPE_USER_ONLINE:Ljava/lang/String; = "alarm_user_online"

.field public static final TIME_MILLS_EXIST_SELF:I = 0x927c0

.field private static mLastBgTaskFlag:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTTSSessionId:I

.field private mIsForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/common/AutoStopService;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->stopWrap(Ljava/lang/String;)V

    return-void
.end method

.method private dump()Ljava/lang/String;
    .locals 3

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastBgTaskFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mLastBgTaskFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCloseAlarms(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 377
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 378
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;->get(I)Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;

    move-result-object v1

    .line 379
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "server delete clock"

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->closeAlarmUI(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "NoAlarmID"

    const-string v0, "handleCloseAlarmCommand"

    .line 383
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleCloseAlarmCommand()V

    return-void
.end method

.method public static postBgMessage(Landroid/os/Message;)V
    .locals 2

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BgTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mLastBgTaskFlag:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postBgMessage Message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseService"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static postBgMessageDelay(Landroid/os/Message;J)V
    .locals 2

    .line 106
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BgTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mLastBgTaskFlag:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postBgMessageDelay Message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " mills: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseService"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static postBgTask(Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "postBgTask runnable:"

    const-string v1, "BgTask:"

    const-string v2, "BaseService"

    .line 71
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mLastBgTaskFlag:Ljava/lang/String;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "throwable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mLastBgTaskFlag:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static postMainThreadTaskDelay(Ljava/lang/Runnable;J)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postMainThreadTaskDelay\uff0c runnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " delayMills\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseService"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private preproccessEncyclopediaData(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;)Z
    .locals 3

    .line 343
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getTemplate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "BaseService"

    const-string v2, "is video encyclopedia, jump to youku"

    .line 344
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->openUri(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->isFallback()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 351
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/EncyclopediaData;->hasPic()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private preproccessWeatherData(Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string p1, "BaseService"

    const-string v0, "preproccessWeatherData with empty weather data, just result"

    .line 365
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static removeBgMessage(ILjava/lang/Object;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeBgMessage: what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " object "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public static removeBgTask(Ljava/lang/Runnable;)V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeBgTask runnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeMainThreadTask(Ljava/lang/Runnable;)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMainThreadTask\uff0c runnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseService"

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startSelf(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.basedomain"

    .line 404
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 405
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 406
    sget-object v0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pageType"

    .line 407
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startSelf(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "genie://com.alibaba.ailabs.basedomain"

    .line 412
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 413
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    sget-object v0, Lcom/alibaba/ailabs/basedomain/MainApplication;->mRealApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pageType"

    .line 415
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

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
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/AutoStopService;->onCreate()V

    const-string v0, "BaseService"

    const-string v1, "onCreate begin"

    .line 121
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    const-string v1, "onCreate end"

    .line 123
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utOverTime(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 389
    invoke-super {p0}, Lcom/alibaba/ailabs/basedomain/common/AutoStopService;->onDestroy()V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mIsForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0}, Lcom/alibaba/ailabs/basedomain/ui/NotificationUtil;->stopForegound(Landroid/app/Service;)V

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mIsForeground:Z

    :cond_0
    return-void
.end method

.method public onHandleWork(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseService onStartCommand SDK version\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " localVersion: 29 begin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BaseService"

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MyService:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "circus"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_9

    const-string v5, "renderData"

    .line 138
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "reply"

    .line 139
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "sessionID"

    .line 140
    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mCurrentTTSSessionId:I

    .line 141
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BaseService renderData:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BaseService reply:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "pageType"

    .line 143
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "askAgain"

    .line 144
    invoke-virtual {v1, v12, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 145
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BaseService askAgain: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_0

    const-string v11, ""

    .line 147
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BaseService pageType3:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " sessionId:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mCurrentTTSSessionId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v16

    const-string v14, "aligenie.alarm.screen.alarm.findAlarm"

    const-string v15, "AliGenie.Alarm.Set"

    const-string v3, "aligenie.alarm.screen.alarm.setAlarm"

    const-string v9, "aligenie.alarm.screen.alarm.deleteAlarm"

    sparse-switch v16, :sswitch_data_0

    move-object/from16 v16, v12

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v16, v12

    const-string v12, "ask_lunar_date"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x2

    goto/16 :goto_1

    :sswitch_1
    move-object/from16 v16, v12

    const-string v12, "weatherTemperatureMultiWithToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x23

    goto/16 :goto_1

    :sswitch_2
    move-object/from16 v16, v12

    const-string v12, "AliGenie.Alarm.Speak"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xe

    goto/16 :goto_1

    :sswitch_3
    move-object/from16 v16, v12

    const-string v12, "alarm_system_boot"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x10

    goto/16 :goto_1

    :sswitch_4
    move-object/from16 v16, v12

    const-string v12, "weatherDryingRealtime"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x1d

    goto/16 :goto_1

    :sswitch_5
    move-object/from16 v16, v12

    const-string v12, "weatherBaseSingleNotToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x14

    goto/16 :goto_1

    :sswitch_6
    move-object/from16 v16, v12

    const-string v12, "weatherBaseRealtime"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x12

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v16, v12

    const-string v12, "weatherDressRealtime"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x20

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v16, v12

    const-string v12, "alarm_time_up"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xf

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v16, v12

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x7

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v16, v12

    const-string v12, "aligenie.alarm.screen.alarm.closeAlarm"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x8

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v16, v12

    const-string v12, "weatherSpfToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x25

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v16, v12

    const-string v12, "AliGenie.Alarm.Play"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xc

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v16, v12

    const-string v12, "AliGenie.Alarm.PlayOnce"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xd

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v16, v12

    const-string v12, "weatherDryingToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x1e

    goto/16 :goto_1

    :sswitch_f
    move-object/from16 v16, v12

    const-string v12, "weatherTemperatureToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x18

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v16, v12

    const-string v12, "AliGenie.Alarm.DataSync"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x9

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v16, v12

    const-string v12, "weatherAqiToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x1a

    goto/16 :goto_1

    :sswitch_12
    move-object/from16 v16, v12

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xa

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v16, v12

    const-string v12, "schedule_sync_alarm_data"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x11

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v16, v12

    const-string v12, "weatherTemperatureRealtime"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x17

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v16, v12

    const-string v12, "alarm_bind_user"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x26

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v16, v12

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x5

    goto/16 :goto_1

    :sswitch_17
    move-object/from16 v16, v12

    const-string v12, "weatherDryingNotToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x1f

    goto/16 :goto_1

    :sswitch_18
    move-object/from16 v16, v12

    const-string v12, "AliGenie.Alarm.Delete"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0xb

    goto/16 :goto_1

    :sswitch_19
    move-object/from16 v16, v12

    const-string v12, "weatherTemperatureMultiWithoutToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x24

    goto/16 :goto_1

    :sswitch_1a
    move-object/from16 v16, v12

    const-string v12, "aligenie.baike.base"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    goto/16 :goto_1

    :sswitch_1b
    move-object/from16 v16, v12

    const-string v12, "ask_solar_date"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto/16 :goto_1

    :sswitch_1c
    move-object/from16 v16, v12

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x6

    goto/16 :goto_1

    :sswitch_1d
    move-object/from16 v16, v12

    const-string v12, "ask_time"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x4

    goto/16 :goto_1

    :sswitch_1e
    move-object/from16 v16, v12

    const-string v12, "ask_day"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x3

    goto/16 :goto_1

    :sswitch_1f
    move-object/from16 v16, v12

    const-string v12, "weatherDressNotToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x22

    goto/16 :goto_1

    :sswitch_20
    move-object/from16 v16, v12

    const-string v12, "weatherCarwashToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x1c

    goto/16 :goto_1

    :sswitch_21
    move-object/from16 v16, v12

    const-string v12, "weatherBaseMultiWithoutToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x16

    goto :goto_1

    :sswitch_22
    move-object/from16 v16, v12

    const-string v12, "alarm_user_online"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x28

    goto :goto_1

    :sswitch_23
    move-object/from16 v16, v12

    const-string v12, "weatherCarwashRealtime"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x1b

    goto :goto_1

    :sswitch_24
    move-object/from16 v16, v12

    const-string v12, "weatherBaseMultiWithToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x15

    goto :goto_1

    :sswitch_25
    move-object/from16 v16, v12

    const-string v12, "weatherDressToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x21

    goto :goto_1

    :sswitch_26
    move-object/from16 v16, v12

    const-string v12, "alarm_unbind_user"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x27

    goto :goto_1

    :sswitch_27
    move-object/from16 v16, v12

    const-string v12, "weatherTemperatureNotToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x19

    goto :goto_1

    :sswitch_28
    move-object/from16 v16, v12

    const-string v12, "weatherBaseSingleToday"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, -0x1

    :goto_1
    packed-switch v12, :pswitch_data_0

    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    const/4 v7, 0x1

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No handler to this pageType:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 306
    :pswitch_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->userOnline()V

    .line 307
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleUserOnline()V

    goto :goto_3

    .line 297
    :pswitch_1
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->userUnbind()V

    .line 298
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v6, Lcom/alibaba/ailabs/basedomain/ui/BaseService$4;

    invoke-direct {v6, v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService$4;-><init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 293
    :pswitch_2
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->userBind()V

    .line 294
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleUserOnline()V

    goto :goto_3

    .line 287
    :pswitch_3
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-direct {v1, v6}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, v11}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->setPageType(Ljava/lang/String;)V

    .line 289
    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->preproccessWeatherData(Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;)Z

    move-result v6

    goto :goto_2

    .line 281
    :pswitch_4
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;

    invoke-direct {v1, v6}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v11}, Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;->setPageType(Ljava/lang/String;)V

    .line 283
    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->preproccessWeatherData(Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;)Z

    move-result v6

    :goto_2
    move-object v12, v8

    move-object/from16 v18, v10

    const/16 v19, 0x1

    move-object v10, v7

    move v7, v6

    goto/16 :goto_8

    :pswitch_5
    const-string v1, "TASK_TYPE_ALARM_SYNC_DATA "

    .line 257
    invoke-static {v4, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->scheduleSyncData()V

    .line 259
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleConnectNetwork()V

    goto :goto_3

    :pswitch_6
    const-string v1, "TASK_TYPE_ALARM_SYSTEM_BOOT "

    .line 252
    invoke-static {v4, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->systemBoot()V

    .line 254
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleSystemBoot()V

    :goto_3
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    goto/16 :goto_5

    .line 238
    :pswitch_7
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v6, v12, :cond_2

    const-string v6, "\u95f9\u949f\u901a\u77e5"

    const-string v12, "\u95f9\u949f\u901a\u77e5"

    const-string v15, "\u95f9\u949f"

    move-object/from16 v18, v10

    const-string v10, "\u5373\u5c06\u95f9\u949f"

    .line 239
    invoke-static {v0, v6, v12, v15, v10}, Lcom/alibaba/ailabs/basedomain/ui/NotificationUtil;->startForeground(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v6, Lcom/alibaba/ailabs/basedomain/ui/BaseService$3;

    invoke-direct {v6, v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService$3;-><init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Ljava/lang/String;)V

    move-object v10, v7

    move-object v12, v8

    const-wide/16 v7, 0x4e20

    invoke-static {v6, v7, v8}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postMainThreadTaskDelay(Ljava/lang/Runnable;J)V

    const/4 v6, 0x1

    .line 246
    iput-boolean v6, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mIsForeground:Z

    const/16 v17, 0x0

    goto :goto_4

    :cond_2
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    const/16 v17, 0x1

    .line 249
    :goto_4
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleAlarmTimeUp(Landroid/content/Intent;)V

    move/from16 v19, v17

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto/16 :goto_8

    :pswitch_8
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    .line 234
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleReceiveSpeakTTS(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_9
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    .line 226
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v7, Lcom/alibaba/ailabs/basedomain/ui/BaseService$2;

    invoke-direct {v7, v0, v6}, Lcom/alibaba/ailabs/basedomain/ui/BaseService$2;-><init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :pswitch_a
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    .line 219
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-direct {v1, v6}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v7, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleDeleteAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AliGenie.Alarm.Delete, renderData:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->uploadMsg(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_b
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    .line 214
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-direct {v1, v6}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;-><init>(Ljava/lang/String;)V

    .line 215
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v6

    invoke-virtual {v6, v1, v15}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->processAddAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V

    :goto_5
    const/4 v7, 0x1

    goto/16 :goto_6

    :pswitch_c
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    .line 178
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-direct {v1, v6}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->getDataSyncType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->receiveOriginAlarm(Ljava/lang/String;I)V

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStartCommand: pageType = TASK_TYPE_ALARM_DATA_SYNC, syncType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->getDataSyncType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 181
    invoke-static {v4, v6}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;->getDataSyncType()I

    move-result v6

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v8, 0x2

    if-eq v6, v8, :cond_4

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    goto/16 :goto_6

    .line 198
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v8, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;

    invoke-direct {v8, v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;-><init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 189
    :cond_4
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->processDeleteAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V

    goto/16 :goto_6

    .line 193
    :cond_5
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v6

    const-string v8, "data_sync_update"

    invoke-virtual {v6, v1, v8}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->processAddAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const/4 v7, 0x1

    .line 185
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v6

    const-string v8, "data_sync_add"

    invoke-virtual {v6, v1, v8}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->processAddAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_d
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    const/4 v7, 0x1

    .line 172
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-direct {v1, v6, v11}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->handleCloseAlarms(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "aligenie.alarm.screen.alarm.closeAlarm, renderData:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->uploadMsg(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_e
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    const/4 v7, 0x1

    .line 168
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    invoke-direct {v1, v6, v11}, Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_f
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    const/4 v7, 0x1

    .line 160
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;

    invoke-direct {v1, v6}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;-><init>(Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v1, v11}, Lcom/alibaba/ailabs/basedomain/model/datetime/DateTime;->setType(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_10
    move-object v12, v8

    move-object/from16 v18, v10

    move-object v10, v7

    const/4 v7, 0x1

    .line 153
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object v1

    iget v8, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mCurrentTTSSessionId:I

    invoke-virtual {v1, v6, v11, v13, v8}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->setData(Ljava/lang/String;Ljava/lang/String;ZI)V

    :goto_6
    const/4 v1, 0x0

    :goto_7
    const/16 v19, 0x1

    .line 314
    :goto_8
    invoke-static {v11, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 315
    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 316
    invoke-static {v11, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_9

    .line 319
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-direct {v3, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 317
    :cond_8
    :goto_9
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-direct {v3, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_a
    if-eqz v1, :cond_a

    if-eqz v7, :cond_a

    .line 325
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 326
    invoke-virtual {v3, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v1, v18

    .line 327
    invoke-virtual {v3, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget v1, v0, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->mCurrentTTSSessionId:I

    const-string v5, "sessionId"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v1, v16

    .line 329
    invoke-virtual {v3, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    :cond_9
    const/4 v7, 0x1

    const/16 v19, 0x1

    .line 333
    :cond_a
    :goto_b
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    const v3, 0xc350

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 334
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getInstance()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;->getBgHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v5, 0x927c0

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v1, "onStartCommand end"

    .line 335
    invoke-static {v4, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_b

    .line 336
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->stopWrap(Ljava/lang/String;)V

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f986a4c -> :sswitch_28
        -0x719a36d2 -> :sswitch_27
        -0x6fd62cda -> :sswitch_26
        -0x6f625da2 -> :sswitch_25
        -0x6b17ead9 -> :sswitch_24
        -0x513fef96 -> :sswitch_23
        -0x4c981ba7 -> :sswitch_22
        -0x47920b33 -> :sswitch_21
        -0x4517cb5e -> :sswitch_20
        -0x3ca1e40f -> :sswitch_1f
        -0x2a75b72a -> :sswitch_1e
        -0x2439cb2d -> :sswitch_1d
        -0x2251f85c -> :sswitch_1c
        -0x2124c70e -> :sswitch_1b
        -0x160e6805 -> :sswitch_1a
        -0x1314d1ce -> :sswitch_19
        -0x11e14f78 -> :sswitch_18
        -0x10cb5b47 -> :sswitch_17
        -0xfaedc6f -> :sswitch_16
        -0x857dde1 -> :sswitch_15
        -0x22b5995 -> :sswitch_14
        0x118def54 -> :sswitch_13
        0x11b3c6a5 -> :sswitch_12
        0x13cc189c -> :sswitch_11
        0x1afb8102 -> :sswitch_10
        0x1d164641 -> :sswitch_f
        0x20190e96 -> :sswitch_e
        0x20524b72 -> :sswitch_d
        0x24c3c951 -> :sswitch_c
        0x279c7b2c -> :sswitch_b
        0x29b8773b -> :sswitch_a
        0x2dd967d6 -> :sswitch_9
        0x3155515f -> :sswitch_8
        0x32ccf92e -> :sswitch_7
        0x3549f570 -> :sswitch_6
        0x419260db -> :sswitch_5
        0x5ea381f6 -> :sswitch_4
        0x67fb6e14 -> :sswitch_3
        0x73e18555 -> :sswitch_2
        0x746adde2 -> :sswitch_1
        0x7a3614dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
