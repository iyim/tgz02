.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;
.super Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
.source "ForbiddenModeTotalTimeDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onUnLockImageViewClick()V
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;->showPasswordView()V

    .line 24
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeTotalTimeDialog;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
