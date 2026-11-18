.class public Lcom/alibaba/android/ultron/engine/template/render/DataRender;
.super Ljava/lang/Object;
.source "DataRender.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DataRender"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static buildEvents(Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/protocol/Event;",
            ">;>;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    .line 83
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_9

    .line 84
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 88
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 92
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    instance-of v4, v2, Lcom/alibaba/fastjson/JSONArray;

    if-nez v4, :cond_1

    goto :goto_3

    .line 96
    :cond_1
    nop

    nop

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    :goto_1
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 99
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 100
    new-instance v7, Lcom/alibaba/android/ultron/engine/protocol/Event;

    invoke-direct {v7}, Lcom/alibaba/android/ultron/engine/protocol/Event;-><init>()V

    const-string v8, "key"

    .line 102
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 104
    iput-object v8, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->type:Ljava/lang/String;

    const-string v8, "params"

    .line 105
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    iput-object v6, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->fields:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_2

    :cond_2
    const-string v8, "type"

    .line 107
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->type:Ljava/lang/String;

    const-string v8, "fields"

    .line 108
    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    iput-object v6, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->fields:Lcom/alibaba/fastjson/JSONObject;

    :goto_2
    if-eqz p0, :cond_4

    .line 116
    iget-object v6, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 117
    iget-object v6, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 119
    iget-object v8, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->fields:Lcom/alibaba/fastjson/JSONObject;

    if-nez v8, :cond_3

    .line 120
    new-instance v8, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v8, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 122
    :cond_3
    iget-object v8, v7, Lcom/alibaba/android/ultron/engine/protocol/Event;->fields:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 125
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 128
    :cond_5
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    :goto_3
    const/4 v3, 0x1

    .line 93
    new-array v3, v3, [Ljava/lang/String;

    instance-of v4, v2, Lcom/alibaba/fastjson/JSONArray;

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value is not array: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_7
    const-string v2, ""

    :goto_4
    aput-object v2, v3, v5

    const-string v2, "DataRender"

    invoke-static {v2, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    return-object v1

    :cond_9
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Data;
    .locals 4

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->isRenderDeltaProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRenderState()Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getDiffInfoMap()Ljava/util/Map;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRenderState()Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getComponentMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 38
    invoke-static {v0, v2}, Lcom/alibaba/android/ultron/engine/template/render/DataRender;->tranformUltronComponent(Ljava/util/Map;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/protocol/Data;->of(Ljava/util/Map;)Lcom/alibaba/android/ultron/engine/protocol/Data;

    move-result-object p0

    return-object p0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Lcom/alibaba/android/ultron/engine/template/render/DataRender;->tranformUltronComponent(Ljava/util/Map;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 47
    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/protocol/Data;->of(Ljava/util/Map;)Lcom/alibaba/android/ultron/engine/protocol/Data;

    move-result-object p0

    return-object p0
.end method

.method private static tranformUltronComponent(Ljava/util/Map;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/protocol/Component;",
            ">;",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/alibaba/android/ultron/engine/protocol/Component;

    invoke-direct {v1}, Lcom/alibaba/android/ultron/engine/protocol/Component;-><init>()V

    .line 58
    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/protocol/Component;->id:Ljava/lang/String;

    .line 59
    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->tag:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/protocol/Component;->tag:Ljava/lang/String;

    .line 60
    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->type:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/protocol/Component;->type:Ljava/lang/String;

    .line 61
    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->position:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/protocol/Component;->position:Ljava/lang/String;

    .line 62
    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/protocol/Component;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 64
    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/template/render/DataRender;->buildEvents(Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/protocol/Component;->events:Ljava/util/Map;

    .line 65
    iget-object v2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->cardGroup:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/protocol/Component;->cardGroup:Ljava/lang/String;

    .line 67
    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 70
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 74
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 75
    invoke-static {p0, v0}, Lcom/alibaba/android/ultron/engine/template/render/DataRender;->tranformUltronComponent(Ljava/util/Map;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method
