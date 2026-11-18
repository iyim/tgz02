.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAnd;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsFastReturnDinamicDataParser;
.source "DXDataParserAnd.java"


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
    .locals 0

    .line 12
    aget-object p1, p1, p4

    invoke-static {p1}, Lcom/taobao/android/dinamicx/expression/DXNumberUtil;->parseBoolean(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 14
    iput-boolean p2, p3, Lcom/taobao/android/dinamicx/expression/DXMethodNode$DXBoolean;->value:Z

    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 18
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
