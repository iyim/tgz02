.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AGUIOnlineReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "gw_online_status"

    .line 477
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "BootHomeActivity"

    if-eq v2, v3, :cond_0

    const-string p1, "AGUIOnlineReceiver gw_online_status != 1"

    .line 478
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$1200(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    .line 482
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getBootInfo(Z)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 484
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->updateModeOnLine(Landroid/content/Context;)V

    .line 486
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$AGUIOnlineReceiver;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$1300(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGUIOnlineReceiver gw_online_status = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AGUIOnlineReceiver:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
