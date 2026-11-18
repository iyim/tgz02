.class public Lcom/alibaba/android/ultron/engine/utils/TemplateParseUtils;
.super Ljava/lang/Object;
.source "TemplateParseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static parseComponentItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/model/TemplateComponent;
    .locals 6

    .line 75
    new-instance v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;-><init>()V

    const-string v1, "id"

    .line 76
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->id:Ljava/lang/Long;

    const-string v1, "type"

    .line 77
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->type:Ljava/lang/String;

    const-string v1, "name"

    .line 78
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->name:Ljava/lang/String;

    const-string v1, "templateId"

    .line 79
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->templateId:Ljava/lang/Long;

    const-string v1, "ruleId"

    .line 80
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->ruleId:Ljava/lang/Long;

    const-string v1, "rule"

    .line 81
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->rule:Ljava/lang/String;

    const-string v1, "filter"

    .line 82
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->filter:Ljava/lang/String;

    const-string v1, "frontComponentId"

    .line 83
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentId:Ljava/lang/Long;

    const-string v1, "frontComponentName"

    .line 84
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentName:Ljava/lang/String;

    const-string v1, "frontComponentVersion"

    .line 85
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentVersion:Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentVersion:Ljava/lang/String;

    const-string v1, "frontComponentAddress"

    .line 87
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_0
    iput-object v3, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentAddress:Ljava/util/Map;

    .line 95
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_1

    .line 98
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_1
    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentMD5:Ljava/util/Map;

    const-string v1, "tag"

    .line 103
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->tag:Ljava/lang/String;

    const-string v1, "data"

    .line 104
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->data:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "event"

    .line 105
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->event:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "supportEvent"

    .line 106
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "style"

    .line 107
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->style:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "children"

    .line 109
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 112
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_2

    .line 113
    nop

    nop

    invoke-static {v2}, Lcom/alibaba/android/ultron/engine/utils/TemplateParseUtils;->parseComponentItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/model/TemplateComponent;

    move-result-object v2

    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 118
    :cond_3
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->children:Ljava/util/List;

    return-object v0
.end method

.method public static parseTemplate(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/model/Template;
    .locals 10

    .line 20
    new-instance v0, Lcom/alibaba/android/ultron/engine/model/Template;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/model/Template;-><init>()V

    const-string v1, "blocks"

    .line 22
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "name"

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 26
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_0

    .line 27
    new-instance v5, Lcom/alibaba/android/ultron/engine/model/Block;

    invoke-direct {v5}, Lcom/alibaba/android/ultron/engine/model/Block;-><init>()V

    .line 28
    nop

    nop

    const-string v6, "blockTypeEnum"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/ultron/engine/model/Block;->blockTypeEnum:Ljava/lang/String;

    const-string v6, "components"

    .line 29
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 30
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 32
    instance-of v9, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v9, :cond_1

    .line 33
    nop

    nop

    invoke-static {v8}, Lcom/alibaba/android/ultron/engine/utils/TemplateParseUtils;->parseComponentItem(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/model/TemplateComponent;

    move-result-object v8

    .line 34
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_2
    iput-object v7, v5, Lcom/alibaba/android/ultron/engine/model/Block;->components:Ljava/util/List;

    const-string v6, "description"

    .line 38
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/ultron/engine/model/Block;->description:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/android/ultron/engine/model/Block;->name:Ljava/lang/String;

    const-string v6, "position"

    .line 40
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/alibaba/android/ultron/engine/model/Block;->position:Ljava/lang/String;

    .line 41
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_3
    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/model/Template;->blocks:Ljava/util/List;

    const-string v1, "hierarchy"

    .line 48
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;

    invoke-direct {v2}, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;-><init>()V

    const-string v4, "root"

    .line 50
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->root:Ljava/lang/String;

    const-string v4, "structure"

    .line 51
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->structure:Lcom/alibaba/fastjson/JSONObject;

    .line 52
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "nodes"

    .line 53
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 55
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 57
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_4

    .line 58
    nop

    nop

    const-class v7, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;

    .line 59
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 63
    :cond_5
    iput-object v4, v2, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->nodes:Ljava/util/Map;

    .line 64
    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/model/Template;->hierarchy:Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;

    .line 67
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/Template;->name:Ljava/lang/String;

    const-string v1, "templateId"

    .line 68
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/Template;->templateId:Ljava/lang/Long;

    const-string v1, "version"

    .line 69
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/model/Template;->version:Ljava/lang/Integer;

    const-string v1, "style"

    .line 70
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/alibaba/android/ultron/engine/model/Template;->style:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method
