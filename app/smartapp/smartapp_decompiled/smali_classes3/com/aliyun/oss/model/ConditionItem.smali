.class Lcom/aliyun/oss/model/ConditionItem;
.super Ljava/lang/Object;
.source "PolicyConditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/ConditionItem$TupleType;
    }
.end annotation


# instance fields
.field private matchMode:Lcom/aliyun/oss/model/MatchMode;

.field private maximum:J

.field private minimum:J

.field private name:Ljava/lang/String;

.field private tupleType:Lcom/aliyun/oss/model/ConditionItem$TupleType;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/model/MatchMode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->matchMode:Lcom/aliyun/oss/model/MatchMode;

    .line 63
    iput-object p2, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/aliyun/oss/model/ConditionItem;->value:Ljava/lang/String;

    .line 65
    sget-object p1, Lcom/aliyun/oss/model/ConditionItem$TupleType;->Three:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->tupleType:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/aliyun/oss/model/MatchMode;->Range:Lcom/aliyun/oss/model/MatchMode;

    iput-object v0, p0, Lcom/aliyun/oss/model/ConditionItem;->matchMode:Lcom/aliyun/oss/model/MatchMode;

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lcom/aliyun/oss/model/ConditionItem;->minimum:J

    .line 57
    iput-wide p4, p0, Lcom/aliyun/oss/model/ConditionItem;->maximum:J

    .line 58
    sget-object p1, Lcom/aliyun/oss/model/ConditionItem$TupleType;->Three:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->tupleType:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/aliyun/oss/model/MatchMode;->Exact:Lcom/aliyun/oss/model/MatchMode;

    iput-object v0, p0, Lcom/aliyun/oss/model/ConditionItem;->matchMode:Lcom/aliyun/oss/model/MatchMode;

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/aliyun/oss/model/ConditionItem;->value:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/aliyun/oss/model/ConditionItem$TupleType;->Two:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->tupleType:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    return-void
.end method


# virtual methods
.method public getMatchMode()Lcom/aliyun/oss/model/MatchMode;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/aliyun/oss/model/ConditionItem;->matchMode:Lcom/aliyun/oss/model/MatchMode;

    return-object v0
.end method

.method public getMaximum()J
    .locals 2

    .line 135
    iget-wide v0, p0, Lcom/aliyun/oss/model/ConditionItem;->maximum:J

    return-wide v0
.end method

.method public getMinimum()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/aliyun/oss/model/ConditionItem;->minimum:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTupleType()Lcom/aliyun/oss/model/ConditionItem$TupleType;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/aliyun/oss/model/ConditionItem;->tupleType:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/aliyun/oss/model/ConditionItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public jsonize()Ljava/lang/String;
    .locals 6

    .line 70
    sget-object v0, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$ConditionItem$TupleType:[I

    iget-object v1, p0, Lcom/aliyun/oss/model/ConditionItem;->tupleType:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    invoke-virtual {v1}, Lcom/aliyun/oss/model/ConditionItem$TupleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lcom/aliyun/oss/model/ConditionItem$1;->$SwitchMap$com$aliyun$oss$model$MatchMode:[I

    iget-object v4, p0, Lcom/aliyun/oss/model/ConditionItem;->matchMode:Lcom/aliyun/oss/model/MatchMode;

    invoke-virtual {v4}, Lcom/aliyun/oss/model/MatchMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 83
    new-array v0, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/aliyun/oss/model/ConditionItem;->minimum:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/aliyun/oss/model/ConditionItem;->maximum:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "[\"content-length-range\",%d,%d],"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/aliyun/oss/model/ConditionItem;->matchMode:Lcom/aliyun/oss/model/MatchMode;

    invoke-virtual {v3}, Lcom/aliyun/oss/model/MatchMode;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unsupported match mode %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/aliyun/oss/model/ConditionItem;->value:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "[\"starts-with\",\"$%s\",\"%s\"],"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/aliyun/oss/model/ConditionItem;->value:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "[\"eq\",\"$%s\",\"%s\"],"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/aliyun/oss/model/ConditionItem;->value:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "{\"%s\":\"%s\"},"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setMatchMode(Lcom/aliyun/oss/model/MatchMode;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->matchMode:Lcom/aliyun/oss/model/MatchMode;

    return-void
.end method

.method public setMaximum(J)V
    .locals 0

    .line 139
    iput-wide p1, p0, Lcom/aliyun/oss/model/ConditionItem;->maximum:J

    return-void
.end method

.method public setMinimum(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/aliyun/oss/model/ConditionItem;->minimum:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setTupleType(Lcom/aliyun/oss/model/ConditionItem$TupleType;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->tupleType:Lcom/aliyun/oss/model/ConditionItem$TupleType;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/aliyun/oss/model/ConditionItem;->value:Ljava/lang/String;

    return-void
.end method
