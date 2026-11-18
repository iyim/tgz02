.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserNotEqual;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserNotEqual.java"


# static fields
.field public static final DEFAULT_VALUE:Ljava/lang/Object; = null

.field public static final DX_PARSER_NOTEQUAL:J = 0x4553ce58fc362651L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 4

    if-eqz p1, :cond_9

    .line 23
    :try_start_0
    array-length p2, p1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 26
    aget-object v0, p1, p2

    const/4 v1, 0x1

    .line 27
    aget-object p1, p1, v1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 30
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_8

    if-nez p1, :cond_2

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 35
    :cond_4
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_6

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_6

    .line 37
    nop

    nop

    nop

    nop

    invoke-static {v0, p1}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->compareNumber(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 39
    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const/4 p2, 0x1

    :cond_7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 32
    :cond_8
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 24
    :cond_9
    :goto_1
    sget-object p1, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserNotEqual;->DEFAULT_VALUE:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 42
    :catch_0
    sget-object p1, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserNotEqual;->DEFAULT_VALUE:Ljava/lang/Object;

    return-object p1
.end method
