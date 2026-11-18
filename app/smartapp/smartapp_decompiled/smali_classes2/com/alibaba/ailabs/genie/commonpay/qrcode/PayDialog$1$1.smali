.class Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1$1;
.super Ljava/lang/Object;
.source "PayDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1$1;->this$1:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1$1;->this$1:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog$1;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/PayDialog;->dismiss()V

    return-void
.end method
