.class public Lcom/aliyun/oss/common/utils/RangeSpec;
.super Ljava/lang/Object;
.source "RangeSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/common/utils/RangeSpec$Type;
    }
.end annotation


# static fields
.field private static final RANGE_PREFIX:Ljava/lang/String; = "bytes="


# instance fields
.field private end:J

.field private start:J

.field private type:Lcom/aliyun/oss/common/utils/RangeSpec$Type;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 39
    sget-object v5, Lcom/aliyun/oss/common/utils/RangeSpec$Type;->NORMAL_RANGE:Lcom/aliyun/oss/common/utils/RangeSpec$Type;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/common/utils/RangeSpec;-><init>(JJLcom/aliyun/oss/common/utils/RangeSpec$Type;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(JJLcom/aliyun/oss/common/utils/RangeSpec$Type;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->start:J

    .line 44
    iput-wide p3, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->end:J

    .line 45
    iput-object p5, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->type:Lcom/aliyun/oss/common/utils/RangeSpec$Type;

    return-void
.end method

.method public static parse([J)Lcom/aliyun/oss/common/utils/RangeSpec;
    .locals 10

    if-eqz p0, :cond_0

    .line 61
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 62
    :cond_0
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ignore it and just get entire object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 65
    aget-wide v2, p0, v0

    const/4 v0, 0x1

    .line 66
    aget-wide v7, p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-gez p0, :cond_2

    cmp-long p0, v7, v0

    if-ltz p0, :cond_3

    :cond_2
    cmp-long p0, v2, v0

    if-lez p0, :cond_4

    cmp-long p0, v7, v0

    if-lez p0, :cond_4

    cmp-long p0, v2, v7

    if-lez p0, :cond_4

    .line 70
    :cond_3
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid range value ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "], ignore it and just get entire object"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_4
    cmp-long p0, v2, v0

    if-gez p0, :cond_5

    .line 75
    new-instance p0, Lcom/aliyun/oss/common/utils/RangeSpec;

    const-wide/16 v5, -0x1

    sget-object v9, Lcom/aliyun/oss/common/utils/RangeSpec$Type;->TO_END:Lcom/aliyun/oss/common/utils/RangeSpec$Type;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/aliyun/oss/common/utils/RangeSpec;-><init>(JJLcom/aliyun/oss/common/utils/RangeSpec$Type;)V

    goto :goto_0

    :cond_5
    cmp-long p0, v7, v0

    if-gez p0, :cond_6

    .line 77
    new-instance p0, Lcom/aliyun/oss/common/utils/RangeSpec;

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/aliyun/oss/common/utils/RangeSpec$Type;->START_TO:Lcom/aliyun/oss/common/utils/RangeSpec$Type;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/aliyun/oss/common/utils/RangeSpec;-><init>(JJLcom/aliyun/oss/common/utils/RangeSpec$Type;)V

    goto :goto_0

    .line 79
    :cond_6
    new-instance p0, Lcom/aliyun/oss/common/utils/RangeSpec;

    sget-object v6, Lcom/aliyun/oss/common/utils/RangeSpec$Type;->NORMAL_RANGE:Lcom/aliyun/oss/common/utils/RangeSpec$Type;

    move-object v1, p0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/aliyun/oss/common/utils/RangeSpec;-><init>(JJLcom/aliyun/oss/common/utils/RangeSpec$Type;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getEnd()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->end:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->start:J

    return-wide v0
.end method

.method public getType()Lcom/aliyun/oss/common/utils/RangeSpec$Type;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->type:Lcom/aliyun/oss/common/utils/RangeSpec$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 89
    sget-object v0, Lcom/aliyun/oss/common/utils/RangeSpec$1;->$SwitchMap$com$aliyun$oss$common$utils$RangeSpec$Type:[I

    iget-object v1, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->type:Lcom/aliyun/oss/common/utils/RangeSpec$Type;

    invoke-virtual {v1}, Lcom/aliyun/oss/common/utils/RangeSpec$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const-string v2, "bytes="

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    iget-wide v1, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->end:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    iget-wide v1, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->start:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s%d-"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v3

    iget-wide v1, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->start:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    iget-wide v1, p0, Lcom/aliyun/oss/common/utils/RangeSpec;->end:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s%d-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
