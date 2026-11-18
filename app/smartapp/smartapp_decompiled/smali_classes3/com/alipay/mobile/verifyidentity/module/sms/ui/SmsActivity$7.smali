.class Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

.field final synthetic val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

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
    .locals 0

    .line 342
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$7;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$2100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    return-void
.end method
