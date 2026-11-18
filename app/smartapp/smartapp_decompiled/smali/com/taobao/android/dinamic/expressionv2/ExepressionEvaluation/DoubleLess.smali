.class public Lcom/taobao/android/dinamic/expressionv2/ExepressionEvaluation/DoubleLess;
.super Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;
.source "DoubleLess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs(Ljava/util/List;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 5

    const-string p2, "DoubleLess"

    .line 15
    invoke-static {p2}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 19
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 p2, 0x1

    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    sub-double/2addr v3, v1

    const-wide v1, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double p1, v3, v1

    if-ltz p1, :cond_0

    .line 23
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "double cast error!"

    .line 28
    invoke-static {p1}, Lcom/taobao/android/dinamic/log/DinamicLog;->print(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
