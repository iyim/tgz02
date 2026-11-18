.class public Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;
.super Lcom/alibaba/ailabs/geniesdk/client/AbstractClientCallBack;
.source "PreResultScreenMode.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;


# static fields
.field public static final CANCEL_TIMING_SHUTDOWN:Ljava/lang/String; = "cancelTimingShutdown"

.field private static final DURATION_WAKE_LOCK_TIMEOUT_SESSION:I = 0xafc8

.field public static final FEEDBACK_APP_JUMP:I = 0xb

.field public static final FEEDBACK_CHAT:I = 0x5

.field public static final FEEDBACK_NO_HEAR:I = 0x9

.field public static final FEEDBACK_NO_SUPPORT:I = 0x7

.field public static final FEEDBACK_OPR_ERROR:I = 0x3

.field public static final FEEDBACK_OPR_NORESPONSE:I = 0x4

.field public static final FEEDBACK_OPR_SUCCESS:I = 0x2

.field public static final FEEDBACK_OTHER:I = 0xa

.field public static final FEEDBACK_SEARCH_NORESULT:I = 0x1

.field public static final FEEDBACK_SEARCH_RESULT:I = 0x0

.field public static final FEEDBACK_UNKNOWN:I = 0x8

.field public static final FEEDBACK_WEATHER:I = 0x6

.field private static final FLAG_TIMING_SHUTDOWN:I = 0x0

.field public static final KEY_STANDBY_TIME:Ljava/lang/String; = "key_standby_time"

.field private static final MESSAGE_WAKE_LOCK_TIMEOUT:I = 0x1

.field public static final STAND_BY_CANCEL:Ljava/lang/String; = "com.ailabs.genie.ACTION_STANDBY_CANCEL"

.field public static final STAND_BY_SET:Ljava/lang/String; = "com.ailabs.genie.ACTION_STANDBY_SET"

.field private static final TAG:Ljava/lang/String; = "PreResultScreenMode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDomain:Ljava/lang/String;

.field private mFeedBackType:I

.field private mMainHandler:Landroid/os/Handler;

.field private mProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchId:Ljava/lang/String;

