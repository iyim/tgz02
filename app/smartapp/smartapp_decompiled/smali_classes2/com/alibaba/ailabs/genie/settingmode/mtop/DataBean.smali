.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$LocalASRBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicControlBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ListenModeBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$AsrRecordTimeBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MessageColorBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ShieldEyeModeBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupColorBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VoiceTypeBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$CameraControlBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupStyleBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;,
        Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;
    }
.end annotation


# instance fields
.field private UltrasonicControl:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicControlBean;

.field private asrRecordTime:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$AsrRecordTimeBean;

.field private cameraControl:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$CameraControlBean;

.field private characterName:Ljava/lang/String;

.field private child_mode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;

.field private dndMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;

.field private extendJson:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;

.field private featureList:Ljava/lang/String;

.field private fullDuplexDialog:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;

.field private kidMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;

.field private listenMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ListenModeBean;

.field private localASR:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$LocalASRBean;

.field private messageColor:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MessageColorBean;

.field private musicLight:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;

.field private nearbyWakeup:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;

.field private nearbyWakeupSupport:I

.field private shieldEyeMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ShieldEyeModeBean;

.field private smartCare:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;

.field private ultrasonic:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;

.field private visual:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;

.field private voiceType:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VoiceTypeBean;

.field private wakeupColor:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupColorBean;

.field private wakeupSound:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;

.field private wakeupStatus:Z

.field private wakeupStyle:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupStyleBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAsrRecordTime()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$AsrRecordTimeBean;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->asrRecordTime:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$AsrRecordTimeBean;

    return-object v0
.end method

.method public getCameraControl()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$CameraControlBean;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->cameraControl:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$CameraControlBean;

    return-object v0
.end method

.method public getCharacterName()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->characterName:Ljava/lang/String;

    return-object v0
.end method

.method public getChild_mode()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->child_mode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;

    return-object v0
.end method

.method public getDndMode()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->dndMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;

    return-object v0
.end method

.method public getExtendJson()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->extendJson:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;

    return-object v0
.end method

.method public getFeatureList()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->featureList:Ljava/lang/String;

    return-object v0
.end method

.method public getFullDuplexDialog()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->fullDuplexDialog:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;

    return-object v0
.end method

.method public getKidMode()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->kidMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;

    return-object v0
.end method

.method public getListenMode()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ListenModeBean;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->listenMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ListenModeBean;

    return-object v0
.end method

.method public getLocalASR()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$LocalASRBean;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->localASR:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$LocalASRBean;

    return-object v0
.end method

.method public getMessageColor()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MessageColorBean;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->messageColor:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MessageColorBean;

    return-object v0
.end method

.method public getMusicLight()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->musicLight:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;

    return-object v0
.end method

.method public getNearbyWakeup()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->nearbyWakeup:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;

    return-object v0
.end method

.method public getNearbyWakeupSupport()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->nearbyWakeupSupport:I

    return v0
.end method

.method public getShieldEyeMode()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ShieldEyeModeBean;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->shieldEyeMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ShieldEyeModeBean;

    return-object v0
.end method

.method public getSmartCare()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->smartCare:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;

    return-object v0
.end method

.method public getUltrasonic()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->ultrasonic:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;

    return-object v0
.end method

.method public getUltrasonicControl()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicControlBean;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->UltrasonicControl:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicControlBean;

    return-object v0
.end method

.method public getVisual()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->visual:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;

    return-object v0
.end method

.method public getVoiceType()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VoiceTypeBean;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->voiceType:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VoiceTypeBean;

    return-object v0
.end method

.method public getWakeupColor()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupColorBean;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupColor:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupColorBean;

    return-object v0
.end method

.method public getWakeupSound()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupSound:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;

    return-object v0
.end method

.method public getWakeupStyle()Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupStyleBean;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupStyle:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupStyleBean;

    return-object v0
.end method

.method public isWakeupStatus()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupStatus:Z

    return v0
.end method

.method public setAsrRecordTime(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$AsrRecordTimeBean;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->asrRecordTime:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$AsrRecordTimeBean;

    return-void
.end method

.method public setCameraControl(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$CameraControlBean;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->cameraControl:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$CameraControlBean;

    return-void
.end method

.method public setCharacterName(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->characterName:Ljava/lang/String;

    return-void
.end method

.method public setChild_mode(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->child_mode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ChildModeBean;

    return-void
.end method

.method public setDndMode(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->dndMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$DndModeBean;

    return-void
.end method

.method public setExtendJson(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->extendJson:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ExtendJsonBean;

    return-void
.end method

.method public setFeatureList(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->featureList:Ljava/lang/String;

    return-void
.end method

.method public setFullDuplexDialog(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->fullDuplexDialog:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$FullDuplexDialogBean;

    return-void
.end method

.method public setKidMode(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->kidMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;

    return-void
.end method

.method public setListenMode(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ListenModeBean;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->listenMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ListenModeBean;

    return-void
.end method

.method public setLocalASR(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$LocalASRBean;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->localASR:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$LocalASRBean;

    return-void
.end method

.method public setMessageColor(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MessageColorBean;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->messageColor:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MessageColorBean;

    return-void
.end method

.method public setMusicLight(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->musicLight:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$MusicLightBean;

    return-void
.end method

.method public setNearbyWakeup(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->nearbyWakeup:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;

    return-void
.end method

.method public setNearbyWakeupSupport(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->nearbyWakeupSupport:I

    return-void
.end method

.method public setShieldEyeMode(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ShieldEyeModeBean;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->shieldEyeMode:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$ShieldEyeModeBean;

    return-void
.end method

.method public setSmartCare(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->smartCare:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;

    return-void
.end method

.method public setUltrasonic(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->ultrasonic:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicBean;

    return-void
.end method

.method public setUltrasonicControl(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicControlBean;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->UltrasonicControl:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$UltrasonicControlBean;

    return-void
.end method

.method public setVisual(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->visual:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VisualBean;

    return-void
.end method

.method public setVoiceType(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VoiceTypeBean;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->voiceType:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$VoiceTypeBean;

    return-void
.end method

.method public setWakeupColor(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupColorBean;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupColor:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupColorBean;

    return-void
.end method

.method public setWakeupSound(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupSound:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupSoundBean;

    return-void
.end method

.method public setWakeupStatus(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupStatus:Z

    return-void
.end method

.method public setWakeupStyle(Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupStyleBean;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;->wakeupStyle:Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$WakeupStyleBean;

    return-void
.end method
