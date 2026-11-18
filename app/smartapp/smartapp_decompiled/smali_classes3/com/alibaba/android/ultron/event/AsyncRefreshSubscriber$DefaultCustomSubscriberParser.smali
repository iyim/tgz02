.class Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;
.super Ljava/lang/Object;
.source "AsyncRefreshSubscriber.java"

# interfaces
.implements Lcom/alibaba/android/ultron/event/base/CustomSubscriberParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultCustomSubscriberParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;->this$0:Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;-><init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;)V

    return-void
.end method

.method private fillDataToComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 294
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onCustomParser(Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v0

    const-string v1, "triggerComponent"

    .line 252
    invoke-virtual {p1, v1}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->getCustomValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/IDMComponent;

    const-string v2, "mtopResponse"

    .line 253
    invoke-virtual {p1, v2}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->getCustomValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmtopsdk/mtop/domain/MtopResponse;

    const-string v3, "isError"

    .line 254
    invoke-virtual {p1, v3}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->getCustomValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    const-string v3, "targetComponents"

    .line 255
    invoke-virtual {p1, v3}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->getCustomValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_7

    if-nez v2, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x0

    .line 263
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v4, :cond_2

    return-void

    .line 269
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "needRefreshComponents"

    if-nez v3, :cond_3

    .line 272
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p1, v5, v2}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;->fillDataToComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 278
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 279
    instance-of v6, v3, Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_0

    .line 282
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v6

    nop

    nop

    invoke-interface {v6, v3}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getComponentByName(Ljava/lang/String;)Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 286
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;->fillDataToComponent(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V

    .line 287
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_6
    invoke-virtual {p1, v5, v2}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method
