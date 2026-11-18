.class public Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;
.super Ljava/lang/Object;
.source "NativeUIManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final FLAG_UI_FIRST_TEXT:I = 0x1

.field private static final FLAG_UI_NLP:I = 0x2

.field private static final FLAG_UI_NLP_END:I = 0x3

.field private static final FLAG_UI_START_RRECORD:I = 0x0

.field private static final MSG_CHECK_MAX:I = 0x3f3

.field private static final MSG_CHECK_MIN:I = 0x3ed

.field private static final MSG_MAX:I = 0x44c

.field private static final MSG_MIN:I = 0x3e9

.field private static final MSG_fullDuplexDialogRenew:I = 0x3f9

.field private static final MSG_hideMainDialog:I = 0x3f5

.field private static final MSG_onNLPResult:I = 0x3f1

.field private static final MSG_onNotify:I = 0x44d

.field private static final MSG_onRecordStart:I = 0x3ec

.field private static final MSG_onRecordStop:I = 0x3f3

.field private static final MSG_onStream:I = 0x3ed

.field private static final MSG_onVolume:I = 0x3ee

.field private static final MSG_showGestureAnimation:I = 0x3fa

.field private static final MSG_showMainDialog:I = 0x3f6

.field private static final MSG_updateGenieText:I = 0x3f7

.field private static final MSG_updateGenieTextEx:I = 0x3f8

.field private static final TAG:Ljava/lang/String; = "NativeUIManager"


# instance fields
.field public mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

.field private mMainHandler:Landroid/os/Handler;

.field private mNative:J

.field private mSessionId:I


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;)V
    .locals 2

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mSessionId:I

    .line 239
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    return-void
.end method

