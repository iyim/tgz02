.class Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;
.super Ljava/lang/Object;
.source "PwdCommonHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

.field final synthetic val$mResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;->val$mResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

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
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;->val$mResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    const-string p2, "PPW_LOCK_USER_CANCEL"

    iput-object p2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    const-string p2, "PPW_LOCK_FIND"

    const-string v0, "1"

    invoke-virtual {p1, p2, v0}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->writePWDErrorBehavorLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    const-string p2, "abort"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->access$000(Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler$1;->val$mResponse:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/module/password/pay/utils/PwdCommonHandler;->doNextStep(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    return-void
.end method
