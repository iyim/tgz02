.class public Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "AdjustStateSubscriber.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 9

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :cond_0
    const-string v1, "subType"

    .line 29
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    move-object v4, v1

    const-string v1, "payload"

    .line 33
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    .line 35
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;->getLastEventData()Ljava/lang/Object;

    move-result-object v2

    .line 39
    instance-of v3, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_3

    .line 40
    nop

    nop

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    move-object v5, v2

    goto :goto_0

    :cond_3
    move-object v5, v1

    :goto_0
    const-string v1, "dataMergeParams"

    .line 44
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    const-string v0, "extraParams"

    .line 48
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 49
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    array-length v6, v0

    :goto_1
    if-ge v3, v6, :cond_5

    .line 53
    aget-object v7, v0, v3

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v1

    :cond_5
    const-string v0, "viewParams"

    .line 59
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez v2, :cond_6

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    goto :goto_2

    :cond_6
    move-object v6, v2

    :goto_2
    if-nez p1, :cond_7

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    move-object v7, p1

    .line 77
    new-instance p1, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$1;-><init>(Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    check-cast v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    .line 87
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getLastLoaderContext()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object v2

    .line 88
    new-instance v3, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    invoke-direct {v3}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;-><init>()V

    .line 90
    iput-object p1, v3, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->opState:Lcom/alibaba/fastjson/JSONObject;

    .line 91
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getData()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getData()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    move-result-object p1

    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_3

    :cond_8
    move-object p1, v1

    :goto_3
    iput-object p1, v3, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    .line 92
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getData()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->getData()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    move-result-object p1

    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->extInput:Lcom/alibaba/fastjson/JSONObject;

    :cond_9
    iput-object v1, v3, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->extInput:Lcom/alibaba/fastjson/JSONObject;

    const-string p1, "adjust"

    .line 94
    invoke-static {p1, v3, v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->createContext(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;)Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    move-result-object p1

    .line 97
    new-instance v1, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber$2;-><init>(Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->renderWithContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderListener;)V

    return-void
.end method
