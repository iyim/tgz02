.class public final Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Stat;,
        Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$OffLineCounter;,
        Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Counter;,
        Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Alarm;
    }
.end annotation


# static fields
.field public static IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppMonitorDelegate"

.field private static application:Landroid/app/Application; = null

.field private static mGlobalArgsMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static volatile sdkInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->mGlobalArgsMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized destroy()V
    .locals 5

    const-class v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;

    monitor-enter v0

    :try_start_0
    const-string v1, "AppMonitorDelegate"

    const/4 v2, 0x1

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "start destory"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-boolean v1, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-eqz v1, :cond_1

    .line 92
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/CommitTask;->uploadAllEvent()V

    .line 93
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/CommitTask;->destroy()V

    .line 94
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/CleanTask;->destroy()V

    .line 95
    sget-object v1, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->application:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 96
    sget-object v1, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/analytics/core/network/NetworkUtil;->unRegister(Landroid/content/Context;)V

    .line 98
    :cond_0
    sput-boolean v4, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 101
    :try_start_1
    sget-object v2, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v2, v1}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static enableLog(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[enableLog]"

    aput-object v2, v0, v1

    const-string v1, "AppMonitorDelegate"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {p0}, Lcom/alibaba/analytics/utils/Logger;->setDebug(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getGlobalArgsMap()Ljava/util/Map;
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

    .line 739
    sget-object v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->mGlobalArgsMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/app/Application;)V
    .locals 6

    const-class v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;

    monitor-enter v0

    :try_start_0
    const-string v1, "AppMonitorDelegate"

    const/4 v2, 0x1

    .line 64
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "start init"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    sget-boolean v1, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-nez v1, :cond_0

    .line 67
    sput-object p0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->application:Landroid/app/Application;

    .line 72
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/CleanTask;->init()V

    .line 74
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/CommitTask;->init()V

    .line 75
    invoke-static {p0}, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->init(Landroid/app/Application;)V

    .line 77
    sput-boolean v2, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :cond_0
    :goto_0
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 7

    .line 195
    :try_start_0
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-eqz v0, :cond_3

    .line 196
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Lcom/alibaba/appmonitor/model/Metric;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/appmonitor/model/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 205
    invoke-static {}, Lcom/alibaba/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/appmonitor/model/MetricRepo;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/alibaba/appmonitor/model/MetricRepo;->add(Lcom/alibaba/appmonitor/model/Metric;)V

    .line 206
    invoke-static {}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->getInstance()Lcom/alibaba/appmonitor/offline/TempEventMgr;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->add(Lcom/alibaba/appmonitor/model/Metric;)V

    .line 208
    invoke-static {}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->getMeasureSet(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 210
    new-instance p2, Lcom/alibaba/appmonitor/model/Metric;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_abtest"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/appmonitor/model/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 211
    invoke-static {}, Lcom/alibaba/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/appmonitor/model/MetricRepo;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/alibaba/appmonitor/model/MetricRepo;->add(Lcom/alibaba/appmonitor/model/Metric;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "AppMonitorDelegate"

    const/4 p3, 0x4

    .line 197
    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string/jumbo v0, "register stat event. module: "

    aput-object v0, p3, p4

    const/4 p4, 0x1

    aput-object p0, p3, p4

    const/4 p0, 0x2

    const-string p4, " monitorPoint: "

    aput-object p4, p3, p0

    const/4 p0, 0x3

    aput-object p1, p3, p0

    invoke-static {p2, p3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget-boolean p0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez p0, :cond_2

    return-void

    .line 199
    :cond_2
    new-instance p0, Lcom/alibaba/analytics/core/selfmonitor/exception/AppMonitorException;

    const-string/jumbo p1, "register error. module and monitorPoint can\'t be null"

    invoke-direct {p0, p1}, Lcom/alibaba/analytics/core/selfmonitor/exception/AppMonitorException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 215
    sget-object p1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {p1, p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-static {p0, p1, p2, v0, p3}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static removeGlobalProperty(Ljava/lang/String;)V
    .locals 1

    .line 735
    sget-object v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->mGlobalArgsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 1

    .line 722
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/analytics/core/Variables;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 726
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 727
    sget-object v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->mGlobalArgsMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setRequestAuthInfo(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 709
    new-instance p0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    invoke-direct {p0, p2, p3}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_0
    new-instance p0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    invoke-direct {p0, p2, p3, p1}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 713
    :goto_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alibaba/analytics/core/Variables;->setRequestAuthenticationInstance(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V

    return-void
.end method

.method public static setSampling(I)V
    .locals 5

    const/4 v0, 0x1

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[setSampling]"

    aput-object v2, v0, v1

    const-string v2, "AppMonitorDelegate"

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .line 137
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 138
    invoke-virtual {v3, p0}, Lcom/alibaba/appmonitor/event/EventType;->setDefaultSampling(I)V

    .line 139
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->setEventTypeSampling(Lcom/alibaba/appmonitor/event/EventType;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 4

    .line 125
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 126
    invoke-virtual {v3, p0}, Lcom/alibaba/appmonitor/event/EventType;->setStatisticsInterval(I)V

    .line 127
    invoke-static {v3, p0}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V
    .locals 1

    .line 691
    :try_start_0
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/alibaba/appmonitor/delegate/CommitTask;->setStatisticsInterval(II)V

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 695
    invoke-virtual {p0, p1}, Lcom/alibaba/appmonitor/event/EventType;->setOpen(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 697
    invoke-virtual {p0, p1}, Lcom/alibaba/appmonitor/event/EventType;->setOpen(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 702
    sget-object p1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {p1, p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized triggerUpload()V
    .locals 5

    const-class v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;

    monitor-enter v0

    :try_start_0
    const-string v1, "AppMonitorDelegate"

    const/4 v2, 0x1

    .line 110
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "triggerUpload"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    sget-boolean v1, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->isNotDisAM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/CommitTask;->uploadAllEvent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 115
    :try_start_1
    sget-object v2, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v2, v1}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 3

    const/4 v0, 0x1

    .line 220
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[updateMeasure]"

    aput-object v2, v0, v1

    const-string v1, "AppMonitorDelegate"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :try_start_0
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/alibaba/analytics/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Lcom/alibaba/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/appmonitor/model/MetricRepo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/Metric;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/Metric;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p0

    new-instance p1, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-direct {p1, p2, p7, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->upateMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
