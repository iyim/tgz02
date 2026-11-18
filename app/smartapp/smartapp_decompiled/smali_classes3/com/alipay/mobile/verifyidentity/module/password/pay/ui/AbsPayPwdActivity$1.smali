.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$1;
.super Ljava/lang/Object;
.source "AbsPayPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)V
    .locals 1

    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

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
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyCancel()V

    return-void
.end method
