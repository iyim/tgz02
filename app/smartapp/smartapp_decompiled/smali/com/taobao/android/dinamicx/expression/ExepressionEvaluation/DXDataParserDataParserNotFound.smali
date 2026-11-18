.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDataParserNotFound;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserDataParserNotFound.java"


# static fields
.field public static final DX_PARSER_DATAPARSERNOTFOUND:J = 0x15fa0236f956f346L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_3

    array-length v2, p1

    if-eq v2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 17
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_1

    return-object v1

    .line 22
    :cond_1
    :try_start_0
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 23
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getParserMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_3
    :goto_1
    return-object v1
.end method
