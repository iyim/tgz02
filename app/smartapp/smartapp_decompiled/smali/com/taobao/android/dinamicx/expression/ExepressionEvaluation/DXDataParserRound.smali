.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserRound;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserRound.java"


# static fields
.field private static final DEFAULT_VALUE:J = 0x0L

.field public static final DX_PARSER_ROUND:J = 0x119622358dcdL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 27
    :try_start_0
    array-length p2, p1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 30
    aget-object p1, p1, p2

    .line 31
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    .line 32
    new-instance p2, Ljava/lang/Double;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-direct {p2, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    .line 33
    :cond_1
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 34
    new-instance p2, Ljava/lang/Double;

    nop

    nop

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-direct {p2, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    .line 36
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 28
    :cond_3
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 38
    :catch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
