.class Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;
.super Landroid/content/BroadcastReceiver;
.source "MicroModule.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;)V
    .locals 1

    .line 335
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 339
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$000()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Module\u4e2d\u6536\u5230\u6536\u94f6\u53f0\u9000\u51fa\u5e7f\u64ad\uff1a%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "source"

    const-string v1, "module"

    .line 342
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    const-string v1, "syttcgb"

    const-string v2, "UC-MobileIC-170505-5"

    invoke-static {v0, v1, v2, p2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->access$100(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 345
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 346
    new-instance v0, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/verifyidentity/module/MicroModule$1$1;-><init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule$1;Ljava/lang/String;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
