.class public Lcom/taobao/android/sku/utils/ExpressionParser;
.super Ljava/lang/Object;
.source "ExpressionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static parseComponentFieldsExpression(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 25
    invoke-static {p1, v1}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parseExpression(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    return-object p2

    .line 46
    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 47
    nop

    nop

    .line 48
    invoke-static {p0, p1, p2}, Lcom/taobao/android/sku/utils/ExpressionExt;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 51
    :cond_3
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_5

    .line 52
    nop

    nop

    .line 53
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 55
    invoke-static {p0, p1, v2}, Lcom/taobao/android/sku/utils/ExpressionParser;->parseExpression(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object p2

    .line 60
    :cond_5
    instance-of v0, p2, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_8

    .line 61
    nop

    nop

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 64
    invoke-static {p0, p1, v2}, Lcom/taobao/android/sku/utils/ExpressionParser;->parseExpression(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_7
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 71
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-object p2
.end method

.method public static reParseComponentFieldsExpression(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    invoke-static {p2, v1}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
