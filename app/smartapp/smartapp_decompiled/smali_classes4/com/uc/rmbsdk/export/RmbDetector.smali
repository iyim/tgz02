.class public Lcom/uc/rmbsdk/export/RmbDetector;
.super Ljava/lang/Object;
.source "RmbDetector.java"

# interfaces
.implements Lcom/uc/rmbsdk/export/IRmbMessageListener;
.implements Lcom/uc/rmbsdk/export/IUPaasStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;,
        Lcom/uc/rmbsdk/export/RmbDetector$IDetectResult;,
        Lcom/uc/rmbsdk/export/RmbDetector$Holder;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final BIZ_ID:Ljava/lang/String; = "biz_id"

.field private static final BIZ_STATUS:Ljava/lang/String; = "biz_status"

.field private static final CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field private static final CNT_0:Ljava/lang/String; = "cnt_0"

.field private static final CNT_1:Ljava/lang/String; = "cnt_1"

.field private static final CNT_2:Ljava/lang/String; = "cnt_2"

.field private static final CNT_3:Ljava/lang/String; = "cnt_3"

.field private static final COST_TIME:Ljava/lang/String; = "cost_time"

.field private static final DEFAULT_TIMEOUT:J = 0x1388L

.field private static final DS:Ljava/lang/String; = "ds"

.field private static final DS_TYPE:Ljava/lang/String; = "ds_type"

.field private static final IS_ORDER:Ljava/lang/String; = "is_order"

.field private static final NET_STATE:Ljava/lang/String; = "net_state"

.field private static final PREV_APP_STATE:Ljava/lang/String; = "prev_app_state"

.field private static final PREV_NET_STATE:Ljava/lang/String; = "prev_net_state"

.field private static final PREV_UPAAS_FG_STATE:Ljava/lang/String; = "prev_upaas_fg_state"

.field private static final PREV_UPAAS_NET_STATE:Ljava/lang/String; = "prev_upaas_net_state"

.field private static final PREV_US:Ljava/lang/String; = "prev_us"

.field private static final PUSH_DISORDER:Ljava/lang/String; = "push_disorder"

.field private static final PUSH_ID:Ljava/lang/String; = "push_id"

.field private static final PUSH_ORDER:Ljava/lang/String; = "push_order"

.field private static final PUSH_SEQ:Ljava/lang/String; = "push_seq"

.field private static final RECEIPT_DISORDER:Ljava/lang/String; = "receipt_disorder"

.field private static final RECEIPT_ORDER:Ljava/lang/String; = "receipt_order"

.field private static final RECV:Ljava/lang/String; = "recv"

.field private static final SEND_COUNT:Ljava/lang/String; = "send_count"

.field private static final SEQ:Ljava/lang/String; = "seq"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "RMB-SDK-DETECT"

.field private static final TEST_BIZ_ID:Ljava/lang/String; = "rmb_test"

.field private static final TEST_CHANNEL_ID:Ljava/lang/String; = "rmb_test"

.field private static final TEST_DISORDER_CHANNEL_ID:Ljava/lang/String; = "rmb_test_disorder"

.field private static final TRACE_ID:Ljava/lang/String; = "trace_id"

.field private static final UPAAS_FG_STATE:Ljava/lang/String; = "upaas_fg_state"

.field private static final UPAAS_NET_STATE:Ljava/lang/String; = "upaas_net_state"

.field private static final US:Ljava/lang/String; = "us"

.field private static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private mDetectInited:Z

