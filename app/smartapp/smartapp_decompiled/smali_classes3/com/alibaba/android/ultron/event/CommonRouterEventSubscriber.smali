.class public Lcom/alibaba/android/ultron/event/CommonRouterEventSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "CommonRouterEventSubscriber.java"


# static fields
.field private static final EVENT_KEY:Ljava/lang/String; = "type"

.field private static final ROUTER_TARGET:Ljava/lang/String; = "target"

.field private static final TAG:Ljava/lang/String; = "CommonRouterEventSubscriber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 5

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/CommonRouterEventSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "type"

    .line 27
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "target"

    .line 28
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 38
    :cond_2
    invoke-interface {v2, v0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getComponentByName(Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 44
    :cond_3
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 47
    :cond_4
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_5

    return-void

    .line 52
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object p1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/IDMEvent;

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v3

    .line 55
    invoke-interface {v2}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 56
    invoke-virtual {v3, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 57
    invoke-virtual {v3, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 59
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "isFromRouterEvent"

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 60
    invoke-virtual {p1, v3}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method
