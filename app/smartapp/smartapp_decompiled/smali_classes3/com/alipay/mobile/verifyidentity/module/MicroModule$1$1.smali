.class Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;
.super Ljava/lang/Object;
.source "MicroModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->val$action:Ljava/lang/String;

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
    .locals 3

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$200(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$200(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$300(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)Lcom/alipay/mobile/verifyidentity/callback/ModuleListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PoP\u6a21\u5f0f\u4e0b\uff0c\u53d1\u73b0\u5f53\u524dmodule\u5df2\u7ecf\u56de\u8c03\u8fc7"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->needKeepInside:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "KExitMiniPayViewNotification"

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u515c\u5e95\u6e05\u7406\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.alipay.closevidactivity"

    .line 360
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6536\u94f6\u53f0\u901a\u77e5\u6838\u8eab\u5173\u95ed\u9875\u9762\uff01"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_3
    :goto_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string v1, "1003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->notifyResult(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->destroy()V

    goto :goto_2

    .line 351
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u666e\u901a\u6a21\u5f0f\u4e0d\u9700\u8981\u505a\u515c\u5e95\u6e05\u7406"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 367
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u63a5\u5230\u6536\u94f6\u53f0\u5e7f\u64ad\u540e\uff0c1s\u540e\u5904\u7406\u65f6\u51fa\u73b0\u5f02\u5e38\uff1a "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
