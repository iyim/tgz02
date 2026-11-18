.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

.field final synthetic val$finalToken:Ljava/lang/String;

.field final synthetic val$finalVerifyId:Ljava/lang/String;

.field final synthetic val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

.field final synthetic val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalVerifyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

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
    .locals 3

    .line 388
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalVerifyId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$finalToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$response:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$1;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$700(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method
