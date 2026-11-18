.class Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;
.super Ljava/lang/Object;
.source "PayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;->bindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 20
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_commonpay_cancel_msg:I

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_commonpay_cancel_mismsg:I

    sget v3, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_cancel_post:I

    sget v4, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_go_post:I

    new-instance v5, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1$1;

    invoke-direct {v5, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils;->showCommonMessageDialog(Landroid/app/Activity;IIIILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILcom/alibaba/ailabs/genie/commonpay/utils/DialogUtils$OnBindContentView;)Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;

    return-void
.end method
