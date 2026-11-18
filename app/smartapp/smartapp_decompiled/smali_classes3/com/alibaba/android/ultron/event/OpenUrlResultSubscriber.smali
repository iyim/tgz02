.class public Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "OpenUrlResultSubscriber.java"


# static fields
.field public static final KEY_H5_RESULT:Ljava/lang/String; = "data"

.field public static final KEY_OPEN_URL_EVENT:Ljava/lang/String; = "openUrlEvent"

.field public static final KEY_OPEN_URL_PARAMS:Ljava/lang/String; = "params"

.field public static final KEY_REQUEST_CODE:Ljava/lang/String; = "activityRequestCode"

.field public static final KEY_RESULT_CODE:Ljava/lang/String; = "activityResultCode"

.field public static final KEY_RESULT_DATA:Ljava/lang/String; = "activityResultData"

.field private static final TAG:Ljava/lang/String; = "OpenUrlResultSubscriber"


# instance fields
.field protected mIntentData:Landroid/content/Intent;

.field protected mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private paramPreCheck()Z
    .locals 5

    const-string v0, "activityRequestCode"

    .line 66
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "activityResultData"

    .line 68
    invoke-virtual {p0, v2}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mIntentData:Landroid/content/Intent;

    const-string v2, "openUrlEvent"

    .line 69
    invoke-virtual {p0, v2}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 70
    iget-object v3, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventParams()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/ultron/common/model/IDMEvent;

    iput-object v2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;

    .line 76
    iget-object v2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;

    if-nez v2, :cond_1

    return v4

    .line 79
    :cond_1
    invoke-interface {v2}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-ne v1, v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    :goto_0
    return v4
.end method

.method private transferBundleData(Landroid/content/Intent;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 158
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected handleH5Result(Landroid/content/Intent;I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object p2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;

    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;

    if-nez p2, :cond_2

    return-void

    .line 120
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_3

    .line 122
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :cond_3
    const-string v0, "data"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 128
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    iget-object p2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-interface {p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->respondToLinkage(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    return-void

    .line 132
    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 134
    invoke-virtual {p0, v0}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->writeDataBackToComponent(Ljava/util/Map;)Z

    .line 135
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x3

    .line 138
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "handleH5Result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "h5\u8f6c\u5316json\u5931\u8d25"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OpenUrlResultSubscriber"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    :cond_5
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "params"

    .line 142
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object p2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->writeDataBackToEvent(Lcom/taobao/android/ultron/common/model/IDMEvent;Ljava/util/Map;)Z

    .line 144
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    iget-object p2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-interface {p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->respondToLinkage(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    return-void
.end method

.method protected handleNativeResult(Landroid/content/Intent;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->transferBundleData(Landroid/content/Intent;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;

    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :catch_0
    if-nez p2, :cond_2

    return-void

    .line 101
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getParams()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 102
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 103
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "params"

    .line 104
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->writeDataBackToEvent(Lcom/taobao/android/ultron/common/model/IDMEvent;Ljava/util/Map;)Z

    .line 106
    iget-object p1, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    iget-object p2, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-interface {p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->respondToLinkage(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    return-void
.end method

.method public onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 6

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->paramPreCheck()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "activityResultCode"

    .line 40
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mLastIDMEvent:Lcom/taobao/android/ultron/common/model/IDMEvent;

    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;

    .line 43
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->getPageType()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7558c3c9

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const/16 v3, 0x8ed

    if-eq v2, v3, :cond_3

    const v3, 0x291421

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "Weex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v2, "H5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "Native"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_0
    const-string v0, "OpenUrlResultSubscriber"

    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_6

    goto :goto_1

    :cond_6
    const-string p1, "\u4eceweex\u9875\u9762\u8df3\u56de"

    .line 59
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v1, "\u4eceH5\u9875\u9762\u8df3\u56de"

    .line 54
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mIntentData:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->handleH5Result(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_8
    const-string v1, "\u4ecenative\u9875\u9762\u8df3\u56de"

    .line 49
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->mIntentData:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/android/ultron/event/OpenUrlResultSubscriber;->handleNativeResult(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method
