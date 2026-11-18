.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIf;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsFastReturnDinamicDataParser;
.source "DXDataParserIf.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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

    if-nez p4, :cond_0

    const/4 p4, 0x0

    .line 15
    aget-object p1, p1, p4

    invoke-static {p1}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->parseBoolean(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p3, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;->value:Z

    return-object p2

    .line 19
    :cond_0
    iput-boolean v0, p3, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;->value:Z

    if-ne p4, v0, :cond_1

    .line 20
    aget-object p2, p1, v0

    :cond_1
    return-object p2
.end method
