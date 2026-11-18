.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4$1;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$002(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    const-string v0, "ForbiddenModeManager"

    const-string v1, "\u89e3\u9664\u4eca\u65e5\u4f7f\u7528\u65f6\u957f\u9650\u5236"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$4;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    const/4 v1, 0x1

    const-string v2, "sp_key_total_available_time"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->updateFlagCloseByUser(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
