.class public Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;
.super Ljava/lang/Object;
.source "UMLLUtil.java"


# static fields
.field public static final ERROR_DX_BIND_DATA_FAIL:Ljava/lang/String; = "F_ULTRON_DX_10003"

.field public static final ERROR_DX_DOWNGRADE:Ljava/lang/String; = "F_ULTRON_DX_10004"

.field public static final ERROR_DX_DOWNLOAD_FAIL:Ljava/lang/String; = "F_ULTRON_DX_10001"

.field public static final ERROR_DX_RENDER_FAIL:Ljava/lang/String; = "F_ULTRON_DX_10002"

.field public static final ERROR_ENGINE_EXCEPTION:Ljava/lang/String; = "F_ULTRON_ENGINE_EXCEPTION_10020"

.field public static final ERROR_ENGINE_INIT:Ljava/lang/String; = "F_ULTRON_ENGINE_10006"

.field public static final ERROR_ENGINE_JS_ENGINE:Ljava/lang/String; = "F_ULTRON_ENGINE_10004"

.field public static final ERROR_ENGINE_JS_ENGINE_JSI:Ljava/lang/String; = "F_ULTRON_ENGINE_10004_JSI"

.field public static final ERROR_ENGINE_JS_EXCEPTION:Ljava/lang/String; = "F_ULTRON_ENGINE_10003"

.field public static final ERROR_ENGINE_JS_EXCEPTION_JSI:Ljava/lang/String; = "F_ULTRON_ENGINE_10003_JSI"

.field public static final ERROR_ENGINE_JS_FILE_ERROR_JSI:Ljava/lang/String; = "F_ULTRON_ENGINE_10006_JSI"

.field public static final ERROR_ENGINE_JS_INIT:Ljava/lang/String; = "F_ULTRON_ENGINE_10002"

.field public static final ERROR_ENGINE_JS_INIT_DUOKAI_JSI:Ljava/lang/String; = "F_ULTRON_ENGINE_10007_JSI"

.field public static final ERROR_ENGINE_JS_INIT_JSI:Ljava/lang/String; = "F_ULTRON_ENGINE_10002_JSI"

.field public static final ERROR_ENGINE_JS_TIMEOUT:Ljava/lang/String; = "F_ULTRON_ENGINE_10005"

.field public static final ERROR_ENGINE_JS_TIMEOUT_JSI:Ljava/lang/String; = "F_ULTRON_ENGINE_10005_JSI"

.field public static final ERROR_ENGINE_TEMPLATE_RENDER:Ljava/lang/String; = "F_ULTRON_ENGINE_10001"

.field public static final ERROR_EVENT_NOT_FOUND:Ljava/lang/String; = "F_ULTRON_EVENT_10001"

.field public static final FEATURE_TYPE_ENGINE:Ljava/lang/String; = "error_ultorn_engine"

.field public static final FEATURE_TYPE_EVENT:Ljava/lang/String; = "error_event"

.field public static final FEATURE_TYPE_RENDER:Ljava/lang/String; = "error_render"

.field private static final TAG:Ljava/lang/String; = "UMLLUtil"

