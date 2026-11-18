.class public Lcom/alibaba/android/ultron/engine/template/render/HierarchyRender;
.super Ljava/lang/Object;
.source "HierarchyRender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addSubHierarchy(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V
    .locals 4

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 67
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 69
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {p0, v2}, Lcom/alibaba/android/ultron/engine/template/render/HierarchyRender;->addSubHierarchy(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method

.method public static render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;
    .locals 3

    .line 20
    new-instance v0, Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->isRenderDeltaProtocol()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRenderState()Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getDiffInfoMap()Ljava/util/Map;

    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    .line 28
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->toProtocolJson()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_0
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;->delta:Lcom/alibaba/fastjson/JSONArray;

    return-object v0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;->root:Ljava/lang/String;

    .line 36
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 37
    invoke-static {v1, p0}, Lcom/alibaba/android/ultron/engine/template/render/HierarchyRender;->addSubHierarchy(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 38
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;->structure:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method
