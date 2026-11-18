.class public Lcom/taobao/android/sku/dinamicx/parser/SwitchCase;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "SwitchCase.java"


# static fields
.field public static final DX_PARSER_ID:J

.field public static final PARSER_TAG:Ljava/lang/String; = "xskuSwtich"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "xskuSwtich"

    .line 28
    invoke-static {v0}, Lcom/taobao/android/dinamicx/template/utils/DXHashUtil;->hash(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/taobao/android/sku/dinamicx/parser/SwitchCase;->DX_PARSER_ID:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_7

    .line 33
    array-length p2, p1

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 p2, 0x0

    .line 37
    aget-object p2, p1, p2

    const/4 v1, 0x1

    .line 38
    aget-object v1, p1, v1

    if-eqz p2, :cond_6

    if-nez v1, :cond_1

    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2

    nop

    nop

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 46
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    .line 52
    aget-object p1, p1, v0

    return-object p1

    :cond_4
    return-object p2

    .line 47
    :cond_5
    :goto_1
    aget-object p1, p1, v0

    return-object p1

    .line 40
    :cond_6
    :goto_2
    aget-object p1, p1, v0

    return-object p1

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method
