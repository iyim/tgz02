.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserCeil;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserCeil.java"


# static fields
.field public static final DEFAULT_VALUE:J = 0x0L

.field public static final DX_PARSER_CEIL:J = 0x7bf2f47b1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    .line 26
    :try_start_0
    array-length p2, p1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 29
    aget-object p1, p1, p2

    .line 30
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    .line 31
    new-instance p2, Ljava/lang/Double;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    .line 32
    :cond_1
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 33
    new-instance p2, Ljava/lang/Double;

    nop

    nop

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    .line 35
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 27
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 37
    :catch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
