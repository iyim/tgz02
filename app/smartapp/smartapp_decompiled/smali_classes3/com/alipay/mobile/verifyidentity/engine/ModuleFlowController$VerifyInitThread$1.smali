.class Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;
.super Ljava/lang/Object;
.source "ModuleFlowController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;)V
    .locals 1

    .line 115
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;->this$1:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;

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
    .locals 2

    .line 118
    new-instance p1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string p2, "2003"

    invoke-direct {p1, p2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object p2

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread$1;->this$1:Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;->access$300(Lcom/alipay/mobile/verifyidentity/engine/ModuleFlowController$VerifyInitThread;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p2, v1, v1, p1, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->notifyVerifyTaskResult(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V

    return-void
.end method
