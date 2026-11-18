.class public Lcom/alibaba/android/ultron/event/base/UltronEventHandler;
.super Ljava/lang/Object;
.source "UltronEventHandler.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/event/OnDynamicEventListener;
.implements Lcom/alibaba/android/ultron/vfw/event/OnDinamicEventListenerExt;


# static fields
.field public static final KEY_BIZ_PARAMS:Ljava/lang/String; = "bizParams"

.field public static final KEY_DXEVENT:Ljava/lang/String; = "DXEvent"

.field public static final KEY_EXTRA_PARAMS:Ljava/lang/String; = "extraParams"

.field public static final KEY_TRIGGER_VIEW:Ljava/lang/String; = "triggerView"

.field public static final KEY_TRIGGER_VIEW_HOLDER:Ljava/lang/String; = "triggerViewHolder"

.field public static final KEY_VIEW_PARAMS:Ljava/lang/String; = "viewParams"

.field private static final TAG:Ljava/lang/String; = "UltronEventHandler"


# instance fields
.field private defaultSubscriber:Lcom/alibaba/android/ultron/event/base/ISubscriber;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

.field protected mDestroyed:Z

.field protected mEventSubscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/event/base/ISubscriber;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mDestroyed:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mEventSubscribers:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    .line 64
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mContext:Landroid/content/Context;

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "instance can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSubscriberList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/event/base/ISubscriber;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mEventSubscribers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mEventSubscribers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->getSubscriberList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 82
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public addSubscribers(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/alibaba/android/ultron/event/base/ISubscriber;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 106
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/event/base/ISubscriber;

    .line 115
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->addSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 2

    .line 120
    new-instance v0, Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setContext(Landroid/content/Context;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setUltronInstance(Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v0

    return-object v0
.end method

.method public deepCloneAndParseNewEvent(Lcom/taobao/android/ultron/common/model/IDMEvent;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/IDMEvent;
    .locals 1

    if-eqz p1, :cond_1

    .line 124
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 127
    invoke-static {p2, v0, p3}, Lcom/taobao/android/ultron/expr/SubdataExpressionExt;->parseExpression(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    .line 128
    new-instance p3, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getComponents()Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, v0, p2, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    return-object p3

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mDestroyed:Z

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mContext:Landroid/content/Context;

    .line 377
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mEventSubscribers:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public destroyCurrentEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mCurrentEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    return-void
.end method

.method public dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 7

    .line 318
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logInfoUltronPostEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    .line 319
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 320
    iget-boolean v1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mDestroyed:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mEventSubscribers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x2

    .line 324
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\u65b0\u5965\u521b\u89e6\u53d1\u4e8b\u4ef6: "

    aput-object v5, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const-string v6, "UltronEventHandler"

    invoke-static {v6, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 326
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->defaultSubscriber:Lcom/alibaba/android/ultron/event/base/ISubscriber;

    if-eqz v1, :cond_1

    .line 327
    invoke-interface {v1, p1}, Lcom/alibaba/android/ultron/event/base/ISubscriber;->handleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    goto :goto_0

    .line 330
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u4e8b\u4ef6\u672a\u627e\u5230"

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    invoke-static {v6, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 333
    invoke-static {p1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    :goto_0
    return-void

    .line 337
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/event/base/ISubscriber;

    if-nez v1, :cond_3

    goto :goto_1

    .line 341
    :cond_3
    invoke-interface {v1, p1}, Lcom/alibaba/android/ultron/event/base/ISubscriber;->handleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getCurrentEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mCurrentEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mCurrentEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openUrl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v1

    const-string v2, "openUrlResult"

    .line 349
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v1

    .line 350
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v1

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "activityRequestCode"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    .line 352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "activityResultCode"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    const-string p2, "activityResultData"

    .line 353
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    const-string p2, "openUrlEvent"

    .line 354
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object p1

    .line 355
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->destroyCurrentEvent()V

    return-void
.end method

.method public onReceiveEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 8

    .line 306
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "indexMode"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 308
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->onReceiveEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V

    return-void
.end method

.method public onReceiveEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v7, "indexMode"

    .line 146
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 147
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    .line 148
    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 151
    :goto_0
    iget-object v7, v0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    .line 152
    invoke-interface {v7}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getBizName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 151
    invoke-static {v7, v8, v2}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logUIEventAliUmbrellaUIEventTouch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 157
    instance-of v9, v2, Ljava/util/List;

    if-eqz v9, :cond_1

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v7, :cond_1

    .line 158
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 159
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 160
    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-object v9, v10

    move-object v10, v11

    goto :goto_3

    .line 161
    :cond_1
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    instance-of v9, v2, [Ljava/lang/Object;

    if-eqz v9, :cond_6

    move-object v9, v2

    nop

    nop

    nop

    nop

    array-length v10, v9

    if-le v10, v7, :cond_6

    .line 164
    aget-object v2, v9, v6

    .line 165
    aget-object v10, v9, v7

    .line 166
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 167
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 169
    invoke-virtual {v11}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v24, v9

    move-object v9, v2

    move-object/from16 v2, v24

    goto :goto_3

    .line 172
    :cond_3
    instance-of v9, v2, Ljava/util/List;

    if-eqz v9, :cond_4

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 173
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_2

    .line 174
    :cond_4
    instance-of v9, v2, Ljava/lang/String;

    if-eqz v9, :cond_5

    :goto_1
    move-object v9, v2

    :goto_2
    move-object v10, v8

    goto :goto_3

    .line 176
    :cond_5
    instance-of v9, v2, [Ljava/lang/Object;

    if-eqz v9, :cond_6

    move-object v9, v2

    nop

    nop

    nop

    nop

    array-length v10, v9

    if-lez v10, :cond_6

    .line 177
    aget-object v9, v9, v6

    goto :goto_2

    :cond_6
    move-object v9, v8

    move-object v10, v9

    .line 181
    :goto_3
    instance-of v11, v10, Ljava/lang/String;

    if-nez v11, :cond_7

    if-eqz v5, :cond_7

    return-void

    .line 186
    :cond_7
    instance-of v11, v9, Lcom/alibaba/fastjson/JSONArray;

    const-string v12, "oComponent is null"

    const-string v13, "DinamicXComponent"

    const-string v14, "triggerView"

    const-string v15, "extraParams"

    const-string v7, "viewParams"

    const-string v6, "triggerViewHolder"

    const-string v8, "DXEvent"

    const-string v0, "bizParams"

    move-object/from16 v17, v10

    const-string v10, "UltronEventHandler"

    if-eqz v11, :cond_f

    .line 188
    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 189
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move/from16 v18, v5

    .line 191
    instance-of v5, v11, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-nez v5, :cond_8

    .line 192
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 195
    :cond_8
    check-cast v11, Lcom/taobao/android/ultron/common/model/IDMComponent;

    const/4 v5, 0x0

    .line 197
    :goto_4
    move-object v12, v9

    check-cast v12, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v19, v9

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v5, v9, :cond_e

    .line 198
    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    if-nez v9, :cond_9

    move/from16 v20, v5

    move-object/from16 p5, v11

    move-object/from16 v21, v14

    move-object/from16 v11, p0

    :goto_5
    move-object v14, v0

    goto/16 :goto_8

    :cond_9
    const-string v12, "type"

    .line 202
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 206
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 p5, v12

    const-string v12, "key"

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const-string v12, "key"

    .line 207
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p5, v12

    const-string v12, "params"

    .line 208
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    goto :goto_6

    :cond_a
    move-object/from16 p5, v12

    :cond_b
    const-string v12, "fields"

    .line 210
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    :goto_6
    move/from16 v20, v5

    move-object v12, v9

    move-object/from16 v9, p5

    .line 212
    new-instance v5, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    move-object/from16 p5, v11

    const/4 v11, 0x0

    invoke-direct {v5, v9, v12, v11}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    const/4 v11, 0x3

    .line 214
    new-array v12, v11, [Ljava/lang/String;

    const-string v11, "receive event"

    const/16 v21, 0x0

    aput-object v11, v12, v21

    const-string v11, "eventType"

    const/16 v21, 0x1

    aput-object v11, v12, v21

    const/4 v11, 0x2

    aput-object v9, v12, v11

    invoke-static {v10, v12}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 216
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v11

    .line 218
    invoke-virtual {v11, v9}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v9

    .line 219
    invoke-virtual {v9, v7, v4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 220
    invoke-virtual {v9, v15, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 221
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v0, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 222
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 223
    invoke-virtual {v9, v6, v13}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 224
    invoke-virtual {v9, v14, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-object/from16 v11, p5

    .line 225
    invoke-virtual {v9, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-eqz v18, :cond_c

    .line 228
    invoke-interface {v11}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object/from16 p5, v11

    move-object/from16 v11, p0

    move-object/from16 v24, v21

    move-object/from16 v21, v14

    move-object/from16 v14, v24

    invoke-virtual {v11, v5, v12, v0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->deepCloneAndParseNewEvent(Lcom/taobao/android/ultron/common/model/IDMEvent;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    goto :goto_7

    :cond_c
    move-object/from16 p5, v11

    move-object/from16 v21, v14

    move-object/from16 v11, p0

    move-object v14, v0

    .line 230
    invoke-virtual {v9, v5}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 232
    :goto_7
    invoke-virtual {v11, v9}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    goto :goto_8

    :cond_d
    move-object/from16 v11, p0

    move-object/from16 v21, v14

    goto/16 :goto_5

    :goto_8
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v11, p5

    move-object v0, v14

    move-object/from16 v9, v19

    move-object/from16 v14, v21

    goto/16 :goto_4

    :cond_e
    move-object/from16 v11, p0

    return-void

    :cond_f
    move-object/from16 v11, p0

    move/from16 v18, v5

    move-object/from16 v21, v14

    move-object v14, v0

    .line 238
    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_19

    instance-of v0, v3, Ljava/util/Map;

    if-eqz v0, :cond_19

    if-nez v1, :cond_10

    goto/16 :goto_e

    .line 244
    :cond_10
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 245
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 247
    instance-of v13, v3, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-nez v13, :cond_11

    .line 248
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 251
    :cond_11
    check-cast v3, Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 252
    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getStatus()I

    move-result v12

    const/4 v13, 0x6

    .line 253
    new-array v13, v13, [Ljava/lang/String;

    const-string v19, "onReceiveEvent"

    const/16 v20, 0x0

    aput-object v19, v13, v20

    const-string v20, "component"

    const/16 v22, 0x1

    aput-object v20, v13, v22

    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x2

    aput-object v20, v13, v22

    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getTag()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x3

    aput-object v20, v13, v22

    const/16 v20, 0x4

    const-string v22, "status:"

    aput-object v22, v13, v20

    const/16 v20, 0x5

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v20

    invoke-static {v10, v13}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_12

    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v13

    move-object v11, v9

    nop

    nop

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    goto :goto_9

    :cond_12
    const/4 v11, 0x0

    :goto_9
    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    return-void

    :cond_13
    if-nez v11, :cond_14

    const/4 v12, 0x2

    .line 260
    new-array v11, v12, [Ljava/lang/String;

    const-string v12, "send event directly: "

    const/16 v17, 0x0

    aput-object v12, v11, v17

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v10

    .line 262
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v10

    .line 263
    invoke-virtual {v10, v7, v4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 264
    invoke-virtual {v10, v15, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 265
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v14, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 266
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v8, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 267
    invoke-virtual {v10, v6, v5}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-object/from16 v12, v21

    .line 268
    invoke-virtual {v10, v12, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 269
    invoke-virtual {v10, v3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 270
    nop

    nop

    invoke-virtual {v10, v9}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setTriggerArea(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    const/4 v0, 0x0

    .line 271
    invoke-virtual {v10, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-object/from16 v13, p0

    .line 272
    invoke-virtual {v13, v10}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    return-void

    :cond_14
    move-object/from16 v13, p0

    move-object/from16 v12, v21

    move-object/from16 v16, v9

    const/4 v13, 0x0

    .line 275
    :goto_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    if-ge v13, v9, :cond_18

    .line 276
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taobao/android/ultron/common/model/IDMEvent;

    if-nez v9, :cond_15

    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x1

    move-object/from16 p4, v0

    move-object/from16 p5, v11

    move/from16 v20, v13

    goto/16 :goto_c

    :cond_15
    move-object/from16 p5, v11

    .line 280
    invoke-interface {v9}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getType()Ljava/lang/String;

    move-result-object v11

    move-object/from16 p3, v9

    move/from16 v20, v13

    const/4 v13, 0x3

    .line 281
    new-array v9, v13, [Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v19, v9, v21

    const-string v22, "eventType"

    const/16 v23, 0x1

    aput-object v22, v9, v23

    const/16 v22, 0x2

    aput-object v11, v9, v22

    invoke-static {v10, v9}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 283
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v9

    .line 285
    invoke-virtual {v9, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v9

    .line 286
    invoke-virtual {v9, v7, v4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 287
    invoke-virtual {v9, v15, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 288
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v14, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 289
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 290
    invoke-virtual {v9, v6, v5}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 291
    invoke-virtual {v9, v12, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 292
    invoke-virtual {v9, v3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 293
    move-object/from16 v11, v16

    nop

    nop

    invoke-virtual {v9, v11}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setTriggerArea(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-eqz v18, :cond_16

    .line 295
    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/String;

    move-object/from16 v1, p3

    move-object/from16 p4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11, v13}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->deepCloneAndParseNewEvent(Lcom/taobao/android/ultron/common/model/IDMEvent;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    goto :goto_b

    :cond_16
    move-object/from16 v1, p3

    move-object/from16 p4, v0

    move-object/from16 v0, p0

    .line 297
    invoke-virtual {v9, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 299
    :goto_b
    invoke-virtual {v0, v9}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    goto :goto_d

    :cond_17
    move-object/from16 p4, v0

    :goto_c
    move-object/from16 v0, p0

    :goto_d
    add-int/lit8 v13, v20, 0x1

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    move-object/from16 v11, p5

    goto/16 :goto_a

    :cond_18
    move-object/from16 v0, p0

    return-void

    :cond_19
    :goto_e
    move-object v0, v11

    return-void
.end method

.method public replaceSubscriber(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/ISubscriber;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->getSubscriberList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 102
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setCurrentEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->mCurrentEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    return-void
.end method

.method public setDefaultSubscriber(Lcom/alibaba/android/ultron/event/base/ISubscriber;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->defaultSubscriber:Lcom/alibaba/android/ultron/event/base/ISubscriber;

    return-void
.end method
