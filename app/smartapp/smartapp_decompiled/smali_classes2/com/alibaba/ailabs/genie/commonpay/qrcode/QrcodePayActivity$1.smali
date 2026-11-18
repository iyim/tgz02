.class Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1;
.super Ljava/lang/Object;
.source "QrcodePayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 164
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;

    sget v1, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_commonpay_cancel_msg:I

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_commonpay_cancel_mismsg:I

    sget v3, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_cancel_post:I

    sget v4, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_go_post:I

    new-instance v5, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1$1;

    invoke-direct {v5, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils;->showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->access$002(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;)Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;

    return-void
.end method
