.class public Lcom/alibaba/android/ultron/engine/template/render/ContainerRender;
.super Ljava/lang/Object;
.source "ContainerRender.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static parseContainer(Ljava/util/List;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/protocol/ComponentView;",
            ">;",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getContainer()Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 61
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 65
    invoke-static {p0, v0}, Lcom/alibaba/android/ultron/engine/template/render/ContainerRender;->parseContainer(Ljava/util/List;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static render(Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;)Lcom/alibaba/android/ultron/engine/protocol/Container;
    .locals 5

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->isRenderDeltaProtocol()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRenderState()Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getDiffInfoMap()Ljava/util/Map;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    .line 29
    iget-object v2, v2, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    const-string v4, "insert"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRenderState()Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getComponentMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    if-nez v2, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getContainer()Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_2
    new-instance p0, Lcom/alibaba/android/ultron/engine/protocol/Container;

    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/Container;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/protocol/Container;->data:Ljava/util/List;

    return-object p0

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/render/ProtocolRenderContext;->getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object p0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static {v0, p0}, Lcom/alibaba/android/ultron/engine/template/render/ContainerRender;->parseContainer(Ljava/util/List;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 49
    new-instance p0, Lcom/alibaba/android/ultron/engine/protocol/Container;

    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/Container;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/protocol/Container;->data:Ljava/util/List;

    return-object p0
.end method
