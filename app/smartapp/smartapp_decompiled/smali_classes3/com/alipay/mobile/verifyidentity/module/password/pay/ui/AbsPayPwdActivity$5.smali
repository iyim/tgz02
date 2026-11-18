.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;
.super Ljava/lang/Object;
.source "AbsPayPwdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

.field final synthetic val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

.field final synthetic val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;->val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

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
.method public run()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;->val$listener:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$5;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;->onResult(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    return-void
.end method
