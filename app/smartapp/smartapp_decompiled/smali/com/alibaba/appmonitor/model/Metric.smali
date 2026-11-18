.class public Lcom/alibaba/appmonitor/model/Metric;
.super Lcom/alibaba/analytics/core/db/Entity;
.source "Metric.java"

# interfaces
.implements Lcom/alibaba/appmonitor/pool/Reusable;


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "stat_register_temp"
.end annotation


# static fields
.field private static final SEPERATOR:Ljava/lang/String; = "$"
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field


# instance fields
.field private dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private dimensions:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "dimensions"
    .end annotation
.end field

.field private extraArg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private isCommitDetail:Z
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "is_commit_detail"
    .end annotation
.end field

.field private measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private measures:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "measures"
    .end annotation
.end field

.field private module:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "module"
    .end annotation
.end field

.field private monitorPoint:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "monitor_point"
    .end annotation
.end field

.field private transactionId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 54
    iput-object p3, p0, Lcom/alibaba/appmonitor/model/Metric;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    .line 56
    iput-boolean p5, p0, Lcom/alibaba/appmonitor/model/Metric;->isCommitDetail:Z

    if-eqz p4, :cond_0

    .line 58
    invoke-static {p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensions:Ljava/lang/String;

    .line 60
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->measures:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    .line 69
    const-class p1, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-static {p4, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 70
    const-class p1, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-static {p3, p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    .line 72
    iput-boolean p5, p0, Lcom/alibaba/appmonitor/model/Metric;->isCommitDetail:Z

    .line 73
    iput-object p4, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensions:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/alibaba/appmonitor/model/Metric;->measures:Ljava/lang/String;

    return-void
.end method

.method private getMeasureByName(Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/Measure;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_1

    .line 111
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    .line 112
    iget-object v1, v0, Lcom/alibaba/mtl/appmonitor/model/Measure;->name:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clean()V
    .locals 2

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, p0, Lcom/alibaba/appmonitor/model/Metric;->isCommitDetail:Z

    .line 199
    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 200
    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 201
    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 165
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 168
    :cond_2
    check-cast p1, Lcom/alibaba/appmonitor/model/Metric;

    .line 169
    iget-object v2, p0, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 170
    iget-object v2, p1, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 173
    :cond_3
    iget-object v3, p1, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 176
    :cond_4
    iget-object v2, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 177
    iget-object v2, p1, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    if-eqz v2, :cond_6

    return v1

    .line 180
    :cond_5
    iget-object v3, p1, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 183
    :cond_6
    iget-object v2, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 184
    iget-object p1, p1, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    if-eqz p1, :cond_8

    return v1

    .line 187
    :cond_7
    iget-object p1, p1, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 206
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    const/4 v0, 0x1

    .line 207
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    .line 208
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 209
    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensions:Ljava/lang/String;

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    return-object v0
.end method

.method public getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->measures:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->measures:Ljava/lang/String;

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorPoint()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getTransactionId()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->transactionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->transactionId:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->transactionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->extraArg:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 152
    iget-object v3, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 153
    iget-object v2, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized isCommitDetail()Z
    .locals 3

    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/appmonitor/model/Metric;->isCommitDetail:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/appmonitor/model/Metric;->module:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/appmonitor/model/Metric;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isDetail(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetTransactionId()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->transactionId:Ljava/lang/String;

    return-void
.end method

.method public valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->valid(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/alibaba/appmonitor/model/Metric;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {v0, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->valid(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 p1, 0x0

    :cond_2
    :goto_1
    return p1
.end method
