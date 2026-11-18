.class public Lcom/alibaba/genie/shopping/activity/PayResultActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "PayResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/BaseActivity<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private from_applet:I

.field private mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

.field private pay_failure_layout:Landroid/widget/RelativeLayout;

.field private pay_message:Ljava/lang/String;

.field private pay_status:I

.field private pay_success_layout:Landroid/widget/RelativeLayout;

.field private tv_failure_taobaosname:Landroid/widget/TextView;

.field private tv_goon_buy:Landroid/widget/TextView;

.field private tv_pay_failure:Landroid/widget/TextView;

.field private tv_pay_result:Landroid/widget/TextView;

.field private tv_paymount:Landroid/widget/TextView;

.field private tv_recv_address:Landroid/widget/TextView;

.field private tv_recv_person:Landroid/widget/TextView;

.field private tv_taobaosname:Landroid/widget/TextView;

.field private tv_transaction_num:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->from_applet:I

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_goon_buy:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
    .locals 1

    .line 334
    new-instance v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 2

    .line 236
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v1, "payResultActivity"

    .line 237
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const-string v0, "87fa86ae-d34a-48f2-b098-92973292cc94"

    .line 239
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayResultActivity getContextData; appContextData="

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

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 55
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_pay_result:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->setContentView(I)V

    .line 58
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_transaction_num:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_transaction_num:Landroid/widget/TextView;

    .line 60
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_recv_person:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_recv_person:Landroid/widget/TextView;

    .line 61
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_recv_address:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_recv_address:Landroid/widget/TextView;

    .line 63
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_paymount:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_paymount:Landroid/widget/TextView;

    .line 64
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_taobaosname:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_taobaosname:Landroid/widget/TextView;

    .line 65
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_failure_taobaosname:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_failure_taobaosname:Landroid/widget/TextView;

    .line 67
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_goon_buy:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_goon_buy:Landroid/widget/TextView;

    .line 69
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->pay_success_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->pay_success_layout:Landroid/widget/RelativeLayout;

    .line 70
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->pay_failure_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->pay_failure_layout:Landroid/widget/RelativeLayout;

    .line 71
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_pay_result:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_pay_result:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_pay_failure:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_pay_failure:Landroid/widget/TextView;

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "pay_status"

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    iput-object v1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    const-string v1, "from_applet"

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->from_applet:I

    .line 86
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->payresult_iknow:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/alibaba/genie/shopping/activity/PayResultActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity$1;-><init>(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_goon_buy:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/activity/PayResultActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity$2;-><init>(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz p1, :cond_6

    .line 127
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->pay_success_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->pay_failure_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_transaction_num:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->orderCode:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->receiverName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_recv_person:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->receiverName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->receiverAddress:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 135
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_recv_address:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->receiverAddress:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_paymount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uffe5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    iget-object v4, v4, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;->payPrice:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_goon_buy:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/genie/shopping/activity/PayResultActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity$3;-><init>(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 163
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbNickName:Ljava/lang/String;

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_taobaosname:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_paystr1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_4
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_taobaosname:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_paystr5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_5
    :goto_0
    new-instance p1, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;-><init>(Lcom/alibaba/genie/shopping/activity/PayResultActivity;JJ)V

    .line 199
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/PayResultActivity$4;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    .line 210
    :cond_6
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->pay_success_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->pay_failure_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getTBUserData(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 219
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/TBUserData;->tbNickName:Ljava/lang/String;

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 221
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->tv_failure_taobaosname:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_payfailure1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const/4 v4, -0x1

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->tv_buy_failed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "87fa86ae-d34a-48f2-b098-92973292cc94"

    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    :goto_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 328
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onPause()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onResume()V
    .locals 6

    const-string v0, "a1z3lt.12021302"

    const-string v1, "a1z3lt.12021304"

    .line 303
    invoke-super {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onResume()V

    .line 305
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->showUi(Landroid/content/Context;)V

    .line 306
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;

    const/16 v3, 0x2712

    if-eqz v2, :cond_0

    const-string v2, "com.alibaba.ailabs.genie.shopping/PayResultActivitySuccess"

    .line 307
    invoke-static {p0, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "com.alibaba.ailabs.genie.shopping/PayResultActivityFail"

    .line 309
    invoke-static {p0, v3, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->updateGenieText(Landroid/content/Context;ILjava/lang/String;)V

    .line 313
    :goto_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 314
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->mPaystatus:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatus;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, "spm"

    if-eqz v3, :cond_1

    .line 315
    :try_start_1
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Payment success page"

    .line 316
    invoke-virtual {p0, v0, v1, v4}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 318
    :cond_1
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shopping_Payment failure page"

    .line 319
    invoke-virtual {p0, v1, v0, v4}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->utPage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayResultActivity processNLPResult; commandDomain="

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

    invoke-static {p4, p1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string p4, "/SelectContent"

    .line 248
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 249
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 253
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "data"

    .line 255
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "resp"

    .line 257
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    const-string p3, "intentName"

    .line 258
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "continue_buy_dynamic"

    .line 261
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 262
    new-instance p2, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/activity/PayResultActivity$5;-><init>(Lcom/alibaba/genie/shopping/activity/PayResultActivity;)V

    invoke-virtual {p0, p2}, Lcom/alibaba/genie/shopping/activity/PayResultActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 286
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p2, 0x1

    .line 290
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_1
    return-object p1
.end method
