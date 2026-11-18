.class public Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;
.super Ljava/lang/Object;
.source "OriginalTemplateState.java"


# instance fields
.field mBlockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/model/Block;",
            ">;>;"
        }
    .end annotation
.end field

.field mComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            ">;"
        }
    .end annotation
.end field

.field mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

.field mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/engine/model/Template;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mComponentMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mBlockMap:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;

    return-void
.end method

.method private preLoadBlocks()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/Template;->blocks:Ljava/util/List;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/engine/model/Block;

    .line 48
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mBlockMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/alibaba/android/ultron/engine/model/Block;->position:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mBlockMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/alibaba/android/ultron/engine/model/Block;->position:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private preRenderHierarchy()V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/Template;->hierarchy:Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;

    .line 59
    iget-object v1, v0, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->root:Ljava/lang/String;

    .line 60
    new-instance v2, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-direct {v2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;-><init>()V

    .line 61
    iget-object v3, v0, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->nodes:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;

    invoke-direct {v3}, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;-><init>()V

    .line 64
    iput-object v1, v3, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->position:Ljava/lang/String;

    .line 65
    iput-object v1, v3, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->tag:Ljava/lang/String;

    .line 67
    :cond_0
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setObject(Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;Ljava/lang/String;)V

    .line 68
    iput-object v2, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 69
    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mComponentMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v3, v0, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->structure:Lcom/alibaba/fastjson/JSONObject;

    .line 72
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 74
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_1

    return-void

    .line 78
    :cond_1
    nop

    nop

    invoke-direct {p0, v0, v3, v2}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->processSubstructure(Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processSubstructure(Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V
    .locals 7

    .line 85
    iget-object v0, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->structure:Lcom/alibaba/fastjson/JSONObject;

    .line 86
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;->nodes:Ljava/util/Map;

    .line 90
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;

    .line 95
    new-instance v2, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-direct {v2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;-><init>()V

    .line 96
    invoke-virtual {v2, v1, p2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setObject(Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2, p3}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setParent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 98
    invoke-virtual {p3, v2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->addChild(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mComponentMap:Ljava/util/Map;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mBlockMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 103
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mBlockMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/android/ultron/engine/model/Block;

    if-nez p2, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p2, Lcom/alibaba/android/ultron/engine/model/Block;->name:Ljava/lang/String;

    .line 110
    new-instance v1, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-direct {v1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;-><init>()V

    .line 111
    invoke-virtual {v1, p2, v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setObject(Lcom/alibaba/android/ultron/engine/model/Block;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p3}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setParent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 113
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->addChild(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 114
    iget-object v3, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mComponentMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p2, p2, Lcom/alibaba/android/ultron/engine/model/Block;->components:Ljava/util/List;

    .line 117
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;

    if-nez v0, :cond_4

    goto :goto_1

    .line 121
    :cond_4
    new-instance v3, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-direct {v3}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;-><init>()V

    .line 122
    invoke-virtual {v3, v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setObject(Lcom/alibaba/android/ultron/engine/model/TemplateComponent;)V

    .line 123
    invoke-virtual {v3, v1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setParent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 124
    invoke-virtual {v1, v3}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->addChild(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 125
    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mComponentMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/utils/UltronUtils;->generateComponentSymbol(Lcom/alibaba/android/ultron/engine/model/TemplateComponent;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->children:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 128
    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;

    .line 129
    new-instance v5, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-direct {v5}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;-><init>()V

    .line 130
    invoke-virtual {v5, v4}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setObject(Lcom/alibaba/android/ultron/engine/model/TemplateComponent;)V

    .line 131
    invoke-virtual {v5, v3}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setParent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 132
    invoke-virtual {v3, v5}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->addChild(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 133
    iget-object v6, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mComponentMap:Ljava/util/Map;

    invoke-static {v4}, Lcom/alibaba/android/ultron/engine/utils/UltronUtils;->generateComponentSymbol(Lcom/alibaba/android/ultron/engine/model/TemplateComponent;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 140
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    if-nez p2, :cond_6

    return-void

    .line 144
    :cond_6
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 145
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_7

    return-void

    .line 148
    :cond_7
    nop

    nop

    invoke-direct {p0, p1, p3, v2}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->processSubstructure(Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    goto :goto_3

    :cond_8
    return-void
.end method


# virtual methods
.method public getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    return-object v0
.end method

.method public preRender()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->preLoadBlocks()V

    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->preRenderHierarchy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
