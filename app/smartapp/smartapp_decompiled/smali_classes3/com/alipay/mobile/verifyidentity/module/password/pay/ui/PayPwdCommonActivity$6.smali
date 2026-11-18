.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$6;
.super Ljava/lang/Object;
.source "PayPwdCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V
    .locals 1

    .line 294
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$6;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

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
    .locals 1

    .line 297
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "safeInputContext onClick"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$6;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showKeyboard()V

    return-void
.end method
