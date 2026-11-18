.class public Lcom/alibaba/ailabs/genie/time/db/QueryUtil;
.super Ljava/lang/Object;
.source "QueryUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QueryUtil"

.field private static sInstance:Lcom/alibaba/ailabs/genie/time/db/QueryUtil;


# instance fields
.field private mSimpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private checkThread()V
    .locals 2

    .line 417
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u67e5\u8be2DB\u6bd4\u8f83\u8017\u65f6\uff0c\u5c24\u5176\u662f\u6570\u636e\u5e93\u6bd4\u8f83\u5927\u7684\u65f6\u5019\uff0c\u8bf7\u653e\u5728\u5b50\u7ebf\u7a0b"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppEvent(JJLjava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;",
            ">;"
        }
    .end annotation

    .line 184
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getExcludeApp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 190
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->getAppEventDao()Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppEvent startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",endTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QueryUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->TimeStamp:Lorg/greenrobot/greendao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->TimeStamp:Lorg/greenrobot/greendao/Property;

    .line 195
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p3}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    aput-object p3, p2, v1

    sget-object p3, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 196
    invoke-virtual {p3, p5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const/4 p3, 0x2

    sget-object p5, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->ChildModel:Lorg/greenrobot/greendao/Property;

    .line 197
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p5, p4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p4

    aput-object p4, p2, p3

    .line 194
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v1

    :cond_1
    return-object v1

    .line 185
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pkg is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getDailyAllAppEvent(JJ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getAllAppEvent(JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;
    .locals 2

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->sInstance:Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->sInstance:Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->sInstance:Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->sInstance:Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    return-object v0
.end method


# virtual methods
.method public deleteAll()V
    .locals 2

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->deleteAll(Ljava/lang/Class;)V

    return-void
.end method

.method public deleteLastSevenDay()V
    .locals 4

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->sevenDaysAgo()J

    move-result-wide v1

    .line 70
    const-class v3, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->queryBuilder(Ljava/lang/Class;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v3, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->TimeStamp:Lorg/greenrobot/greendao/Property;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/Property;->le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    :cond_0
    return-void
.end method

.method public getAllAppEvent(JJ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllAppEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->getAppEventDao()Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query startTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",endTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->TimeStamp:Lorg/greenrobot/greendao/Property;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->TimeStamp:Lorg/greenrobot/greendao/Property;

    .line 169
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p3}, Lorg/greenrobot/greendao/Property;->lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    aput-object p3, p2, v1

    sget-object p3, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 170
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object p4

    invoke-virtual {p4}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getExcludeApp()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/greenrobot/greendao/Property;->notIn(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, p2, p4

    const/4 p3, 0x2

    sget-object v1, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->ChildModel:Lorg/greenrobot/greendao/Property;

    .line 171
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {v1, p4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p4

    aput-object p4, p2, p3

    .line 168
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getAllUsedTimeMap(JJ)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAllUsedTimeMap, startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->checkThread()V

    .line 208
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getDailyAllAppEvent(JJ)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 210
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 211
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllUsedTimeMap, size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 215
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    .line 216
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllUsedTimeMap, \u7b2c\u4e00\u4e2a\u4e8b\u4ef6\u4e3aMOVE_TO_BACKGROUND,pkg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-ge v0, p4, :cond_4

    .line 228
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    .line 229
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    if-nez v3, :cond_1

    .line 232
    new-instance v3, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;-><init>()V

    .line 233
    invoke-virtual {p3, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 237
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimeStampMoveToForeground(J)V

    .line 238
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setPackageName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    .line 240
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimeStampMoveToBackGround(J)V

    .line 242
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->calculateRunningTime()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    .line 246
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getAllUsedTimeMap, \u6700\u540e\u4e00\u4e2a\u4e8b\u4ef6\u4e3aMOVE_TO_FOREGROUND,pkg:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getCurrentApp()Ljava/lang/String;

    move-result-object p1

    .line 249
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAllUsedTimeMap, current:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 251
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 252
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    .line 253
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setPackageName(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->setTimeStampMoveToBackGround(J)V

    .line 255
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->calculateRunningTime()V

    .line 259
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAllUsedTimeMap, map.size:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",map:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object p2, p3

    :cond_7
    return-object p2
.end method

.method public getAppUsedTime(Ljava/lang/String;)J
    .locals 14

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppUsedTime, pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 372
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->checkThread()V

    .line 373
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v3

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayEnd()J

    move-result-wide v5

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getAppEvent(JJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_7

    .line 375
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 376
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 378
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    .line 379
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-string v6, "getAppUsedTime\uff0c\u7b2c\u4e00\u6b21\u4e8b\u4ef6\u4e3aMOVE_TO_BACKGROUND"

    .line 380
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    move-wide v8, v2

    move-wide v10, v8

    :goto_0
    const/4 v12, 0x1

    if-ge v5, v4, :cond_5

    .line 385
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    .line 386
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v13

    if-ne v13, v12, :cond_1

    .line 388
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    if-ne v13, v7, :cond_4

    cmp-long v12, v8, v2

    if-nez v12, :cond_2

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v12, v8

    cmp-long v8, v12, v2

    if-lez v8, :cond_3

    add-long/2addr v10, v12

    :cond_3
    move-wide v8, v2

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    .line 403
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getEventType()I

    move-result v0

    if-ne v0, v12, :cond_6

    .line 404
    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "getAppUsedTime, \u6700\u540e\u4e00\u4e2a\u4e8b\u4ef6\u662fMOVE_TO_FOREGROUND"

    .line 405
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->getTimeStamp()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v2, v10

    goto :goto_2

    :cond_6
    move-wide v2, v10

    .line 412
    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppUsedTime, totalTime:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", pkg:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    .line 370
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pkg is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getCurrentApp()Ljava/lang/String;
    .locals 1

    .line 427
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getInstance()Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/statistics/AppTimeCount;->getCurrentApp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDailyUsedTime()J
    .locals 7

    .line 323
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->checkThread()V

    .line 324
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayEnd()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getUsedTime(JJ)J

    move-result-wide v0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDailyUsedTime, dailyUsedTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "QueryUtil"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4eca\u65e5\u4f7f\u7528\u65f6\u957f:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEST_TIME_LOG"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getLastAppEvent()Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;
    .locals 5

    .line 138
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getDaoSession()Lcom/alibaba/ailabs/genie/time/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->getAppEventDao()Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/alibaba/ailabs/genie/time/db/AppEventDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 142
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSingleUsedTime()J
    .locals 8

    .line 345
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "sp_time"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v1

    const-string v3, "startTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSingleUsedTime, startTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",currentTime:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "QueryUtil"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->isSameDay(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "getSingleUsedTime,\u662f\u540c\u4e00\u5929"

    .line 350
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getTodayStart()J

    move-result-wide v0

    const-string v4, "getSingleUsedTime,\u4e0d\u662f\u540c\u4e00\u5929"

    .line 353
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getUsedTime(JJ)J

    move-result-wide v0

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSingleUsedTime, singleTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5355\u6b21\u4f7f\u7528\u65f6\u957f:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TEST_TIME_LOG"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getUsedTime(JJ)J
    .locals 9

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsedTime, startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0cendTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QueryUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getAllUsedTimeMap(JJ)Ljava/util/Map;

    move-result-object p3

    const-wide/16 v2, 0x3e8

    const-string p4, "s"

    const-wide/16 v4, 0x0

    if-eqz p3, :cond_0

    .line 275
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 276
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;

    .line 278
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 279
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->getUsedTimeByDay()J

    move-result-wide v6

    div-long/2addr v6, v2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUsedTime,pkg:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",usedTime:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\u4f7f\u7528\u65f6\u957f:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TEST_TIME_LOG"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p3}, Lcom/alibaba/ailabs/genie/time/statistics/AppInformation;->getUsedTimeByDay()J

    move-result-wide p2

    add-long/2addr v4, p2

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUsedTime, \u6ca1\u6709\u67e5\u5230\u4efb\u4f55\u4e8b\u4ef6, map:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getCurrentApp()Ljava/lang/String;

    move-result-object p3

    .line 288
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 289
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getInstance()Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/orange/OrangeConfig;->getExcludeApp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getUsedTime, \u6ca1\u6709\u6709\u6548app\u5728\u8fd0\u884c, currentApp:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    .line 297
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isScreenOn:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isScreenOn()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->haveEnteredScreenSaver()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/RuntimeUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 303
    :cond_2
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/utils/TimeUtils;->getBootTime()J

    move-result-wide v4

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUsedTime,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\u4e00\u76f4\u5728\u8fd0\u884c"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p3, p1, v4

    if-gez p3, :cond_3

    const-string p1, "getUsedTime, bootTime > startTime"

    .line 306
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long v4, p1, v4

    goto :goto_1

    :cond_3
    const-string p3, "getUsedTime, bootTime < startTime"

    .line 309
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    .line 314
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getUsedTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long p2, v4, v2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_5
    :goto_2
    const-string p1, "getUsedTime, \u8fdb\u5165\u4e86\u5c4f\u4fdd\u6216\u8005\u606f\u5c4f\u4e86"

    .line 299
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_6
    const-string p1, "getUsedTime, currentApp is null"

    .line 294
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public resetStartTime()V
    .locals 5

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetStartTime, time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QueryUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "TEST_TIME_LOG"

    const-string v3, "\u91cd\u7f6e\u5355\u6b21\u4f7f\u7528\u65f6\u957f\u8ba1\u65f6\u8d77\u70b9"

    .line 336
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/statistics/StatisticsApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "sp_time"

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/second/sharedpreference/NewSharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "startTime"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
