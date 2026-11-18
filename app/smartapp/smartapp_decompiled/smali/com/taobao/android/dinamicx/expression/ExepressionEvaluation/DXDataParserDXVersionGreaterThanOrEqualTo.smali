.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDXVersionGreaterThanOrEqualTo;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserDXVersionGreaterThanOrEqualTo.java"


# static fields
.field public static final DX_PARSER_DXVERSION_GREATERTHANOREQUALTO:J = 0x1379e599efb52d0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 10

    const-string p2, "-"

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_7

    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    aget-object v2, p1, v0

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v2, "\\."

    const-string v4, "3.6.5.0"

    .line 22
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 23
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 24
    array-length v2, v4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_7

    array-length v2, p1

    if-ne v2, v5, :cond_7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_7

    .line 26
    aget-object v6, v4, v2

    .line 27
    aget-object v7, p1, v2

    const/4 v8, 0x3

    if-ne v2, v8, :cond_3

    .line 31
    :try_start_0
    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 32
    invoke-virtual {v6, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v0

    .line 34
    :cond_2
    invoke-virtual {v7, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 35
    invoke-virtual {v7, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v0

    .line 40
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 41
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v6, :cond_4

    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_4
    if-ge v7, v6, :cond_5

    return-object v1

    :cond_5
    if-ne v2, v8, :cond_6

    .line 53
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_7
    :goto_1
    return-object v1
.end method
