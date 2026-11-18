.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserMod;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserMod.java"


# static fields
.field public static final DX_PARSER_MOD:J = 0x1f31ed5bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public evalWithArgs([Ljava/lang/Object;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;
    .locals 0

    const/4 p2, 0x5

    .line 28
    invoke-static {p1, p2}, Lcom/taobao/android/dinamicx/expression/utils/DXNumArithmeticUtils;->evalWithArgs([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
