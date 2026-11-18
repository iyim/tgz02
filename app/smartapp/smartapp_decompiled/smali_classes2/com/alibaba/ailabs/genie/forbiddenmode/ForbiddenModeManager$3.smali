.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->dismissTotalAvailableTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ForbiddenModeManager"

    const-string v1, "time is exceed 00:00"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v1

    instance-of v1, v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->dismiss()V

    .line 226
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$3;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$002(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    const-string v1, "dismiss ForbiddenTime dialog because time is exceed 00:00"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
