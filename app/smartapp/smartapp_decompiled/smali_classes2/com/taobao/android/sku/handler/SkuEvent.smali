.class public Lcom/taobao/android/sku/handler/SkuEvent;
.super Ljava/lang/Object;
.source "SkuEvent.java"


# instance fields
.field private mComponentData:Lcom/alibaba/fastjson/JSONObject;

.field private mContext:Landroid/content/Context;

.field private mEventData:Lcom/alibaba/fastjson/JSONObject;

.field private mExtraParams:Ljava/util/List;

.field private mUltronEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

.field private mUserInput:Ljava/util/List;

.field private mWrapper:Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/event/base/UltronEvent;Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mEventData:Lcom/alibaba/fastjson/JSONObject;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mExtraParams:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mUserInput:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mUltronEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    .line 32
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mUltronEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mWrapper:Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;

    .line 35
    invoke-direct {p0, p1}, Lcom/taobao/android/sku/handler/SkuEvent;->initEventParams(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V

    return-void
.end method

.method private initEventParams(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 6

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventParams()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/ultron/common/model/IDMEvent;

    if-eqz v0, :cond_6

    .line 41
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mComponentData:Lcom/alibaba/fastjson/JSONObject;

    .line 52
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 53
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->clone()Ljava/lang/Object;

    move-result-object v0

    :cond_2
    const-string v2, "fields"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v2, "extraParams"

    .line 59
    invoke-virtual {p1, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 60
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    array-length v3, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 64
    aget-object v5, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "viewParams"

    .line 70
    invoke-virtual {p1, v2}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez v0, :cond_4

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    if-nez p1, :cond_5

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :cond_5
    iput-object v1, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mEventData:Lcom/alibaba/fastjson/JSONObject;

    .line 83
    iput-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mExtraParams:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mUserInput:Ljava/util/List;

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchNextEvents(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mWrapper:Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;

    invoke-virtual {v0, p1}, Lcom/taobao/android/sku/handler/AliXSkuHandlerWrapper;->dispatchNextEvents(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public getComponentData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mComponentData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEventData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mEventData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getExtraParams()Ljava/util/List;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mExtraParams:Ljava/util/List;

    return-object v0
.end method

.method public getUltronEvent()Lcom/alibaba/android/ultron/event/base/UltronEvent;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mUltronEvent:Lcom/alibaba/android/ultron/event/base/UltronEvent;

    return-object v0
.end method

.method public getUserInput()Ljava/util/List;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/taobao/android/sku/handler/SkuEvent;->mUserInput:Ljava/util/List;

    return-object v0
.end method
