.class Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AGUIOnlineReceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AGUIOnlineReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager$1;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "gw_online_status"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "GenieAIRouter"

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const-string p1, "AGUIOnlineReceiver router gw_online_status != 1"

    .line 71
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;->getInstance()Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;->unRetisterBrocast(Landroid/content/Context;)V

    .line 79
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->maybeInit(Landroid/content/Context;)V

    const-string p1, "AGUIOnlineReceiver maybeInit"

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
