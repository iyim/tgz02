.class public Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "Alarm"


# instance fields
.field private index:Ljava/lang/Integer;

.field private memoId:Ljava/lang/Long;

.field private originData:Ljava/lang/String;

.field private repeatType:Ljava/lang/String;

.field private ringType:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->originData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 2

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->index:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->originData:Ljava/lang/String;

    const-string v1, "index"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->index:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->index:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->index:Ljava/lang/Integer;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->index:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMemoId()Ljava/lang/Long;
    .locals 2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->memoId:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->originData:Ljava/lang/String;

    const-string v1, "memoId"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->memoId:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->memoId:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->memoId:Ljava/lang/Long;

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->memoId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRepeatType()Ljava/lang/String;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->repeatType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->originData:Ljava/lang/String;

    const-string v1, "date"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->repeatType:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->repeatType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->repeatType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRingType()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->ringType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->originData:Ljava/lang/String;

    const-string v1, "ringType"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->ringType:Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->ringType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->ringType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->time:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->originData:Ljava/lang/String;

    const-string v1, "time"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->time:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->time:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getViewTime()Ljava/lang/String;
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3a

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    const-string v2, ":"

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm{index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getMemoId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ringType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getRingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", repeatType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/alarm/Alarm;->getRepeatType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
