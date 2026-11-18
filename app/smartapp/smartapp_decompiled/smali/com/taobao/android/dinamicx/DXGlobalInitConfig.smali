.class public final Lcom/taobao/android/dinamicx/DXGlobalInitConfig;
.super Ljava/lang/Object;
.source "DXGlobalInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    }
.end annotation


# static fields
.field public static final ORIENTATION_AUTO:I = 0x3

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1


# instance fields
.field protected appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

.field protected dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

.field protected dxDataParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;"
        }
    .end annotation
.end field

.field protected dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

.field protected dxEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

.field protected dxWidgetMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field protected enableDarkModeSupport:Z

.field protected isDebug:Z

.field protected remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

.field protected screenOrientation:I

.field protected umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;


# direct methods
.method private constructor <init>(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$000(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 49
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$100(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDataParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 50
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$200(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxWidgetMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    .line 51
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$300(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    .line 52
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$400(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    .line 53
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$500(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

    .line 54
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$600(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    .line 55
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$700(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

    .line 56
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$800(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->isDebug:Z

    .line 57
    iget-boolean v0, p1, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->enableDarkModeSupport:Z

    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->enableDarkModeSupport:Z

    .line 58
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$900(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->screenOrientation:I

    .line 59
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->access$1000(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;Lcom/taobao/android/dinamicx/DXGlobalInitConfig$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;-><init>(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
