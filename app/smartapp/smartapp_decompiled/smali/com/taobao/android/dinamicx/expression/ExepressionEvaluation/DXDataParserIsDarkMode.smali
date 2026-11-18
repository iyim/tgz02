.class public Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIsDarkMode;
.super Lcom/taobao/android/dinamicx/expression/parser/DXAbsDinamicDataParser;
.source "DXDataParserIsDarkMode.java"


# static fields
.field public static final DX_PARSER_ISDARKMODE:J = 0x7cc861ddb54295edL


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
    .locals 0

    .line 13
    invoke-static {}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->isSupportDarkMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/taobao/android/dinamicx/DXDarkModeCenter;->isDark()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
