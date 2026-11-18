.class public Lcom/taobao/android/dinamicx/expression/parser/DXSubDataParser;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXSubDataParser.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " .[]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    .line 58
    nop

    nop

    .line 59
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :cond_1
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_2

    .line 63
    nop

    nop

    .line 66
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 67
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "DXExpressionParser list index is not number"

    .line 69
    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->print(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 3

    .line 21
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getSubData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 22
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    .line 30
    aget-object p1, p1, v0

    .line 32
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_2

    return-object v2

    .line 36
    :cond_2
    nop

    nop

    .line 39
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " .[]"

    invoke-direct {v1, p1, v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p0, p2, p1}, Lcom/taobao/android/dinamicx/expression/parser/DXSubDataParser;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    return-object p2
.end method
