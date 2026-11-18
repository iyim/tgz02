.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$1;
.super Landroid/os/Handler;
.source "BootHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 108
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BootHomeActivity"

    const-string v0, "InstallFailedNetErroTrainAgain"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$200(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$1;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$000(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    :goto_0
    return-void
.end method
