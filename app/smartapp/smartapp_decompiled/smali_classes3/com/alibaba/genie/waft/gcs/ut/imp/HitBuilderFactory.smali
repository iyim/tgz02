.class public Lcom/alibaba/genie/waft/gcs/ut/imp/HitBuilderFactory;
.super Ljava/lang/Object;
.source "HitBuilderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HitBuilderFactory:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addDefaultProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "from"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "ro.product.model"

    .line 99
    invoke-static {v1}, Lcom/alibaba/genie/waft/gcs/ut/imp/HitBuilderFactory;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "AILABS_S1"

    :cond_1
    const-string v2, "_"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "biz_type"

    const/4 v3, 0x0

    .line 105
    aget-object v3, v1, v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "biz_group"

    const/4 v3, 0x1

    .line 106
    aget-object v1, v1, v3

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    const-string v2, "persist.sys.is.child.mode"

    .line 107
    invoke-static {v2}, Lcom/alibaba/genie/waft/gcs/ut/imp/HitBuilderFactory;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uuid"

    const-string v2, "ro.genie.uuid"

    .line 108
    invoke-static {v2}, Lcom/alibaba/genie/waft/gcs/ut/imp/HitBuilderFactory;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "touch_screen"

    .line 111
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "ailabs_dataflag"

    const-string v1, "1"

    .line 113
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->getInstance()Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/genie/waft/gcs/ut/base/UtContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->init(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->getInstance()Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/ut/auth/GenieSDK;->getAuthInfo()Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/ut/auth/AuthInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    .line 117
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "UtSystem: -"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u83b7\u53d6\u5230\u7684 : user_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static buildUTHitBuilder(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
    .locals 17

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->setParamsMap(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    .line 27
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getSpm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getSpm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "spm"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/genie/waft/gcs/ut/imp/HitBuilderFactory;->addDefaultProperties(Ljava/util/Map;)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getmMethod()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "manualExposureAll"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v3, "customHit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "controlHit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v3, "customPageHit"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "customEventId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string v3, "manualExposure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    :cond_2
    :goto_1
    const/4 v0, 0x0

    if-eqz v2, :cond_b

    if-eq v2, v8, :cond_9

    if-eq v2, v7, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_3

    goto/16 :goto_4

    .line 71
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getEventId()I

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "UtSystem: -"

    const-string v2, "\u81ea\u5b9a\u4e49\u7684EventId \u662f\u7a7a\u7684"

    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 77
    :cond_4
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getEventId()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getEventName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataTwo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataThree()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v9

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_4

    .line 67
    :cond_5
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getPageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x899

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getEventName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataTwo()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataThree()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v16

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_4

    .line 49
    :cond_6
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getReferPage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getReferPage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setReferPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    .line 53
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 55
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataThree()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setDurationOnPage(J)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "HitBuilderFactory:"

    const-string v3, "Page\u4e8b\u4ef6\u65f6\u957f\u8f6c\u6362\u9519\u8bef"

    .line 57
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_4

    .line 42
    :cond_9
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getPageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v2, ""

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getPageName()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setEventPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_4

    .line 37
    :cond_b
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getPageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x835

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataTwo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getExtDataThree()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->getParamsMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    :goto_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c505d13 -> :sswitch_5
        -0x1567475c -> :sswitch_4
        0xcbef5d3 -> :sswitch_3
        0x25fddcf6 -> :sswitch_2
        0x600e0e62 -> :sswitch_1
        0x6401db74 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 130
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 131
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 132
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const-string p0, ""

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static send(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
