.class public Lcom/alibaba/android/ultron/engine/template/state/ProtocolRenderState;
.super Ljava/lang/Object;
.source "ProtocolRenderState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProtocolRenderState"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static judgeRule(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 p0, 0x1

    .line 90
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private renderDeltaProtocol(Lcom/alibaba/android/ultron/engine/template/state/RenderState;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 3

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getDiffInfoMap()Ljava/util/Map;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderDeltaProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProtocolRenderState"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 85
    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createSuccessRenderInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public renderProtocol(Lcom/alibaba/android/ultron/engine/template/state/RenderState;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 8

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getDiffInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ProtocolRenderState"

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getDiffInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    const/4 v4, 0x1

    .line 41
    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "renderDeltaProtocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;-><init>(Lcom/alibaba/android/ultron/engine/template/state/RenderState;)V

    .line 47
    invoke-static {}, Lcom/alibaba/android/ultron/engine/template/render/EndPointRender;->render()Lcom/alibaba/android/ultron/engine/protocol/EndPoint;

    move-result-object p1

    .line 49
    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/template/render/HierarchyRender;->render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;

    move-result-object v3

    .line 51
    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/template/render/DataRender;->render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Data;

    move-result-object v4

    .line 53
    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/template/render/ContainerRender;->render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Container;

    move-result-object v5

    .line 55
    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/template/render/GlobalRender;->render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Global;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/alibaba/android/ultron/engine/template/render/LinkageRender;->render()Lcom/alibaba/android/ultron/engine/protocol/Linkage;

    move-result-object v6

    .line 59
    new-instance v7, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;

    invoke-direct {v7}, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;-><init>()V

    .line 60
    iput-object v5, v7, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;->container:Lcom/alibaba/android/ultron/engine/protocol/Container;

    .line 61
    iput-object v3, v7, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;->hierarchy:Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;

    .line 62
    iget-object v3, v4, Lcom/alibaba/android/ultron/engine/protocol/Data;->components:Ljava/util/Map;

    iput-object v3, v7, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;->data:Ljava/util/Map;

    .line 63
    iput-object v0, v7, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;->global:Lcom/alibaba/android/ultron/engine/protocol/Global;

    .line 64
    iput-object p1, v7, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;->endpoint:Lcom/alibaba/android/ultron/engine/protocol/EndPoint;

    .line 65
    iput-object v6, v7, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;->linkage:Lcom/alibaba/android/ultron/engine/protocol/Linkage;

    .line 67
    invoke-static {v7}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createSuccessRenderInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    const-string v0, "render protocol success"

    .line 69
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 70
    iget-object v0, p1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/utils/PrintInfoUtils;->getProtocolRenderInfo(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p1
.end method
