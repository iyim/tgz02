.class public Lcom/taobao/android/dinamic/expressionv2/NumberUtil;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isFloatingPointNumber(Ljava/lang/Object;)Z
    .locals 4

    .line 132
    instance-of v0, p0, Ljava/lang/Float;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 136
    check-cast p0, Ljava/lang/String;

    const/16 v0, 0x2e

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eq p0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method public static parseBoolean(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "false"

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static toBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2

    .line 86
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 87
    nop

    nop

    return-object p0

    :cond_0
    if-eqz p0, :cond_5

    .line 90
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 91
    nop

    nop

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 93
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 95
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 96
    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 97
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 98
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_4

    .line 99
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    .line 100
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BigDecimal coercion exception. arg is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBoolean(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->toBooleanObj(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toBooleanObj(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 35
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 36
    nop

    nop

    return-object p0

    .line 37
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 38
    nop

    nop

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static toDouble(Ljava/lang/Object;)D
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 112
    nop

    nop

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    .line 116
    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 117
    :cond_2
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_3

    .line 118
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-double v0, p0

    return-wide v0

    .line 120
    :cond_3
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    .line 121
    invoke-static {p0}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0

    .line 122
    :cond_4
    instance-of p0, p0, Ljava/lang/Boolean;

    if-nez p0, :cond_5

    :goto_0
    return-wide v0

    .line 123
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Boolean->Double coercion exception"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toInteger(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 52
    :cond_1
    nop

    nop

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 53
    :cond_2
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_3

    .line 54
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0

    .line 55
    :cond_3
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 58
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 59
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0

    .line 56
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Boolean->Integer coercion exception"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toLong(Ljava/lang/Object;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    .line 69
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-wide v0

    .line 72
    :cond_1
    nop

    nop

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 73
    :cond_2
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_3

    .line 74
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 75
    :cond_3
    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 77
    :cond_4
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_5

    .line 78
    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :cond_5
    :goto_0
    return-wide v0
.end method
