.class Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$2;
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

    .line 175
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$2;->this$0:Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->finish()V

    return-void
.end method
