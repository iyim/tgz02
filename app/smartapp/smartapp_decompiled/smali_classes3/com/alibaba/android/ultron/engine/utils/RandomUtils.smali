.class public Lcom/alibaba/android/ultron/engine/utils/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/alibaba/android/ultron/engine/utils/RandomUtils;->RANDOM:Ljava/util/Random;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static nextDouble()D
    .locals 4

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 31
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/ultron/engine/utils/RandomUtils;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDouble(DD)D
    .locals 3

    cmpg-double v0, p2, p0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_1

    cmpl-double v0, p0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-double/2addr p2, p0

    .line 27
    sget-object v0, Lcom/alibaba/android/ultron/engine/utils/RandomUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double p2, p2, v0

    add-double/2addr p0, p2

    :goto_0
    return-wide p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nextLong()J
    .locals 4

    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/ultron/engine/utils/RandomUtils;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextLong(JJ)J
    .locals 3

    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p0, p0

    long-to-double p2, p2

    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/android/ultron/engine/utils/RandomUtils;->nextDouble(DD)D

    move-result-wide p0

    double-to-long p0, p0

    :goto_0
    return-wide p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
