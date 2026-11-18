.class Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;
.super Ljava/lang/Object;
.source "PayBaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mButtonLeft:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->access$000(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->access$000(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mButtonRight:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->access$100(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->access$100(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->access$200(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->access$200(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 58
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayBaseDialog;->dismiss()V

    return-void
.end method
