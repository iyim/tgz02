.class public Lcom/alibaba/ailabs/geniesdk/database/GenieTable;
.super Ljava/lang/Object;
.source "GenieTable.java"


# static fields
.field public static final ALARM_BACKGROUND_STATUS:I = 0x3ef

.field public static final ALARM_DATA_SYNC:I = 0x3f0

.field public static final ALARM_FINISH_STATUS:I = 0x3ed

.field public static final ALARM_FOREGROUND_STATUS:I = 0x3ee

.field public static final ALARM_SATRT_STATUS:I = 0x3ec

.field private static final DATA:Ljava/lang/String; = "data"

.field private static final DESTINATION:Ljava/lang/String; = "destination"

.field private static final FEEDBACK:Ljava/lang/String; = "feedback"

.field private static final IGNORE_MUTE:Ljava/lang/String; = "ignoreMute"

.field private static final IS_OPEN_MIC:Ljava/lang/String; = "isOpenMic"

.field public static final IS_SHOW:Ljava/lang/String; = "isShow"

.field private static final METHOD:Ljava/lang/String; = "method"

.field private static final METHOD_ALARM_STATUS_SYNC:I = 0x7

.field private static final METHOD_STANBY:I = 0x1a

.field private static final METHOD_callStatus:I = 0x10

.field private static final METHOD_cancelMultiDialog:I = 0x13

.field private static final METHOD_exitSession:I = 0xb

.field private static final METHOD_getMediaPolicy:I = 0xe

.field private static final METHOD_getOrangeConfig:I = 0x16

.field private static final METHOD_getServerSessionId:I = 0x8

.field private static final METHOD_getWakeupType:I = 0xd

.field private static final METHOD_informJump:I = 0x17

.field private static final METHOD_isONLINE:I = 0xc

.field private static final METHOD_isShown:I = 0x2

.field private static final METHOD_playTTS:I = 0x4

.field private static final METHOD_playTTSEx:I = 0x1e

.field private static final METHOD_setGenieText:I = 0x3

.field private static final METHOD_setGenieTextEx:I = 0x9

.field private static final METHOD_showUi:I = 0x1

.field private static final METHOD_skillAttempt:I = 0xf

.field private static final METHOD_skillAttemptByButton:I = 0x12

.field private static final METHOD_stopTTS:I = 0x5

.field private static final METHOD_updateCorpusData:I = 0xa

.field private static final METHOD_updatePageWakeupWordType:I = 0x6

.field private static final METHOD_userHistoryReport:I = 0x14

.field private static final METHOD_wakeupLcMoudle:I = 0x15

.field private static final ORAL_APP_KEY:Ljava/lang/String; = "oralAppKey"

.field private static final PARAM:Ljava/lang/String; = "param"

.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final PKG:Ljava/lang/String; = "pkg"

.field private static final RET:Ljava/lang/String; = "ret"

.field private static final SECRET_KEY:Ljava/lang/String; = "secretKey"

.field private static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field private static final STATUS:Ljava/lang/String; = "status"

.field public static final TABLE_NAME:Ljava/lang/String; = "GenieApi"

.field public static final TAG:Ljava/lang/String; = "GenieTable"

