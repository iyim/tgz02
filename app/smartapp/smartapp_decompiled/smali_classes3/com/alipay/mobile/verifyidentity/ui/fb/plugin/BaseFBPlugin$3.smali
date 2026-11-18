.class Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseFBPlugin.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)V
    .locals 1

    .line 483
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

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
    .locals 2

    .line 486
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->access$000(Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u6536\u5230\u6536\u94f6\u53f0\u9000\u51fa\u5e7f\u64ad\uff1aKExitMiniPayViewNotification"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->onBNPageClose()V

    .line 489
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "source"

    const-string v0, "plugin"

    .line 490
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;

    const-string v0, "syttcgb"

    const-string v1, "UC-MobileIC-170505-5"

    invoke-virtual {p2, v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/ui/fb/plugin/BaseFBPlugin;->logBehavior(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