.field private final mDetectResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDetectSyncInited:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectInited:Z

    .line 76
    iput-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectSyncInited:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectResult:Ljava/util/Map;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RMB-SDK-DETECT"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uc/rmbsdk/export/RmbManager;->registerUpaasStateListener(Lcom/uc/rmbsdk/export/IUPaasStateListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/rmbsdk/export/RmbDetector$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/uc/rmbsdk/export/RmbDetector;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/uc/rmbsdk/export/RmbDetector;->getSendCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/uc/rmbsdk/export/RmbDetector;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbDetector;->getAppState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/uc/rmbsdk/export/RmbDetector;->readTraceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/uc/rmbsdk/export/RmbDetector;)Ljava/util/Map;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectResult:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/uc/rmbsdk/export/RmbDetector;->readPushSeq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/uc/rmbsdk/export/RmbDetector;->getDetectServerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3, p4}, Lcom/uc/rmbsdk/export/RmbDetector;->buildPushReceiptBody(Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lcom/uc/rmbsdk/export/RmbDetector;->buildPushBody(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/uc/rmbsdk/export/RmbDetector;->isPostSuccess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static buildPushBody(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 314
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "trace_id"

    .line 315
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "app_id"

    .line 316
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "channel_id"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "rmb_test"

    if-eqz p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v2, "rmb_test_disorder"

    .line 317
    :goto_0
    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ds_type"

    .line 318
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ds"

    .line 319
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-static {v0}, Lcom/uc/rmbsdk/export/RmbDetector;->wrapPublicParam(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_2

    const-string p0, "biz_id"

    .line 324
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "user_id"

    .line 325
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "biz_status"

    .line 326
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p1

    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v1, v2}, Lcom/uc/rmbsdk/export/RmbManager;->isOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_1

    :cond_1
    const-string p1, "0"

    :goto_1
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 330
    sget-boolean p1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "RMB-SDK-DETECT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send detect push body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object p0

    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static buildPushReceiptBody(Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 341
    :try_start_0
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->getAppEnvironment()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 346
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string v0, "recv"

    .line 348
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "trace_id"

    .line 349
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "push_id"

    .line 350
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ds_type"

    .line 351
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uc/rmbsdk/export/RmbManager;->getDSType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ds"

    .line 352
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "cost_time"

    const-string p2, "cnt_3"

    const-string p3, "cnt_2"

    const-string v0, "cnt_1"

    const-string v2, "cnt_0"

    const-string v3, "prev_upaas_net_state"

    const-string v4, "prev_upaas_fg_state"

    const-string v5, "prev_us"

    const-string v6, "prev_net_state"

    const-string v7, "prev_app_state"

    const/4 v8, 0x0

    if-eqz p0, :cond_1

    .line 354
    :try_start_1
    iget-object v9, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->appState:Ljava/lang/String;

    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    iget v7, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->netState:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 356
    iget v6, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->upaasState:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    iget v5, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->upaasFgState:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 358
    iget v4, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->upaasNetState:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    iget v3, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->disconnectCount:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    iget v2, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->connectCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 361
    iget v0, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->connectingCount:I

    invoke-virtual {v1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
    iget p3, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->unknownCount:I

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-wide v2, p0, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->startTime:J

    sub-long/2addr p2, v2

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const-string p0, "-1"

    .line 365
    invoke-virtual {v1, v7, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, -0x1

    .line 366
    invoke-virtual {v1, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v1, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 368
    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 369
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 370
    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    invoke-virtual {v1, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    invoke-virtual {v1, p3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {v1, p2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    const-string p0, "us"

    .line 376
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState()I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "net_state"

    .line 377
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->isNetworkConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-virtual {v1, p0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "upaas_fg_state"

    .line 378
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p1

    const-string p2, "fg"

    invoke-virtual {p1, p2}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "upaas_net_state"

    .line 379
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object p1

    const-string p2, "net"

    invoke-virtual {p1, p2}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 380
    invoke-static {v1}, Lcom/uc/rmbsdk/export/RmbDetector;->wrapPublicParam(Lorg/json/JSONObject;)V

    if-eqz p4, :cond_3

    .line 382
    invoke-virtual {p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 387
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 388
    sget-boolean p1, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "RMB-SDK-DETECT"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "send detect push receipt body: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-object p0

    :catch_0
    move-exception p0

    .line 391
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private detect(ZZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/uc/rmbsdk/export/RmbDetector$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/uc/rmbsdk/export/RmbDetector$2;-><init>(Lcom/uc/rmbsdk/export/RmbDetector;ZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static getAppState()Ljava/lang/String;
    .locals 2

    .line 305
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->getAppEnvironment()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app_state"

    .line 307
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private static getDetectServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 244
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbManager;->getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/rmbsdk/export/IRmbInterface;->getDetectServer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    sget-boolean v0, Lcom/uc/rmbsdk/export/RmbManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send detect url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RMB-SDK-DETECT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method public static getInstance()Lcom/uc/rmbsdk/export/RmbDetector;
    .locals 1

    .line 92
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbDetector$Holder;->access$100()Lcom/uc/rmbsdk/export/RmbDetector;

    move-result-object v0

    return-object v0
.end method

.method private static getSendCount(Ljava/lang/String;)I
    .locals 1

    .line 295
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "send_count"

    .line 296
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method private static isPostSuccess(Ljava/lang/String;)Z
    .locals 2

    .line 280
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 284
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "status"

    .line 285
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 287
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method

.method private static readPushSeq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 271
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "push_seq"

    .line 272
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 274
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private static readTraceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 258
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "trace_id"

    .line 259
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method private static wrapPublicParam(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "uc_param_str=vesv"

    .line 398
    invoke-static {v0}, Lcom/uc/rmbsdk/export/SyncRequestHelper;->publicParam2Map(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 405
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method


# virtual methods
.method public detect(ZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbDetector;->initDetect()V

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, v0, p2}, Lcom/uc/rmbsdk/export/RmbDetector;->detect(ZZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V

    return-void
.end method

.method public detectSync(ZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/uc/rmbsdk/export/RmbDetector;->initDetectSync()V

    const/4 v0, 0x1

    .line 204
    invoke-direct {p0, p1, v0, p2}, Lcom/uc/rmbsdk/export/RmbDetector;->detect(ZZLcom/uc/rmbsdk/export/RmbDetector$IDetectResult;)V

    return-void
.end method

.method public declared-synchronized initDetect()V
    .locals 2

    monitor-enter p0

    .line 164
    :try_start_0
    iget-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    monitor-exit p0

    return-void

    .line 168
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    const-string v1, "rmb_test_disorder"

    invoke-virtual {v0, v1, p0}, Lcom/uc/rmbsdk/export/RmbManager;->registerChannel(Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbMessageListener;)V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initDetectSync()V
    .locals 4

    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectSyncInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    const-string v1, "rmb_test"

    invoke-virtual {v0, v1, p0}, Lcom/uc/rmbsdk/export/RmbManager;->registerChannel(Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbMessageListener;)V

    .line 179
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    const-string v1, "rmb_test"

    const-string v2, "rmb_test"

    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager;->getInstance()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uc/rmbsdk/export/RmbManager;->getDS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/uc/rmbsdk/export/RmbManager;->online(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectSyncInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceivedData(Lcom/uc/rmbsdk/export/RmbReceivedData;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/uc/rmbsdk/export/RmbDetector$1;

    invoke-direct {v1, p0, p1}, Lcom/uc/rmbsdk/export/RmbDetector$1;-><init>(Lcom/uc/rmbsdk/export/RmbDetector;Lcom/uc/rmbsdk/export/RmbReceivedData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpaasStateChange(I)V
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectResult:Ljava/util/Map;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbDetector;->mDetectResult:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-nez p1, :cond_2

    .line 416
    iget v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->disconnectCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->disconnectCount:I

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 418
    iget v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->connectCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->connectCount:I

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 420
    iget v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->connectingCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->connectingCount:I

    goto :goto_0

    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 422
    iget v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->unknownCount:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/uc/rmbsdk/export/RmbDetector$TraceInfo;->unknownCount:I

    goto :goto_0

    .line 425
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