.method public static NotifyTypeDescription(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_4

    const/16 v0, 0x16

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_2

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x44d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "NOTIFY_MUTE_CHANGE"

    return-object p0

    :pswitch_1
    const-string p0, "NOTIFY_CALL_STATUS"

    return-object p0

    :pswitch_2
    const-string p0, "NOTIFY_SHUT_DOWN"

    return-object p0

    :pswitch_3
    const-string p0, "NOTIFY_UPDATE_ACCOUNT"

    return-object p0

    :pswitch_4
    const-string p0, "NOTIFY_IOT_BROADCAST"

    return-object p0

    :pswitch_5
    const-string p0, "NOTIFY_KILL_SELF"

    return-object p0

    :pswitch_6
    const-string p0, "NOTIFY_TTS_EXCEPTION"

    return-object p0

    :pswitch_7
    const-string p0, "NOTIFY_TTS_PLAY_TXT"

    return-object p0

    :pswitch_8
    const-string p0, "NOTIFY_TALK_STATUS"

    return-object p0

    :pswitch_9
    const-string p0, "NOTIFY_TTS_GROUP_STATUS"

    return-object p0

    :pswitch_a
    const-string p0, "NOTIFY_VOLUME_CHANGE"

    return-object p0

    :pswitch_b
    const-string p0, "NOTIFY_BLUETOOTH_STATUS"

    return-object p0

    :pswitch_c
    const-string p0, "NOTIFY_SET_MUTE"

    return-object p0

    :pswitch_d
    const-string p0, "NOTIFY_SET_VOLUME"

    return-object p0

    :pswitch_e
    const-string p0, "NOTIFY_UI_STATUS"

    return-object p0

    :pswitch_f
    const-string p0, "NOTIFY_PROMPT_STATUS"

    return-object p0

    :pswitch_10
    const-string p0, "NOTIFY_TTS_STATUS"

    return-object p0

    :pswitch_11
    const-string p0, "NOTIFY_REQUEST_AUDIO_FOCUS"

    return-object p0

    :pswitch_12
    const-string p0, "NOTIFY_INNER_REQUEST_CALLBACK"

    return-object p0

    :pswitch_13
    const-string p0, "NOTIFY_QR_CODE_MESSAGE"

    return-object p0

    :pswitch_14
    const-string p0, "NOTIFY_BINDER_USER"

    return-object p0

    :pswitch_15
    const-string p0, "NOTIFY_AUDIO_STATUS"

    return-object p0

    :pswitch_16
    const-string p0, "NOTIFY_PUSH_MESSAGE"

    return-object p0

    :pswitch_17
    const-string p0, "NOTIFY_THIRD_APP_CONTEXT"

    return-object p0

    :pswitch_18
    const-string p0, "NOTIFY_TYPE_LAN_CONNECTOR_STATUS"

    return-object p0

    :pswitch_19
    const-string p0, "NOTIFY_TYPE_ACTIVE_STATUS"

    return-object p0

    :pswitch_1a
    const-string p0, "NOTIFY_TYPE_ONLINE_STATUS"

    return-object p0

    :cond_0
    const-string p0, "NOTIFY_START_AVE_VISION_ENGINE"

    return-object p0

    :cond_1
    const-string p0, "NOTIFY_TO_THIRD_APP_EVENT"

    return-object p0

    :cond_2
    const-string p0, "NOTIFY_AUDIO_FOCUS_STATUS"

    return-object p0

    :cond_3
    const-string p0, "NOTIFY_MEDIA_STATUS_CHANGE"

    return-object p0

    :cond_4
    const-string p0, "NOTIFY_DEVICE_MODE_CHANGE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x271c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onNLPResult(Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;I)V
    .locals 11

    .line 320
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 333
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getExtraData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 334
    iget-object v4, v2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->commandInfo:Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;

    if-eqz v4, :cond_1

    .line 336
    iget-object v2, v2, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolExtra;->commandInfo:Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;

    .line 337
    iget-object v3, v2, Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;->commandDomain:Ljava/lang/String;

    .line 338
    iget-object v4, v2, Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;->command:Ljava/lang/String;

    .line 339
    iget-object v2, v2, Lcom/alibaba/ailabs/geniesdk/protocol/CommandInfo;->commandParams:Lorg/json/JSONObject;

    move-object v10, v2

    move-object v8, v3

    move-object v9, v4

    goto :goto_0

    :cond_1
    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    .line 342
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getPreOnResultScreenMode()Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;

    move-result-object v5

    if-eqz v5, :cond_2

    move v6, p2

    move-object v7, p1

    .line 344
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/ailabs/geniesdk/nlp/IPreOnNLPResult;->preOnNLPResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v1

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->getRetCode()I

    move-result v2

    if-nez v2, :cond_3

    .line 349
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;->setRetCode(I)V

    .line 351
    :cond_3
    invoke-interface {v0, p2, p1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onRecognizeResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)V

    :cond_4
    return-void
.end method

.method private native onNativeUiTime(II)V
.end method

.method public static ttsStatusDescription(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "AUDIO_STATUS_QUEUEING"

    return-object p0

    :pswitch_1
    const-string p0, "AUDIO_STATUS_SUSPEND"

    return-object p0

    :pswitch_2
    const-string p0, "AUDIO_STATUS_SUSPENDTORESUME"

    return-object p0

    :pswitch_3
    const-string p0, "AUDIO_STATUS_PREPARED"

    return-object p0

    :pswitch_4
    const-string p0, "AUDIO_STATUS_COMPLETE"

    return-object p0

    :pswitch_5
    const-string p0, "AUDIO_STATUS_INTERRUPT"

    return-object p0

    :pswitch_6
    const-string p0, "AUDIO_STATUS_RESUME"

    return-object p0

    :pswitch_7
    const-string p0, "AUDIO_STATUS_PAUSE"

    return-object p0

    :pswitch_8
    const-string p0, "AUDIO_STATUS_STOP"

    return-object p0

    :pswitch_9
    const-string p0, "AUDIO_STATUS_SUTTER_FINISHED"

    return-object p0

    :pswitch_a
    const-string p0, "AUDIO_STATUS_SUTTER_STARTED"

    return-object p0

    :pswitch_b
    const-string p0, "AUDIO_STATUS_INTERVAL_ELAPSED"

    return-object p0

    :pswitch_c
    const-string p0, "AUDIO_STATUS_DELAY_ELAPSED"

    return-object p0

    :pswitch_d
    const-string p0, "AUDIO_STATUS_FAIL"

    return-object p0

    :pswitch_e
    const-string p0, "AUDIO_STATUS_FINISHING"

    return-object p0

    :pswitch_f
    const-string p0, "AUDIO_STATUS_FINISH"

    return-object p0

    :pswitch_10
    const-string p0, "AUDIO_STATUS_PLAY"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fullDuplexCurPageInBlackList()Z
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->fullDuplexCurPageInBlackList()Z

    move-result v0

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mSessionId:I

    return v0
.end method

.method public getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    const-string v0, "data"

    .line 66
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 69
    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    const-string v3, "NativeUIManager"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-string p1, "iuiManager is null"

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 74
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iuiManager what = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",sessionId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 77
    :try_start_0
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x3ed

    const/16 v8, 0x3f3

    const/4 v9, -0x1

    if-lt v6, v7, :cond_4

    iget v6, p1, Landroid/os/Message;->what:I

    if-gt v6, v8, :cond_4

    .line 78
    iget v6, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mSessionId:I

    if-eq v6, v1, :cond_1

    invoke-static {v1}, Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;->getWakeupType(I)I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no process what = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "sessionId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mSessionId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mSessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 83
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x3f1

    if-ne v6, v7, :cond_2

    const/4 v0, 0x2

    .line 84
    invoke-direct {p0, v1, v0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->onNativeUiTime(II)V

    .line 86
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;

    .line 87
    invoke-direct {p0, p1, v1}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->onNLPResult(Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;I)V

    const/4 p1, 0x3

    .line 89
    invoke-direct {p0, v1, p1}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->onNativeUiTime(II)V

    .line 90
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->notifySessionStatus(I)V

    .line 93
    iput v9, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mSessionId:I

    return v5

    .line 97
    :cond_2
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v8, :cond_3

    .line 98
    invoke-interface {v2, v1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onRecordStop(I)V

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->notifySessionStatus(I)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 102
    :goto_0
    invoke-interface {v2}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->isUiShowing()Z

    move-result v7

    if-nez v7, :cond_5

    return v5

    :cond_4
    const/4 v6, 0x0

    .line 107
    :cond_5
    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v8, :cond_17

    const/16 v6, 0x44d

    if-eq v7, v6, :cond_9

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_5

    .line 222
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, v0, p1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->showGestureAnimation(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 218
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->setFullDuplexDialogRenew(I)V

    goto/16 :goto_5

    .line 214
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, v0, p1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->updateGenieTextByPageName(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 210
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {v2, v0, p1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->updateGenieText(ILjava/util/List;)V

    goto/16 :goto_5

    .line 196
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-interface {v2, v4}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->showUi(Z)V

    goto/16 :goto_5

    .line 199
    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_7

    const/4 v4, 0x1

    :cond_7
    invoke-interface {v2, v4}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->hideUi(Z)V

    goto/16 :goto_5

    .line 207
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v1, p1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onVolume(II)V

    goto/16 :goto_5

    .line 202
    :pswitch_7
    invoke-direct {p0, v1, v5}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->onNativeUiTime(II)V

    .line 204
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_8

    const/4 v4, 0x1

    :cond_8
    invoke-interface {v2, v1, v0, v4}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onStreaming(ILjava/lang/String;Z)V

    goto/16 :goto_5

    .line 184
    :pswitch_8
    invoke-direct {p0, v1, v4}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->onNativeUiTime(II)V

    .line 185
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mSessionId:I

    .line 186
    invoke-interface {v2, v1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onRecordStart(I)V

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->notifySessionStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_5

    .line 111
    :cond_9
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v6, "arg2"

    .line 113
    invoke-virtual {v1, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 115
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, -0x1

    .line 117
    :goto_1
    iget v6, p1, Landroid/os/Message;->arg1:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v7, 0x5

    const-string v8, "status  = "

    if-ne v6, v7, :cond_a

    .line 118
    :try_start_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 124
    :cond_a
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_b

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  ttsId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 129
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v0, v1, v4}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onTtsStatus(Landroid/content/Context;II)V

    goto/16 :goto_4

    .line 131
    :cond_b
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x3f4

    if-ne v6, v7, :cond_c

    .line 132
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tts exception: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v9}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->onTtsStatus(Landroid/content/Context;II)V

    goto/16 :goto_4

    .line 138
    :cond_c
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v5, :cond_d

    .line 139
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 140
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->softWareUpLoad(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 142
    :cond_d
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0x3f5

    if-ne v6, v7, :cond_e

    .line 143
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto/16 :goto_4

    .line 144
    :cond_e
    iget v6, p1, Landroid/os/Message;->arg1:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v7, 0x3f6

    if-ne v6, v7, :cond_10

    .line 146
    :try_start_4
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.alibaba.ailabs.genie.assistant.iot.wifi_mesh"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_f

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    goto :goto_2

    :cond_f
    const-string v6, ""

    .line 148
    :goto_2
    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIFY_IOT_BROADCAST:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 152
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 154
    :cond_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x3f7

    if-ne v0, v3, :cond_11

    .line 155
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$1;-><init>(Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_4

    .line 165
    :cond_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_13

    .line 166
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_12

    const/4 v4, 0x1

    :cond_12
    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->notifyGatewayStatus(Z)V

    goto :goto_4

    .line 167
    :cond_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_16

    .line 168
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_14

    const/4 v3, 0x1

    goto :goto_3

    :cond_14
    const/4 v3, 0x0

    :goto_3
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/geniesdk/database/UserTable;->notifyUserStatusChanged(Landroid/content/Context;Z)V

    .line 169
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_15

    const/4 v4, 0x1

    :cond_15
    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->notifyUserStatus(Z)V

    .line 170
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$2;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$2;-><init>(Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 181
    :cond_16
    :goto_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v0, v3, p1, v1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onNotify(ILjava/lang/Object;II)V

    goto :goto_5

    :cond_17
    if-nez v6, :cond_18

    .line 191
    invoke-interface {v2, v1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onRecordStop(I)V

    .line 192
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->notifySessionStatus(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_5
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideUi(Z)V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x3f5

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isUiShowing()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->isUiShowing()Z

    move-result v0

    return v0
.end method

.method public onNativePretreatedResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 400
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->isUiShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 405
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    goto :goto_0

    :catch_0
    move-exception p5

    .line 407
    invoke-virtual {p5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v6, v0

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p6

    .line 411
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->onPretreatedResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 413
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onNotify(ILjava/lang/Object;II)V
    .locals 2

    .line 364
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "data"

    .line 366
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "arg2"

    .line 367
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 369
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 372
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 p4, 0x44d

    invoke-static {p2, p4, p1, p3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPretreatedResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 7

    .line 422
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mIUiManager:Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 425
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->onPretreatedResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRecognizeResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3f1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onRecordStart(I)V
    .locals 3

    .line 249
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$3;-><init>(Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;)V

    .line 261
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager$3;->start()V

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordStart what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "sessionId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeUIManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordStop(I)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStreaming(ILjava/lang/String;Z)V
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreaming sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "streamText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeUIManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-static {v0, v1, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onVolume(II)V
    .locals 2

    .line 280
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mSessionId:I

    if-ne v0, p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->handleMessage(Landroid/os/Message;)Z

    .line 283
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    :cond_0
    return-void
.end method

.method public setFullDuplexDialogRenew(I)V
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3f9

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showGestureAnimation(ILjava/lang/String;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3fa

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showUi(Z)V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x3f6

    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateGenieText(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 434
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateGenieTextByPageName(ILjava/lang/String;)V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ui/NativeUIManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3f8

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
