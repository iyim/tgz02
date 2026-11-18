.class public Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;
.super Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;
.source "GeniePayActivity.java"


# static fields
.field private static final DELAY_MILLS_SHORT:I = 0x3e8

.field private static final DELAY_TIME_OUT_CODES:I = 0x2bf20

.field private static final DELAY_TIME_OUT_MILLS:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "GeniePay"

.field private static final WHAT_GET_RESULT_REQUEST_TIME_OUT:I = -0x3eb

.field private static final WHAT_PAY_FAIL:I = 0x7d3

.field private static final WHAT_PAY_SUCCESS:I = 0x7d2

.field private static final WHAT_QUERY_PAY_STATUS:I = 0x7d1


# instance fields
.field private img_qrcode:Landroid/widget/ImageView;

.field private mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

.field private mGenieResult:Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

.field mModelBean:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

.field mModelBeanV6:Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6ResponseData$ModelBean;

.field private mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

.field private tvPayContent:Landroid/widget/TextView;

.field private tvPayPrice:Landroid/widget/TextView;

.field private tvPayTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->isCosumenBackKey()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)Lcom/alibaba/ailabs/genie/pay/GeniePayResult;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mGenieResult:Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;Lcom/alibaba/ailabs/genie/pay/GeniePayResult;)Lcom/alibaba/ailabs/genie/pay/GeniePayResult;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mGenieResult:Lcom/alibaba/ailabs/genie/pay/GeniePayResult;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->img_qrcode:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->showWarnDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getConfirmOrderV0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 138
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;-><init>()V

    .line 139
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->payPrice(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1, p3}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->itemId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->amount(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p4}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->extend(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    new-instance p2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$3;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    .line 143
    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->listener(Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/GeniePayRequest$Builder;->build()Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;

    move-result-object p1

    .line 189
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->confirmOrderV0(Lcom/alibaba/ailabs/genie/pay/GeniePayRequest;)V

    return-void
.end method

.method private isCosumenBackKey()Z
    .locals 2

    const-string v0, "GeniePay"

    const-string v1, "=============isCosumenBackKey"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->showCancelDialog()V

    const/4 v0, 0x1

    return v0
.end method

.method private showCancelDialog()V
    .locals 10

    .line 339
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->dismiss()V

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    .line 344
    :cond_0
    sget v2, Lcom/alibaba/ailabs/genie/pay/R$string;->tv_voice_pay_cancel_title:I

    sget v3, Lcom/alibaba/ailabs/genie/pay/R$string;->tv_voice_del_dialog_content:I

    sget v4, Lcom/alibaba/ailabs/genie/pay/R$string;->tv_voice_pay_cancel_content5:I

    sget v5, Lcom/alibaba/ailabs/genie/pay/R$string;->tv_voice_pay_cancel_content6:I

    new-instance v6, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$5;

    invoke-direct {v6, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$5;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    new-instance v7, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$6;

    invoke-direct {v7, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$6;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    sget v8, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_tg_shopping_dialog_panel_cancel_pay_message:I

    new-instance v9, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$7;

    invoke-direct {v9, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$7;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils;->showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/ailabs/genie/pay/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    return-void
.end method

.method private showWarnDialog()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->dismiss()V

    const/4 v0, 0x0

    .line 377
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/pay/R$string;->warn_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/pay/R$string;->warn_desc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$8;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/pay/utils/DialogUtils;->showOneButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    return-void
.end method


# virtual methods
.method public handleBaseMessage(Landroid/os/Message;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 251
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x3eb

    const-string v2, "GeniePay"

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 308
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_pay_result_tips:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/pay/R$string;->pay_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/pay/R$drawable;->genie_pay_fail:I

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->show(Landroid/content/Context;ILjava/lang/String;I)V

    .line 309
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->finish()V

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_pay_result_tips:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/pay/R$string;->tv_pay_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/pay/R$drawable;->genie_pay_success:I

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/pay/utils/ToastUtil;->show(Landroid/content/Context;ILjava/lang/String;I)V

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->finish()V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message ConfirmResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getOrderCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV2ResponseData$ModelBean;->getPayOrderCode()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$4;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/ailabs/genie/pay/utils/GeniePayNetApi;->queryPaymentStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/pay/GeniePayListener;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->getInstance()Lcom/alibaba/ailabs/genie/pay/GeniePay;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/pay/GeniePayError;

    const-string v1, "-4"

    const-string v3, "time out"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/ailabs/genie/pay/GeniePayError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/GeniePay;->onFailure(Lcom/alibaba/ailabs/genie/pay/GeniePayError;)V

    .line 298
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 299
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->sendEmptyMessage(I)Z

    const-string p1, "pay fail \u8d85\u65f6"

    .line 300
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->isCosumenBackKey()Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 67
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$layout;->genie_pay_main:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->setContentView(I)V

    .line 71
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->tv_pay_title:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->tvPayTitle:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->tv_pay_content:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->tvPayContent:Landroid/widget/TextView;

    .line 74
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->tv_pay_price:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->tvPayPrice:Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->img_qrcode:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->img_qrcode:Landroid/widget/ImageView;

    .line 77
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->ivTitleBtnLeft:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 78
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$1;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    sget p1, Lcom/alibaba/ailabs/genie/pay/R$id;->ivTitleBtnHome:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 86
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity$2;-><init>(Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "GeniePay"

    if-eqz p1, :cond_3

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/pay/R$string;->title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pay_title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->tvPayTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pay_price"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pay_item_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 117
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "pay_amount"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v5, "pay_extend"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extend:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-lez v5, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-gtz v7, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->tvPayPrice:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/alibaba/ailabs/genie/pay/R$string;->pay_content:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->tvPayContent:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->getConfirmOrderV0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " price  or itemId == 0 !!! price"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " itemId:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p1, " intent == null"

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 391
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->dismiss()V

    .line 396
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;->dismiss()V

    .line 400
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mWarnDialog:Lcom/alibaba/ailabs/genie/pay/dialog/BaseDialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 403
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 406
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayActivity;->isCosumenBackKey()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
