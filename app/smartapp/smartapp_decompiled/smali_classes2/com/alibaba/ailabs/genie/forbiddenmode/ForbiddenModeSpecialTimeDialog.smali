.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;
.super Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
.source "ForbiddenModeSpecialTimeDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .line 25
    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$layout;->forbidden_mode_base_layout:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_view:I

    if-ne v0, v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;->onBackgroundClick()V

    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->unlock_image_view:I

    if-ne v0, v1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;->onUnLockImageViewClick()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_right_button_unlock:I

    if-ne v0, v1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;->onRightButtonClick()V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/alibaba/ailabs/genie/timestatistics/R$id;->forbidden_mode_left_button_setting:I

    if-ne p1, v0, :cond_3

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;->onLeftButtonClick()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onLeftButtonClick()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->onLeftButtonClick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onRightButtonClick()V
    .locals 0

    .line 79
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->onRightButtonClick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onUnLockImageViewClick()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "genie://com.alibaba.ailabs.genie.datacenter/childModeSettingPage"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/RouterUtils;->openActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSpecialTimeDialog;->dismiss()V

    return-void
.end method
