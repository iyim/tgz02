.class Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2$1;
.super Ljava/lang/Object;
.source "PayPwdCommonActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;

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
.method public run()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;

    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity$2;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;->access$100(Lcom/alipay/mobile/verifyidentity/module/password/pay/ui/PayPwdCommonActivity;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/utils/VIUtils;->a(Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;Landroid/app/Activity;Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    return-void
.end method
