.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;
.super Ljava/lang/Thread;
.source "ModuleFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyThread"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 77
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->b:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->c:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 80
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
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->c:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$000(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->this$0:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyThread;->c:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;->access$100(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method
