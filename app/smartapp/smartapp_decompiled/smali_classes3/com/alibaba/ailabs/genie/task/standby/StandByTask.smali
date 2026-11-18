.class public Lcom/alibaba/ailabs/genie/task/standby/StandByTask;
.super Ljava/lang/Object;
.source "StandByTask.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/task/ITask;
.implements Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskService-Standby"


# instance fields
.field private dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

.field private isCancelSettingStandby:Z

.field private isHasStandby:Z

.field private isStandBySetting:Z

.field private mContext:Landroid/content/Context;

.field private mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isHasStandby:Z

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isCancelSettingStandby:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->cancelStandBy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->hideStandbyDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private cancelStandBy()V
    .locals 2

    const-string v0, "TaskService-Standby"

    const-string v1, "cancelStandBy"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    .line 162
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isHasStandby:Z

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->stopTimer()V

    .line 164
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->hideStandbyDialog()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/utils/ToolsUtils;->turnOnScreen(Landroid/content/Context;)V

    return-void
.end method

.method private checkStandByStatus()V
    .locals 7

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/standby/TimeUtils;->isStandbyTimerOn()Z

    move-result v0

    const-string v1, "TaskService-Standby"

    if-nez v0, :cond_0

    const-string v0, "standby switch is Off."

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/standby/TimeUtils;->getStartTime()I

    move-result v0

    .line 67
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/standby/TimeUtils;->getEndTime()I

    move-result v2

    .line 68
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/standby/TimeUtils;->getCurTime()I

    move-result v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " endTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " curTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 73
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isCancelSettingStandby:Z

    if-nez v0, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->gotoStandBy()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    const-wide/16 v5, 0x3c

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->starTimer(J)V

    .line 79
    iput-boolean v4, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isCancelSettingStandby:Z

    :cond_2
    :goto_0
    if-ne v3, v2, :cond_3

    const-string v0, "WeakUp by setting"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->cancelStandBy()V

    :cond_3
    return-void
.end method

.method private gotoStandBy()V
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoStandBy isHasStandby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isHasStandby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Standby"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->stopTimer()V

    .line 150
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->hideStandbyDialog()V

    .line 151
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isHasStandby:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->sendStanby(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isHasStandby:Z

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    .line 156
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isCancelSettingStandby:Z

    return-void
.end method

.method private hideStandbyDialog()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->dismiss()V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    :cond_0
    return-void
.end method

.method private showStandbyDialog()V
    .locals 4

    const-string v0, "TaskService-Standby"

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/alibaba/ailabs/genie/task/standby/StandByTask$1;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask$1;-><init>(Lcom/alibaba/ailabs/genie/task/standby/StandByTask;)V

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->show()V

    .line 132
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->setTips(J)V

    const-string v1, "showStandbyDialog"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mContext:Landroid/content/Context;

    .line 35
    new-instance p1, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;-><init>(Lcom/alibaba/ailabs/genie/task/standby/TimeCounter$TimeListener;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isHasStandby:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGoStandBy()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->gotoStandBy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onReceiver(Landroid/content/Intent;)V
    .locals 7

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stand_by_setting_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->checkStandByStatus()V

    goto/16 :goto_0

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ailabs.genie.ACTION_STANDBY_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TaskService-Standby"

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x0

    const-string v0, "key_standby_time"

    .line 95
    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "STAND_BY_SET ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " TimeCounter left ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->getLeftTime()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->getLeftTime()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isStandBySetting ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->cancelStandBy()V

    .line 103
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->mTimeCounter:Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/ailabs/genie/task/standby/TimeCounter;->starTimer(J)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.ailabs.genie.ACTION_STANDBY_CANCEL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "STAND_BY_CANCEL"

    .line 106
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isStandBySetting:Z

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isCancelSettingStandby:Z

    .line 108
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->cancelStandBy()V

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 111
    :cond_4
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->isHasStandby:Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onShowDialog()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->showStandbyDialog()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onUpdateTime(J)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->dialog:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->setTips(J)V

    :cond_0
    return-void
.end method

.method public runTick()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;->checkStandByStatus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
