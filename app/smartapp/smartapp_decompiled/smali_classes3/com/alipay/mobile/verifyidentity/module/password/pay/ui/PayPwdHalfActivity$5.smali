.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$5;
.super Ljava/lang/Object;
.source "PayPwdHalfActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;)V
    .locals 1

    .line 230
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

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

    .line 232
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;

    const-string v0, "102"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdHalfActivity;->notifyCancel(Ljava/lang/String;)V

    return-void
.end method
