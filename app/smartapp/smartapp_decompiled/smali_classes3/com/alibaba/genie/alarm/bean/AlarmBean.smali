.class public Lcom/alibaba/genie/alarm/bean/AlarmBean;
.super Ljava/lang/Object;
.source "AlarmBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;,
        Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmMonths;,
        Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;,
        Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;,
        Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;
    }
.end annotation


# instance fields
.field private alarmId:J

.field private expireTime:Ljava/lang/String;

.field public isShowDelete:Z

.field public isShowSelected:Z

.field private musicDTO:Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

.field private repeatCount:I

.field private scheduleDTO:Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

.field private status:I

.field private topic:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowDelete:Z

    .line 28
    iput-boolean v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->isShowSelected:Z

    return-void
.end method


# virtual methods
.method public getAlarmId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->alarmId:J

    return-wide v0
.end method

.method public getExpireTime()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->expireTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->musicDTO:Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->repeatCount:I

    return v0
.end method

.method public getScheduleDTO()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->scheduleDTO:Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->status:I

    return v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->volume:I

    return v0
.end method

.method public setAlarmId(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->alarmId:J

    return-void
.end method

.method public setExpireTime(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->expireTime:Ljava/lang/String;

    return-void
.end method

.method public setMusicDTO(Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->musicDTO:Lcom/alibaba/genie/alarm/bean/AlarmBean$MusicDTO;

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->repeatCount:I

    return-void
.end method

.method public setScheduleDTO(Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->scheduleDTO:Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->status:I

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->topic:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean;->volume:I

    return-void
.end method
