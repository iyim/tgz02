.class public Lcom/alibaba/ailabs/genie/time/utils/DataReport;
.super Ljava/lang/Object;
.source "DataReport.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "appUsedTime"

.field private static final TAG:Ljava/lang/String; = "UsedTimeReport"

.field private static mBizGroup:Ljava/lang/String;

.field private static mBizType:Ljava/lang/String;

.field private static mProductName:Ljava/lang/String;

.field private static mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private static mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static constructJson()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 264
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->queryData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 266
    sget-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mProductName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "ro.product.model"

    .line 268
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mProductName:Ljava/lang/String;

    .line 269
    sget-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mProductName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    sget-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mProductName:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 271
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 272
    aget-object v2, v1, v2

    sput-object v2, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mBizType:Ljava/lang/String;

    const/4 v2, 0x1

    .line 273
    aget-object v1, v1, v2

    sput-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mBizGroup:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 277
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsedTimeReport"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    new-instance v1, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;-><init>()V

    .line 282
    sget-wide v2, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mStartTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->setLocalTimeStart(Ljava/lang/String;)V

    const-string v2, "persist.sys.reporttime"

    .line 283
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->setLocalTimeEnd(Ljava/lang/String;)V

    const-string v2, "ro.genie.uuid"

    .line 284
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->setUuid(Ljava/lang/String;)V

    .line 285
    sget-object v2, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mBizGroup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->setBizGroup(Ljava/lang/String;)V

    .line 286
    sget-object v2, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mBizType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->setBizType(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime;->setAppList(Ljava/util/List;)V

    .line 288
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 289
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "appUsedTime"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getStartTime()J
    .locals 10

    .line 82
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "sp_time"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "persist.sys.reporttime"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryData, currentTime:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UsedTimeReport"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enterTime"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "queryData, lastTime:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v6, v7, v3, v4}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->isSameDay(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u4e0d\u662f\u540c\u4e00\u5929"

    .line 96
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v6

    goto :goto_1

    .line 100
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-wide/16 v6, 0x0

    .line 104
    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryData, startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 108
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v0

    goto :goto_2

    .line 111
    :cond_3
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_2
    move-wide v6, v0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryData, lastTime is null, startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_3
    sput-wide v6, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mStartTime:J

    return-wide v6
.end method

.method private static queryData()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->getStartTime()J

    move-result-wide v2

    .line 126
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getAllAppEvent(JJ)Ljava/util/List;

    move-result-object v4

    const-string v7, "queryData, appInfo:"

    const-string v10, "systemApp"

    const-string v11, "false"

    const-string v12, "true"

    const-string v13, "UsedTimeReport"

    if-eqz v4, :cond_f

    .line 129
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_f

    .line 130
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    const/4 v8, 0x0

    .line 132
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    .line 133
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryData, \u7b2c\u4e00\u4e2a\u4e8b\u4ef6\u4e3aMOVE_TO_BACKGROUND,pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v8, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;

    invoke-direct {v8}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;-><init>()V

    .line 138
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setAppEndTime(J)V

    .line 140
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v5, v2

    .line 141
    invoke-virtual {v8, v5, v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setUsedTime(J)V

    .line 142
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setIdentify(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v8, v12}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setChildModel(Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getChildModel()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v12

    goto :goto_0

    :cond_1
    move-object v2, v11

    :goto_0
    invoke-virtual {v8, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setChildModel(Ljava/lang/String;)V

    .line 148
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 149
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {v2, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 152
    :cond_2
    invoke-virtual {v2, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_2
    invoke-virtual {v8, v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setExtend(Lcom/alibaba/fastjson/JSONObject;)V

    .line 155
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    move/from16 v2, v17

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v15, :cond_a

    .line 161
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    .line 162
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 163
    new-instance v3, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;-><init>()V

    .line 164
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setAppStartTime(J)V

    .line 165
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setIdentify(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 166
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_9

    if-eqz v3, :cond_9

    .line 168
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->getIdentify()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 169
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setAppEndTime(J)V

    .line 170
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setIdentify(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->calculateTime()V

    .line 172
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 173
    invoke-virtual {v3, v12}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setChildModel(Ljava/lang/String;)V

    goto :goto_6

    .line 175
    :cond_5
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getChildModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v6, v12

    goto :goto_5

    :cond_6
    move-object v6, v11

    :goto_5
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setChildModel(Ljava/lang/String;)V

    .line 177
    :goto_6
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 178
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 179
    invoke-virtual {v6, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 181
    :cond_7
    invoke-virtual {v6, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :goto_7
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setExtend(Lcom/alibaba/fastjson/JSONObject;)V

    .line 184
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x1

    sub-int/2addr v15, v2

    .line 191
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    .line 192
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v5

    if-ne v5, v2, :cond_14

    .line 193
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getCurrentApp()Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryData, \u6700\u540e\u4e00\u4e2a\u4e8b\u4ef6\u4e3aMOVE_TO_FOREGROUND,pkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",currentApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 196
    new-instance v2, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;

    invoke-direct {v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;-><init>()V

    .line 197
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setAppStartTime(J)V

    .line 198
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setIdentify(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    .line 200
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setUsedTime(J)V

    .line 201
    invoke-static {}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isMrGreen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 202
    invoke-virtual {v3, v12}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setChildModel(Ljava/lang/String;)V

    goto :goto_a

    .line 204
    :cond_b
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getChildModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v12

    goto :goto_9

    :cond_c
    move-object v0, v11

    :goto_9
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setChildModel(Ljava/lang/String;)V

    .line 206
    :goto_a
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 207
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 208
    invoke-virtual {v0, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 210
    :cond_d
    invoke-virtual {v0, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_b
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setExtend(Lcom/alibaba/fastjson/JSONObject;)V

    .line 213
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_e
    const-string v0, "queryData, \u5f53\u524d\u8fdb\u7a0b\u548c\u4e8b\u4ef6\u91cc\u7684\u8fdb\u7a0b\u4e0d\u662f\u540c\u4e00\u4e2a"

    .line 216
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_f
    const-string v4, "queryData, \u6ca1\u6709\u67e5\u5230\u4efb\u4f55\u4e8b\u4ef6"

    .line 221
    invoke-static {v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getCurrentApp()Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 225
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getExcludeApp()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryData, \u6ca1\u6709\u6709\u6548app\u5728\u8fd0\u884c, currentApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_10
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->haveEnteredScreenSaver()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_f

    .line 239
    :cond_11
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getBootTime()J

    move-result-wide v5

    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "queryData,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u4e00\u76f4\u5728\u8fd0\u884c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v14, Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    new-instance v8, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;

    invoke-direct {v8}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;-><init>()V

    .line 243
    invoke-virtual {v8, v4}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setIdentify(Ljava/lang/String;)V

    .line 245
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 246
    invoke-virtual {v8, v0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setUsedTime(J)V

    .line 247
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->isChildModel()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v12

    goto :goto_c

    :cond_12
    move-object v0, v11

    :goto_c
    invoke-virtual {v8, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setChildModel(Ljava/lang/String;)V

    .line 248
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 249
    invoke-static {v4}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 250
    invoke-virtual {v0, v10, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 252
    :cond_13
    invoke-virtual {v0, v10, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :goto_d
    invoke-virtual {v8, v0}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->setExtend(Lcom/alibaba/fastjson/JSONObject;)V

    .line 255
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppUsedTime$AppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryData, currentApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\u4e00\u76f4\u5728\u8fd0\u884c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\u5f00\u673a\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_e
    return-object v14

    :cond_15
    :goto_f
    const-string v0, "queryData, \u8fdb\u5165\u4e86\u5c4f\u4fdd\u6216\u8005\u606f\u5c4f\u4e86"

    .line 235
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    const-string v1, "queryData, currentApp is null"

    .line 230
    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static reportData()V
    .locals 7

    const-string v0, "appUsedTime"

    const-string v1, "UsedTimeReport"

    const-string v2, "reportData, start"

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->isChildModel()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "\u6210\u4eba\u6a21\u5f0f, return"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/DataReport;->constructJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportData, data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    const-string v0, "reportData, data is null, return"

    .line 53
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 56
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "firstType"

    .line 58
    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v5, "id"

    const-string v6, ""

    .line 60
    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "dataDetail"

    .line 62
    invoke-virtual {v3, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "secondType"

    .line 63
    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extendInfo"

    .line 64
    invoke-virtual {v3, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u4e0a\u62a5\u7684\u65f6\u957f\u6570\u636e"

    .line 66
    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/genie/time/utils/CommonUtils;->printJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v2

    const-string v3, "AliGenie.Data"

    const-string v4, "ApkUseInfoReport"

    new-instance v5, Lcom/alibaba/ailabs/genie/time/utils/DataReport$1;

    invoke-direct {v5}, Lcom/alibaba/ailabs/genie/time/utils/DataReport$1;-><init>()V

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;)I
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
