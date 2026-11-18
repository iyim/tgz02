.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;
.super Ljava/lang/Object;
.source "AbsPayPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->notifyCancel()V

    const/4 p1, 0x1

    .line 109
    new-array p2, p1, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;->val$url:Ljava/lang/String;

    aput-object v0, p1, v1

    const-string v0, "com.alipay.mobile.verifyidentity.alipay.util.H5Utils"

    const-string v1, "startH5"

    invoke-static {v0, v1, p2, p1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    const-string p2, "setupPPW"

    const-string v0, "1"

    invoke-static {p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
