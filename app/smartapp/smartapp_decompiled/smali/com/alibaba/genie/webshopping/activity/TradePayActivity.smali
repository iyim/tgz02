.class public Lcom/alibaba/genie/webshopping/activity/TradePayActivity;
.super Lcom/alibaba/genie/tradepay/mvp/BaseActivity;
.source "TradePayActivity.java"

# interfaces
.implements Lcom/alibaba/genie/tradepay/presenter/PayingCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/tradepay/mvp/BaseActivity<",
        "Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;",
        ">;",
        "Lcom/alibaba/genie/tradepay/presenter/PayingCallback;"
    }
.end annotation


# static fields
.field private static final DELAY_MILLS_SHORT:I = 0x3e8

.field private static final DELAY_TIME_OUT_CODES:I = 0x2bf20

.field private static final DELAY_TIME_OUT_MILLS:I = 0xea60

.field private static final WHAT_GETVOICECODE_FAILED:I = -0x3ed

.field private static final WHAT_GETVOICECODE_SUCCESS:I = 0xfa1

.field private static final WHAT_GET_RESULT_REQUEST_TIME_OUT:I = -0x3eb

.field private static final WHAT_QUERY_PAY_STATUS:I = 0x7d1

.field private static final WHAT_SENDPAYTOPHONE_FAILED:I = -0x3ec

.field private static final WHAT_SENDPAYTOPHONE_SUCCESS:I = 0xbb9

.field private static final WHAT_VPAYTIMEOUT:I = -0x1389


# instance fields
.field private code_pay_layout:Landroid/widget/LinearLayout;

.field private codepay_line:Landroid/widget/TextView;

.field private img_qrcode:Landroid/widget/ImageView;

.field private isShowExitDialog:Z

.field private mAlarmHelper:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

.field private mNext:Z

.field private mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

.field private orderCode:Ljava/lang/String;

.field private orderImg:Ljava/lang/String;

.field private orderTitle:Ljava/lang/String;

.field private payOrdercode:Ljava/lang/String;

.field private payType:I

.field private payqrcode:Ljava/lang/String;

.field private payvoicecode:Ljava/lang/String;

.field private send_phone_pay_layout:Landroid/widget/LinearLayout;

.field private send_phone_pay_result_layout:Landroid/widget/LinearLayout;

.field private tbNickname:Ljava/lang/String;

.field private tv_av_pay:Landroid/widget/TextView;

.field private tv_code_pay:Landroid/widget/TextView;

.field private tv_wav_code:Landroid/widget/TextView;

.field private tx_pay_owner:Landroid/widget/TextView;

.field private tx_pay_suc_owner:Landroid/widget/TextView;

.field private voicetext:Ljava/lang/String;

.field private vpay_line:Landroid/widget/TextView;

.field private wav_pay_layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;-><init>()V

    const-string/jumbo v0, "\u5546\u54c1"

    .line 71
    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderImg:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->voicetext:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payqrcode:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderCode:Ljava/lang/String;

    const-string/jumbo v1, "\u60a8\u7684"

    iput-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tbNickname:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payOrdercode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mNext:Z

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isShowExitDialog:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mAlarmHelper:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isShowExitDialog:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_code_pay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Lcom/alibaba/genie/tradepay/activity/WaveView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->img_qrcode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payqrcode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tbNickname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderImg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderImg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->vpay_line:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->codepay_line:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_av_pay:Landroid/widget/TextView;

    return-object p0
.end method

.method private isCosumenBackKey()Z
    .locals 5

    const-string v0, "jesonma"

    const-string v1, "=============isCosumenBackKey"

    .line 482
    invoke-static {v0, v1}, Lcom/alibaba/genie/tradepay/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-boolean v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isShowExitDialog:Z

    if-eqz v0, :cond_2

    .line 484
    new-instance v0, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;

    invoke-direct {v0}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;-><init>()V

    .line 485
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 486
    iget-object v2, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderCode:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "code"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tbNickname:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const-string v3, "nickname"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->setArguments(Landroid/os/Bundle;)V

    .line 489
    new-instance v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$6;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 499
    new-instance v1, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$7;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 506
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "pay"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/genie/tradepay/view/CancelPayDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->userExit()V

    :goto_2
    const/4 v0, 0x0

    const-string/jumbo v1, "slide_exit"

    const-string v2, "a211mb.c1599201883978"

    const-string/jumbo v3, "shopping_pay_native"

    .line 511
    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0
