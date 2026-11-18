.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserUnLockedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceiveUserUnLockedReceiver:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BootHomeActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$1000(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    .line 470
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$UserUnLockedReceiver;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$1100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    return-void
.end method
