.class public Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;
.super Ljava/lang/Object;
.source "ParseResponseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$TemplateInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParseResponseHelper"


# instance fields
.field private volatile cacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

.field private mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

.field private mExtraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSuccess:Z

.field private parseCacheAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mIsSuccess:Z

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->cacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    return-object p0
.end method

.method static synthetic access$002(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->cacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseCacheData(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    move-result-object p0

    return-object p0
.end method

.method private getContainerTypeByComponentType(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 128
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_0

    const-string p2, "containerType"

    .line 130
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "native"

    return-object p1
.end method

.method public static getTemplateInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$TemplateInfo;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-static {p0, p1}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    move-result-object p0

    .line 519
    invoke-virtual {p0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getTemplateIds()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    .line 520
    new-array v0, p1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTemplateInfo list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ParseResponseHelper"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 523
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "_\\$_"

    .line 524
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 525
    array-length v3, v1

    if-lt v3, p1, :cond_0

    .line 526
    new-instance v3, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$TemplateInfo;

    aget-object v4, v1, v2

    array-length v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    aget-object v1, v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v3, v4, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$TemplateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    .line 531
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private parseCacheData(Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 329
    new-instance v3, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    invoke-direct {v3}, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;-><init>()V

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 330
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 334
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 335
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "container"

    .line 336
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-string v8, "type"

    const-string v9, "data"

    if-eqz v7, :cond_3

    .line 339
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 341
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v11

    .line 342
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_3

    .line 344
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    if-nez v15, :cond_1

    move-object/from16 v17, v7

    move/from16 v18, v11

    goto :goto_2

    .line 348
    :cond_1
    new-instance v10, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    invoke-direct {v10, v15}, Lcom/taobao/android/ultron/common/model/DynamicTemplate;-><init>(Lcom/alibaba/fastjson/JSONObject;)V

    .line 349
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v15, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v10

    move-object/from16 v17, v7

    .line 351
    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    move/from16 v18, v11

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_2

    move/from16 v19, v7

    .line 353
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v10

    const-string v10, "componentType:"

    .line 354
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", container:"

    .line 355
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-interface {v4, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v19

    move-object/from16 v10, v20

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v17

    move/from16 v11, v18

    goto :goto_0

    .line 364
    :cond_3
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 365
    invoke-virtual {v3, v5}, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->setTemplateList(Ljava/util/List;)V

    .line 366
    invoke-virtual {v3, v4}, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->setContainerMap(Ljava/util/Map;)V

    .line 370
    :cond_4
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 372
    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 374
    sget-object v6, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->FEATURE_TAG_ID:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->hasFeature(Ljava/math/BigInteger;)Z

    move-result v6

    .line 375
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    if-nez v7, :cond_5

    goto :goto_3

    .line 379
    :cond_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_6

    goto :goto_3

    .line 383
    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 384
    instance-of v10, v7, Lcom/alibaba/fastjson/JSONObject;

    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    const/4 v10, 0x2

    const-string v11, "tag"

    const/4 v12, 0x1

    if-eqz v9, :cond_8

    if-eqz v6, :cond_8

    .line 389
    invoke-static {v9}, Lcom/taobao/android/ultron/datamodel/imp/ParseModule;->getComponentInfo(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_8

    .line 390
    array-length v14, v13

    if-ne v14, v10, :cond_8

    const/4 v14, 0x0

    .line 391
    aget-object v15, v13, v14

    invoke-virtual {v1, v11, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    aget-object v13, v13, v12

    const-string v14, "id"

    invoke-virtual {v1, v14, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_8
    nop

    nop

    .line 397
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 398
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 400
    invoke-direct {v0, v13, v4}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->getContainerTypeByComponentType(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    .line 401
    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v10, :cond_9

    const/4 v12, 0x5

    .line 404
    new-array v12, v12, [Ljava/lang/String;

    const-string v18, "createDMComponent"

    const/16 v16, 0x0

    aput-object v18, v12, v16

    const/16 v17, 0x1

    aput-object v8, v12, v17

    const/16 v17, 0x2

    aput-object v13, v12, v17

    const/4 v13, 0x3

    aput-object v11, v12, v13

    const/4 v11, 0x4

    aput-object v14, v12, v11

    const-string v11, "ParseResponseHelper"

    invoke-static {v11, v12}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const/16 v16, 0x0

    :goto_4
    const-string v11, "events"

    .line 407
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 408
    invoke-direct {v0, v11}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseEventMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;

    move-result-object v11

    .line 410
    new-instance v12, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;

    invoke-direct {v12, v7, v15, v10, v11}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;-><init>(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;)V

    .line 411
    invoke-virtual {v12, v9}, Lcom/taobao/android/ultron/datamodel/imp/DMComponent;->setComponentKey(Ljava/lang/String;)V

    .line 412
    invoke-interface {v2, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 415
    :cond_a
    invoke-virtual {v3, v2}, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->setComponentMap(Ljava/util/Map;)V

    :cond_b
    :goto_5
    return-object v3
.end method

.method private parseEvent(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/ultron/common/model/IDMEvent;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "type"

    .line 168
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fields"

    .line 169
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 177
    new-instance v2, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;

    invoke-direct {v2, v1, p1, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMEvent;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/util/List;)V

    return-object v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method private parseEventMap(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMEvent;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 136
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 139
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/alibaba/fastjson/JSONArray;

    if-nez v3, :cond_2

    goto :goto_0

    .line 146
    :cond_2
    nop

    nop

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 149
    instance-of v5, v4, Lcom/alibaba/fastjson/JSONObject;

    if-nez v5, :cond_4

    goto :goto_1

    .line 152
    :cond_4
    nop

    nop

    invoke-direct {p0, v4}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseEvent(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 154
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 157
    :cond_5
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addExtraData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    return-object v0
.end method

.method public hasFeature(Ljava/math/BigInteger;)Z
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getProtocolFeatures()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 441
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getProtocolFeatures()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ProtocolFeatures;->hasFeature(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1

    return p1
.end method

.method public isSuccess()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mIsSuccess:Z

    return v0
.end method

.method public parseDataWithCache(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;)V
    .locals 8

    const-string v0, "parseDataWithCache"

    .line 450
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParseResponseHelper"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 455
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v0

    if-nez v0, :cond_1

    .line 457
    new-instance v0, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-boolean v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGzip:Z

    invoke-direct {v0, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;-><init>(Z)V

    .line 458
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v2, v0}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setEngine(Lcom/taobao/android/ultron/datamodel/imp/DMEngine;)V

    :cond_1
    const/4 v2, 0x1

    const-string v3, "data"

    if-eqz p2, :cond_6

    .line 462
    invoke-virtual {p2}, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->getComponentMap()Ljava/util/Map;

    move-result-object v4

    .line 463
    invoke-virtual {p2}, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->getTemplateList()Ljava/util/List;

    move-result-object v5

    .line 464
    invoke-virtual {p2}, Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;->getContainer()Ljava/util/Map;

    move-result-object p2

    if-eqz v4, :cond_2

    .line 466
    iget-object v6, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v6}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getComponentMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 467
    iget-object v4, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setUseCache([Ljava/lang/String;)V

    :cond_2
    const-string v4, "container"

    if-eqz v5, :cond_5

    .line 470
    iget-object v6, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v6, v5}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setTemplateList(Ljava/util/List;)V

    .line 471
    iget-object v6, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setUseCache([Ljava/lang/String;)V

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "template cache info: \n"

    .line 474
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    if-nez v7, :cond_3

    goto :goto_0

    .line 479
    :cond_3
    invoke-virtual {v7}, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 481
    :cond_4
    new-array v5, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_7

    .line 484
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v1, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setType2containerInfoMap(Ljava/util/Map;)V

    .line 485
    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setUseCache([Ljava/lang/String;)V

    goto :goto_1

    .line 488
    :cond_6
    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setUseCache([Ljava/lang/String;)V

    :cond_7
    :goto_1
    const-string p2, "endpoint"

    .line 493
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    .line 497
    :cond_8
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 500
    :goto_2
    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v0, p2, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->parseProcess(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mIsSuccess:Z

    .line 501
    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {p2}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getProtocolVersion()Ljava/lang/String;

    move-result-object p2

    .line 502
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    const-string v1, "protocolVersion"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "reload"

    if-nez p1, :cond_9

    .line 504
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 507
    :cond_9
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 508
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    return-void
.end method

.method public parseProtocolFeatures(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_3

    const-string v0, "endpoint"

    .line 422
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "features"

    .line 429
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setProtocolFeatures(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 434
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocol features: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "ParseResponseHelper"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public parseResponse(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/UMLLUtils;->logInfoUltronParse(Lcom/taobao/android/ultron/datamodel/IDMContext;)V

    .line 59
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->cacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    const-string v1, "ParseResponseHelper"

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->cacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseDataWithCache(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;)V

    const-string p1, "parseDataWithCache"

    .line 61
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponseWithoutCache(Lcom/alibaba/fastjson/JSONObject;)V

    const-string p1, "parseResponseWithoutCache"

    .line 64
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public parseResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponse([B)V

    return-void
.end method

.method public parseResponse([B)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const-class v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 106
    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseResponse(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public parseResponseWithoutCache(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4

    const-string v0, "ParseResponse"

    const-string v1, "start"

    .line 69
    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v1

    if-nez v1, :cond_1

    .line 76
    new-instance v1, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    iget-boolean v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->mGzip:Z

    invoke-direct {v1, v2}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;-><init>(Z)V

    .line 77
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v2, v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->setEngine(Lcom/taobao/android/ultron/datamodel/imp/DMEngine;)V

    :cond_1
    const-string v2, "endpoint"

    .line 81
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "data"

    .line 85
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v1, v2, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->parseProcess(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mIsSuccess:Z

    .line 90
    iget-object v1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mDMContext:Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    invoke-virtual {v1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getProtocolVersion()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    const-string v3, "protocolVersion"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reload"

    if-nez p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 96
    :cond_3
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->mExtraData:Ljava/util/Map;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "end"

    .line 98
    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/TimeProfileUtil;->end(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public processCache(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;ZZ)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    const-string v0, "processCache"

    .line 194
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParseResponseHelper"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p3, :cond_e

    if-nez p4, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 p4, 0x0

    const-string v0, "endpoint"

    .line 202
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "meta"

    .line 204
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p4, "template"

    .line 206
    invoke-virtual {v0, p4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p4

    :cond_1
    if-nez p4, :cond_2

    return-void

    .line 213
    :cond_2
    invoke-static {p1, p2}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;

    move-result-object p1

    const/4 p2, 0x1

    .line 215
    new-array v0, p2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCache with cacheConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v0, v9

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "id"

    .line 217
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "version"

    .line 218
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_3

    return-void

    :cond_3
    if-eqz v8, :cond_4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_$_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v7

    :goto_0
    const-string v2, "cacheFields"

    .line 226
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p4

    .line 228
    new-array v2, p2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCache templateKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz p4, :cond_e

    .line 232
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 233
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_b

    .line 242
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getTemplateById(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 244
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 245
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 246
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 248
    check-cast v5, Ljava/lang/String;

    invoke-virtual {p3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    const/4 v4, 0x1

    goto :goto_2

    :cond_9
    const-string p2, "processCache use cache"

    .line 254
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    move p2, v4

    :cond_a
    if-eqz p2, :cond_d

    const-string p2, "processCache dataWrong"

    .line 262
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->deleteTemplateById(Ljava/lang/String;)V

    goto :goto_4

    .line 268
    :cond_b
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 269
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 270
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 272
    :cond_c
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v6

    .line 275
    new-instance p2, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;-><init>(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v9, [Ljava/lang/Object;

    .line 299
    invoke-virtual {p2, v1}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_d
    :goto_4
    if-eqz p5, :cond_e

    .line 303
    invoke-virtual {p1, v0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getCacheDataResult(Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    move-result-object p2

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->cacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    .line 304
    iget-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->cacheDataResult:Lcom/taobao/android/ultron/datamodel/cache/CacheDataResult;

    if-nez p2, :cond_e

    .line 305
    new-instance p2, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper$2;-><init>(Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;Lcom/alibaba/fastjson/JSONObject;Lcom/alibaba/fastjson/JSONArray;Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseCacheAsyncTask:Landroid/os/AsyncTask;

    .line 317
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/ParseResponseHelper;->parseCacheAsyncTask:Landroid/os/AsyncTask;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v9, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_e
    :goto_5
    return-void
.end method
