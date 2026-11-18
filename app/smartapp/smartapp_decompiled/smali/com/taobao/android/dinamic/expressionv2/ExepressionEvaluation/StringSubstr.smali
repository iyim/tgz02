.class public Lcom/taobao/android/dinamic/expressionv2/ExepressionEvaluation/StringSubstr;
.super Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;
.source "StringSubstr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs(Ljava/util/List;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 7

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_4

    .line 22
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->toInteger(Ljava/lang/Object;)I

    move-result v1

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->toInteger(Ljava/lang/Object;)I

    move-result p1

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-ltz p1, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    add-int/2addr p1, v1

    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_2

    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    add-int/lit8 v2, p1, -0x1

    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 40
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object p2, p1

    goto :goto_1

    :cond_3
    :goto_0
    return-object v2

    .line 44
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 46
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 47
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->toInteger(Ljava/lang/Object;)I

    move-result p1

    .line 49
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_5

    return-object v2

    :cond_5
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .line 58
    :cond_6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_7
    :goto_1
    return-object p2
.end method
