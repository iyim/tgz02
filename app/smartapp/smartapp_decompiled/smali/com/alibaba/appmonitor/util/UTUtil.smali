.class public Lcom/alibaba/appmonitor/util/UTUtil;
.super Ljava/lang/Object;
.source "UTUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static sendAppException(Lcom/alibaba/appmonitor/event/UTEvent;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    new-instance v8, Lcom/alibaba/analytics/core/model/Log;

    iget-object v2, p0, Lcom/alibaba/appmonitor/event/UTEvent;->page:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/appmonitor/event/UTEvent;->eventId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg1:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg2:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg3:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/analytics/core/model/Log;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v8}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->add(Lcom/alibaba/analytics/core/model/Log;)V

    .line 128
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    return-void
.end method

.method public static sendRealDebugEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/event/Event;)V
    .locals 7

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v2

    const-class v3, Lcom/alibaba/appmonitor/event/UTEvent;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/appmonitor/event/UTEvent;

    const/16 v3, 0x1a2b

    .line 94
    iput v3, v2, Lcom/alibaba/appmonitor/event/UTEvent;->eventId:I

    .line 95
    iget-object v5, p1, Lcom/alibaba/appmonitor/event/Event;->module:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/appmonitor/event/UTEvent;->arg1:Ljava/lang/String;

    .line 96
    iget-object v5, p1, Lcom/alibaba/appmonitor/event/Event;->monitorPoint:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/appmonitor/event/UTEvent;->arg2:Ljava/lang/String;

    .line 98
    iget-object v5, v2, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->getGlobalArgsMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, v2, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 102
    iget-object p0, v2, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    const-string v5, "commitDay"

    invoke-interface {p0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/SdkMeta;->getSDKMetaData()Ljava/util/Map;

    move-result-object v5

    const-string v6, "meta"

    invoke-interface {p0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "_event_id"

    .line 106
    invoke-interface {p0, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    const-class v5, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/Event;->dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 109
    invoke-virtual {v0, v4}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    const-string p1, "data"

    .line 112
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, v2, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->getAggregateEventArgsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object p0, v2, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    sget-object p1, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v2}, Lcom/alibaba/appmonitor/util/UTUtil;->sendUTEventWithPlugin(Lcom/alibaba/appmonitor/event/UTEvent;)V

    .line 117
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    :cond_1
    return-void
.end method

.method public static sendUTEventWithPlugin(Lcom/alibaba/appmonitor/event/UTEvent;)V
    .locals 8

    .line 132
    new-instance v7, Lcom/alibaba/analytics/core/model/Log;

    iget-object v1, p0, Lcom/alibaba/appmonitor/event/UTEvent;->page:Ljava/lang/String;

    iget v0, p0, Lcom/alibaba/appmonitor/event/UTEvent;->eventId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg1:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg2:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/appmonitor/event/UTEvent;->arg3:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/analytics/core/model/Log;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->add(Lcom/alibaba/analytics/core/model/Log;)V

    .line 134
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    return-void
.end method

.method public static uploadEvent(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
            "Ljava/util/List<",
            "Lcom/alibaba/appmonitor/event/Event;",
            ">;>;)V"
        }
    .end annotation

    .line 35
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    invoke-virtual {v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 43
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v5

    .line 44
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v6

    const-class v7, Lcom/alibaba/appmonitor/event/UTEvent;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v9}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/appmonitor/event/UTEvent;

    .line 45
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v6, Lcom/alibaba/appmonitor/event/UTEvent;->eventId:I

    .line 47
    iget-object v4, v6, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    invoke-static {}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->getGlobalArgsMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    invoke-virtual {v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 49
    iget-object v4, v6, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    iget-object v4, v6, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    const-string v7, "commitDay"

    invoke-interface {v4, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-static {}, Lcom/alibaba/appmonitor/delegate/SdkMeta;->getSDKMetaData()Ljava/util/Map;

    move-result-object v7

    const-string v9, "meta"

    invoke-interface {v4, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v7

    const-class v9, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Lcom/alibaba/appmonitor/pool/BalancedPool;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/appmonitor/pool/Reusable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/appmonitor/event/Event;

    .line 57
    invoke-virtual {v9}, Lcom/alibaba/appmonitor/event/Event;->dumpToJSONObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 58
    invoke-virtual {v7, v10}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->add(Ljava/lang/Object;)Z

    if-nez v8, :cond_1

    .line 60
    iget-object v10, v9, Lcom/alibaba/appmonitor/event/Event;->module:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v10, v9, Lcom/alibaba/appmonitor/event/Event;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v10, ","

    .line 63
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v11, v9, Lcom/alibaba/appmonitor/event/Event;->module:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v10, v9, Lcom/alibaba/appmonitor/event/Event;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 71
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    goto :goto_1

    :cond_2
    const-string v0, "data"

    .line 73
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, v6, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getAggregateEventArgsKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, v6, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v2, v6, Lcom/alibaba/appmonitor/event/UTEvent;->args:Ljava/util/Map;

    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iput-object v0, v6, Lcom/alibaba/appmonitor/event/UTEvent;->arg1:Ljava/lang/String;

    .line 80
    iput-object v1, v6, Lcom/alibaba/appmonitor/event/UTEvent;->arg2:Ljava/lang/String;

    .line 81
    invoke-static {v6}, Lcom/alibaba/appmonitor/util/UTUtil;->sendUTEventWithPlugin(Lcom/alibaba/appmonitor/event/UTEvent;)V

    .line 82
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    .line 85
    :cond_3
    invoke-static {}, Lcom/alibaba/appmonitor/pool/BalancedPool;->getInstance()Lcom/alibaba/appmonitor/pool/BalancedPool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alibaba/appmonitor/pool/BalancedPool;->offer(Lcom/alibaba/appmonitor/pool/Reusable;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
