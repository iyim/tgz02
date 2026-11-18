.class public Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;
.super Ljava/lang/Object;
.source "SelfMonitorConfigMgr.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;


# static fields
.field private static instance:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;


# instance fields
.field private final TAG_ABTEST_BUCKET:Ljava/lang/String;

.field private final TAG_ABTEST_OFFLINE:Ljava/lang/String;

.field private final TAG_SAMPLING_MONITOR_AP:Ljava/lang/String;

.field private final TAG_SAMPLING_MONITOR_UT:Ljava/lang/String;

.field private mAMBucketConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureSet;",
            ">;"
        }
    .end annotation
.end field

.field private mAMOfflineConfig:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAMSamplingConfig:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUtSamplingConfig:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->instance:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sampling_monitor_ut"

    .line 29
    iput-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->TAG_SAMPLING_MONITOR_UT:Ljava/lang/String;

    const-string/jumbo v1, "sampling_monitor_ap"

    .line 30
    iput-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->TAG_SAMPLING_MONITOR_AP:Ljava/lang/String;

    const-string v2, "abtest_bucket"

    .line 31
    iput-object v2, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->TAG_ABTEST_BUCKET:Ljava/lang/String;

    const-string v3, "abtest_offline"

    .line 32
    iput-object v3, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->TAG_ABTEST_OFFLINE:Ljava/lang/String;

    .line 34
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mUtSamplingConfig:Ljava/util/Set;

    .line 35
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMSamplingConfig:Ljava/util/Set;

    .line 36
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMBucketConfig:Ljava/util/Map;

    .line 37
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMOfflineConfig:Ljava/util/Set;

    .line 40
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v4

    invoke-virtual {v4, v0, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V

    .line 41
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V

    .line 42
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v4

    invoke-virtual {v4, v2, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V

    .line 43
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V

    .line 44
    iget-object v4, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mUtSamplingConfig:Ljava/util/Set;

    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->parseConfig(Ljava/util/Set;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMSamplingConfig:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->parseConfig(Ljava/util/Set;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMOfflineConfig:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->parseConfig(Ljava/util/Set;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-direct {p0, v2, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->parseBucketConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;->start()V

    .line 56
    invoke-static {}, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;->getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfChecker;->register()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;
    .locals 1

    .line 60
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->instance:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;

    return-object v0
.end method

.method private parseBucketConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 118
    iget-object p1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMBucketConfig:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 121
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 123
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 124
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    const-string v2, "module"

    .line 126
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp"

    .line 127
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "buckets"

    .line 128
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    .line 130
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 132
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v7

    .line 133
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 134
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ","

    .line 136
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 138
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 139
    :goto_2
    array-length v10, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v9, v10, :cond_1

    .line 141
    :try_start_1
    aget-object v10, v5, v9

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 146
    :cond_1
    :try_start_2
    new-instance v5, Lcom/alibaba/mtl/appmonitor/model/Measure;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct {v5, v4, v9, v8}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/List;)V

    invoke-virtual {v7, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_1

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMBucketConfig:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/alibaba/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/appmonitor/model/MetricRepo;

    move-result-object v1

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/Metric;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 154
    new-instance v3, Lcom/alibaba/appmonitor/model/Metric;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_abtest"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/model/Metric;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v8

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/appmonitor/model/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 155
    invoke-static {}, Lcom/alibaba/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/appmonitor/model/MetricRepo;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/appmonitor/model/MetricRepo;->add(Lcom/alibaba/appmonitor/model/Metric;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p2

    .line 163
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Parse Monitor Bucket error "

    invoke-static {v0, p2, p1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private parseConfig(Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 86
    array-length v0, p2

    if-lez v0, :cond_0

    .line 87
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getMeasureSet(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMBucketConfig:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    return-object p1
.end method

.method public isNeedMonitorForBucket(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->getMeasureSet(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNeedMonitorForOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMOfflineConfig:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNeedMonitorForUT(Ljava/lang/String;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mUtSamplingConfig:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sampling_monitor_ut"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mUtSamplingConfig:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sampling_monitor_ap"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMSamplingConfig:Ljava/util/Set;

    goto :goto_0

    :cond_1
    const-string v0, "abtest_offline"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->mAMOfflineConfig:Ljava/util/Set;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 74
    invoke-direct {p0, v0, p2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->parseConfig(Ljava/util/Set;Ljava/lang/String;)V

    :cond_3
    const-string v0, "abtest_bucket"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 77
    invoke-direct {p0, v0, p2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->parseBucketConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
