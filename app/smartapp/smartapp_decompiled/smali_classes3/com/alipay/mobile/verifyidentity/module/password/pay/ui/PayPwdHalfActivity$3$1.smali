.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3$1;
.super Ljava/lang/Object;
.source "PayPwdHalfActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;)V
    .locals 1

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;

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
.method public onGlobalLayout()V
    .locals 2

    .line 126
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mKeyBoardLayout onGlobalLayout"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$3;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->access$200(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V

    return-void
.end method
