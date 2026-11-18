.class public Lcom/alibaba/genie/shopping/activity/OrderPayActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "OrderPayActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;",
        ">;",
        "Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;"
    }
.end annotation


# static fields
.field private static final DELAY_MILLS_SHORT:I = 0x3e8

.field private static final DELAY_TIME_OUT_CODES:I = 0x2bf20

.field private static final DELAY_TIME_OUT_MILLS:I = 0xea60

.field private static final WHAT_GET_RESULT_REQUEST_TIME_OUT:I = -0x3eb

.field private static final WHAT_QUERY_PAY_STATUS:I = 0x7d1


# instance fields
.field private code_pay_layout:Landroid/widget/LinearLayout;

.field private codepay_line:Landroid/widget/TextView;

.field private from_applet:I

.field private img_qrcode:Landroid/widget/ImageView;

.field private isOpenWavPay:Z

.field private isShowExitDialog:Z

.field private isShowWavPay:Z

.field private mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

.field private mBaseDialog:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

.field private mNext:Z

.field private mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

.field private mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

.field private mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

.field private send_phone_pay_layout:Landroid/widget/LinearLayout;

.field private send_phone_pay_result_layout:Landroid/widget/LinearLayout;

.field private send_succ_icon:Landroid/widget/ImageView;

.field private tv_av_pay:Landroid/widget/TextView;

.field private tv_code_pay:Landroid/widget/TextView;

.field private tv_wav_code:Landroid/widget/TextView;

.field private tx_pay_owner:Landroid/widget/TextView;

.field private tx_pay_suc_owner:Landroid/widget/TextView;

.field private vpay_line:Landroid/widget/TextView;

.field private wav_pay_layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    .line 79
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mNext:Z

    const/4 v1, 0x1

    .line 99
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isShowExitDialog:Z

    .line 101
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isShowExitDialog:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->img_qrcode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseDialog:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->utIconClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->vpay_line:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->codepay_line:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_av_pay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_code_pay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/activity/WaveView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    return-object p0
.end method

