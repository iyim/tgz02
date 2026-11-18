.class Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AGUIOnlineReceiverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AGUIOnlineReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "gw_online_status"

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const-string p1, "BootApp"

    const-string p2, "AGUIOnlineReceiver gw_online_status != 1"

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager;->unRetisterBrocast(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getBootInfo(Z)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object p2

    if-nez p2, :cond_1

    .line 87
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateModeOnLine(Landroid/content/Context;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateChildModeByOnLineMode(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/receiver/AGUIOnlineReceiverManager$AGUIOnlineReceiver;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
