.class public Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;
.super Ljava/lang/Object;
.source "DXNumArithmeticUtils.java"


# static fields
.field public static DEFAULT_VALUE:J = 0x0L

.field public static final TYPE_ADD:I = 0x1

.field public static final TYPE_DIV:I = 0x4

.field public static final TYPE_MOD:I = 0x5

.field public static final TYPE_MUL:I = 0x3

.field public static final TYPE_SUB:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static evalWithArgs([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-eqz v0, :cond_1e

    .line 23
    :try_start_0
    array-length v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 26
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    if-ge v3, v2, :cond_1c

    .line 32
    aget-object v13, v0, v3

    .line 36
    instance-of v14, v13, Ljava/lang/String;

    const/4 v15, 0x1

    if-eqz v14, :cond_3

    .line 37
    check-cast v13, Ljava/lang/String;

    if-nez v8, :cond_2

    .line 38
    invoke-static {v13}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->hasDigit(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    invoke-static {v13}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_3

    .line 39
    :cond_2
    :goto_1
    invoke-static {v13}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    goto :goto_5

    :cond_3
    if-nez v8, :cond_7

    .line 44
    invoke-static {v13}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->isFloatPointNum(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    .line 47
    :cond_4
    instance-of v14, v13, Ljava/lang/Integer;

    if-nez v14, :cond_6

    instance-of v14, v13, Ljava/lang/Long;

    if-eqz v14, :cond_5

    goto :goto_2

    .line 50
    :cond_5
    sget-wide v13, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->DEFAULT_VALUE:J

    goto :goto_3

    .line 48
    :cond_6
    :goto_2
    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    :goto_3
    const-wide/16 v16, 0x0

    goto :goto_6

    .line 45
    :cond_7
    :goto_4
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    :goto_5
    move-wide/from16 v16, v13

    const/4 v8, 0x1

    move-wide v13, v6

    :goto_6
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v8, :cond_11

    cmp-long v13, v9, v6

    if-eqz v13, :cond_8

    long-to-double v11, v9

    move-wide v9, v6

    :cond_8
    if-nez v3, :cond_9

    move-wide/from16 v11, v16

    goto/16 :goto_7

    :cond_9
    if-eq v1, v15, :cond_10

    if-eq v1, v5, :cond_f

    if-eq v1, v4, :cond_e

    const/4 v4, 0x4

    if-eq v1, v4, :cond_c

    const/4 v4, 0x5

    if-eq v1, v4, :cond_a

    goto :goto_7

    :cond_a
    const-wide/16 v4, 0x0

    cmpl-double v13, v16, v4

    if-nez v13, :cond_b

    .line 83
    sget-wide v0, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->DEFAULT_VALUE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_b
    rem-double v11, v11, v16

    goto :goto_7

    :cond_c
    const-wide/16 v4, 0x0

    cmpl-double v13, v16, v4

    if-nez v13, :cond_d

    .line 76
    sget-wide v0, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->DEFAULT_VALUE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_d
    div-double v11, v11, v16

    goto :goto_7

    :cond_e
    mul-double v11, v11, v16

    goto :goto_7

    :cond_f
    sub-double v11, v11, v16

    goto :goto_7

    :cond_10
    add-double v11, v11, v16

    goto :goto_7

    :cond_11
    if-nez v3, :cond_12

    move-wide v9, v13

    goto :goto_7

    :cond_12
    if-eq v1, v15, :cond_19

    if-eq v1, v5, :cond_18

    if-eq v1, v4, :cond_17

    const/4 v4, 0x4

    if-eq v1, v4, :cond_15

    const/4 v4, 0x5

    if-eq v1, v4, :cond_13

    goto :goto_7

    :cond_13
    cmp-long v4, v13, v6

    if-nez v4, :cond_14

    .line 114
    sget-wide v0, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->DEFAULT_VALUE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 116
    :cond_14
    rem-long/2addr v9, v13

    goto :goto_7

    :cond_15
    cmp-long v4, v13, v6

    if-nez v4, :cond_16

    .line 107
    sget-wide v0, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->DEFAULT_VALUE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 109
    :cond_16
    div-long/2addr v9, v13

    goto :goto_7

    :cond_17
    mul-long v9, v9, v13

    goto :goto_7

    :cond_18
    sub-long/2addr v9, v13

    goto :goto_7

    :cond_19
    add-long/2addr v9, v13

    :goto_7
    if-eqz v8, :cond_1b

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v13, v11, v4

    if-eqz v13, :cond_1a

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v13, v11, v4

    if-eqz v13, :cond_1a

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    cmpl-double v13, v4, v11

    if-nez v13, :cond_1b

    :cond_1a
    const-wide/16 v4, 0x0

    .line 123
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1b
    const-wide/16 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1c
    if-eqz v8, :cond_1d

    .line 129
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 131
    :cond_1d
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 24
    :cond_1e
    :goto_8
    sget-wide v0, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->DEFAULT_VALUE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    sget-wide v0, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->DEFAULT_VALUE:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
