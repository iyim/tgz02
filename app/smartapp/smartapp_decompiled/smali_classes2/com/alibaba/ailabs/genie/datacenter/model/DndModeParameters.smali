.class public Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;
.super Ljava/lang/Object;
.source "DndModeParameters.java"


# static fields
.field public static final DEFAULT_BTN_CLICK_DATE:J = 0x0L

.field public static final DEFAULT_DND_CLOSED_BY_USER_IN_TCM:Z = false

.field public static final DEFAULT_DND_MANUAL_MODE_ENABLE:Z = false

.field public static final DEFAULT_END_HOUR:I = 0x7

.field public static final DEFAULT_END_MIN:I = 0x1e

.field public static final DEFAULT_LOW_SENSITIVITY:Z = true

.field public static final DEFAULT_MSG_QUIET:Z = false

.field public static final DEFAULT_PHONE_CALL_QUIET:Z = false

.field public static final DEFAULT_SCREEN_OFF:Z = true

.field public static final DEFAULT_START_HOUR:I = 0x16

.field public static final DEFAULT_START_MIN:I = 0x0

.field public static final DEFAULT_TCM_MODE_ENABLE:Z = true

.field public static final DEFAULT_WAKEUP_QUIET:Z = true


# instance fields
.field public mDndManualModeBtnClick:Z

.field public mDndModeManualEnable:Z

.field public mDndModeVersion:I

.field public mDndOrTcmBtnClickDate:Ljava/lang/String;

.field public mEndHour:I

.field public mEndMin:I

.field public mLowWakeupSensitivity:Z

.field public mMsgQuiet:Z

.field public mPhoneCallQuiet:Z

.field public mScreenOff1Min:Z

.field public mStartHour:I

.field public mStartMin:I

.field public mTimeCycleModeEnable:Z

.field public mWakeupFeedback:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    const/16 v2, 0x16

    .line 36
    iput v2, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 37
    iput v0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    const/4 v2, 0x7

    .line 38
    iput v2, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    const/16 v2, 0x1e

    .line 39
    iput v2, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 40
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    .line 43
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    const-string v1, "none"

    .line 44
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    .line 45
    iput v0, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DndModeParameters, start hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; start min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; end hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; end min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mDndModeManualEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mTimeCycleModeEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mTimeCycleModeEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mScreenOff1Min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mMsgQuiet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mMsgQuiet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mPhoneCallQuiet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mPhoneCallQuiet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mLowWakeupSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mLowWakeupSensitivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mWakeupFeedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; mDndModeVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; mDndManualModeBtnClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndManualModeBtnClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mDndOrTcmBtnClickDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
