.class public Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;
.super Ljava/lang/Object;
.source "CallRecordsSimple.java"


# instance fields
.field private answerState:Ljava/lang/String;

.field private callType:Ljava/lang/String;

.field private count:I

.field private direction:Ljava/lang/String;

.field private durationTime:J

.field private id:I

.field private invalid:Z

.field private name:Ljava/lang/String;

.field private originData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

.field private phone:Ljava/lang/String;

.field private startCallTime:J

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->invalid:Z

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->invalid:Z

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->originData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallDirection()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->direction:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->direction:Ljava/lang/String;

    const-string v1, "OUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeContactId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->userId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleeNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCalleePhoneNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->phone:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerContactId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->userId:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->name:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallerPhoneNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->phone:Ljava/lang/String;

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getRecordId()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->id:I

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getAnswerState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->answerState:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCount()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->count:I

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->callType:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallStartTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->startCallTime:J

    .line 49
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getCallDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->durationTime:J

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getExt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "guomingpo"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;->getExt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "invalid"

    .line 53
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->invalid:Z

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->invalid:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public getAnswerState()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->answerState:Ljava/lang/String;

    return-object v0
.end method

.method public getCallType()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->callType:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->count:I

    return v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationTime()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->durationTime:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginData()Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->originData:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCallTime()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->startCallTime:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isInvalid()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->invalid:Z

    return v0
.end method

.method public setAnswerState(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->answerState:Ljava/lang/String;

    return-void
.end method

.method public setCallType(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->callType:Ljava/lang/String;

    return-void
.end method

.method public setCount(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->count:I

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->direction:Ljava/lang/String;

    return-void
.end method

.method public setDurationTime(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->durationTime:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->id:I

    return-void
.end method

.method public setInvalid(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->invalid:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->phone:Ljava/lang/String;

    return-void
.end method

.method public setStartCallTime(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->startCallTime:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallRecordsSimple{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", phone=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", direction=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->direction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", callType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->callType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startCallTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->startCallTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", durationTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->durationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", answerState=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->answerState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecordsSimple;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
