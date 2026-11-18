.class public Lcom/alibaba/android/ultron/event/CommonServerEventSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "CommonServerEventSubscriber.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonServerEventSubscriber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private newEvent(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/CommonServerEventSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->buildUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v0

    const-string v1, "type"

    .line 32
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventType(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 34
    new-instance v2, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    const-string v3, "fields"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->setEventParams(Ljava/lang/Object;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    return-object v0
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 4

    const/4 p1, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/CommonServerEventSubscriber;->getLastEventData()Ljava/lang/Object;

    move-result-object v0

    .line 16
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 17
    nop

    nop

    const-string v1, "eventList"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 20
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/ultron/event/CommonServerEventSubscriber;->newEvent(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/event/base/UltronEvent;

    move-result-object v2

    .line 21
    iget-object v3, p0, Lcom/alibaba/android/ultron/event/CommonServerEventSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-interface {v3}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/android/ultron/event/base/UltronEventHandler;->dispatchEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "CommonServerEventSubscriber"

    invoke-static {p1, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
