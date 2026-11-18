.class public Lcom/alibaba/appmonitor/event/StatEvent;
.super Lcom/alibaba/appmonitor/event/Event;
.source "StatEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/appmonitor/event/StatEvent$Entity;
    }
.end annotation


# instance fields
.field private metric:Lcom/alibaba/appmonitor/model/Metric;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;",
            "Lcom/alibaba/appmonitor/event/StatEvent$Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alibaba/appmonitor/event/Event;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/appmonitor/event/StatEvent;)Lcom/alibaba/appmonitor/model/Metric;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 3

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/appmonitor/event/Event;->clean()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    .line 101
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 102
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized commit(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object p1

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/appmonitor/event/StatEvent$Entity;

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v1

    const-class v2, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 42
    invoke-virtual {v1, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 43
    new-instance v2, Lcom/alibaba/appmonitor/event/StatEvent$Entity;

    invoke-direct {v2, p0}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;-><init>(Lcom/alibaba/appmonitor/event/StatEvent;)V

    .line 44
    iget-object v3, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 47
    :goto_0
    iget-object v2, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    if-eqz v2, :cond_2

    .line 48
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/appmonitor/model/Metric;->valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;->incrCount()V

    .line 52
    invoke-virtual {v1, p2}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;->commit(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;->incrNoise()V

    .line 56
    iget-object p1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    invoke-virtual {p1}, Lcom/alibaba/appmonitor/model/Metric;->isCommitDetail()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 57
    invoke-virtual {v1, p2}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;->commit(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/appmonitor/event/Event;->commit(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 10

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-super {p0}, Lcom/alibaba/appmonitor/event/Event;->dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    if-eqz v1, :cond_0

    const-string v1, "isCommitDetail"

    .line 67
    iget-object v2, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/model/Metric;->isCommitDetail()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v1

    const-class v2, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 70
    iget-object v2, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 72
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v5

    const-class v6, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 74
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/appmonitor/event/StatEvent$Entity;

    .line 75
    invoke-static {v4}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;->access$000(Lcom/alibaba/appmonitor/event/StatEvent$Entity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 76
    invoke-static {v4}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;->access$100(Lcom/alibaba/appmonitor/event/StatEvent$Entity;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    .line 77
    invoke-virtual {v5, v9, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "noise"

    .line 78
    invoke-virtual {v5, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "dimensions"

    if-eqz v6, :cond_1

    .line 79
    new-instance v8, Ljava/util/HashMap;

    .line 80
    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 79
    :goto_1
    invoke-virtual {v5, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "measures"

    .line 81
    invoke-virtual {v4}, Lcom/alibaba/appmonitor/event/StatEvent$Entity;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "values"

    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/alibaba/appmonitor/event/Event;->fill([Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 111
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->values:Ljava/util/Map;

    .line 113
    :cond_0
    invoke-static {}, Lcom/alibaba/appmonitor/model/MetricRepo;->getRepo()Lcom/alibaba/appmonitor/model/MetricRepo;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/appmonitor/event/StatEvent;->module:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->monitorPoint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/appmonitor/model/MetricRepo;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/Metric;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    return-void
.end method

.method public getMetric()Lcom/alibaba/appmonitor/model/Metric;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    return-object v0
.end method

.method public setMetric(Lcom/alibaba/appmonitor/model/Metric;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/appmonitor/event/StatEvent;->metric:Lcom/alibaba/appmonitor/model/Metric;

    return-void
.end method
