.class public Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;
.super Ljava/lang/Object;
.source "StatisticsInfo.java"


# static fields
.field public static final DAY:I = 0x0

.field public static final MONTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StatisticsInfo"

.field public static final WEEK:I = 0x1

.field public static final YEAR:I = 0x3


# instance fields
.field private mStyle:I

.field private mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private FoundUsageStats(Ljava/util/List;Landroid/app/usage/UsageStats;)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;",
            "Landroid/app/usage/UsageStats;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 285
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 286
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private MergeList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->getBeginTime()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 268
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 269
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_1

    .line 270
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    invoke-direct {p0, v0, v4}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->FoundUsageStats(Ljava/util/List;Landroid/app/usage/UsageStats;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 272
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 273
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    invoke-virtual {v5, v6}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V

    .line 274
    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 276
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private calculateLaunchTimesAfterBootOn(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "usagestats"

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 209
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 215
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->bootTime()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p1

    .line 221
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 222
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    invoke-virtual {p1, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 224
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    if-nez v2, :cond_2

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 231
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timesPlusPlus()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private getAccurateDailyStatsList(Landroid/content/Context;Ljava/util/List;Landroid/app/usage/UsageStatsManager;JJ)Ljava/util/HashMap;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;",
            "Landroid/app/usage/UsageStatsManager;",
            "JJ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 134
    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    cmp-long v6, v4, p4

    if-lez v6, :cond_0

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 135
    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 136
    new-instance v4, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    invoke-direct {v4, v1, p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;-><init>(Landroid/app/usage/UsageStats;Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 138
    invoke-virtual {v4, v5}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimes(I)V

    .line 139
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setUsedTimeByDay(J)V

    .line 140
    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->bootTime()J

    move-result-wide p1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatisticsInfo"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p3, p4, p5, p6, p7}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p1

    .line 150
    new-instance p3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    const/4 p6, 0x0

    .line 152
    :goto_1
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result p7

    const/4 v1, 0x1

    if-eqz p7, :cond_7

    .line 153
    invoke-virtual {p1, p3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 154
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p7

    .line 156
    invoke-virtual {v0, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    if-nez p7, :cond_2

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 162
    invoke-virtual {p7}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->timesPlusPlus()V

    .line 164
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    cmp-long v1, v4, p4

    if-gez v1, :cond_3

    goto :goto_1

    .line 167
    :cond_3
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {p7, v4, v5}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimeStampMoveToForeground(J)V

    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6

    .line 170
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    cmp-long v1, v4, p4

    if-gez v1, :cond_5

    goto :goto_1

    .line 173
    :cond_5
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {p7, v4, v5}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimeStampMoveToBackGround(J)V

    .line 175
    invoke-virtual {p7}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->getTimeStampMoveToForeground()J

    move-result-wide v4

    cmp-long p6, v4, v2

    if-gez p6, :cond_6

    .line 177
    invoke-virtual {p7, p4, p5}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimeStampMoveToForeground(J)V

    .line 181
    :cond_6
    :goto_2
    invoke-virtual {p7}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->calculateRunningTime()V

    move-object p6, p7

    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {p3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result p1

    if-ne p1, v1, :cond_8

    if-eqz p6, :cond_8

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-----MOVE_TO_FOREGROUND:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 189
    invoke-virtual {p6, p1, p2}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimeStampMoveToBackGround(J)V

    .line 190
    invoke-virtual {p6}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->calculateRunningTime()V

    :cond_8
    return-object v0
.end method

.method private getBeginTime()J
    .locals 5

    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 239
    iget v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->mStyle:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, -0x7

    .line 241
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 242
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const/16 v1, -0x1e

    .line 245
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 246
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, -0x1

    .line 248
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 249
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 254
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 255
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 256
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 259
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StatisticsInfo"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private getUsageStatsList(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    if-eqz v1, :cond_6

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 96
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->getBeginTime()J

    move-result-wide v10

    .line 98
    iget v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->mStyle:I

    if-nez v2, :cond_1

    const/4 v3, 0x4

    move-object v2, v1

    move-wide v4, v10

    move-wide v6, v8

    .line 99
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, v1

    move-wide v6, v10

    .line 100
    invoke-direct/range {v2 .. v9}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->getAccurateDailyStatsList(Landroid/content/Context;Ljava/util/List;Landroid/app/usage/UsageStatsManager;JJ)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    move-object v2, v1

    move-wide v4, v10

    move-wide v6, v8

    .line 103
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v3, 0x2

    move-object v2, v1

    move-wide v4, v10

    move-wide v6, v8

    .line 106
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const/4 v3, 0x3

    move-object v2, v1

    move-wide v4, v10

    move-wide v6, v8

    .line 109
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    move-object v2, v1

    move-wide v4, v10

    move-wide v6, v8

    .line 112
    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    .line 115
    :goto_0
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->MergeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 117
    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    invoke-direct {v4, v2, p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;-><init>(Landroid/app/usage/UsageStats;Landroid/content/Context;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 119
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->calculateLaunchTimesAfterBootOn(Landroid/content/Context;Ljava/util/Map;)V

    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public calculate(I)Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;",
            ">;"
        }
    .end annotation

    .line 44
    :try_start_0
    iput p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->mStyle:I

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsInfo;->getUsageStatsList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 52
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StatisticsInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
