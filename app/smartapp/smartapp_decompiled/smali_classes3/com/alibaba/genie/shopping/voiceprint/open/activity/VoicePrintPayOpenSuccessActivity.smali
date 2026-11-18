.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoicePrintPayOpenSuccessActivity.java"


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
.field private img_openfinish:Landroid/widget/TextView;

.field private mMainHandler:Landroid/os/Handler;

.field private mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

.field private tv_open_pay_result:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
    .locals 1

    .line 149
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 111
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    .line 113
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 114
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "shoppingOrRegisterVoicePrint"

    const/4 v2, 0x1

    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoicePrintPayOpenSuccessActivity getContextData; appContextData="

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

.method public getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSoundPrintListSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public goToAlipayPreVerifyActivity(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public goToVoicePrintPayFailPage()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public goToVoicePrintPaySuccessPage()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_pay_open_success:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->setContentView(I)V

    .line 43
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_openfinish:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->img_openfinish:Landroid/widget/TextView;

    .line 44
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_open_pay_result:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->tv_open_pay_result:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->img_openfinish:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetVoicePrintPayCode, printPayCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jesonma"

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;->voiceprintCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payType:I

    .line 158
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;->voiceprintCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    .line 159
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u73b0\u5728\u8fdb\u884c\u58f0\u7eb9\u652f\u4ed8\uff0c\u8bf7\u8ddf\u6211\u8bf4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;->voiceprintCode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    .line 160
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "come_from_voiceprint_open"

    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    sget-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    const-string v1, "put_order_detail"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V

    goto :goto_1

    :cond_1
    :try_start_0
    const-string p1, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&menuBusinessName=\u8d2d\u7269&modeType=0"

    .line 167
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 172
    :catch_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 144
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 3

    .line 134
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    :try_start_0
    const-string v0, "a1z3lt.12055203"

    const-string v1, "zhuce-chenggongtixing"

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintPayOpenSuccessActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 189
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string p3, "/Play"

    .line 190
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 192
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    goto :goto_0

    :cond_0
    const-string p3, "/Bulletscreen/open"

    .line 193
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 195
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    const/4 p2, 0x0

    .line 196
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mOpenFarMic:Z

    .line 197
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mForceClose:Z

    const-string p2, "\u6b63\u5728\u4e3a\u4f60\u5f00\u542f\u5f39\u5e55\u529f\u80fd"

    .line 198
    iput-object p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSpokenMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p3, "/Setup"

    .line 200
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 202
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    goto :goto_0

    :cond_2
    const-string p3, "/Setup/Open"

    .line 203
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 205
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_3
    :goto_0
    return-object p1
.end method

.method public showVoicePrintFailure(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showVoicePrintPayCode(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
