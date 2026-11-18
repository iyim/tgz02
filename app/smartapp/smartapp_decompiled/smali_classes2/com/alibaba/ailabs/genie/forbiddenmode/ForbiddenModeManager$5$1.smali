.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    .line 281
    invoke-static {}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->getInstance()Lcom/alibaba/ailabs/genie/time/db/QueryUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/time/db/QueryUtil;->resetStartTime()V

    const-string v0, "ForbiddenModeManager"

    const-string v1, "\u5c55\u793a\u5355\u6b21\u65f6\u957f\u7528\u5b8c\u754c\u9762\uff0c\u91cd\u7f6e\u5355\u6b21\u65f6\u957f"

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "handleSingleAvailableTime dismissDialog"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->dismiss()V

    .line 286
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;->this$1:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$002(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    const-string v1, "\u89e3\u9664\u5355\u6b21\u4f7f\u7528\u65f6\u957f\u9650\u5236"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
