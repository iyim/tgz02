.class public Lcom/taobao/android/dinamicx/expression/parser/DXParentSubDataParser;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXParentSubDataParser.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = " .[]"

.field public static final DX_PARSER_PARENTSUBDATA:J = -0x1af9b150c4b4c4a5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getParentData(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getParentWidget()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 74
    :cond_2
    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXLayout;

    .line 77
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->isHandleListData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getSubData()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/expression/parser/DXParentSubDataParser;->getParentData(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    .line 94
    nop

    nop

    .line 95
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    instance-of v1, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_2

    .line 99
    nop

    nop

    .line 102
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "DXExpressionParser list index is not number"

    .line 105
    invoke-static {p1}, Lcom/taobao/android/dinamicx/log/DXLog;->print(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 3

    .line 25
    invoke-direct {p0, p2}, Lcom/taobao/android/dinamicx/expression/parser/DXParentSubDataParser;->getParentData(Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_4

    .line 31
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 35
    :cond_1
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x0

    .line 39
    aget-object p1, p1, v1

    .line 41
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_3

    return-object v0

    .line 45
    :cond_3
    nop

    nop

    .line 48
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " .[]"

    invoke-direct {v0, p1, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-direct {p0, p2, p1}, Lcom/taobao/android/dinamicx/expression/parser/DXParentSubDataParser;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_4
    :goto_1
    return-object p2
.end method
