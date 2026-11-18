.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAdd;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserAdd.java"


# static fields
.field public static final DX_PARSER_ADD:J = 0x1ec4b18cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 0

    const/4 p2, 0x1

    .line 25
    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->evalWithArgs([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
