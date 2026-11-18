.class Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;
.super Ljava/lang/Object;
.source "ItemExposureStrategy.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExposureStrategyComponentLifecycleCallback"
.end annotation


# instance fields
.field private final eventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

.field private final strategy:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;Lcom/alibaba/android/ultron/event/base/UltronEventHandler;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;->strategy:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    .line 38
    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;->eventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    return-void
.end method


# virtual methods
.method public onBindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getEventMap()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "exposureItem"

    .line 51
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/ultron/common/model/IDMEvent;

    if-nez v3, :cond_3

    goto/16 :goto_1

    .line 61
    :cond_3
    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "userTrack"

    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "ItemExposureStrategy"

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    .line 69
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v8, "asyncStatus"

    .line 70
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "success"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 72
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "component asyncStatus is not success "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v6, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;->strategy:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    sget-object v8, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->EXPOSURE_ONCE:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    if-ne v5, v8, :cond_6

    .line 77
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 78
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    const-string v8, "exposureCount"

    invoke-virtual {v5, v8}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 81
    :cond_5
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;->eventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    invoke-virtual {v5}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v5

    .line 88
    invoke-virtual {v5, v4}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v5

    .line 89
    invoke-virtual {v5, p2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    if-eqz p3, :cond_7

    .line 91
    invoke-virtual {v5, p3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setExtraData(Ljava/util/Map;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 93
    :cond_7
    invoke-virtual {v5, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setTriggerArea(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 94
    invoke-virtual {v5, v3}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 95
    new-array v3, v7, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "component exposure item:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v6, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/instance/strategy/ItemExposureStrategy$ExposureStrategyComponentLifecycleCallback;->eventHandler:Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
