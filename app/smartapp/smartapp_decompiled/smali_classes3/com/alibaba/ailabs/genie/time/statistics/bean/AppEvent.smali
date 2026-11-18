.class public Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;
.super Ljava/lang/Object;
.source "AppEvent.java"


# instance fields
.field private childModel:Ljava/lang/Boolean;

.field private eventType:I

.field private id:Ljava/lang/Long;

.field private packageName:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private timeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->id:Ljava/lang/Long;

    .line 43
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->timeStamp:Ljava/lang/Long;

    .line 44
    iput p3, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->eventType:I

    .line 45
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->packageName:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->time:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->childModel:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getChildModel()Ljava/lang/Boolean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->childModel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->eventType:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->timeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public setChildModel(Ljava/lang/Boolean;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->childModel:Ljava/lang/Boolean;

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->eventType:I

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->id:Ljava/lang/Long;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->timeStamp:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppEvent{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", childModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;->childModel:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
