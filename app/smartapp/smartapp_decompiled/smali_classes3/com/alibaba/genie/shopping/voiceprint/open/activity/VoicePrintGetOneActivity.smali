.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoicePrintGetOneActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;",
        ">;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;"
    }
.end annotation


# instance fields
.field private isShowDialog:Z

.field private ivLeftClose:Landroid/widget/TextView;

.field private mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

.field private mInputNick:Ljava/lang/String;

.field public mNext:Z

.field private mNickInputEdit:Landroid/widget/EditText;

.field private mOkBtn:Landroid/widget/TextView;

.field private mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

.field private queryVoiceCreateSuccessTask:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mNext:Z

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->isShowDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->isShowDialog:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->isShowDialog:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
    .locals 1

    .line 210
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 193
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    .line 195
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 196
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "shoppingOrRegisterVoicePrint"

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 205
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicePrintGetOneActivity getContextData; appContextData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jesonma"

    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected getMediaPolicy()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public goToAlipayPreVerifyActivity(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 2

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    sget-object v1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mNext:Z

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->finish()V

    return-void
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nickName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mInputNick:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mInputNick:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_get_one:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->setContentView(I)V

    .line 70
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->wave:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/activity/WaveView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    .line 72
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivLeftCloses:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->ivLeftClose:Landroid/widget/TextView;

    .line 73
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->ivLeftClose:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mInputNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->voicePrintCreate(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :try_start_0
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    .line 87
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;->registerAlarm(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->removeAllMessage()V

    .line 182
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;->unRegisterAlarm()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onNotifyPushEvent(IILjava/lang/String;)V
    .locals 7

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicePrintGetOneActivity onNotifyPushEvent; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";  jsonObj="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "jesonma"

    invoke-static {v0, p2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getSoundPrintInfo()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    .line 277
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 279
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "memberId"

    .line 280
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoicePrintGetOneActivity onNotifyPushEvent; memberId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, p2, v3

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 283
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$3;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 7

    .line 147
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    const-string v0, "VoicePrintGetone"

    const-string v1, "onpause"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getSoundPrintInfo()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 157
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const-string v1, "exitsession"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mNext:Z

    if-nez v1, :cond_1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->cancelSoundPrint(Ljava/lang/String;)V

    const-string v1, "cancelSoundPrintandfinish"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->start()V

    .line 106
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->addDefaultProperties(Ljava/util/Map;)V

    const-string v1, "a1z3lt.12055187"

    const-string v2, "zhuce-hanxingci"

    .line 108
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnFocusChangeListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 230
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    return-object p1
.end method

.method public showVoicePrintFailure(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 3

    .line 238
    new-instance p1, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;-><init>()V

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->mInputNick:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->setArguments(Landroid/os/Bundle;)V

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "voiceprint_first"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintOpenFailureDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
