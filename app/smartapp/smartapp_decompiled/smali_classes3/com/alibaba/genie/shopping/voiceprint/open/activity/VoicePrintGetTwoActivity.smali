.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoicePrintGetTwoActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private isShowDialog:Z

.field private ivLeftClose:Landroid/widget/TextView;

.field private mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

.field private mMainHandler:Landroid/os/Handler;

.field public mNext:Z

.field private mOkBtn:Landroid/widget/TextView;

.field private mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

.field private mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

.field private tv_voiceprint_code1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mNext:Z

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->isShowDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->isShowDialog:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->isShowDialog:Z

    return p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
    .locals 1

    .line 205
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 183
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    .line 185
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 186
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "shoppingOrRegisterVoicePrint"

    const/4 v2, 0x1

    .line 190
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 195
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicePrintGetTwoActivity getContextData; appContextData="

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

.method public goToVoicePrintPayFailPage()V
    .locals 4

    .line 227
    new-instance v0, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;-><init>()V

    .line 228
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 229
    sget-object v2, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 230
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->setArguments(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "voiceprint_second"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/shopping/view/dialog/VoicePrintPayOpenFailureDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public goToVoicePrintPaySuccessPage()V
    .locals 2

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mNext:Z

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->startActivity(Landroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->finish()V

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
    .locals 3

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 59
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_get_two:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->setContentView(I)V

    .line 60
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->wave:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/activity/WaveView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    .line 65
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_voiceprint_code1:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->tv_voiceprint_code1:Landroid/widget/TextView;

    .line 67
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivLeftCloses:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->ivLeftClose:Landroid/widget/TextView;

    .line 68
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->ivLeftClose:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    if-eqz p1, :cond_0

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoicePrintGetTwoActivity mSoundPrintInfo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jesonma"

    invoke-static {v0, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->createSoundPrintPay(Ljava/lang/String;J)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->finish()V

    .line 86
    :goto_0
    :try_start_0
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    .line 87
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;->registerAlarm(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->removeAllMessage()V

    .line 172
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;->unRegisterAlarm()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onNotifyPushEvent(IILjava/lang/String;)V
    .locals 5

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicePrintGetTwoActivity onNotifyPushEvent; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; jsonObj="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "jesonma"

    invoke-static {v0, p2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 268
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 269
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 271
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "memberId"

    .line 272
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 273
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoicePrintGetTwoActivity onNotifyPushEvent; memberId="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p3, p1, v1

    if-eqz p3, :cond_0

    .line 274
    iget-object p3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 275
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$3;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$3;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 140
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    .line 145
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    :goto_0
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mNext:Z

    if-nez v0, :cond_1

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->cancelSoundPrint(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->start()V

    .line 105
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->addDefaultProperties(Ljava/util/Map;)V

    const-string v1, "a1z3lt.12055197"

    const-string v2, "zhuce-zhifubaoyanzhengma"

    .line 107
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity$2;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->setOnFocusChangeListener(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 236
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    return-object p1
.end method

.method public showVoicePrintPayCode(Ljava/lang/String;)V
    .locals 3

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;->tv_voiceprint_code1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u201d"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