.field private mTimingShutdownTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/client/AbstractClientCallBack;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mProperties:Ljava/util/Map;

    .line 94
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mMainHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode$2;-><init>(Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mTimingShutdownTask:Ljava/lang/Runnable;

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private appJumpStatistics(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;)V
    .locals 4

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "voice_jump"

    const-string v2, "from"

    .line 450
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_0

    .line 452
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->parseJumpUri(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 454
    iget-object p1, p2, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 455
    iget-object p1, p2, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object p1, p2, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p1, v3

    .line 458
    :goto_0
    iget-object v2, p2, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 459
    iget-object p1, p2, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->parseJumpUri(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v3

    :cond_3
    :goto_1
    const/4 p2, 0x0

    const-string v2, "click_from"

    .line 462
    invoke-static {v2, p2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 464
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;

    invoke-direct {p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;-><init>()V

    .line 466
    iput-object v1, p2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->source:Ljava/lang/String;

    .line 467
    iput-object p1, p2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->destination:Ljava/lang/String;

    .line 468
    iput-object v3, p2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->payload:Ljava/lang/String;

    .line 469
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->informJump(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;)I

    return-void
.end method

.method private isNeedGoHome(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.yunos.tv.alitvasr"

    const-string v1, "com.alibaba.ailabs.genie.musicplayer"

    const-string v2, "com.android.bluetooth"

    const-string v3, "com.youkuchild.android"

    const-string v4, "com.youku.iot"

    .line 491
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 497
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 498
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private onAppsJump(Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getExtraData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;

    .line 415
    iget-object v2, v2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->appDetailInfo:Ljava/util/List;

    .line 417
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isTestEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 423
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;

    .line 424
    invoke-virtual {v8}, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;

    .line 425
    iget-object v9, v0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->getProperties()Ljava/util/Map;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->isOpenFarMic()Z

    move-result v13

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getTraceId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getAsrLogId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getCommandId()Ljava/lang/String;

    move-result-object v17

    move-object v11, v8

    move/from16 v12, p2

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 425
    invoke-static/range {v9 .. v16}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->openAppBySessionID(Landroid/content/Context;Ljava/util/Map;Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 427
    iget v7, v4, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->jumpType:I

    if-nez v7, :cond_1

    const/4 v7, 0x0

    .line 428
    invoke-direct {v0, v7, v4}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->appJumpStatistics(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;)V

    :cond_1
    const/4 v7, 0x1

    :cond_2
    if-eqz v6, :cond_3

    .line 434
    invoke-virtual {v8}, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    iget v8, v8, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->jumpType:I

    move/from16 v9, p2

    invoke-virtual {v3, v9, v4, v8, v7}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->executeAutoTestAppCmd(ILjava/lang/String;IZ)V

    goto :goto_1

    :cond_3
    move/from16 v9, p2

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 439
    iget-object v2, v0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->system_not_understand:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1, v5}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setOpenFarMic(Z)V

    .line 441
    invoke-virtual {v1, v5}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setNeedTts(Z)V

    :cond_5
    move v5, v7

    :cond_6
    return v5
.end method

.method private onCommand(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 7

    .line 175
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object p4, p3

    goto :goto_0

    :cond_0
    const-string v0, "/"

    .line 179
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setHasCommand(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    move-object v5, p4

    .line 189
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCommand: returnCode = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/protocol/ReturnCode;->description(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",commandDomain = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",command = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "PreResultScreenMode"

    invoke-static {v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    .line 195
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->onInnerCommand(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    .line 197
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->setFeedBackType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return v0
.end method

.method private onDirectJump(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;)Z
    .locals 6

    .line 381
    iget-object p2, p2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->toUrls:Ljava/util/List;

    .line 382
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isTestEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 387
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 388
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 390
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v2}, Lcom/alibaba/ailabs/genie/assistant/rom/RomAliAppLauncher;->openURI(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    .line 391
    invoke-direct {p0, v4, v5}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->appJumpStatistics(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    .line 398
    invoke-virtual {v0, p1, v4, v2, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->executeAutoTestAppCmd(ILjava/lang/String;IZ)V

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v5

    .line 395
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 398
    invoke-virtual {v0, p1, v4, v2, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->executeAutoTestAppCmd(ILjava/lang/String;IZ)V

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v0, p1, v4, v2, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->executeAutoTestAppCmd(ILjava/lang/String;IZ)V

    :cond_2
    throw p2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_3
    return v1
.end method

.method private onErrorCheck(Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private onInnerCommand(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInnerCommand . commandDomain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", command = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", commandParams = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PreResultScreenMode"

    invoke-static {v6, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "AliGenie.Alarm"

    .line 235
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "."

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    .line 236
    new-instance v11, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;

    invoke-direct {v11}, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;-><init>()V

    const-string v5, "genie://com.alibaba.ailabs.basedomain"

    .line 237
    iput-object v5, v11, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    .line 238
    iput v8, v11, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->jumpType:I

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->pageType:Ljava/lang/String;

    .line 240
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v11, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->renderData:Ljava/lang/String;

    .line 241
    iget-object v9, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->getProperties()Ljava/util/Map;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->isOpenFarMic()Z

    move-result v13

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getTraceId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getAsrLogId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getCommandId()Ljava/lang/String;

    move-result-object v16

    .line 241
    invoke-static/range {v9 .. v16}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->openAppBySessionID(Landroid/content/Context;Ljava/util/Map;Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v5, "BluetoothPairing"

    .line 244
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    .line 245
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->setDiscoverableTimeout()V

    goto/16 :goto_1

    :cond_1
    const-string v5, "DisConnectBluetooth"

    .line 246
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 247
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alibaba/ailabs/genie/assistant/bluetooth/BluetoothsController;->closeDiscoverableTimeoutEx(Z)V

    goto/16 :goto_1

    :cond_2
    const-string v5, "AdjustUpVolume"

    .line 248
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v10, "volumeStep"

    const-string v11, ""

    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    .line 252
    invoke-static {v4, v10}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 254
    :cond_3
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v11, v3, v9

    const-string v4, "ROM_INCREASE_VOLUMNE"

    invoke-static {v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 256
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->system_not_understand:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v5, "AdjustDownVolume"

    .line 258
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    .line 262
    invoke-static {v4, v10}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 264
    :cond_5
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v11, v3, v9

    const-string v4, "ROM_DECREASE_VOLUMNE"

    invoke-static {v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 266
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->system_not_understand:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    const-string v5, "Mute"

    .line 268
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v10, 0x67

    if-eqz v5, :cond_8

    .line 270
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "ROM_OPEN_MODEL_MUTE"

    invoke-static {v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 272
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->system_not_understand:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    .line 274
    :cond_7
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    .line 275
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getSpeakerStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;

    move-result-object v2

    .line 274
    invoke-virtual {v0, v10, v2, v8}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_1

    :cond_8
    const-string v5, "CancelMute"

    .line 276
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 278
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "ROM_CLOSE_MODEL_MUTE"

    invoke-static {v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 280
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->system_not_understand:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    .line 282
    :cond_9
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object v0

    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    .line 283
    invoke-static {v2}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getSpeakerStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$SpeakerStatusData;

    move-result-object v2

    .line 282
    invoke-virtual {v0, v10, v2, v8}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "Volume"

    .line 284
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-eqz v4, :cond_b

    const-string v2, "volumeValue"

    .line 287
    invoke-static {v4, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 289
    :cond_b
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v11, v3, v9

    const-string v4, "ROM_SET_VOLUMNE"

    invoke-static {v2, v4, v3}, Lcom/alibaba/ailabs/genie/assistant/rom/RomControl;->enterControl(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getWrittenText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 291
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/agui/adapter/R$string;->system_not_understand:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setWrittenText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v5, "AliGenie.Upgrade"

    .line 293
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   commandDomain="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.aliyun.cloudapp.FOTA_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v8

    :cond_d
    const-string v5, "SetMode"

    .line 299
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 300
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->setMode(Landroid/content/Context;Lorg/json/JSONObject;)V

    return v8

    :cond_e
    const-string v5, "Exit"

    .line 302
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 304
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getExtraData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;

    if-eqz v0, :cond_f

    .line 305
    iget-object v2, v0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->appDetailInfo:Ljava/util/List;

    if-eqz v2, :cond_f

    iget-object v0, v0, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->appDetailInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    const-string v0, "\u6b64\u65f6\u6709\u76f4\u8df3\u903b\u8f91\uff0c\u4e0d\u5904\u7406\u8fd4\u56de\u684c\u9762\u7684\u903b\u8f91"

    .line 306
    invoke-static {v6, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    goto :goto_0

    :cond_f
    const-string v0, "application"

    .line 308
    invoke-static {v4, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->isNeedGoHome(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 310
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    const-string v2, "home"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10
    :goto_0
    return v8

    :cond_11
    const-string v5, "LightScreen"

    .line 315
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 316
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 317
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_12

    .line 318
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    const-string v2, "cancelsleep"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    :cond_12
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    .line 321
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->getScreenBrightness(Landroid/content/Context;)I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1a

    const/16 v0, 0x19

    .line 325
    iget-object v2, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->saveScreenBrightness(ILandroid/content/Context;)V

    goto/16 :goto_1

    :cond_13
    const-string v5, "ShutDown"

    .line 327
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v10, "time"

    if-eqz v5, :cond_15

    if-eqz v4, :cond_14

    .line 330
    invoke-static {v4, v10}, Lcom/alibaba/ailabs/genie/assistant/Utils/JSONUtils;->getJSONInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v9

    :cond_14
    int-to-long v2, v9

    .line 332
    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->setTimingShutdown(J)V

    return v8

    :cond_15
    const-string v5, "Standby"

    .line 334
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz v4, :cond_1a

    :try_start_0
    const-string v0, "standby"

    .line 337
    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 338
    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_16

    int-to-long v2, v2

    .line 340
    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->setTimingShutdown(J)V

    goto/16 :goto_1

    .line 342
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->cancelTimingShutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_17
    const-string v5, "GestureControl"

    .line 348
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v4, :cond_1a

    :try_start_1
    const-string v0, "operate"

    .line 351
    invoke-virtual {v4, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 352
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 353
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableGestureMode(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_18
    const-string v2, "off"

    .line 354
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 355
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/alibaba/ailabs/genie/assistant/Utils/ChildModeApi;->enableGestureMode(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_19
    const-string v5, "AliGenie.Notify"

    .line 361
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " MessageCenterService "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v12, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;

    invoke-direct {v12}, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;-><init>()V

    const-string v5, "genie://com.alibaba.ailabs.genie.message/notify"

    .line 364
    iput-object v5, v12, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    .line 365
    iput v8, v12, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->jumpType:I

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->pageType:Ljava/lang/String;

    .line 367
    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->renderData:Ljava/lang/String;

    .line 368
    iget-object v10, v1, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->getProperties()Ljava/util/Map;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->isOpenFarMic()Z

    move-result v14

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getTraceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getAsrLogId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getCommandId()Ljava/lang/String;

    move-result-object v17

    .line 368
    invoke-static/range {v10 .. v17}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->openAppBySessionID(Landroid/content/Context;Ljava/util/Map;Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1a
    :goto_1
    return v9
.end method

.method private setTimingShutdown(J)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTimingShutdown second:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreResultScreenMode"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailabs.genie.ACTION_STANDBY_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_standby_time"

    .line 212
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 213
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public cancelTimingShutdown()V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimingShutdown second: pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreResultScreenMode"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ailabs.genie.ACTION_STANDBY_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mProperties:Ljava/util/Map;

    return-object v0
.end method

.method public onNlpResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNlpResult commandDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    commandName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   commandParams="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreResultScreenMode"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;-><init>()V

    const/4 p2, 0x0

    .line 485
    iput-boolean p2, p1, Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;->isHandled:Z

    return-object p1
.end method

.method public preOnNLPResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preOnNLPResult,commandDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";commandParams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreResultScreenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cancelTimingShutdown"

    .line 131
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->cancelTimingShutdown()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mDomain:Ljava/lang/String;

    .line 143
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->onCommand(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result p3

    .line 146
    invoke-virtual {p2}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getExtraData()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;

    const/16 p5, 0xb

    const/4 v0, 0x4

    if-nez p3, :cond_2

    .line 149
    invoke-direct {p0, p1, p4}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->onDirectJump(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {p0, p5}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->setFeedBackType(I)V

    const-string p3, "onDirectJump: has processed"

    .line 152
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x4

    :cond_2
    if-nez p3, :cond_3

    .line 157
    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->onAppsJump(Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 158
    invoke-virtual {p0, p5}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->setFeedBackType(I)V

    const-string p1, "onAppsJump: has processed"

    .line 160
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x4

    :cond_3
    if-nez p3, :cond_4

    .line 163
    invoke-direct {p0, p4, p2}, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->onErrorCheck(Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    const-string p1, "onErrorCheck: has processed"

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p3
.end method

.method public setFeedBackType(I)V
    .locals 1

    .line 375
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mFeedBackType:I

    if-gez v0, :cond_0

    .line 376
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/controller/PreResultScreenMode;->mFeedBackType:I

    :cond_0
    return-void
.end method
