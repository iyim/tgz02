.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;
.super Ljava/lang/Object;
.source "PayPwdCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V
    .locals 1

    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

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
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 118
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->hideKeyboard()V

    .line 119
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->mOther:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
