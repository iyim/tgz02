.class public Lcom/taobao/android/tbsku/utils/SkuChecker;
.super Ljava/lang/Object;
.source "SkuChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkNewSkuWithData(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 22
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 29
    invoke-static {}, Lcom/taobao/android/AliConfigServiceFetcher;->getConfigService()Lcom/taobao/android/AliConfigInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "android_detail"

    const-string v4, "ultron_sku_config_open"

    const-string v5, "{}"

    .line 31
    invoke-interface {v2, v3, v4, v5}, Lcom/taobao/android/AliConfigInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    :try_start_0
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "skipKeys"

    .line 34
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "/"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v1, :cond_2

    .line 42
    array-length v2, v1

    if-gtz v2, :cond_3

    .line 44
    :cond_2
    new-instance v1, Lcom/taobao/android/tbsku/utils/SkuChecker$1;

    invoke-direct {v1}, Lcom/taobao/android/tbsku/utils/SkuChecker$1;-><init>()V

    .line 79
    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_b

    .line 82
    array-length v2, v1

    if-lez v2, :cond_b

    .line 83
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_b

    aget-object v4, v1, v3

    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_1

    .line 87
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "${"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/taobao/android/ultron/expr/Expression;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 88
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 90
    new-instance p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    invoke-direct {p0, v0, v4}, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 91
    :cond_5
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v6, :cond_6

    move-object v6, v5

    nop

    nop

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 93
    new-instance p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    invoke-direct {p0, v0, v4}, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 94
    :cond_6
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v6, :cond_7

    move-object v6, v5

    nop

    nop

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 96
    new-instance p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    invoke-direct {p0, v0, v4}, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 97
    :cond_7
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 99
    new-instance p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    invoke-direct {p0, v0, v4}, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;-><init>(ZLjava/lang/String;)V

    return-object p0

    :cond_8
    if-eqz v6, :cond_9

    .line 100
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_1

    :cond_9
    if-eqz v5, :cond_a

    .line 102
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 104
    new-instance p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    invoke-direct {p0, v0, v4}, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;-><init>(ZLjava/lang/String;)V

    return-object p0

    :cond_a
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 109
    :cond_b
    new-instance p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    const/4 v0, 0x1

    const-string v1, "Congratulations, it\'s done"

    invoke-direct {p0, v0, v1}, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 23
    :cond_c
    :goto_2
    new-instance p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    const-string v1, "input error"

    invoke-direct {p0, v0, v1}, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

.method public static isSupportNewSku(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/taobao/android/tbsku/utils/SkuChecker;->checkNewSkuWithData(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;

    move-result-object p0

    .line 18
    iget-boolean p0, p0, Lcom/taobao/android/tbsku/utils/SkuChecker$CheckResult;->isValid:Z

    return p0
.end method
