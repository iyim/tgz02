.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeAppDialog;
.super Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
.source "ForbiddenModeAppDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onBackgroundClick()V
    .locals 2

    const-string v0, "ForbiddenModeAppDialog"

    const-string v1, "onBackgroundClick"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeAppDialog;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->show()V

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeAppDialog;->mForbiddenView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$drawable;->forbidden_mode_app:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeAppDialog;->mUnLockImageView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
