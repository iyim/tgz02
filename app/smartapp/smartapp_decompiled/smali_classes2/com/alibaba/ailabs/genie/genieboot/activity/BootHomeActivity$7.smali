.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$7;
.super Ljava/lang/Object;
.source "BootHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->checkImgShowEnd(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

.field final synthetic val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$7;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$7;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$7;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$7;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$1400(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    return-void
.end method
