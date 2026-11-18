.class public Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;
.super Ljava/lang/Object;
.source "MtopJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/remotebusiness/js/MtopJSBridge$MtopJSListener;,
        Lcom/taobao/tao/remotebusiness/js/MtopJSBridge$MtopJSParam;
    }
.end annotation


# static fields
.field private static final AUTO_LOGIN_ONLY:Ljava/lang/String; = "AutoLoginOnly"

.field private static final AUTO_LOGIN_WITH_MANUAL:Ljava/lang/String; = "AutoLoginAndManualLogin"

.field private static final DATA_TYPE_JSON:Ljava/lang/String; = "json"

.field private static final DATA_TYPE_ORIGINAL_JSON:Ljava/lang/String; = "originaljson"

.field static final TAG:Ljava/lang/String; = "mtopsdk.MtopJSBridge"

.field static volatile scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static buildMtopBusiness(Ljava/util/Map;)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/tao/remotebusiness/MtopBusiness;"
        }
    .end annotation

    const-string v0, "x-ua"

    const-string v1, ""

    const/4 v2, 0x0

    .line 214
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v4, "api"

    .line 216
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v"

    const-string v6, "*"

    .line 217
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "{}"

    const-string v7, "data"

    .line 221
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 223
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 224
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 225
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 226
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 227
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 228
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    instance-of v11, v10, Lorg/json/JSONArray;

    if-nez v11, :cond_0

    instance-of v11, v10, Lorg/json/JSONObject;

    if-nez v11, :cond_0

    .line 231
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    const-string v8, "needLogin"

    const/4 v9, 0x0

    .line 237
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v10, "sessionOption"

    const-string v11, "AutoLoginAndManualLogin"

    .line 238
    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 240
    new-instance v11, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v11}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 241
    invoke-virtual {v11, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v11, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v11, v8}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 244
    invoke-virtual {v11, v6}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 245
    iput-object v7, v11, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 248
    invoke-static {v11}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "AutoLoginOnly"

    .line 249
    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->showLoginUI(Z)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    const-string v5, "method"

    const-string v7, "GET"

    .line 251
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    sget-object v7, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 253
    sget-object v5, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v4, v5}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_4
    const-string v5, "mpHost"

    .line 256
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-static {v5}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 258
    invoke-virtual {v4, v5}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setCustomDomain(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_5
    const-string v5, "secType"

    .line 261
    invoke-virtual {v3, v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_6

    .line 263
    invoke-virtual {v4}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_6
    const-string v5, "dataType"

    .line 267
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "json"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "originaljson"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 269
    :cond_7
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/mtop/domain/JsonTypeEnum;->valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/JsonTypeEnum;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_8
    const-string v1, "ext_headers"

    .line 274
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 276
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 277
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 278
    :cond_9
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 279
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 280
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 281
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    .line 284
    :cond_a
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 290
    :cond_b
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    if-nez v2, :cond_c

    .line 293
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :cond_c
    const-string v5, "utf-8"

    .line 295
    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_d
    invoke-virtual {v4, v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->headers(Ljava/util/Map;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    const-string v0, "ext_querys"

    .line 300
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 302
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    :cond_e
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 306
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_4

    .line 309
    :cond_f
    invoke-virtual {v4, v2, v5}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    goto :goto_4

    :cond_10
    const-string v0, "ttid"

    .line 314
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 316
    invoke-virtual {v4, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->ttid(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_11
    const-string v0, "pageUrl"

    .line 320
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 322
    invoke-virtual {v4, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setPageUrl(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 325
    :cond_12
    invoke-virtual {v4, v6}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->setReqSource(I)Lcom/taobao/tao/remotebusiness/MtopBusiness;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v4, v2

    .line 328
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse mtop jsParamMap error, jsParamMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mtopsdk.MtopJSBridge"

    invoke-static {v1, p0, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-object v4
.end method

.method static getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 340
    sget-object v0, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 341
    const-class v0, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;

    monitor-enter v0

    .line 342
    :try_start_0
    sget-object v1, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 343
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 345
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 347
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static sendMtopRequest(Ljava/util/Map;Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;)V
    .locals 4
    .param p1    # Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;",
            ")V"
        }
    .end annotation

    const-string v0, "mtopsdk.MtopJSBridge"

    if-nez p1, :cond_0

    const-string p0, "illegal param listener."

    .line 163
    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    .line 167
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 174
    :cond_1
    invoke-static {p0}, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;->buildMtopBusiness(Ljava/util/Map;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v3

    if-nez v3, :cond_2

    .line 176
    new-instance p0, Lmtopsdk/mtop/domain/MtopResponse;

    const-string v0, "ANDROID_SYS_PARSE_JSPARAM_ERROR"

    const-string v3, "MTOP JSBridge \u53c2\u6570\u89e3\u6790\u9519\u8bef"

    invoke-direct {p0, v0, v3}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-interface {p1, v2, p0, v1}, Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;->onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 v1, 0x4e20

    :try_start_0
    const-string v2, "timeout"

    .line 184
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0xea60

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    if-le p0, v0, :cond_4

    const v1, 0xea60

    goto :goto_0

    :cond_4
    move v1, p0

    goto :goto_0

    :catch_0
    const-string p0, "parse timeout (jsParam field) error."

    .line 191
    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    new-instance p0, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge$MtopJSListener;

    invoke-direct {p0, v3, p1}, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge$MtopJSListener;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;)V

    .line 195
    invoke-virtual {v3, p0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->registerListener(Lcom/taobao/tao/remotebusiness/IRemoteListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 196
    invoke-virtual {v3}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    .line 198
    invoke-static {}, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge$1;

    invoke-direct {v0, p0}, Lcom/taobao/tao/remotebusiness/js/MtopJSBridge$1;-><init>(Lcom/taobao/tao/remotebusiness/js/MtopJSBridge$MtopJSListener;)V

    int-to-long v1, v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_5
    :goto_1
    const-string p0, "illegal param jsParamMap."

    .line 168
    invoke-static {v0, p0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance p0, Lmtopsdk/mtop/domain/MtopResponse;

    const-string v0, "ANDROID_SYS_ILLEGAL_JSPARAM_ERROR"

    const-string v3, "MTOP JSBridge \u53c2\u6570\u9519\u8bef"

    invoke-direct {p0, v0, v3}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-interface {p1, v2, p0, v1}, Lcom/taobao/tao/remotebusiness/IRemoteBaseListener;->onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    return-void
.end method
