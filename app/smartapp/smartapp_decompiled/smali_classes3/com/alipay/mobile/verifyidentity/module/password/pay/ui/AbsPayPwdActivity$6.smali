.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$6;
.super Ljava/lang/Object;
.source "AbsPayPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)V
    .locals 1

    .line 234
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$6;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

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

    .line 236
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$6;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->access$600(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    const-string p2, "PPW_LOCK_USER_CANCEL"

    iput-object p2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    .line 237
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$6;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    const-string p2, "PPW_LOCK_FIND"

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->writePWDErrorBehavorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$6;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;->doNextStep()V

    return-void
.end method
