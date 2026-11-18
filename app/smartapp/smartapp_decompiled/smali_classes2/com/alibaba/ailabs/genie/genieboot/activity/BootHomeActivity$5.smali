.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;
.super Ljava/lang/Object;
.source "BootHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->goHomeBySysPropAndStartService()V
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

    .line 426
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnAnimationURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnMD5()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOffAnimationURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$5;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$100(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOffMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startDownloadVideoService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
