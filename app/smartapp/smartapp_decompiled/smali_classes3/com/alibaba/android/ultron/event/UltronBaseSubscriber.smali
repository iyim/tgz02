.class public abstract Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.super Ljava/lang/Object;
.source "UltronBaseSubscriber.java"

# interfaces
.implements Lcom/alibaba/android/ultron/event/base/ISubscriber;


# static fields
.field public static final KEY_LAST_EVENT_DATA:Ljava/lang/String; = "extraData"

.field private static final TAG:Ljava/lang/String; = "UltronBaseSubscriber"


# instance fields
.field protected intervalTime:I

.field protected lastEventType:Ljava/lang/String;

.field protected lastTimeMillis:J

.field protected mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

.field protected mContext:Landroid/content/Context;

.field protected mEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

.field protected mIDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

.field protected mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

.field protected needControlFrequency:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->needControlFrequency:Z

    const/16 v0, 0xc8

    .line 35
    iput v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->intervalTime:I

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->lastTimeMillis:J

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->lastEventType:Ljava/lang/String;

    return-void
.end method

.method private getExtraListData(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 107
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 109
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 110
    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 112
    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 114
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_3

    goto :goto_1

    .line 117
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method


# virtual methods
.method protected buildNextUltronEvent(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 246
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 251
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v0

    .line 252
    iget-object v2, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    const-string v2, "type"

    .line 253
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v0, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-eqz p2, :cond_2

    const-string v3, "extraData"

    .line 256
    invoke-virtual {v0, v3, p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 258
    :cond_2
    iget-object p2, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-eqz p2, :cond_3

    .line 259
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getRuntimeContext()Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->mergeRuntimeContext(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)V

    .line 261
    :cond_3
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setRuntimeData(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 262
    invoke-virtual {v0, p3, p5}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setRuntimeMtopData(Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 263
    new-instance p2, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    const-string p3, "fields"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-direct {p2, v2, p1, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    .line 264
    invoke-virtual {v0, p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    return-object v0
.end method

.method protected dispatchNextEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    if-nez v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 278
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected enableControlFrequency()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->needControlFrequency:Z

    return-void
.end method

.method protected getEventFields()Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 142
    :cond_0
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method protected getExtraData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 100
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getExtraParams(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const-string v0, "extraParams"

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->getExtraListData(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventParams()Ljava/lang/Object;

    move-result-object v0

    .line 131
    instance-of v2, v0, Lcom/taobao/android/ultron/common/model/IDMEvent;

    if-eqz v2, :cond_1

    .line 132
    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMEvent;

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected getLastEventData()Ljava/lang/Object;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "extraData"

    .line 285
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getViewParams(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const-string v0, "viewParams"

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->getExtraListData(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final handleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    iget-wide v2, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->lastTimeMillis:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->intervalTime:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    iget-boolean v2, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->needControlFrequency:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->lastEventType:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 56
    :cond_1
    iput-wide v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->lastTimeMillis:J

    .line 57
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->lastEventType:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    if-nez v0, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mIDMContext:Lcom/taobao/android/ultron/datamodel/IDMContext;

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-eqz v0, :cond_3

    .line 70
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->updateModifiedCount()V

    .line 72
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected handleNextEvent(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method protected handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 225
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)V

    return-void
.end method

.method protected handleNextEvent(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 234
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    move-object v3, v0

    nop

    nop

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->buildNextUltronEvent(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->dispatchNextEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected isRequestEvent()Z
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->getEventFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "execute"

    .line 154
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected abstract onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
.end method

.method protected writeDataBackToComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 165
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "UltronBaseSubscriber"

    const/4 v4, 0x3

    .line 171
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "writeDataBackToComponent:"

    aput-object v5, v4, v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return v2

    :catch_0
    :cond_2
    :goto_1
    return v0
.end method

.method protected writeDataBackToComponent(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->writeDataBackToComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method protected writeDataBackToEvent(Lcom/taobao/android/ultron/common/model/IDMEvent;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/common/model/IDMEvent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 190
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 197
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method protected writeDataBackToEvent(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    .line 208
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;->writeDataBackToEvent(Lcom/taobao/android/ultron/common/model/IDMEvent;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