.field private static final TTS:Ljava/lang/String; = "tts"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final WAKEUP_TYPE:Ljava/lang/String; = "wakeupType"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private alarmSatausSync(ILjava/lang/String;)V
    .locals 3

    const-string v0, "AliGenie.Alarm"

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string v0, "AliGenie.Data"

    const-string p1, "DataRequest"

    goto :goto_0

    :pswitch_1
    const-string p1, "AlarmEnteredBackground"

    goto :goto_0

    :pswitch_2
    const-string p1, "AlarmEnteredForeground"

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    const-string p1, "AlarmFinished"

    goto :goto_0

    :pswitch_4
    const-string p1, "AlarmStarted"

    .line 426
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    invoke-virtual {v2, v0, p1, p2, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onAppJump(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;Z)V
    .locals 6

    const-string v0, "spm-cnt"

    const-string v1, "pkg"

    .line 430
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 431
    iget-object v3, p1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->source:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 432
    iget-object v3, p1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->source:Ljava/lang/String;

    const-string v4, "from"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, ""

    .line 437
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->destination:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uri"

    .line 440
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 442
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->parseJumpUri(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 444
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 446
    iget-object v1, p1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->destination:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    iget-object v1, p1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->destination:Ljava/lang/String;

    const-string v4, "URI"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    :goto_0
    iput-object v3, p1, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->destination:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 454
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 455
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 456
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getTraceInterface()Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "click_from"

    invoke-interface {p1, v0, p2, v2}, Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public insert(Landroid/content/ContentValues;)V
    .locals 12

    const-string v0, "method"

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getNativeUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object v1

    const-string v2, ", textList = "

    const-string v3, ", type = "

    const/4 v4, 0x0

    const-string v5, "method = "

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "param"

    const-string v9, "type"

    const-string v10, "data"

    const-string v11, "GenieTable"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 384
    :pswitch_1
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 386
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user history report = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AliGenie.Data"

    const-string v2, "UserHistoryReport"

    .line 390
    invoke-virtual {v0, v1, v2, p1, v7}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    .line 377
    :pswitch_2
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 379
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->cancelMultiDialog()V

    goto/16 :goto_2

    .line 359
    :pswitch_3
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 360
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    .line 362
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 364
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 366
    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->skillAttemptByButton(ILjava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    .line 372
    :pswitch_4
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x271d

    .line 373
    invoke-interface {v1, v0, v4, p1, v6}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onNotify(ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 351
    :pswitch_5
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->skillAttempt(Ljava/lang/String;)I

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asrContent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 342
    :pswitch_6
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    .line 345
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->exitSession(I)V

    .line 347
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitSession = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 334
    :pswitch_7
    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getCorpusManager()Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 337
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/geniesdk/nlp/ICorpusTrainManager;->updateCorpus(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 268
    :pswitch_8
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 271
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-interface {v1, p1, v4}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->updateGenieTextByPageName(ILjava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 312
    :pswitch_9
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 314
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/geniesdk/database/GenieTable;->alarmSatausSync(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 317
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "wakeupType"

    .line 322
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg"

    .line 323
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {v1, v6, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->updatePageWakeupWord(I[I)V

    .line 330
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pkg = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "sessionId"

    .line 302
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop tts sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop tts appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->getAppNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->stopTts(I)V

    goto/16 :goto_2

    .line 283
    :pswitch_c
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 287
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 288
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    :goto_0
    if-ge v6, v8, :cond_4

    .line 290
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 293
    invoke-interface {v1, v7, p1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->updateGenieText(ILjava/util/List;)V

    .line 295
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :pswitch_d
    const-string v2, "isShow"

    .line 255
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 258
    invoke-interface {v1, v7}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->showUi(Z)V

    goto :goto_1

    .line 260
    :cond_6
    invoke-interface {v1, v7}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->hideUi(Z)V

    .line 262
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isShow = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ;appName = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->getAppNameByPid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {v11, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public query(Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;
    .locals 19

    const-string v1, "ret"

    const-string v0, "data"

    .line 106
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;

    invoke-direct {v2}, Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;-><init>()V

    .line 107
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 111
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "method"

    .line 112
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 113
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    const-string v10, ", ttsInfo= "

    const-string v11, "play curSessionId = "

    const-string v12, "feedback"

    const-string v13, "ignoreMute"

    const-string v14, "pkg"

    const-string v15, "wakeupType"

    const-string v4, "secretKey"

    const-string v5, "isOpenMic"

    const-string v9, "tts"

    move-object/from16 v16, v2

    const-string v2, "sessionId"

    move-object/from16 v17, v1

    const-string v1, "GenieTable"

    move-object/from16 v18, v10

    const/4 v10, 0x4

    if-eq v7, v10, :cond_7

    const/16 v10, 0x8

    if-eq v7, v10, :cond_6

    const/16 v10, 0x1a

    if-eq v7, v10, :cond_4

    const/16 v10, 0x1e

    if-eq v7, v10, :cond_3

    const/16 v2, 0x16

    if-eq v7, v2, :cond_2

    const/16 v2, 0x17

    if-eq v7, v2, :cond_1

    packed-switch v7, :pswitch_data_0

    :goto_0
    const/4 v5, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_3

    .line 189
    :pswitch_0
    :try_start_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getMediaPolicy()I

    move-result v4

    .line 193
    invoke-virtual {v2, v1, v4}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getMediaUiPolicy(II)I

    move-result v1

    .line 195
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 182
    :pswitch_1
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getWakeupType()I

    move-result v1

    .line 184
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isOnLine()Z

    move-result v4

    .line 174
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    .line 177
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server isOnLine ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v7, p0

    move-object/from16 v1, v17

    goto/16 :goto_8

    .line 203
    :cond_1
    :try_start_2
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;

    invoke-direct {v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;-><init>()V

    const-string v4, "source"

    .line 205
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->source:Ljava/lang/String;

    const-string v4, "destination"

    .line 206
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->destination:Ljava/lang/String;

    const-string v4, "payload"

    .line 207
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->payload:Ljava/lang/String;

    const-string v4, "type"

    const/4 v5, 0x0

    .line 209
    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    :try_start_3
    invoke-direct {v7, v2, v4}, Lcom/alibaba/ailabs/geniesdk/database/GenieTable;->onAppJump(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;Z)V

    .line 210
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->informJump(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;)I

    move-result v4

    .line 211
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "informJump info = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$JumpInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_5

    :cond_2
    move-object/from16 v7, p0

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 219
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getOrangeConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v7, p0

    .line 145
    new-instance v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;

    invoke-direct {v6}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;-><init>()V

    .line 147
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->sessionId:I

    .line 148
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->text:Ljava/lang/String;

    .line 149
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->isOpenMic:Z

    .line 150
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->secretKey:Ljava/lang/String;

    const-string v2, "oralAppKey"

    .line 151
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->oralAppKey:Ljava/lang/String;

    .line 152
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->wakeupType:I

    .line 153
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->pkg:Ljava/lang/String;

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v8, v13, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->ignoreMute:Z

    .line 155
    invoke-virtual {v8, v12, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->needFeedback:Z

    .line 157
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I

    move-result v2

    .line 158
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v10, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v6}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v7, p0

    .line 226
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 227
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getRomInterface()Lcom/alibaba/ailabs/geniesdk/rom/IRom;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 228
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getRomInterface()Lcom/alibaba/ailabs/geniesdk/rom/IRom;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/rom/IRom;->setStandby()V

    :cond_5
    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_6
    move-object/from16 v7, p0

    .line 166
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getServerSessionId()Ljava/lang/String;

    move-result-object v2

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server sessionId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_2
    move-object/from16 v1, v17

    const/4 v5, 0x0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_7
    move-object/from16 v7, p0

    move-object/from16 v10, v18

    .line 124
    :try_start_4
    new-instance v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;

    invoke-direct {v6}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;-><init>()V

    .line 126
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->sessionId:I

    .line 127
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->text:Ljava/lang/String;

    .line 128
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->isOpenMic:Z

    .line 129
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->secretKey:Ljava/lang/String;

    .line 130
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->wakeupType:I

    .line 131
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->pkg:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const/4 v5, 0x0

    .line 132
    :try_start_5
    invoke-virtual {v8, v13, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->ignoreMute:Z

    .line 133
    invoke-virtual {v8, v12, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v6, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->needFeedback:Z

    .line 136
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->playTts(Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;)I

    move-result v2

    .line 137
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore$TtsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_3
    move-object/from16 v1, v17

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    const/4 v5, 0x0

    :goto_4
    move-object/from16 v1, v17

    goto :goto_a

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v1, v17

    goto :goto_7

    :cond_8
    move-object/from16 v7, p0

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 118
    :try_start_6
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getNativeUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object v1

    .line 120
    invoke-interface {v1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->isUiShowing()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v1, v17

    const/4 v5, 0x1

    .line 237
    :goto_6
    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object/from16 v1, v17

    const/4 v5, 0x1

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v1, v17

    const/4 v4, 0x1

    goto :goto_8

    :catchall_6
    move-exception v0

    const/4 v5, 0x0

    move-object/from16 v7, p0

    goto :goto_a

    :catch_5
    move-exception v0

    const/4 v5, 0x0

    move-object/from16 v7, p0

    move-object/from16 v16, v2

    :goto_7
    const/4 v4, 0x0

    .line 235
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 237
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_9
    move-object/from16 v1, v16

    .line 239
    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/geniesdk/database/CacheCursor;->setExtras(Landroid/os/Bundle;)V

    return-object v1

    :catchall_7
    move-exception v0

    move v5, v4

    .line 237
    :goto_a
    invoke-virtual {v3, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
