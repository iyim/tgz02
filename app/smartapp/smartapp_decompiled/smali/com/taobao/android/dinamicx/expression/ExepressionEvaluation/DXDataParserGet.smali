.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGet;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserGet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 3

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 13
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 17
    aget-object v0, p1, v0

    .line 20
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 21
    aget-object p1, p1, v2

    .line 22
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_1
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_4

    .line 27
    aget-object p1, p1, v2

    .line 28
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_2

    return-object p2

    .line 32
    :cond_2
    nop

    nop

    .line 33
    nop

    nop

    invoke-static {p1}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object p2
.end method