.method private isCosumenBackKey()Z
    .locals 11

    const-string v0, "jesonma"

    const-string v1, "=============isCosumenBackKey"

    .line 702
    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget v3, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_pay_cancel_title:I

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_del_dialog_content:I

    sget v5, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_pay_cancel_content5:I

    sget v6, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_voice_pay_cancel_content6:I

    new-instance v7, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$8;

    invoke-direct {v7, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$8;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    new-instance v8, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$9;

    invoke-direct {v8, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$9;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    sget v9, Lcom/alibaba/ailabs/genie/shopping/R$layout;->tg_shopping_dialog_panel_cancel_pay_message:I

    new-instance v10, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;

    invoke-direct {v10, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$10;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/alibaba/genie/shopping/utils/DialogUtils;->showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/genie/shopping/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseDialog:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    const/4 v0, 0x1

    return v0
.end method

.method private utIconClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1048
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "spm"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
    .locals 1

    .line 1029
    new-instance v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 3

    .line 744
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v1, "voicePrintPay"

    .line 745
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 747
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "orderCode"

    .line 752
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payOrderCode"

    .line 753
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "shoppingOrRegisterVoicePrint"

    const/4 v2, 0x1

    .line 754
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 755
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 757
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 761
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderPayActivity getContextData; appContextData="

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

.method public handleBaseMessage(Landroid/os/Message;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 453
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d1

    const/16 v2, -0x3eb

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 455
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message ShoppingOrderConfirmResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jesonma"

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 458
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    const v2, 0x186a6

    invoke-static {v0, v1, p1, p0, v2}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->queryPaymentStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 466
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 469
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 470
    iput v1, p1, Landroid/os/Message;->what:I

    .line 471
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, p1, v3, v4}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 476
    iput v2, p1, Landroid/os/Message;->what:I

    .line 477
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    new-instance p1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$5;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$5;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 497
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mNext:Z

    .line 498
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    iget v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->from_applet:I

    const-string v1, "from_applet"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 683
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isCosumenBackKey()Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCancelVoicePay(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_order_pay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->setContentView(I)V

    .line 110
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_av_pay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_av_pay:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_code_pay:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_code_pay:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_wav_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_wav_code:Landroid/widget/TextView;

    .line 115
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->av_payline:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->vpay_line:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->code_payline:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->codepay_line:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->pay_tips_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    .line 118
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->pay_tips_result_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tx_pay_owner:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tx_pay_owner:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tx_pay_suc_owner:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tx_pay_suc_owner:Landroid/widget/TextView;

    .line 123
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->send_succ_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_succ_icon:Landroid/widget/ImageView;

    .line 125
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->wav_pay_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    .line 126
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->wave:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/WaveView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    .line 128
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->code_pay_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    .line 129
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->img_qrcode:Landroid/widget/ImageView;

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "from_applet"

    .line 133
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->from_applet:I

    const-string v2, "put_order_detail"

    .line 134
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    const-string v2, "shopping_order_group"

    .line 135
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    const/4 v9, 0x1

    if-nez v0, :cond_1

    const-string v0, "\u4e0b\u5355\u5931\u8d25"

    .line 139
    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    return-void

    .line 144
    :cond_1
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$1;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    sput-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrderPayActivity,put Order result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "jesonma"

    invoke-static {v2, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tx_pay_owner:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\u60a8\u7684"

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tx_pay_suc_owner:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v3, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->tbNickname:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payType:I

    const-string v2, "\u4e0b\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const-string v3, "#2B3852"

    const-string v4, "#999999"

    if-ne v0, v9, :cond_6

    .line 254
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->vpay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->codepay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_av_pay:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_code_pay:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->start()V

    .line 260
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 262
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_wav_code:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_wav_pay_code:I

    invoke-virtual {p0, v1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, -0x1

    .line 266
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v3, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_2

    :cond_4
    const/4 v2, -0x1

    .line 272
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_wav_pay_code_tts:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_2

    .line 279
    :cond_5
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    return-void

    .line 284
    :cond_6
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->vpay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->codepay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_av_pay:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_code_pay:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    .line 290
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 293
    new-instance v0, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->img_qrcode:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v1, 0x2

    .line 294
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 296
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, -0x1

    .line 297
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v3, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_1

    :cond_7
    const/4 v2, -0x1

    .line 304
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_aipay_code_tts:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 313
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\""

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u652f\u4ed8\""

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u5929\u732b\u7cbe\u7075APP\""

    .line 316
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u5929\u732b\u7cbe\u7075APP\u652f\u4ed8\""

    .line 317
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    const/16 v1, 0x2712

    .line 320
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    .line 328
    :goto_2
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_av_pay:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$3;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_code_pay:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$4;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    if-eqz v0, :cond_9

    .line 418
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 421
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7d1

    .line 422
    iput v1, v0, Landroid/os/Message;->what:I

    .line 423
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 427
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payType:I

    const/16 v1, -0x3eb

    if-ne v0, v9, :cond_8

    .line 429
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 430
    iput v1, v0, Landroid/os/Message;->what:I

    .line 431
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 434
    :cond_8
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 435
    iput v1, v0, Landroid/os/Message;->what:I

    .line 436
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 442
    :cond_9
    :goto_3
    :try_start_0
    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    .line 443
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    invoke-virtual {v0, v8}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;->registerAlarm(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void

    .line 322
    :cond_a
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1009
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onDestroy()V

    .line 1010
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    .line 1014
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mAlarmHelper:Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/voiceprint/utils/AlarmHelper;->unRegisterAlarm()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isCosumenBackKey()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 4

    .line 962
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    .line 965
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    const/4 v0, 0x0

    .line 968
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 971
    iget-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mNext:Z

    if-nez v1, :cond_0

    .line 974
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->cancelVoicePay()V

    .line 977
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-virtual {v1, v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 979
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7d1

    .line 980
    iput v1, v0, Landroid/os/Message;->what:I

    .line 981
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 982
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 985
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, -0x3eb

    .line 986
    iput v1, v0, Landroid/os/Message;->what:I

    .line 987
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 989
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->vpay_line:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->codepay_line:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_av_pay:Landroid/widget/TextView;

    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 992
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_code_pay:Landroid/widget/TextView;

    const-string v3, "#2B3852"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 993
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->stop()V

    .line 995
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "jesonma"

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch qrcode pay mPutOrderResult="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    invoke-virtual {v3}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    new-instance v0, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->img_qrcode:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v1, 0x2

    .line 1000
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->qrPayCode:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1002
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 644
    :pswitch_1
    iput-boolean p2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isShowExitDialog:Z

    .line 646
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 648
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$7;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$7;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v2, "\u652f\u4ed8\u4fe1\u606f\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u53d1\u9001"

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v0, p0

    .line 664
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 666
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\""

    .line 667
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u652f\u4ed8\""

    .line 668
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u5929\u732b\u7cbe\u7075APP\""

    .line 669
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "\u60a8\u53ef\u4ee5\u8bf4\"\u5929\u732b\u7cbe\u7075\uff0c\u53d1\u9001\u5230\u624b\u673a\u5929\u732b\u7cbe\u7075APP\u652f\u4ed8\""

    .line 670
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    const/16 p2, 0x2712

    .line 673
    invoke-static {p0, p2, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/util/List;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "\u58f0\u7eb9\u652f\u4ed8\u7801\u62c9\u53d6\u5931\u8d25"

    .line 641
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 630
    :pswitch_3
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x7d1

    .line 631
    iput p2, p1, Landroid/os/Message;->what:I

    .line 632
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p2, p1, p3, p4}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 11

    const-string v0, "jesonma"

    const/4 v1, 0x1

    const-wide/16 v7, 0x3e8

    const/16 v9, 0x7d1

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 590
    :pswitch_1
    iput-boolean v3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isShowExitDialog:Z

    .line 592
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 597
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 599
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->send_succ_icon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$6;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 615
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->send_succ_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v2, "\u652f\u4ed8\u4fe1\u606f\u5df2\u53d1\u9001\uff0c\u8bf7\u6253\u5f00\u624b\u673a\u5929\u732b\u7cbe\u7075App\u67e5\u770b\u901a\u77e5"

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v0, p0

    .line 618
    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_1

    .line 541
    :pswitch_2
    move-object v4, p1

    check-cast v4, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;

    if-eqz v4, :cond_1

    .line 543
    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get pay code, printPayCodeResponse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v10

    :goto_0
    if-eqz v0, :cond_4

    .line 548
    iget-object v4, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;->voiceprintCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 550
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    if-eqz v4, :cond_4

    .line 551
    iget-object v5, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;->voiceprintCode:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    .line 552
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u60a8\u597d\uff0c\u73b0\u5728\u8fdb\u884c\u58f0\u7eb9\u652f\u4ed8\uff0c\u8bf7\u8ddf\u6211\u8bf4\u5929\u732b\u7cbe\u7075"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;->voiceprintCode:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    .line 553
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->vpay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->codepay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_av_pay:Landroid/widget/TextView;

    const-string v4, "#2B3852"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_code_pay:Landroid/widget/TextView;

    const-string v4, "#999999"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mWaveView:Lcom/alibaba/genie/shopping/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/WaveView;->start()V

    .line 559
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->tv_wav_code:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_wav_pay_code:I

    invoke-virtual {p0, v2}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v5, v5, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->vpPayCode:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payType:I

    if-ne v0, v1, :cond_4

    const/4 v1, -0x1

    .line 565
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v2, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->voiceText:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v6, 0x0

    const-string v5, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 572
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-virtual {v0, v10}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 574
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 575
    iput v9, v0, Landroid/os/Message;->what:I

    .line 576
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 577
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-virtual {v1, v0, v7, v8}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 580
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, -0x3eb

    .line 581
    iput v1, v0, Landroid/os/Message;->what:I

    .line 582
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 512
    :pswitch_3
    move-object v2, p1

    check-cast v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;

    if-eqz v2, :cond_3

    .line 513
    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 514
    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    move-result-object v2

    .line 515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pay status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 517
    iget-object v0, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->status:Ljava/lang/String;

    const-string v3, "SUCCESS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iput-boolean v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mNext:Z

    .line 519
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-virtual {v0, v10}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/genie/shopping/activity/PayResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pay_status"

    .line 521
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 522
    iget v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->from_applet:I

    const-string v2, "from_applet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->startActivity(Landroid/content/Intent;)V

    .line 524
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->finish()V

    goto :goto_1

    .line 527
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 528
    iput v9, v0, Landroid/os/Message;->what:I

    .line 529
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 530
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-virtual {v1, v0, v7, v8}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 534
    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 535
    iput v9, v0, Landroid/os/Message;->what:I

    .line 536
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    invoke-virtual {v1, v0, v7, v8}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .line 934
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 935
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 936
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 937
    iget v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payType:I

    const/16 v2, 0x2712

    if-ne v0, v1, :cond_0

    const-string v0, "com.alibaba.ailabs.genie.shopping/soundPrintPay"

    .line 938
    invoke-static {p0, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.alibaba.ailabs.genie.shopping/scanPay"

    .line 940
    invoke-static {p0, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    .line 946
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 948
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget v2, v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payType:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "shopping_payment pages"

    const-string v4, "a1z3lt.12157879"

    const-string v5, "payType"

    if-ne v2, v1, :cond_2

    :try_start_1
    const-string v1, "voicePrint"

    .line 949
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-virtual {p0, v4, v3, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string v1, "qrcode"

    .line 952
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    invoke-virtual {p0, v4, v3, v0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 956
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 6

    const-string v0, "data"

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OrderPayActivity processNLPResult; commandDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; command="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; commandParams="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; nlpResult="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "jesonma"

    invoke-static {p4, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string p4, "/SelectContent"

    .line 770
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 771
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p4, 0x1

    if-nez p2, :cond_5

    .line 796
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 798
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p3, "resp"

    .line 800
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "intentName"

    .line 801
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 803
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "pay_dynamic"

    .line 804
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_5

    .line 806
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p3, "status"

    .line 808
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    const-string v0, "extendInfo"

    .line 809
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    if-eq p3, p4, :cond_5

    .line 838
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 840
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 p3, 0x7d1

    .line 841
    iput p3, p2, Landroid/os/Message;->what:I

    .line 842
    iget-object p3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 843
    iget-object p3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p3, p2, v0, v1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 846
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 p3, -0x3eb

    .line 847
    iput p3, p2, Landroid/os/Message;->what:I

    .line 848
    iget-object p3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    const-wide/32 v0, 0x2bf20

    invoke-virtual {p3, p2, v0, v1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 850
    new-instance p2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$11;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p3, "cancel_dynamic"

    .line 870
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 871
    new-instance p2, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$12;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$12;-><init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p3, "confirm_dynamic"

    .line 884
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 892
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseDialog:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_2

    .line 894
    :try_start_1
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mBaseDialog:Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;

    invoke-virtual {p2}, Lcom/alibaba/genie/shopping/view/dialog/BaseDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    :catch_0
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object p3, p3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->payOrderCode:Ljava/lang/String;

    const v1, 0x186a7

    invoke-static {p2, p3, v0, p0, v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    goto :goto_0

    :cond_3
    const-string p3, "send_message_dynamic"

    .line 901
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "\u5546\u54c1\u4fe1\u606f"

    const-string p3, ""

    .line 904
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    if-eqz v0, :cond_4

    .line 905
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mOrderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 907
    iget-object p2, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    .line 908
    iget-object p3, v0, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    :cond_4
    move-object v2, p2

    move-object v3, p3

    .line 911
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    iget-object v1, p2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    const v5, 0x186aa

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->sendPayToPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 917
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 921
    :cond_5
    :goto_0
    iput-boolean p4, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_6
    return-object p1
.end method
