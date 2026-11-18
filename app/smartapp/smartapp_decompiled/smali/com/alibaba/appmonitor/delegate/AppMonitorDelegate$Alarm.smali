.class public Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Alarm;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alarm"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 322
    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 337
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 341
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "_status"

    const-string v5, "0"

    .line 342
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-boolean v4, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "errorMsg:"

    const/4 v9, 0x5

    const-string v10, "errorCode:"

    const/4 v11, 0x4

    const/4 v12, 0x3

    const-string v13, "monitorPoint"

    const/4 v14, 0x2

    const-string v15, "module"

    const/16 v5, 0x8

    if-eqz v4, :cond_4

    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->isNotDisAM()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v4}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v4, :cond_1

    .line 344
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v0, v8, v7, v1}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const-string v1, "commitFail "

    .line 345
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v15, v4, v3

    aput-object v0, v4, v2

    aput-object v13, v4, v14

    aput-object v8, v4, v12

    aput-object v10, v4, v11

    aput-object p3, v4, v9

    const/4 v2, 0x6

    aput-object v6, v4, v2

    const/4 v2, 0x7

    aput-object p4, v4, v2

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1, v2, v0, v8}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 348
    invoke-static {}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1, v2, v0, v8}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->isNeedMonitorForOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_abtest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/appmonitor/event/EventRepo;->alarmEventFailIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 352
    :goto_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 353
    invoke-static {}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->getInstance()Lcom/alibaba/appmonitor/offline/TempEventMgr;

    move-result-object v9

    sget-object v10, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    new-instance v11, Lcom/alibaba/appmonitor/offline/TempAlarm;

    const/4 v6, 0x0

    .line 354
    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccsssSubType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/appmonitor/offline/TempAlarm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v9, v10, v11}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->add(Lcom/alibaba/appmonitor/event/EventType;Lcom/alibaba/appmonitor/offline/TempEvent;)V

    goto :goto_2

    .line 356
    :cond_3
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/appmonitor/event/EventRepo;->alarmEventFailIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "log discard !"

    .line 359
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v15, v4, v3

    aput-object v0, v4, v2

    aput-object v13, v4, v14

    aput-object v8, v4, v12

    aput-object v10, v4, v11

    aput-object p3, v4, v9

    const/4 v0, 0x6

    aput-object v6, v4, v0

    const/4 v0, 0x7

    aput-object p4, v4, v0

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string v0, "AppMonitorDelegate"

    .line 338
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "module & monitorPoint must not null"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 362
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-static {p0, p1, v0}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 286
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 290
    :cond_0
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x5

    const-string v4, "arg"

    const/4 v5, 0x4

    const/4 v6, 0x3

    const-string v7, "monitorPoint"

    const/4 v8, 0x2

    const-string v9, "module"

    const/4 v10, 0x6

    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->isNotDisAM()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v0, :cond_1

    .line 291
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v0, p0, p1, v11, v12}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "commitSuccess"

    .line 292
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v1

    aput-object p0, v10, v2

    aput-object v7, v10, v8

    aput-object p1, v10, v6

    aput-object v4, v10, v5

    aput-object p2, v10, v3

    invoke-static {v0, v10}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0, p1}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 296
    invoke-static {}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1, v2, p0, p1}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->isNeedMonitorForOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_abtest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v2

    sget-object v3, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v3}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    invoke-virtual {v2, v3, p0, p1, p2}, Lcom/alibaba/appmonitor/event/EventRepo;->alarmEventSuccessIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    .line 300
    :goto_0
    invoke-static {}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->getInstance()Lcom/alibaba/appmonitor/offline/TempEventMgr;

    move-result-object p0

    sget-object v9, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    new-instance v10, Lcom/alibaba/appmonitor/offline/TempAlarm;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccsssSubType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/appmonitor/offline/TempAlarm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->add(Lcom/alibaba/appmonitor/event/EventType;Lcom/alibaba/appmonitor/offline/TempEvent;)V

    goto :goto_2

    .line 302
    :cond_3
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/alibaba/appmonitor/event/EventRepo;->alarmEventSuccessIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "log discard !"

    .line 305
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v1

    aput-object p0, v10, v2

    aput-object v7, v10, v8

    aput-object p1, v10, v6

    aput-object v4, v10, v5

    aput-object p2, v10, v3

    invoke-static {v0, v10}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string p0, "AppMonitorDelegate"

    .line 287
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "module & monitorPoint must not null"

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 308
    sget-object p1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {p1, p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static setSampling(I)V
    .locals 2

    .line 256
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->setEventTypeSampling(Lcom/alibaba/appmonitor/event/EventType;I)V

    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 1

    .line 248
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, p0}, Lcom/alibaba/appmonitor/event/EventType;->setStatisticsInterval(I)V

    .line 249
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-static {v0, p0}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    return-void
.end method
