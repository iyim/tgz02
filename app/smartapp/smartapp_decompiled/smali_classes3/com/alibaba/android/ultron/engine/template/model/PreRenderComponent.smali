.class public Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;
.super Ljava/lang/Object;
.source "PreRenderComponent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field blockTypeEnum:Ljava/lang/String;

.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            ">;"
        }
    .end annotation
.end field

.field container:Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

.field data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

.field isBlock:Z

.field isFiltered:Z

.field isLeafComponent:Z

.field isNode:Z

.field parent:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock:Z

    .line 29
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isNode:Z

    .line 30
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isLeafComponent:Z

    const-string v1, ""

    .line 31
    iput-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->blockTypeEnum:Ljava/lang/String;

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isFiltered:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;
    .locals 2

    .line 41
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;-><init>()V

    .line 42
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->clone()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    .line 43
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->container:Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->container:Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

    .line 44
    iget-boolean v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock:Z

    iput-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock:Z

    .line 45
    iget-boolean v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isNode:Z

    iput-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isNode:Z

    .line 46
    iget-boolean v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isLeafComponent:Z

    iput-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isLeafComponent:Z

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->blockTypeEnum:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->blockTypeEnum:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->clone()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v0

    return-object v0
.end method

.method public getBlockTypeEnum()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->blockTypeEnum:Ljava/lang/String;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->children:Ljava/util/List;

    return-object v0
.end method

.method public getComponentKey()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContainer()Lcom/alibaba/android/ultron/engine/protocol/ComponentView;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->container:Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

    return-object v0
.end method

.method public getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    return-object v0
.end method

.method public getParent()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->parent:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    return-object v0
.end method

.method public isBlock()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock:Z

    return v0
.end method

.method public isFiltered()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isFiltered:Z

    return v0
.end method

.method public isLeafComponent()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isLeafComponent:Z

    return v0
.end method

.method public isNode()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isNode:Z

    return v0
.end method

.method public isUseFilter()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->useFilter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseRule()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->rule:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBlock(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock:Z

    return-void
.end method

.method public setBlockTypeEnum(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->blockTypeEnum:Ljava/lang/String;

    return-void
.end method

.method public setFiltered(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isFiltered:Z

    return-void
.end method

.method public setLeafComponent(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isLeafComponent:Z

    return-void
.end method

.method public setNode(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isNode:Z

    return-void
.end method

.method public setObject(Lcom/alibaba/android/ultron/engine/model/Block;Ljava/lang/String;)V
    .locals 2

    .line 163
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;-><init>()V

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock:Z

    .line 165
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/Block;->blockTypeEnum:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->blockTypeEnum:Ljava/lang/String;

    .line 166
    iput-object p2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->type:Ljava/lang/String;

    .line 167
    iput-object p2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->tag:Ljava/lang/String;

    .line 168
    iput-object p2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    .line 169
    iget-object p2, p1, Lcom/alibaba/android/ultron/engine/model/Block;->description:Ljava/lang/String;

    iput-object p2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->desc:Ljava/lang/String;

    .line 170
    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/model/Block;->position:Ljava/lang/String;

    iput-object p1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->position:Ljava/lang/String;

    .line 171
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    return-void
.end method

.method public setObject(Lcom/alibaba/android/ultron/engine/model/TemplateComponent;)V
    .locals 7

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isLeafComponent:Z

    .line 98
    new-instance v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    invoke-direct {v1}, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;-><init>()V

    .line 99
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->id:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->id:Ljava/lang/String;

    .line 100
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->tag:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->type:Ljava/lang/String;

    .line 102
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->tag:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->tag:Ljava/lang/String;

    .line 103
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->tag:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->position:Ljava/lang/String;

    .line 104
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 105
    iget-object v2, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 106
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->filter:Ljava/lang/String;

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    iget-object v3, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "filter"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iput-boolean v0, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->useFilter:Z

    .line 112
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->event:Lcom/alibaba/fastjson/JSONObject;

    iput-object v0, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    .line 113
    iget-object v0, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    iput-object v0, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    .line 114
    iget-object v0, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->rule:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->rule:Ljava/lang/String;

    .line 115
    invoke-static {v1}, Lcom/alibaba/android/ultron/engine/utils/UltronUtils;->generateComponentSymbol(Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    .line 119
    new-instance v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;-><init>()V

    .line 120
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentName:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;->name:Ljava/lang/String;

    .line 121
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentVersion:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;->version:Ljava/lang/String;

    .line 122
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentAddress:Ljava/util/Map;

    .line 123
    iget-object v3, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->frontComponentMD5:Ljava/util/Map;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const-string v4, "android"

    .line 125
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 126
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "resource"

    .line 127
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 129
    :cond_1
    iput-object v5, v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;->url:Ljava/lang/String;

    .line 130
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;->md5:Ljava/lang/String;

    .line 132
    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->templateId:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;->id:Ljava/lang/String;

    .line 133
    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->type:Ljava/lang/String;

    iput-object p1, v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;->containerType:Ljava/lang/String;

    .line 135
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 136
    iget-object v1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->type:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    iput-object p1, v0, Lcom/alibaba/android/ultron/engine/protocol/ComponentView;->type:Ljava/util/Set;

    .line 138
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->container:Lcom/alibaba/android/ultron/engine/protocol/ComponentView;

    return-void
.end method

.method public setObject(Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;Ljava/lang/String;)V
    .locals 3

    .line 145
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;-><init>()V

    const/4 v1, 0x1

    .line 146
    iput-boolean v1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isNode:Z

    .line 147
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->type:Ljava/lang/String;

    .line 148
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->position:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->position:Ljava/lang/String;

    .line 149
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->tag:Ljava/lang/String;

    .line 150
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->style:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "cardGroup"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->cardGroup:Ljava/lang/String;

    .line 151
    iget-object v1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->data:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    .line 152
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 153
    iget-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/model/TemplateHierarchy$Node;->data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 155
    :cond_1
    iput-object p2, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->data:Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    return-void
.end method

.method public setParent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->parent:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    return-void
.end method
