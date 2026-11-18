.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->handleForbiddenTime()V
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

    .line 360
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$400(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/alibaba/ailabs/genie/time/constant/UtConstant;->DISABLE_TYPE:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$402(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$400(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->setCallback(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog$CallBack;)V

    .line 372
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$400(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$600(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->setCurrentBean(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;)V

    .line 374
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$400(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "show ForbiddenTime dialog"

    const-string v1, "ForbiddenModeManager"

    .line 375
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$7;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$400(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->show()V

    .line 377
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
