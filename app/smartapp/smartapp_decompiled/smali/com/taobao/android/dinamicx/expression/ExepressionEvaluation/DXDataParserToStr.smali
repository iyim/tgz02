.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToStr;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserToStr.java"


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final DX_PARSER_TOSTR:J = 0x11d927589641L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 8

    const-string p2, ""

    if-eqz p1, :cond_7

    .line 36
    :try_start_0
    array-length v0, p1

    if-eqz v0, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 39
    aget-object v1, p1, v0

    .line 40
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    return-object v1

    .line 42
    :cond_1
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 46
    :cond_2
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_5

    .line 49
    aget-object p1, p1, v3

    .line 51
    instance-of v2, p1, Ljava/lang/Number;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_3

    .line 52
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 55
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->longValue()J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    move-wide v6, v4

    :goto_0
    cmp-long p1, v6, v4

    if-ltz p1, :cond_4

    .line 61
    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object p2

    .line 45
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    :cond_7
    :goto_2
    return-object p2
.end method
