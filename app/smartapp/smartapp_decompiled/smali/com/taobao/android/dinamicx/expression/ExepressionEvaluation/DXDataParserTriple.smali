.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserTriple;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsFastReturnDinamicDataParser;
.source "DXDataParserTriple.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsFastReturnDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;I)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    return-object p2

    :cond_0
    if-ne p4, v0, :cond_2

    const/4 p4, 0x0

    .line 19
    aget-object p4, p1, p4

    invoke-static {p4}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->parseBoolean(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 21
    iput-boolean v0, p3, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;->value:Z

    .line 22
    aget-object p1, p1, v0

    return-object p1

    :cond_1
    return-object p2

    .line 28
    :cond_2
    iput-boolean v0, p3, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;->value:Z

    const/4 p3, 0x2

    if-ne p4, p3, :cond_3

    .line 29
    aget-object p2, p1, p3

    :cond_3
    return-object p2
.end method
