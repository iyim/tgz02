.class public final Lcom/taobao/android/dinamicx/DXGlobalCenter;
.super Ljava/lang/Object;
.source "DXGlobalCenter.java"


# static fields
.field static dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

.field static dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

.field static globalEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field static globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;"
        }
    .end annotation
.end field

.field static globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 91
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 92
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 93
    new-instance v0, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 99
    new-instance v0, Lcom/taobao/android/dinamicx/DXGlobalCenter$1;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/DXGlobalCenter$1;-><init>()V

    invoke-static {v0}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 134
    :try_start_0
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x7d01ead7eL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/parser/DXExpressionParser;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/parser/DXExpressionParser;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x1af9b150c4b4c4a5L    # -4.519762847042922E178

    new-instance v3, Lcom/taobao/android/dinamicx/expression/parser/DXParentSubDataParser;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/parser/DXParentSubDataParser;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0xf9f59aba8acL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/parser/DXConstantParser;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/parser/DXConstantParser;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x49ea62a5e0d08e6bL    # 1.2050694647881893E48

    new-instance v3, Lcom/taobao/android/dinamicx/expression/parser/DXSubDataParser;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/parser/DXSubDataParser;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x2411dc82a423e9L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringSubstr;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringSubstr;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x1d35d5960ead42ceL    # 5.785516251979466E-168

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringLowercase;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringLowercase;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x2666011c1160922fL    # -4.2961474550975534E123

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringUppercase;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringUppercase;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x1febdaa9d5e1feL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringConcat;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserStringConcat;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x8e47466c0L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserTrim;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserTrim;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1f288152

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLength;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLength;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0xfe2a6e5f0bdL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserEqual;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserEqual;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1ec50be6

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAnd;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAnd;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0xc436f

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserOr;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserOr;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1f3afff4

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserNot;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserNot;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x24535fca2e1f16L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserTriple;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserTriple;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0xc2515

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIf;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIf;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x7e20e467dL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserElse;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserElse;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x2013f3cb119acdc7L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGet;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGet;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 156
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x1c5d129424e4cf4bL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGet;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGet;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x13c22e896e364bd7L    # -2.509565851989365E213

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserFind;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserFind;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x30e07683c6db2754L    # 2.9117807828237034E-73

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIndexOf;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIndexOf;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x1068f8390a33L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIsRtl;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIsRtl;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x4d73b4242ba57f6dL    # 1.2968996065781262E65

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserPlatform;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserPlatform;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1ec4b18c

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAdd;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAdd;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1f688fb5

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserSub;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserSub;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1f3223d9

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserMul;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserMul;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1ee01576

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDiv;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDiv;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1f31ed5b

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserMod;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserMod;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x43b83661fffbd471L    # 1.7446896577222044E18

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGreater;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGreater;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x31d0733c0d8660eeL    # 9.533897223644682E-69

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGreaterEqual;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserGreaterEqual;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x859fcbe6bL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLess;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLess;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 174
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x347df57f5fbd7548L    # -5.529558127352727E55

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLessEqual;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLessEqual;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x4553ce58fc362651L    # 9.577615822153225E25

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserNotEqual;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserNotEqual;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x5dd846022c9bee46L    # 1.1839948733666252E144

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToDouble;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToDouble;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x245292462af4b9L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToLong;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToLong;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x11d927589641L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToStr;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToStr;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x7bf2f47b1L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserCeil;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserCeil;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 182
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x100383f5c907L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserFloor;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserFloor;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x119622358dcdL

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserRound;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserRound;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide/32 v1, 0x1ec4a001

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAbs;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserAbs;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x509db4049dc91bb7L    # 2.2012128364873351E80

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLinearGradient;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserLinearGradient;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x5ca9ed9a5d1ae9a4L    # 2.4122334423345447E138

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToBindingXUnit;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserToBindingXUnit;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x7cc861ddb54295edL    # 1.2165788929138436E293

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIsDarkMode;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserIsDarkMode;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x185f6f9973bc0045L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserColorMap;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserColorMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x15fa0236f956f346L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDataParserNotFound;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDataParserNotFound;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x2aba5b28b37a2721L    # 7.354657793952346E-103

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserEventHandlerNotFound;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserEventHandlerNotFound;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 203
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x1379e599efb52d0L

    new-instance v3, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDXVersionGreaterThanOrEqualTo;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/expression/ExepressionEvaluation/DXDataParserDXVersionGreaterThanOrEqualTo;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x6dfd9f48fL

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 209
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x1bc970c8e10578L

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXSwitchWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 210
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x6a83b496b176aff1L

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 211
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x3fc8dac355e90abeL    # 0.19417611784782268

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x25162529662469b8L    # -8.960865392389579E129

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x30869407002f7eb7L    # -7.186620237719683E74

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x6ade46eef017bb87L    # 6.075346885655774E206

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x5c1dfa3cff34b6daL    # 5.4472007358176955E135

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXFastTextWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 220
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x705a8a00492bfa74L    # 1.648095258202737E233

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXFrameLayoutWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 221
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x52e0c78fcad859e5L    # 1.7090261130656345E91

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXLinearLayoutWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 222
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x20ec8d6bd12f8724L    # 4.361292285129619E-150

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXListLayout$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXListLayout$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 223
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x66b8c45e4d0862e5L    # -6.67447020881694E-187

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXAdaptiveLinearLayoutWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 224
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x480f2cdb5773b9d2L    # 1.3260472866392538E39

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXScrollerLayout$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 225
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x6a19fe9d2c852bedL    # 1.2734444246220746E203

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 226
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, -0x4086d67427203ed9L    # -0.006143137243256803

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXPageIndicator$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXPageIndicator$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x3a179f9fa4b860f4L    # 7.454271614370233E-29

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXScrollerIndicator$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x6c1a25039b88a40eL    # 5.500963080458407E212

    new-instance v3, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode$Builder;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/widget/DXGridLayoutWidgetNode$Builder;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 231
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const-wide v1, 0x1430d66e2004d63bL    # 2.0006158336987252E-211

    new-instance v3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXEventHandler;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXEventHandler;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 235
    :try_start_1
    new-instance v1, Lcom/taobao/android/dinamicx/DXError;

    const-string v2, "dinamicx"

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 236
    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string v3, "Engine"

    const-string v4, "Engine_InitEnv"

    const/16 v5, 0x753a

    invoke-direct {v2, v3, v4, v5}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 240
    iget-object v0, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {v1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDxDownloader()Lcom/taobao/android/dinamicx/template/download/IDXDownloader;
    .locals 1

    .line 261
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    return-object v0
.end method

.method public static getDxWebImageInterface()Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;
    .locals 1

    .line 265
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    return-object v0
.end method

.method public static getGlobalEventHandlerMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;"
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public static getGlobalParserMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public static getGlobalWidgetNodeMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;"
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/taobao/android/dinamicx/DXGlobalCenter;->globalWidgetNodeMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method
