.class public Lcom/taobao/android/ultron/utils/ExpressionUtils;
.super Ljava/lang/Object;
.source "ExpressionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-static {p0, p1, v0}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;[Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;[Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;)Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return-object p1

    .line 28
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 29
    nop

    nop

    .line 30
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/expr/ExpressionExt;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "$"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    .line 33
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    if-eqz v2, :cond_4

    .line 34
    iget-object v3, v2, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->mPattern:Ljava/util/regex/Pattern;

    if-nez v3, :cond_3

    goto :goto_1

    .line 37
    :cond_3
    iget-object p0, v2, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->mData:Ljava/lang/Object;

    invoke-virtual {v2, p0, p1}, Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;->evaluate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object p0

    .line 47
    :cond_6
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_8

    .line 48
    nop

    nop

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-static {p0, v2, p2}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;[Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    return-object p1

    .line 56
    :cond_8
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_b

    .line 57
    nop

    nop

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 60
    invoke-static {p0, v2, p2}, Lcom/taobao/android/ultron/utils/ExpressionUtils;->parseExpressionObj(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;[Lcom/taobao/android/ultron/utils/ExpressionUtils$Evaluation;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 62
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 66
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->clear()V

    .line 67
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    :cond_b
    return-object p1
.end method
