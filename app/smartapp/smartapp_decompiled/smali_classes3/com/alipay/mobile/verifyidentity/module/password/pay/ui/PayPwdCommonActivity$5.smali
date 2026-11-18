.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$5;
.super Ljava/lang/Object;
.source "PayPwdCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)V
    .locals 1

    .line 285
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

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
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 288
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeInputContext onFocusChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 290
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->showKeyboard()V

    :cond_0
    return-void
.end method
