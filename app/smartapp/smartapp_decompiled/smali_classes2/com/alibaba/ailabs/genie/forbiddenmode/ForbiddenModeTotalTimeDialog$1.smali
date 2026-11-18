.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog$1;
.super Ljava/lang/Object;
.source "ForbiddenModeTotalTimeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;->onUnLockImageViewClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    if-nez v0, :cond_0

    const-string v0, "mChildModeBean == null"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "ForbiddenModeTotalTimeDialog_onUnLockImageViewClick"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/time/utils/AGUILog;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
