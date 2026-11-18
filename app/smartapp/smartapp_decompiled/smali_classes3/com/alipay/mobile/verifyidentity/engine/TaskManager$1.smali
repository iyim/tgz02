.class Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

.field final synthetic val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

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
    .locals 7

    .line 87
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    iget-object v2, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextVerifyId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$1;->val$slientModule:Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;

    iget-object v3, v0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$SlientModule;->nextModuleData:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/VerifyIdentityEngine;->unifiedStartByVerifyId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V

    return-void
.end method
