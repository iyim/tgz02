.class public Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;
.super Ljava/lang/Object;
.source "BaseEventSubscribeUtil.java"


# static fields
.field private static sSubscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/android/ultron/event/base/ISubscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/OpenUrlSubscriber;

    const-string v2, "openUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;

    const-string v2, "openUrlResult"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/UserTrackSubscriber;

    const-string v2, "userTrack"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    const-string v2, "asyncRefresh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;

    const-string v2, "request"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonToastSubscriber;

    const-string v2, "toast"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonPopSelectSubscriber;

    const-string v2, "popupSelect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonShowLoadingSubscriber;

    const-string v2, "show_loading"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonHideLoadingSubscriber;

    const-string v2, "hide_loading"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonDismissPopSubscriber;

    const-string v2, "dismissPop"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonServerEventSubscriber;

    const-string v2, "serverEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/AdjustStateSubscriber;

    const-string v2, "adjustState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonRouterEventSubscriber;

    const-string v2, "routerEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    const-class v1, Lcom/alibaba/android/ultron/event/CommonPostMessageSubscriber;

    const-string v2, "postMessage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getEventsToSubscribe()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/android/ultron/event/base/ISubscriber;",
            ">;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/alibaba/android/ultron/event/base/BaseEventSubscribeUtil;->sSubscriberMap:Ljava/util/Map;

    return-object v0
.end method
