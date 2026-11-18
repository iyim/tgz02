.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->handleSingleAvailableTime(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

.field final synthetic val$childModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->val$childModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alibaba/ailabs/genie/time/constant/UtConstant;->DURATION_TYPE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$002(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    .line 276
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->val$childModeSettingBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->setChildBean(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->setCallback(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;)V

    .line 292
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ForbiddenModeManager"

    const-string v1, "show ForbiddenTime dialog"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->show()V

    const-string v1, "\u672c\u5730\u5355\u6b21\u4f7f\u7528\u65f6\u957f>\u624b\u673a\u5355\u6b21\u4f7f\u7528\u65f6\u957f,\u5f39\u51fa\u9632\u6c89\u8ff7\u754c\u9762"

    .line 295
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$5;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "sp_key_single_available_time"

    invoke-static {v0, v3, v1, v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$200(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
