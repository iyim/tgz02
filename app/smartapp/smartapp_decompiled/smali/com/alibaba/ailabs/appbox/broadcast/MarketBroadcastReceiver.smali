.class public Lcom/alibaba/ailabs/appbox/broadcast/MarketBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MarketBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketBroadcastReceiver"

    .line 17
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->getInstance()Lcom/alibaba/ailabs/appbox/utils/AppManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/utils/AppManager;->isAnyActivityActive()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "glide clear clearCache ... "

    .line 27
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