.field private static final sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static jsLoadSoUseTime(Ljava/lang/String;J)V
    .locals 19

    move-wide/from16 v0, p1

    const-string v2, "UMLLUtil"

    const-string v3, "useTime: "

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide/16 v7, 0x3e8

    const-string v9, "jsLoadSoUseTime"

    cmp-long v10, v0, v7

    if-gez v10, :cond_0

    .line 415
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_1000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v7, 0x7d0

    cmp-long v10, v0, v7

    if-gez v10, :cond_1

    .line 417
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_2000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_1
    const-wide/16 v7, 0xbb8

    cmp-long v10, v0, v7

    if-gez v10, :cond_2

    .line 419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_3000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_2
    const-wide/16 v7, 0xfa0

    cmp-long v10, v0, v7

    if-gez v10, :cond_3

    .line 421
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_4000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_3
    const-wide/16 v7, 0x1388

    cmp-long v10, v0, v7

    if-gez v10, :cond_4

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_5000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_4
    const-wide/16 v7, 0x1770

    cmp-long v10, v0, v7

    if-gez v10, :cond_5

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_6000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_5
    const-wide/16 v7, 0x1b58

    cmp-long v10, v0, v7

    if-gez v10, :cond_6

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_7000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_6
    const-wide/16 v7, 0x2710

    cmp-long v10, v0, v7

    if-gez v10, :cond_7

    .line 429
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_10000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_7
    const-wide/16 v7, 0x3a98

    cmp-long v10, v0, v7

    if-gez v10, :cond_8

    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_15000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 433
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_morethan_15000"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 435
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string v10, "useTime"

    .line 436
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v10, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v12, ""

    const-string v13, "error_ultorn_engine"

    const/4 v14, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 440
    invoke-static {v8}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v18

    move-object/from16 v11, p0

    move-object v15, v7

    .line 437
    invoke-interface/range {v10 .. v18}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 442
    sget-object v10, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v11, "error_ultorn_engine"

    const-string v12, ""

    const-string v13, "2.0"

    const-string v15, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v14, p0

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    invoke-interface/range {v10 .. v18}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x3

    .line 445
    new-array v8, v8, [Ljava/lang/String;

    aput-object v9, v8, v5

    aput-object v7, v8, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v2, v8}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 447
    :goto_1
    new-array v1, v6, [Ljava/lang/String;

    const-string v3, "jsLoadSoUseTime exception"

    aput-object v3, v1, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static logErrorEngine(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 18

    const/4 v1, 0x2

    .line 346
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "message"

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v9, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v11, ""

    const-string v12, "error_ultorn_engine"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    .line 350
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 351
    invoke-static {v8}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v17

    move-object/from16 v10, p0

    .line 348
    invoke-interface/range {v9 .. v17}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 353
    sget-object v2, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, "error_ultorn_engine"

    const-string v4, ""

    const-string v5, "2.0"

    const-string v7, ""

    const-string v9, "F_ULTRON_ENGINE_10001"

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p0

    .line 353
    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 357
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logErrorEngine"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtil"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logErrorEnvInit(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 18

    const/4 v1, 0x2

    .line 363
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "message"

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The runtime environment is invalid, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    :try_start_1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 368
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v3, p1

    .line 369
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StackTrace"

    .line 371
    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :catch_0
    :try_start_2
    sget-object v9, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v11, ""

    const-string v12, "error_ultorn_engine"

    const/4 v13, 0x0

    const-string v14, "F_ULTRON_ENGINE_10006"

    const-string v15, "The runtime environment is invalid !"

    sget-object v16, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 377
    invoke-static {v8}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v17

    move-object/from16 v10, p0

    .line 374
    invoke-interface/range {v9 .. v17}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 379
    sget-object v2, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, "error_ultorn_engine"

    const-string v4, ""

    const-string v5, "2.0"

    const-string v7, ""

    const-string v9, "F_ULTRON_ENGINE_10006"

    const-string v10, "The runtime environment is invalid !"

    move-object/from16 v6, p0

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 383
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logErrorEnvInit"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtil"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logErrorLogicEngine(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 389
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "message"

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v2, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->extraMsg:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "extraMsg"

    .line 392
    iget-object v3, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->extraMsg:Ljava/lang/String;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_0
    sget-object v9, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v11, ""

    const-string v12, "error_ultorn_engine"

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 397
    invoke-static {v8}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v17

    move-object/from16 v10, p0

    .line 394
    invoke-interface/range {v9 .. v17}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 399
    sget-object v2, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, "error_ultorn_engine"

    const-string v4, ""

    const-string v5, "2.0"

    const-string v7, ""

    iget-object v9, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p0

    .line 399
    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logErrorLogicEngine"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtil"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logErrorUltronEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 23

    const-string v0, "params"

    const-string v1, "eventId"

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 322
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventParams()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v5, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getBizName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, "error_event"

    const/4 v9, 0x0

    const-string v10, "F_ULTRON_EVENT_10001"

    const-string v11, "\u627e\u4e0d\u5230\u4e8b\u4ef6\u5904\u7406\u5668"

    sget-object v12, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 328
    invoke-static {v3}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v13

    .line 325
    invoke-interface/range {v5 .. v13}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 330
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventParams()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventParams()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_1
    sget-object v14, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v15, "error_event"

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v16

    const-string v17, "2.0"

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getBizName()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    const-string v21, "F_ULTRON_EVENT_10001"

    const-string v22, "\u627e\u4e0d\u5230\u4e8b\u4ef6\u5904\u7406\u5668"

    move-object/from16 v20, v3

    .line 335
    invoke-interface/range {v14 .. v22}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 339
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logErrorUltronEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtil"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logErrorUltronTemplateBindData(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 1

    const-string v0, ""

    .line 246
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorUltronTemplateBindData(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static logErrorUltronTemplateBindData(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "errorMsg"

    const-string v3, "url"

    const-string v4, "version"

    const-string v5, "name"

    const-string v6, ""

    if-nez p1, :cond_0

    move-object/from16 v16, v6

    goto :goto_0

    :cond_0
    move-object/from16 v16, p1

    .line 255
    :goto_0
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 256
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15, v8}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_1

    .line 258
    iget-object v8, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-wide v8, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v8, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v8, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v15, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-wide v8, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v4, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {v15, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_1
    sget-object v1, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v10, "error_render"

    const/4 v11, 0x0

    const-string v12, "F_ULTRON_DX_10003"

    const-string v13, "\u6a21\u677fbindData\u5931\u8d25"

    sget-object v14, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 271
    invoke-static {v7}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v2

    move-object v7, v1

    move-object/from16 v8, p0

    move-object/from16 v9, v16

    move-object v1, v15

    move-object v15, v2

    .line 268
    invoke-interface/range {v7 .. v15}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 272
    sget-object v7, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v8, "error_render"

    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    :cond_2
    move-object v9, v6

    const-string v10, "2.0"

    const-string v14, "F_ULTRON_DX_10003"

    const-string v15, "\u6a21\u677fbindData\u5931\u8d25"

    move-object/from16 v11, p0

    move-object/from16 v12, v16

    move-object v13, v1

    invoke-interface/range {v7 .. v15}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 276
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logErrorUltronTemplateBindData"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtil"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static logErrorUltronTemplateDowngrade(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "url"

    const-string v2, "version"

    const-string v3, "name"

    const-string v4, ""

    if-nez p1, :cond_0

    move-object v14, v4

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    .line 289
    :goto_0
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 290
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15, v6}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_1

    .line 292
    iget-object v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-wide v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v15, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-wide v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v2, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1
    sget-object v1, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v8, "error_render"

    const/4 v9, 0x0

    const-string v10, "F_ULTRON_DX_10004"

    const-string v11, "\u6a21\u677f\u964d\u7ea7"

    sget-object v12, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 304
    invoke-static {v5}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v13

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v7, v14

    .line 301
    invoke-interface/range {v5 .. v13}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 305
    sget-object v5, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v6, "error_render"

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    :cond_2
    move-object v7, v4

    const-string v8, "2.0"

    const-string v12, "F_ULTRON_DX_10004"

    const-string v13, "\u6a21\u677f\u964d\u7ea7"

    move-object/from16 v9, p0

    move-object v10, v14

    move-object v11, v15

    invoke-interface/range {v5 .. v13}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 309
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logErrorUltronTemplateDowngrade"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtil"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static logErrorUltronTemplateDownload(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/DynamicTemplate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 192
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_1

    .line 194
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    .line 195
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 196
    iget-object v4, v1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version"

    .line 197
    iget-object v5, v1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    iget-object v1, v1, Lcom/taobao/android/ultron/common/model/DynamicTemplate;->url:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 203
    :cond_1
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, "error_render"

    const/4 v4, 0x0

    const-string v5, "F_ULTRON_DX_10001"

    const-string v6, "\u6a21\u677f\u4e0b\u8f7d\u5931\u8d25"

    sget-object v7, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 206
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMsg(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v8

    move-object v1, p0

    .line 203
    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 208
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "logErrorUltronTemplateDownload"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "UMLLUtil"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static logErrorUltronTemplateRender(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "url"

    const-string v2, "version"

    const-string v3, "name"

    const-string v4, ""

    if-nez p1, :cond_0

    move-object v14, v4

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    .line 221
    :goto_0
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 222
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15, v6}, Ljava/util/HashMap;-><init>(I)V

    if-eqz v0, :cond_1

    .line 224
    iget-object v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-wide v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {v15, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-wide v6, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v2, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    sget-object v1, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v8, "error_render"

    const/4 v9, 0x0

    const-string v10, "F_ULTRON_DX_10002"

    const-string v11, "\u6a21\u677f\u6e32\u67d3\u5931\u8d25"

    sget-object v12, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 235
    invoke-static {v5}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v13

    move-object v5, v1

    move-object/from16 v6, p0

    move-object v7, v14

    .line 232
    invoke-interface/range {v5 .. v13}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 236
    sget-object v5, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v6, "error_render"

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    :cond_2
    move-object v7, v4

    const-string v8, "2.0"

    const-string v12, "F_ULTRON_DX_10002"

    const-string v13, "\u6a21\u677f\u6e32\u67d3\u5931\u8d25"

    move-object/from16 v9, p0

    move-object v10, v14

    move-object v11, v15

    invoke-interface/range {v5 .. v13}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 240
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "logErrorUltronTemplateRender"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "UMLLUtil"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .line 456
    :try_start_0
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 457
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v2, ""

    const-string v3, "exception"

    const/4 v4, 0x0

    const-string v5, "F_ULTRON_ENGINE_EXCEPTION_10020"

    sget-object v7, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    .line 462
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v1, "exception"

    const-string v3, "1.0"

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, "F_ULTRON_ENGINE_EXCEPTION_10020"

    move-object v2, p1

    move-object v4, p0

    move-object v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 466
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "commitException"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "UMLLUtil"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static logInfoUltronPageRefresh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 84
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, "error_render"

    const/4 v4, 0x0

    sget-object v5, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 87
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "logInfoUltronPageRefresh"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "UMLLUtil"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logInfoUltronPostEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 11

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 100
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "eventId"

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "params"

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getEventParams()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v4, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    invoke-virtual {p0}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object p0

    invoke-interface {p0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getBizName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, "error_event"

    const/4 v8, 0x0

    sget-object v9, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 106
    invoke-static {v1}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v10

    .line 104
    invoke-interface/range {v4 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "logInfoUltronPostEvent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "UMLLUtil"

    invoke-static {p0, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logInfoUltronTemplateDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 120
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, "error_render"

    const/4 v4, 0x0

    sget-object v5, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 123
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "logInfoUltronTemplateDownload"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "UMLLUtil"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logInfoUltronTemplateRender(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)V
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 136
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p2, :cond_1

    const-string v0, "name"

    .line 138
    iget-object v1, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    .line 139
    iget-wide v3, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    .line 140
    iget-object p2, p2, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->templateUrl:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const-string v3, "error_render"

    const/4 v4, 0x0

    sget-object v5, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_DIM_MAP:Ljava/util/Map;

    .line 143
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v6

    move-object v1, p0

    .line 142
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 145
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "logInfoUltronTemplateRender"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "UMLLUtil"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logUIEventAliUmbrellaUIEventExposure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 158
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    sget-object v8, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_TAG_MAP:Ljava/util/Map;

    const/4 v9, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logUIAction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 161
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "logUIEventAliUmbrellaUIEventExposure"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "UMLLUtil"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static logUIEventAliUmbrellaUIEventTouch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    :cond_0
    move-object v2, p1

    .line 174
    sget-object v0, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->sUmbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    sget-object v8, Lcom/taobao/android/ultron/utils/UMLLUtils;->CONTAINER_TAG_MAP:Ljava/util/Map;

    const-string p1, "data"

    .line 176
    invoke-static {p1, p2}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v9

    move-object v1, p0

    .line 174
    invoke-interface/range {v0 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logUIAction(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x2

    .line 178
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "logUIEventAliUmbrellaUIEventTouch"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "UMLLUtil"

    invoke-static {p0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
