.class public Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;
.super Ljava/lang/Object;
.source "ItemCreateStrategy.java"


# static fields
.field private static final KEY_CREATE_ITEM:Ljava/lang/String; = "createItem"

.field private static final TAG:Ljava/lang/String; = "ItemCreateStrategy"


# instance fields
.field private hasCreateItemEventExeKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;->hasCreateItemEventExeKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createItemEvent(Lcom/alibaba/android/ultron/vfw/core/DataSource;Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 7

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/DataSource;->getAllList()Ljava/util/List;

    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "createItem"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 30
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;->hasCreateItemEventExeKeys:Ljava/util/List;

    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;->hasCreateItemEventExeKeys:Ljava/util/List;

    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 34
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/ultron/common/model/IDMEvent;

    if-nez v4, :cond_3

    goto :goto_2

    .line 39
    :cond_3
    invoke-interface {v4}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 42
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v6

    .line 43
    invoke-virtual {v6, v5}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v5

    .line 44
    invoke-virtual {v5, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 45
    invoke-virtual {v5, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setTriggerArea(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 46
    invoke-virtual {v5, v4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 47
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public resetState()V
    .locals 2

    const-string v0, "resetState"

    .line 55
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemCreateStrategy"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemCreateStrategy;->hasCreateItemEventExeKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
