.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoicePrintAlipayStartActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;",
        "Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;",
        ">;",
        "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;"
    }
.end annotation


# static fields
.field private static final MAX_RETRY_TIMES:I = 0x3


# instance fields
.field private final FLAG_SIGN_ALIPAY_PROTOCOL:I

.field private final REQUEST_FLAG_GET_USERINFO:I

.field private alipay_name:Landroid/widget/TextView;

.field private ivDocSelect:Landroid/widget/Button;

.field private ivLeftClose:Landroid/widget/TextView;

.field private mConfirmVerify:Landroid/widget/TextView;

.field private mCurrentTryTime:I

.field private mOkBtn:Landroid/widget/TextView;

.field private mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

.field private only_verify_alipay_pwd:I

.field private taobao_img:Landroid/widget/ImageView;

.field private tv_pay_protocal:Landroid/widget/TextView;

.field private tv_verify_protocal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mCurrentTryTime:I

    const v1, 0x9c41

    .line 57
    iput v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->REQUEST_FLAG_GET_USERINFO:I

    const v1, 0x9c42

    .line 58
    iput v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->FLAG_SIGN_ALIPAY_PROTOCOL:I

    .line 60
    iput v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->only_verify_alipay_pwd:I

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Landroid/widget/Button;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->ivDocSelect:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Landroid/widget/TextView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mConfirmVerify:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->only_verify_alipay_pwd:I

    return p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
    .locals 1

    .line 197
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 280
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    .line 282
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 283
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "shoppingOrRegisterVoicePrint"

    const/4 v2, 0x1

    .line 287
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 288
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 292
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicePrintAlipayStartActivity getContextData; appContextData="

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_alipay_start:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->setContentView(I)V

    .line 66
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->confirm_verify:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mConfirmVerify:Landroid/widget/TextView;

    .line 68
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_pay_protocal:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->tv_pay_protocal:Landroid/widget/TextView;

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_verify_protocal:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->tv_verify_protocal:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivDocSelect:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->ivDocSelect:Landroid/widget/Button;

    .line 72
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->taobao_name:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->alipay_name:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    .line 76
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->ivLeftCloses:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->ivLeftClose:Landroid/widget/TextView;

    .line 77
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->ivLeftClose:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->ivDocSelect:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 90
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mConfirmVerify:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    if-nez p1, :cond_0

    .line 93
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$string;->va_add_sound_print_get_auth_info_failed:I

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->showLong(I)V

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->finish()V

    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->ivDocSelect:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$2;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->tv_pay_protocal:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$3;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->tv_verify_protocal:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$4;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mConfirmVerify:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity$5;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "only_verify_alipay_pwd"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->only_verify_alipay_pwd:I

    .line 190
    :cond_1
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p1

    const v0, 0x9c41

    const-string v1, "alipay"

    invoke-static {p1, v1, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getUserInfo(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    .line 192
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->hideUi(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->removeAllMessage()V

    .line 274
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 267
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const p2, 0x9c41

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x9c42

    if-ne p1, p2, :cond_2

    .line 237
    iget p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mCurrentTryTime:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mCurrentTryTime:I

    .line 238
    iget p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mCurrentTryTime:I

    const/4 p3, 0x3

    if-ge p1, p3, :cond_1

    .line 239
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->signAliPayProtocol(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void

    .line 243
    :cond_1
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$string;->va_add_sound_sign_info_failed:I

    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/ToastUtils;->showLong(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 0

    const p3, 0x9c41

    if-ne p2, p3, :cond_1

    const/4 p2, 0x0

    .line 210
    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponse;

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponseData;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponseModule;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponseModule;->extUserInfoData:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p2, 0x0

    .line 216
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/alibaba/genie/shopping/mtop/response/ExtUserInfoData;

    :cond_0
    if-eqz p2, :cond_2

    .line 221
    iget-object p1, p2, Lcom/alibaba/genie/shopping/mtop/response/ExtUserInfoData;->nickName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->alipay_name:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/alibaba/genie/shopping/mtop/response/ExtUserInfoData;->nickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const p1, 0x9c42

    if-ne p2, p1, :cond_2

    .line 225
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetTwoActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    sget-object p2, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->KEY_SOUND_INFO:Ljava/lang/String;

    iget-object p3, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 253
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 257
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->addDefaultProperties(Ljava/util/Map;)V

    const-string v1, "a1z3lt.12055191"

    const-string v2, "zhuce-zhizhifubaomima"

    .line 259
    invoke-virtual {p0, v1, v2, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintAlipayStartActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 202
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    return-object p1
.end method
