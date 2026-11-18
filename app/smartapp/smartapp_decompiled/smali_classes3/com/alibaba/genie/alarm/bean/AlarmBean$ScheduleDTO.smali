.class public Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;
.super Ljava/lang/Object;
.source "AlarmBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/bean/AlarmBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleDTO"
.end annotation


# instance fields
.field private alarmYears:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;",
            ">;"
        }
    .end annotation
.end field

.field private dateTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private daysOfWeek:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scheduleType:Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlarmYears()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->alarmYears:Ljava/util/List;

    return-object v0
.end method

.method public getDateTimes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->dateTimes:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->dateTimes:Ljava/util/List;

    .line 216
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->dateTimes:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->dateTimes:Ljava/util/List;

    return-object v0
.end method

.method public getDaysOfWeek()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->daysOfWeek:Ljava/util/List;

    return-object v0
.end method

.method public getScheduleType()Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->scheduleType:Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;

    return-object v0
.end method

.method public setAlarmYears(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/alarm/bean/AlarmBean$AlarmYears;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->alarmYears:Ljava/util/List;

    return-void
.end method

.method public setDateTimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->dateTimes:Ljava/util/List;

    return-void
.end method

.method public setDaysOfWeek(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->daysOfWeek:Ljava/util/List;

    return-void
.end method

.method public setScheduleType(Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleDTO;->scheduleType:Lcom/alibaba/genie/alarm/bean/AlarmBean$ScheduleType;

    return-void
.end method
