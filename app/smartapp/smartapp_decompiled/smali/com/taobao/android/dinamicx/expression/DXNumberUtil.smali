.class public Lcom/taobao/android/dinamicx/expression/DXNumberUtil;
.super Ljava/lang/Object;
.source "DXNumberUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static compareNumber(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 3

    .line 49
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasDigit(Ljava/lang/String;)Z
    .locals 2

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "."

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isFloatPointNum(Ljava/lang/Object;)Z
    .locals 1

    .line 66
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/math/BigDecimal;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parseBoolean(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 21
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 22
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 23
    nop

    nop

    invoke-static {p0}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->parseStringBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 24
    :cond_2
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_4

    .line 25
    nop

    nop

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 26
    :cond_4
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_5

    .line 27
    nop

    nop

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result p0

    if-lez p0, :cond_3

    goto :goto_0

    .line 28
    :cond_5
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_6

    .line 29
    nop

    nop

    .line 30
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_3

    :cond_6
    :goto_0
    return v2
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2

    .line 71
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 0

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2

    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static parseStringBoolean(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "false"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
