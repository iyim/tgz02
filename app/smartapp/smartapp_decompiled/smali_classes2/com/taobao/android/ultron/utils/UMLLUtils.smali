.class public Lcom/taobao/android/ultron/utils/UMLLUtils;
.super Ljava/lang/Object;
.source "UMLLUtils.java"


# static fields
.field public static final CONTAINER_DIM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTAINER_TAG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UMLLUtils"

.field private static final sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_TAG_MAP:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_TAG_MAP:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_1:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    const-string v2, "ultron_container"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static logInfoUltronParse(Lcom/taobao/android/ultron/datamodel/IDMContext;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 140
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    invoke-interface {p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getChildBizName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ultron_parse"

    const/4 v4, 0x0

    sget-object v5, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x2

    .line 143
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logInfoUltronParse"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "UMLLUtils"

    invoke-static {p0, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logMtopReq(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 9
    .param p0    # Lcom/taobao/android/ultron/datamodel/IDMContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lmtopsdk/mtop/domain/MtopRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    invoke-interface {p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getChildBizName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {p1}, Lcom/taobao/android/ultron/utils/UMLLUtils;->toRequestParams(Lmtopsdk/mtop/domain/MtopRequest;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_TAG_MAP:Ljava/util/Map;

    const/4 v8, 0x0

    .line 41
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logMtopReq(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 45
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "logMtopReq"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "UMLLUtils"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static logMtopResponse(Lcom/taobao/android/ultron/datamodel/IDMContext;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopRequest;ZLjava/util/Map;)V
    .locals 23
    .param p0    # Lcom/taobao/android/ultron/datamodel/IDMContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lmtopsdk/mtop/domain/MtopResponse;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lmtopsdk/mtop/domain/MtopRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/ultron/datamodel/IDMContext;",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            "Lmtopsdk/mtop/domain/MtopRequest;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p4

    const-string v1, "preBizName"

    const-string v2, "UMLLUtils"

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    .line 75
    :try_start_0
    sget-object v3, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    invoke-interface/range {p0 .. p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getBizName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getChildBizName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 76
    invoke-static/range {p2 .. p2}, Lcom/taobao/android/ultron/utils/UMLLUtils;->toRequestParams(Lmtopsdk/mtop/domain/MtopRequest;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_TAG_MAP:Ljava/util/Map;

    const/4 v10, 0x0

    move-object/from16 v7, p1

    .line 75
    invoke-interface/range {v3 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logMtopResponse(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, ""

    if-eqz p2, :cond_2

    :try_start_1
    const-string v5, "queryParam"

    .line 87
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "apiName"

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v5, "code"

    .line 91
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "mappingCode"

    .line 92
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/domain/MtopResponse;->getMappingCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "errorMsg"

    .line 93
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "responseCode"

    .line 94
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "bizInfo"

    .line 95
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    move-object v0, v4

    :goto_0
    move-object/from16 v19, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 100
    :try_start_2
    new-array v1, v13, [Ljava/lang/String;

    const-string v5, "logMtopResponse#args"

    aput-object v5, v1, v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v19, v4

    :goto_1
    if-eqz p3, :cond_6

    .line 105
    sget-object v14, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v15, "netRequest"

    if-eqz p2, :cond_4

    .line 106
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_2

    :cond_4
    move-object/from16 v16, v4

    :goto_2
    if-eqz p2, :cond_5

    .line 107
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_3

    :cond_5
    move-object/from16 v17, v4

    .line 108
    :goto_3
    invoke-interface/range {p0 .. p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getBizName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v3

    .line 105
    invoke-interface/range {v14 .. v20}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    .line 112
    :cond_6
    sget-object v14, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v15, "netRequest"

    if-eqz p2, :cond_7

    .line 113
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_4

    :cond_7
    move-object/from16 v16, v4

    :goto_4
    if-eqz p2, :cond_8

    .line 114
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_5

    :cond_8
    move-object/from16 v17, v4

    .line 115
    :goto_5
    invoke-interface/range {p0 .. p0}, Lcom/taobao/android/ultron/datamodel/IDMContext;->getBizName()Ljava/lang/String;

    move-result-object v18

    .line 117
    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v20, v3

    .line 112
    invoke-interface/range {v14 .. v22}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 120
    new-array v1, v13, [Ljava/lang/String;

    const-string v3, "logMtopResponse"

    aput-object v3, v1, v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_9
    :goto_6
    return-void
.end method

.method public static logUltronCacheError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    sget-object v1, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v2, "ultronCacheError"

    const-string v4, "1.0"

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "Ultron_Cache_10001"

    .line 56
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    move-object v5, p0

    .line 54
    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 59
    sget-object v1, Lcom/taobao/android/ultron/utils/UMLLUtils;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, ""

    const-string v4, "ultronCacheError"

    const/4 v5, 0x0

    const-string v6, "Ultron_Cache_10001"

    sget-object v8, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    const/4 v9, 0x0

    move-object v2, p0

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logError"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtils"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static toRequestParams(Lmtopsdk/mtop/domain/MtopRequest;)Ljava/lang/String;
    .locals 2
    .param p0    # Lmtopsdk/mtop/domain/MtopRequest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 128
    :cond_0
    iget-object p0, p0, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    if-eqz p0, :cond_2

    .line 129
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method
