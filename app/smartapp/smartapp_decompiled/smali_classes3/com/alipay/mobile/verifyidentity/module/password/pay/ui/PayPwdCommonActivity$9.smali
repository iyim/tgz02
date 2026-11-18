.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;
.super Ljava/lang/Object;
.source "PayPwdCommonActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V
    .locals 1

    .line 389
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 391
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showProgress(I)V

    .line 392
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showKeyboard()V

    .line 393
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$9;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    const-string p2, "RETRY"

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->writePWDErrorBehavorLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
