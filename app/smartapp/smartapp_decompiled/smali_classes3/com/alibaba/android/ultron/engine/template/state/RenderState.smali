.class public Lcom/alibaba/android/ultron/engine/template/state/RenderState;
.super Ljava/lang/Object;
.source "RenderState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderState"


# instance fields
.field globalStyleStatus:I

.field mBizData:Lcom/alibaba/fastjson/JSONObject;

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

.field mContext:Landroid/content/Context;

.field mDiffInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLastRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

.field mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

.field mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

.field mUserData:Lcom/alibaba/fastjson/JSONObject;

.field oldStructure:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;Lcom/alibaba/android/ultron/engine/template/state/RenderState;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mComponentMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    const/4 v0, -0x1

    .line 416
    iput v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->globalStyleStatus:I

    .line 73
    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    .line 74
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mContext:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mLastRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    return-void
.end method

.method private compareComponentEvents(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    .line 293
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->compareJson(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private compareComponentFields(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 306
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object p2

    iget-object p2, p2, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->compareJson(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private compareJson(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private filterAndFillComponent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;
    .locals 13

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->clone()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getParent()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->componentKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 169
    :goto_0
    iget-object v3, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    const-string v9, "dependency"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 173
    :goto_1
    iget-object v4, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    move-object v3, p0

    move-object v5, p2

    move-object v6, v2

    move-object v7, p1

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->parseComponentExpression(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Z)V

    .line 175
    iget-object v4, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->parseComponentExpression(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Z)V

    .line 177
    iget-object v4, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->parseComponentExpression(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Z)V

    .line 180
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isUseFilter()Z

    move-result p1

    const-string v2, "RenderState"

    if-eqz p1, :cond_3

    .line 181
    invoke-direct {p0, v0, p2}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->filterComponent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 183
    invoke-virtual {v0, v11}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setFiltered(Z)V

    .line 184
    new-array p1, v11, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[filted] \u8fc7\u6ee4\u6389\u4e86\u7ec4\u4ef6: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v10

    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 190
    :cond_3
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_4

    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 191
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->filterDependency(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 194
    invoke-virtual {v0, v11}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setFiltered(Z)V

    .line 195
    new-array p1, v11, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\u65b0\u6a21\u5f0fdependency] \u8fc7\u6ee4\u6389\u4e86\u7ec4\u4ef6: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v10

    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 200
    :cond_4
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_5

    .line 201
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iput-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    .line 203
    :cond_5
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_6

    .line 204
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iput-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->events:Lcom/alibaba/fastjson/JSONObject;

    .line 206
    :cond_6
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_7

    .line 207
    iget-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    iput-object p1, v1, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->supportEvent:Lcom/alibaba/fastjson/JSONObject;

    .line 211
    :cond_7
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mComponentMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private filterComponent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 4

    .line 327
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getData()Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;

    move-result-object v0

    .line 329
    iget-object v1, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 334
    :cond_0
    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/model/UltronComponentData;->fields:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "filter"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p2}, Lcom/alibaba/android/ultron/engine/utils/UltronUtils;->isMeetCondition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 337
    new-array v0, p2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter\u8fc7\u6ee4\u6389\u4e86\u7ec4\u4ef6: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "RenderState"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return p2

    :cond_1
    return v2
.end method

.method private filterDependency(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 231
    nop

    nop

    const-string v2, "${"

    .line 232
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "null"

    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 237
    :cond_2
    instance-of v2, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_3

    .line 238
    nop

    nop

    .line 239
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 242
    :cond_3
    instance-of v2, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_4

    .line 243
    nop

    nop

    .line 244
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private findBlockByName(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/android/ultron/engine/model/Block;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/model/Block;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/android/ultron/engine/model/Block;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 464
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/engine/model/Block;

    if-nez v1, :cond_2

    goto :goto_0

    .line 468
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/ultron/engine/model/Block;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private findComponentByName(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/android/ultron/engine/model/TemplateComponent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/model/TemplateComponent;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/android/ultron/engine/model/TemplateComponent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 479
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;

    if-nez v1, :cond_2

    goto :goto_0

    .line 483
    :cond_2
    iget-object v2, v1, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private parseComponentExpression(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    invoke-virtual {p4}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 352
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 353
    invoke-direct {p0, p2, v0, p3, p5}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 357
    invoke-interface {p4, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 366
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 p3, 0x0

    if-eqz p4, :cond_2

    const-string p4, "componentsVO"

    .line 369
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p4

    if-nez p4, :cond_1

    .line 372
    nop

    nop

    invoke-static {p1, p2, p3}, Lcom/taobao/android/ultron/expr/ExpressionExt;->evaluate(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 377
    :cond_1
    invoke-direct {p0, p4}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->processStyle(Lcom/alibaba/fastjson/JSONObject;)V

    .line 379
    nop

    nop

    invoke-static {p4, p1, p2, p3}, Lcom/taobao/android/ultron/expr/ExpressionExt;->evaluateContextAlternative(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 382
    :cond_2
    nop

    nop

    invoke-static {p1, p2, p3}, Lcom/taobao/android/ultron/expr/ExpressionExt;->evaluate(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 385
    :cond_3
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_5

    .line 386
    nop

    nop

    .line 387
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 389
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object p2

    .line 394
    :cond_5
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_8

    .line 395
    nop

    nop

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 398
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 400
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    :cond_7
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 405
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-object p2
.end method

.method private processDiffInfo(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mLastRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->getComponentMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 262
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->createDeleteDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->createInsertDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 277
    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->compareComponentFields(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 278
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->createReplaceDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 279
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->compareComponentEvents(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 280
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->createReloadDiff(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_1
    return-void
.end method

.method private processOldHierarchy()V
    .locals 2

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mBizData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mBizData:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "hierarchy"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "structure"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->oldStructure:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private processStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 7

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 423
    :cond_0
    iget v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->globalStyleStatus:I

    if-eqz v0, :cond_6

    const-string v1, "globalStyle"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 424
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/Template;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "RenderState"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/Template;->style:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "android"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4f7f\u7528\u4e86\u6a21\u677f\u6587\u4ef6style\u8282\u70b9\u4f5c\u4e3a\u5168\u5c40style"

    .line 430
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mTemplate:Lcom/alibaba/android/ultron/engine/model/Template;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/Template;->style:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 432
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iput v2, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->globalStyleStatus:I

    return-void

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->mBlockMap:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const-string v5, "test\u5b57\u6bb5\u540d"

    .line 438
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 439
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v5, "StyleSection"

    .line 440
    invoke-direct {p0, v0, v5}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->findBlockByName(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/android/ultron/engine/model/Block;

    move-result-object v0

    if-nez v0, :cond_3

    .line 442
    iput v4, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->globalStyleStatus:I

    return-void

    .line 445
    :cond_3
    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/Block;->components:Ljava/util/List;

    const-string v5, "AndroidTaobaoStyle"

    invoke-direct {p0, v0, v5}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->findComponentByName(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/android/ultron/engine/model/TemplateComponent;

    move-result-object v0

    if-nez v0, :cond_4

    .line 447
    iput v4, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->globalStyleStatus:I

    return-void

    .line 450
    :cond_4
    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/model/TemplateComponent;->data:Lcom/alibaba/fastjson/JSONObject;

    .line 451
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\u4f7f\u7528\u4e86\u6a21\u677f\u6587\u4ef6StyleSection\u8282\u70b9\u7684AndroidTaobaoStyle"

    .line 452
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 453
    iput v2, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->globalStyleStatus:I

    return-void

    .line 457
    :cond_5
    iput v4, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->globalStyleStatus:I

    :cond_6
    :goto_0
    return-void
.end method

.method private renderChildrenWithUserData(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Ljava/util/List;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            ">;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 103
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isBlock()Z

    move-result v0

    .line 107
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isNode()Z

    move-result v1

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getBlockTypeEnum()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    if-eqz v0, :cond_1

    const-string v4, "MUTEX"

    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    invoke-direct {p0, v3, p3}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->filterAndFillComponent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p1, v4}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->addChild(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 123
    invoke-virtual {v4, p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setParent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 124
    invoke-direct {p0, v4}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->processDiffInfo(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 125
    invoke-virtual {v4}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->isFiltered()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v4, v3}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->setParent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v4, v3, p3}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->renderChildrenWithUserData(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Ljava/util/List;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    if-eqz v0, :cond_8

    .line 136
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 137
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getParent()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 138
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getParent()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    :cond_7
    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mComponentMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 143
    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;

    .line 144
    iget-object p2, p2, Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;->opType:Ljava/lang/String;

    const-string p3, "insert"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 145
    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getComponentKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public getComponentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mComponentMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDiffInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/template/diff/DiffInfo;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    return-object v0
.end method

.method public getUserData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mUserData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public noNeedRefresh()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mLastRenderState:Lcom/alibaba/android/ultron/engine/template/state/RenderState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mDiffInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public renderUserData(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mUserData:Lcom/alibaba/fastjson/JSONObject;

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mPreRenderState:Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/state/OriginalTemplateState;->getRoot()Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->filterAndFillComponent(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    .line 89
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    if-nez v1, :cond_0

    const p1, 0x186a2

    const-string v0, "root component is null"

    .line 90
    invoke-static {p1, v0}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createErrorInfo(ILjava/lang/String;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    invoke-direct {p0, v1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->processDiffInfo(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;)V

    .line 95
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mRoot:Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;

    invoke-direct {p0, v1, v0, p1}, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->renderChildrenWithUserData(Lcom/alibaba/android/ultron/engine/template/model/PreRenderComponent;Ljava/util/List;Lcom/alibaba/fastjson/JSONObject;)V

    const/4 p1, 0x0

    .line 99
    invoke-static {p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->createSuccessRenderInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    move-result-object p1

    return-object p1
.end method

.method public setBizData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/template/state/RenderState;->mBizData:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method
