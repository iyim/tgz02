.class public Lcom/alibaba/android/ultron/event/UserTrackSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "UserTrackSubscriber.java"


# static fields
.field private static final KEY_ARG1:Ljava/lang/String; = "arg1"

.field private static final KEY_ARG2:Ljava/lang/String; = "arg2"

.field private static final KEY_ARG3:Ljava/lang/String; = "arg3"

.field private static final KEY_ARGS:Ljava/lang/String; = "args"

.field private static final KEY_EVENTID:Ljava/lang/String; = "eventId"

.field private static final KEY_NEXT_PAGE:Ljava/lang/String; = "nextPage"

.field private static final KEY_PAGE:Ljava/lang/String; = "page"

.field private static final TAG:Ljava/lang/String; = "UserTrackSubscriber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 11

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/UserTrackSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    const-string v2, "eventId"

    .line 43
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    goto :goto_0

    :catch_0
    const/4 v4, -0x1

    :goto_0
    if-gez v4, :cond_1

    return-void

    :cond_1
    const-string v1, "page"

    .line 49
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "arg1"

    .line 52
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "arg2"

    .line 53
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arg3"

    .line 54
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_2

    move-object v6, v7

    goto :goto_1

    :cond_2
    move-object v6, v1

    .line 56
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v2

    :goto_2
    const-string v1, "args"

    .line 58
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 63
    invoke-interface {v2}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getUtParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_4

    .line 66
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 68
    :cond_4
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v8, "componentId"

    invoke-virtual {v1, v8, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 p1, 0x1

    .line 72
    new-array p1, p1, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "utPrams:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v8

    const-string v2, "UserTrackSubscriber"

    .line 72
    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    :cond_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_9

    .line 79
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    if-nez v1, :cond_8

    goto :goto_3

    .line 85
    :cond_8
    iget-object v9, p0, Lcom/alibaba/android/ultron/event/UserTrackSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 86
    invoke-interface {v9}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 85
    invoke-static {v9, v1}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-interface {v8, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 92
    :cond_9
    :try_start_1
    new-instance p1, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    :cond_a
    :goto_4
    const-string p1, "nextPage"

    .line 99
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_e

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    if-nez v1, :cond_c

    goto :goto_5

    .line 108
    :cond_c
    iget-object v3, p0, Lcom/alibaba/android/ultron/event/UserTrackSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    .line 109
    invoke-interface {v3}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 108
    invoke-static {v3, v1}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 113
    :cond_d
    :try_start_2
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_e
    return-void
.end method
