.class public Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;
.super Ljava/lang/Object;
.source "TimeGap.java"


# instance fields
.field private endTime:J

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->startTime:J

    .line 31
    iput-wide p3, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->endTime:J

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->endTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->startTime:J

    return-wide v0
.end method

.method public setEndTime(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->endTime:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->startTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeGap{startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/time/statistics/bean/TimeGap;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
