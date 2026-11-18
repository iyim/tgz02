.class public Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;
.super Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;
.source "ForbiddenModeSingleTimeDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onBackgroundClick()V
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6839\u636e\u624b\u673aAPP\u8bbe\u7f6e\u4f11\u606f\u65f6\u95f4\u8bbe\u7f6e \u5c55\u793a\u5f53\u6b21\u53ef\u770b\u65f6\u957f\u80cc\u666f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenModeBaseDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v0

    const/16 v1, 0x384

    if-gt v0, v1, :cond_1

    .line 59
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$string;->forbidden_mode_tts_1:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v0

    const/16 v1, 0xe10

    if-gt v0, v1, :cond_2

    .line 61
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$string;->forbidden_mode_tts_2:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    goto :goto_0

    .line 63
    :cond_2
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->onBackgroundClick()V

    :goto_0
    return-void
.end method

.method protected onUnLockImageViewClick()V
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->showPasswordView()V

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog$1;-><init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeBaseDialog;->show()V

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6839\u636e\u624b\u673aAPP\u8bbe\u7f6e\u4f11\u606f\u65f6\u95f4\u8bbe\u7f6e \u5c55\u793a\u5f53\u6b21\u53ef\u770b\u65f6\u957f\u80cc\u666f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForbiddenModeBaseDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v0

    const/16 v1, 0x384

    if-gt v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mForbiddenView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$drawable;->forbidden_time_15:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mChildModeBean:Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getBreakTime()I

    move-result v0

    const/16 v1, 0xe10

    if-gt v0, v1, :cond_2

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mForbiddenView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$drawable;->forbidden_time_60:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeSingleTimeDialog;->mForbiddenView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/genie/timestatistics/R$drawable;->forbidden_time_120:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
