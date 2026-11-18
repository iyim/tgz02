.class Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$1;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;

.field final synthetic val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$1;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

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

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$8$1;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$2500(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Z

    return-void
.end method
