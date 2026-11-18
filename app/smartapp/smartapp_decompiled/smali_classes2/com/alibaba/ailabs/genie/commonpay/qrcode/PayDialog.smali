.class public Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;
.super Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;
.source "PayDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected bindView(Landroid/view/View;)V
    .locals 1

    .line 17
    sget v0, Lcom/alibaba/ailabs/genie/commonpay/R$id;->tg_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .line 12
    sget v0, Lcom/alibaba/ailabs/genie/commonpay/R$layout;->genie_code_pay_dialog_fragment:I

    return v0
.end method
