.class public Lcom/taobao/android/dinamic/expressionv2/ExepressionEvaluation/Get;
.super Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;
.source "Get.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taobao/android/dinamic/expression/parser/AbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs(Ljava/util/List;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;
    .locals 3

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 24
    instance-of v1, v0, Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->toInteger(Ljava/lang/Object;)I

    move-result p1

    .line 34
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_1
    check-cast v0, [Ljava/lang/Object;

    nop

    nop

    .line 41
    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_2

    .line 43
    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    return-object p2
.end method
