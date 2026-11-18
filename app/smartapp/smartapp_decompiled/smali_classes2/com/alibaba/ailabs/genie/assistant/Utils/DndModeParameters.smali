.class public Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;
.super Ljava/lang/Object;
.source "DndModeParameters.java"


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

    .line 5
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeManualEnable:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mTimeCycleModeEnable:Z

    const/16 v2, 0x16

    .line 7
    iput v2, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartHour:I

    .line 8
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mStartMin:I

    const/4 v2, 0x7

    .line 9
    iput v2, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndHour:I

    const/16 v2, 0x1e

    .line 10
    iput v2, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mEndMin:I

    .line 11
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mScreenOff1Min:Z

    .line 12
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mMsgQuiet:Z

    .line 13
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mPhoneCallQuiet:Z

    .line 14
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mLowWakeupSensitivity:Z

    const-string v1, "none"

    .line 15
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mWakeupFeedback:Ljava/lang/String;

    .line 16
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndModeVersion:I

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndManualModeBtnClick:Z

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Utils/DndModeParameters;->mDndOrTcmBtnClickDate:Ljava/lang/String;

    return-void
.end method