.end method

.method private utIconClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 643
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 644
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

    const-string/jumbo p4, "spm"

    invoke-interface {v0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {p1, p2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public cancelVoicePayFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public cancelVoicePaySuccess(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/tradepay/mvp/IMvpPresenter;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->createPresenter()Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;
    .locals 1

    .line 637
    new-instance v0, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 4

    .line 518
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string/jumbo v1, "voicePrintPay"

    .line 519
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 521
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "orderCode"

    .line 526
    iget-object v2, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payOrderCode"

    .line 527
    iget-object v2, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payOrdercode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "shoppingOrRegisterVoicePrint"

    const/4 v2, 0x1

    .line 528
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 529
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V

    const-string v0, "com.alibaba.ailabs.genie.shopping"

    const-string v1, "1.1.0.268"

    const-string v2, "2100110268"

    const-string v3, "835631d2fbb137fc5fe6381219db6597fc8cdd54"

    .line 530
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setForegroundInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 536
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TradePayActivity getContextData; appContextData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jesonma"

    invoke-static {v0, p1}, Lcom/alibaba/genie/tradepay/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDatas()V
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const-string v2, "paytype"

    .line 259
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payType:I

    const-string v1, "ordercode"

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->orderCode:Ljava/lang/String;

    :cond_0
    const-string v1, "nickname"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tbNickname:Ljava/lang/String;

    :cond_1
    const-string/jumbo v1, "qrcode"

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payqrcode:Ljava/lang/String;

    :cond_2
    const-string/jumbo v1, "vpaycode"

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    :cond_3
    const-string/jumbo v1, "voicetext"

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 273
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->voicetext:Ljava/lang/String;

    :cond_4
    const-string v1, "payordercode"

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 276
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payOrdercode:Ljava/lang/String;

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payqrcode:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->voicetext:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    const-string/jumbo v1, "\u51fa\u9519\u5566\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u5427"

    .line 280
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->userExit()V

    :cond_6
    return-void
.end method

.method protected getMediaPolicy()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getVoiceCodeFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 688
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    const/16 p2, -0x3ed

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getVoiceCodeSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingVoicePrintPayCode;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getVoiceCodeSuccess(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 674
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 676
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "code"

    .line 677
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/16 p1, 0xfa1

    .line 679
    iput p1, v0, Landroid/os/Message;->what:I

    .line 680
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public handleBaseMessage(Landroid/os/Message;)V
    .locals 10

    if-eqz p1, :cond_5

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x1389

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xbb9

    const/16 v3, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xfa1

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const/16 p1, -0x3ed

    if-eq v0, p1, :cond_1

    const/16 p1, -0x3ec

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 410
    :cond_0
    iput-boolean v4, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isShowExitDialog:Z

    .line 412
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$5;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v3, "\u652f\u4ed8\u4fe1\u606f\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u5c1d\u8bd5\u91cd\u65b0\u53d1\u9001"

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    .line 424
    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_0

    :cond_1
    const-string/jumbo p1, "\u58f0\u7eb9\u652f\u4ed8\u7801\u62c9\u53d6\u5931\u8d25"

    .line 454
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 437
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 438
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u60a8\u597d\uff0c\u73b0\u5728\u8fdb\u884c\u58f0\u7eb9\u652f\u4ed8\uff0c\u8bf7\u8ddf\u6211\u8bf4\u5929\u732b\u7cbe\u7075"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->voicetext:Ljava/lang/String;

    .line 441
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->vpay_line:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->codepay_line:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_av_pay:Landroid/widget/TextView;

    const-string v0, "#2B3852"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_code_pay:Landroid/widget/TextView;

    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 445
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

    invoke-virtual {p1}, Lcom/alibaba/genie/tradepay/activity/WaveView;->start()V

    .line 447
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_wav_code:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/shoppingsdk/R$string;->tv_wav_pay_code:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 451
    iget-object v3, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->voicetext:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    .line 380
    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isShowExitDialog:Z

    .line 382
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string/jumbo v5, "\u652f\u4ed8\u4fe1\u606f\u5df2\u53d1\u9001\uff0c\u8bf7\u6253\u5f00\u624b\u673a\u5929\u732b\u7cbe\u7075App\u67e5\u770b\u901a\u77e5"

    const-string v8, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v3, p0

    .line 407
    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    .line 457
    :cond_4
    iput v2, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payType:I

    .line 458
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->resetViewAndData()V

    :cond_5
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

    .line 469
    invoke-direct {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isCosumenBackKey()Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$layout;->activity_trade_pay:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->setContentView(I)V

    .line 107
    invoke-static {p0}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->addActivity(Landroid/app/Activity;)V

    .line 108
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->tv_av_pay:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_av_pay:Landroid/widget/TextView;

    .line 109
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->tv_code_pay:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_code_pay:Landroid/widget/TextView;

    .line 110
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->tv_wav_code:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_wav_code:Landroid/widget/TextView;

    .line 112
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->av_payline:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->vpay_line:Landroid/widget/TextView;

    .line 113
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->code_payline:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->codepay_line:Landroid/widget/TextView;

    .line 114
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->pay_tips_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    .line 115
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->pay_tips_result_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    .line 116
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_result_layout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->tx_pay_owner:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tx_pay_owner:Landroid/widget/TextView;

    .line 119
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->tx_pay_suc_owner:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tx_pay_suc_owner:Landroid/widget/TextView;

    .line 122
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->wav_pay_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    .line 123
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->wave:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/tradepay/activity/WaveView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

    .line 125
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->code_pay_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    .line 126
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->img_qrcode:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->img_qrcode:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getDatas()V

    .line 129
    sget p1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$id;->cancel:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$1;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tx_pay_owner:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tbNickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tx_pay_suc_owner:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tbNickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->send_phone_pay_layout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$2;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->resetViewAndData()V

    .line 180
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_av_pay:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$3;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_code_pay:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$4;-><init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "a211mb.b1236793"

    const-string/jumbo v0, "shopping_pay_native"

    const/4 v1, 0x0

    .line 250
    invoke-static {p1, v0, v1}, Lcom/alibaba/genie/tradepay/utils/UtUtils;->customPageHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 616
    invoke-super {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->onDestroy()V

    .line 617
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->removeAllActivity()V

    .line 618
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->destoryAllac()I

    .line 619
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/activity/WaveView;->stop()V

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mAlarmHelper:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mAlarmHelper:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->unRegisterAlarm()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 626
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isCosumenBackKey()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 587
    invoke-super {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->onPause()V

    .line 590
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/activity/WaveView;->stop()V

    const/4 v0, 0x0

    .line 593
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->exitSession(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onRestart()V
    .locals 1

    .line 555
    invoke-super {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->onRestart()V

    .line 556
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getVoiceode()I

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 561
    invoke-super {p0}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity;->onResume()V

    .line 562
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 563
    iget v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payType:I

    const/16 v1, 0x2712

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "com.alibaba.ailabs.genie.shopping/soundPrintPay"

    .line 564
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.alibaba.ailabs.genie.shopping/scanPay"

    .line 566
    invoke-static {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    .line 571
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 573
    iget v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payType:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "shopping_payment pages"

    const-string v4, "a1z3lt.12157879"

    const-string v5, "payType"

    if-ne v1, v2, :cond_1

    :try_start_1
    const-string/jumbo v1, "voicePrint"

    .line 574
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-virtual {p0, v4, v3, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "qrcode"

    .line 577
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-virtual {p0, v4, v3, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 581
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TradePayActivity processNLPResult; commandDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; command="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; commandParams="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; nlpResult="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "jesonma"

    invoke-static {p4, p1}, Lcom/alibaba/genie/tradepay/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    .line 543
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/alibaba/genie/tradepay/manager/JNI_orderManager;->processNLPResult(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 544
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    return-object p1
.end method

.method public queryPaystatusFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public queryPaystatusSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentStatus;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resetViewAndData()V
    .locals 9

    .line 302
    iget v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payType:I

    const-string v1, "#2B3852"

    const-string v2, "#999999"

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v8, 0x0

    if-ne v0, v4, :cond_2

    .line 303
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->vpay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->codepay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_av_pay:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_code_pay:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 307
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/activity/WaveView;->start()V

    .line 309
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_wav_code:Landroid/widget/TextView;

    sget v1, Lcom/alibaba/ailabs/genie/shoppingsdk/R$string;->tv_wav_pay_code:I

    invoke-virtual {p0, v1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->voicetext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, -0x1

    .line 315
    iget-object v3, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->voicetext:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto/16 :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 318
    sget v0, Lcom/alibaba/ailabs/genie/shoppingsdk/R$string;->tv_wav_pay_code_tts:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payvoicecode:Ljava/lang/String;

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u58f0\u7eb9\u652f\u4ed8\u51fa\u9519\u5566\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u5427"

    .line 322
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->userExit()V

    return-void

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->vpay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->codepay_line:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_av_pay:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->tv_code_pay:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->wav_pay_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mWaveView:Lcom/alibaba/genie/tradepay/activity/WaveView;

    invoke-virtual {v0}, Lcom/alibaba/genie/tradepay/activity/WaveView;->stop()V

    .line 334
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->code_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payqrcode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    new-instance v0, Lcom/alibaba/genie/tradepay/utils/BitmapWorkerTask;

    iget-object v1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->img_qrcode:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/alibaba/genie/tradepay/utils/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v1, 0x2

    .line 338
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->payqrcode:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/utils/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v2, -0x1

    .line 340
    sget v0, Lcom/alibaba/ailabs/genie/shoppingsdk/R$string;->tv_aipay_code_tts:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x0

    const-string v6, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 368
    :goto_0
    :try_start_0
    new-instance v0, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mAlarmHelper:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    .line 369
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mAlarmHelper:Lcom/alibaba/genie/tradepay/utils/AlarmHelper;

    invoke-virtual {v0, v8}, Lcom/alibaba/genie/tradepay/utils/AlarmHelper;->registerAlarm(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    :cond_3
    const-string/jumbo v0, "\u626b\u7801\u652f\u4ed8\u51fa\u9519\u5566\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u5427"

    .line 360
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->userExit()V

    return-void
.end method

.method public sendPayToPhoneFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 657
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    const/16 p2, -0x3ec

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendPayToPhoneSuccess()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public userExit()V
    .locals 2

    .line 293
    new-instance v0, Lcom/alibaba/genie/tradepay/manager/payEvent;

    invoke-direct {v0}, Lcom/alibaba/genie/tradepay/manager/payEvent;-><init>()V

    const/4 v1, 0x0

    .line 294
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setSuccess(Z)V

    const/16 v1, -0x7d3

    .line 295
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setCode(I)V

    const-string/jumbo v1, "{\"model\":{}}"

    .line 296
    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/manager/payEvent;->setModel(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->getInstance()Lcom/alibaba/genie/tradepay/manager/OrderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/genie/tradepay/manager/OrderManager;->userExit_end(Lcom/alibaba/genie/tradepay/manager/payEvent;)V

    return-void
.end method

.method public vpayErro()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->mBaseHandler:Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;

    const/16 v1, -0x1389

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/tradepay/mvp/BaseActivity$BaseHandler;->sendEmptyMessage(I)Z

    return-void
.end method
