.class public Lcom/alibaba/appmonitor/sample/AMSamplingMgr;
.super Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;
.source "AMSamplingMgr.java"


# static fields
.field private static final MAX_SAMPLING_SEED:I = 0x2710

.field private static instance:Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

.field private static final namespaces:[Ljava/lang/String;


# instance fields
.field private eventTypeSamplings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "Lcom/alibaba/appmonitor/sample/AMConifg;",
            ">;"
        }
    .end annotation
.end field

.field private samplingSeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ap_stat"

    const-string v1, "ap_counter"

    const-string v2, "ap_alarm"

    .line 33
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->namespaces:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 9

    .line 35
    invoke-direct {p0}, Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->updateSamplingSeed()V

    .line 37
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 38
    invoke-virtual {v3}, Lcom/alibaba/appmonitor/event/EventType;->getCls()Ljava/lang/Class;

    move-result-object v4

    .line 39
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string v8, "module,mp ASC "

    invoke-virtual {v5, v4, v6, v8, v7}, Lcom/alibaba/analytics/core/db/DBMgr;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 40
    invoke-direct {p0, v5}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->buildRelation(Ljava/util/List;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object v5

    if-nez v5, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/appmonitor/sample/AMConifg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "event_type"

    .line 44
    iput-object v5, v4, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    .line 45
    invoke-virtual {v3}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/appmonitor/sample/AMConifg;->setSampling(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v5, v4

    .line 50
    :catch_1
    :cond_0
    iget-object v4, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildRelation(Ljava/util/List;)Lcom/alibaba/appmonitor/sample/AMConifg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/appmonitor/sample/AMConifg;",
            ">;)",
            "Lcom/alibaba/appmonitor/sample/AMConifg;"
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/appmonitor/sample/AMConifg;

    iget-object v3, v3, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    const-string v4, "event_type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 159
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/sample/AMConifg;

    .line 160
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "remove root element"

    invoke-static {v4, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 162
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "cannot found the root element"

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    :goto_2
    if-nez v0, :cond_3

    return-object v3

    .line 166
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_5

    .line 168
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/appmonitor/sample/AMConifg;

    .line 169
    iget-object v4, v3, Lcom/alibaba/appmonitor/sample/AMConifg;->monitorPoint:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 170
    iget-object v4, v3, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/appmonitor/sample/AMConifg;->add(Ljava/lang/String;Lcom/alibaba/appmonitor/sample/AMConifg;)V

    goto :goto_4

    .line 172
    :cond_4
    iget-object v4, v3, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alibaba/appmonitor/sample/AMConifg;->getOrBulidNext(Ljava/lang/String;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/appmonitor/sample/AMConifg;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/alibaba/appmonitor/sample/AMConifg;->add(Ljava/lang/String;Lcom/alibaba/appmonitor/sample/AMConifg;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;
    .locals 2

    .line 55
    sget-object v0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->instance:Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->instance:Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    invoke-direct {v1}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;-><init>()V

    sput-object v1, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->instance:Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->instance:Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    return-object v0
.end method

.method private isSelfMonitorEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 320
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    if-ne p1, v0, :cond_1

    const-string p1, "AppMonitor"

    .line 321
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "upload_traffic"

    .line 322
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "tnet_request_send"

    .line 323
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/appmonitor/sample/AMConifg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/appmonitor/sample/AMConifg;",
            ">;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Lcom/alibaba/appmonitor/sample/AMConifg;"
        }
    .end annotation

    const-string v0, "fcp"

    const-string v1, "detail"

    const-string/jumbo v2, "scp"

    const-string v3, "cp"

    const-string v4, "offline"

    const/4 v5, 0x0

    .line 120
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/appmonitor/sample/AMConifg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/appmonitor/sample/AMConifg;->offline:Ljava/lang/String;

    .line 124
    :cond_0
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 126
    invoke-virtual {p1, v3}, Lcom/alibaba/appmonitor/sample/AMConifg;->setSampling(I)V

    .line 128
    :cond_1
    instance-of v3, p1, Lcom/alibaba/appmonitor/sample/AlarmConfig;

    if-eqz v3, :cond_4

    .line 129
    move-object v1, p1

    nop

    nop

    .line 130
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/alibaba/appmonitor/sample/AlarmConfig;->successSampling:I

    .line 133
    :cond_2
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, v1, Lcom/alibaba/appmonitor/sample/AlarmConfig;->failSampling:I

    :cond_3
    move-object p1, v1

    goto :goto_0

    .line 137
    :cond_4
    instance-of v0, p1, Lcom/alibaba/appmonitor/sample/StatConfig;

    if-eqz v0, :cond_5

    .line 138
    move-object v0, p1

    nop

    nop

    .line 139
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 140
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Lcom/alibaba/appmonitor/sample/StatConfig;->detail:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p1, v5

    :catch_1
    const/4 p2, 0x0

    .line 144
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "new AppMonitorConfig error"

    invoke-static {v0, p2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-object p1
.end method


# virtual methods
.method public checkAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public enableOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/appmonitor/sample/AMConifg;

    if-nez p1, :cond_1

    return-void

    .line 275
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/appmonitor/sample/AMConifg;->getOrBulidNext(Ljava/lang/String;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object p1

    const/4 v0, 0x0

    .line 276
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 278
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Lcom/alibaba/appmonitor/sample/AMConifg;->isContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Lcom/alibaba/appmonitor/sample/AMConifg;->getNext(Ljava/lang/String;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/sample/AMConifg;->enableOffline()V

    goto :goto_1

    .line 283
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/sample/AMConifg;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/appmonitor/sample/AMConifg;

    .line 284
    iput-object p2, v1, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    .line 285
    aget-object v2, p3, v0

    iput-object v2, v1, Lcom/alibaba/appmonitor/sample/AMConifg;->monitorPoint:Ljava/lang/String;

    .line 286
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/sample/AMConifg;->enableOffline()V

    .line 287
    aget-object v2, p3, v0

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/appmonitor/sample/AMConifg;->add(Ljava/lang/String;Lcom/alibaba/appmonitor/sample/AMConifg;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public getOrangeGroupnames()[Ljava/lang/String;
    .locals 1

    .line 190
    sget-object v0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->namespaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingSeed()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->samplingSeed:I

    return v0
.end method

.method public isAlarmSampled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/sample/AMConifg;

    if-eqz v0, :cond_0

    .line 95
    instance-of v1, v0, Lcom/alibaba/appmonitor/sample/AlarmConfig;

    if-eqz v1, :cond_0

    .line 96
    move-object v2, v0

    nop

    nop

    iget v3, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->samplingSeed:I

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/appmonitor/sample/AlarmConfig;->isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDetail(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/sample/AMConifg;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 315
    :cond_0
    check-cast v0, Lcom/alibaba/appmonitor/sample/StatConfig;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/appmonitor/sample/StatConfig;->isDetail(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isSelfMonitorEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/appmonitor/sample/AMConifg;

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/appmonitor/sample/AMConifg;->isOffline(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/appmonitor/sample/AMConifg;

    if-eqz p1, :cond_0

    .line 83
    iget v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->samplingSeed:I

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/alibaba/appmonitor/sample/AMConifg;->isSampled(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 85
    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "eventTypeSample  ==null"

    invoke-static {p3, p2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public onNonOrangeConfigurationArrive(Ljava/lang/String;)V
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lcom/alibaba/analytics/core/config/UTOrangeConfBiz;->onNonOrangeConfigurationArrive(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "event_type"

    const/4 v3, 0x4

    .line 195
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "namespace"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const/4 v6, 0x2

    const-string v7, "config:"

    aput-object v7, v3, v6

    const/4 v7, 0x3

    aput-object v2, v3, v7

    const-string v7, ""

    invoke-static {v7, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static/range {p1 .. p1}, Lcom/alibaba/analytics/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 199
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventTypeByNameSpace(Ljava/lang/String;)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v8

    .line 201
    invoke-virtual {v8}, Lcom/alibaba/appmonitor/event/EventType;->getCls()Ljava/lang/Class;

    move-result-object v9

    .line 204
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 205
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 206
    invoke-static {v10}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 207
    invoke-direct {v1, v9, v10}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object v10

    .line 208
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 211
    :cond_1
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/appmonitor/sample/AMConifg;

    .line 212
    instance-of v11, v10, Lcom/alibaba/appmonitor/sample/AlarmConfig;

    if-eqz v11, :cond_2

    .line 213
    move-object v11, v10

    nop

    nop

    .line 214
    invoke-virtual {v8}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v12

    iput v12, v11, Lcom/alibaba/appmonitor/sample/AlarmConfig;->successSampling:I

    .line 215
    invoke-virtual {v8}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v12

    iput v12, v11, Lcom/alibaba/appmonitor/sample/AlarmConfig;->failSampling:I

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v8}, Lcom/alibaba/appmonitor/event/EventType;->getDefaultSampling()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/alibaba/appmonitor/sample/AMConifg;->setSampling(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 223
    :goto_0
    :try_start_2
    iput-object v0, v10, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    .line 225
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v13, 0x0

    .line 228
    :try_start_3
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 230
    :try_start_4
    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v13, v0, v14}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    if-eqz v13, :cond_4

    .line 234
    :try_start_5
    invoke-direct {v1, v9, v13}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object v0

    .line 235
    iput-object v12, v0, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    const-string v14, "mps"

    .line 236
    invoke-virtual {v13, v14}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 238
    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 239
    invoke-virtual {v13, v15}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-direct {v1, v9, v5}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->parseConfigEntity(Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/appmonitor/sample/AMConifg;

    move-result-object v5

    .line 240
    iput-object v12, v5, Lcom/alibaba/appmonitor/sample/AMConifg;->module:Ljava/lang/String;

    .line 241
    iput-object v15, v5, Lcom/alibaba/appmonitor/sample/AMConifg;->monitorPoint:Ljava/lang/String;

    .line 242
    invoke-virtual {v0, v15, v5}, Lcom/alibaba/appmonitor/sample/AMConifg;->add(Ljava/lang/String;Lcom/alibaba/appmonitor/sample/AMConifg;)V

    .line 243
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_3

    .line 246
    :cond_3
    invoke-virtual {v10, v12, v0}, Lcom/alibaba/appmonitor/sample/AMConifg;->add(Ljava/lang/String;Lcom/alibaba/appmonitor/sample/AMConifg;)V

    .line 247
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 249
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    const/4 v5, 0x1

    goto :goto_1

    .line 255
    :cond_5
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, v1, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/db/DBMgr;->clear(Ljava/lang/Class;)V

    .line 258
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getDbMgr()Lcom/alibaba/analytics/core/db/DBMgr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/analytics/core/db/DBMgr;->insert(Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_2
    return-void

    :catch_3
    move-exception v0

    .line 260
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "parse config error"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v7, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_5
    return-void
.end method

.method public returnOrangeConfigurationNameList()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    sget-object v0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->namespaces:[Ljava/lang/String;

    return-object v0
.end method

.method public setEventTypeSampling(Lcom/alibaba/appmonitor/event/EventType;I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->eventTypeSamplings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/appmonitor/sample/AMConifg;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1, p2}, Lcom/alibaba/appmonitor/sample/AMConifg;->setSampling(I)V

    :cond_0
    const/4 p1, 0x0

    .line 114
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo p2, "setSampling end"

    invoke-static {p2, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateSamplingSeed()V
    .locals 3

    .line 105
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0x2710

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->samplingSeed:I

    return-void
.end method
