.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;
.super Ljava/lang/Object;
.source "PayPwdCommonActivity.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/AbsPayPwdActivity$VerifyResultListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;)V
    .locals 1

    .line 260
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

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
.method public onResult(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 2

    if-nez p1, :cond_0

    .line 263
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "input pwd null result"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onNetError()V

    return-void

    .line 267
    :cond_0
    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->startAnimationDone()V

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->clearInputContent()V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/PubKeyHelper;->updateLocalPubKey(Landroid/content/Context;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->access$500(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;Ljava/lang/String;)V

    .line 274
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v1, "RETRY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "input pwd retry"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->onPwdError(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->processError()V

    :goto_0
    return-void
.end method
