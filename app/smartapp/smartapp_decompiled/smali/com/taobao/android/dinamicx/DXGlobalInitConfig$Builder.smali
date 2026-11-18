.class public final Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
.super Ljava/lang/Object;
.source "DXGlobalInitConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/DXGlobalInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

.field private dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

.field private dxDataParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;"
        }
    .end annotation
.end field

.field private dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

.field private dxEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

.field private dxWidgetMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field protected enableDarkModeSupport:Z

.field private isDebug:Z

.field private remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

.field private screenOrientation:I

.field private umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->enableDarkModeSupport:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxDataParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxWidgetMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/template/download/IDXDownloader;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Lcom/taobao/android/dinamicx/IDXDarkModeInterface;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->isDebug:Z

    return p0
.end method

.method static synthetic access$900(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->screenOrientation:I

    return p0
.end method


# virtual methods
.method public build()Lcom/taobao/android/dinamicx/DXGlobalInitConfig;
    .locals 2

    .line 176
    new-instance v0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/android/dinamicx/DXGlobalInitConfig;-><init>(Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;Lcom/taobao/android/dinamicx/DXGlobalInitConfig$1;)V

    return-object v0
.end method

.method public withAppMonitor(Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->appMonitor:Lcom/taobao/android/dinamicx/monitor/IDXAppMonitor;

    return-object p0
.end method

.method public withDarkModeInterface(Lcom/taobao/android/dinamicx/IDXDarkModeInterface;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxDarkModeInterface:Lcom/taobao/android/dinamicx/IDXDarkModeInterface;

    return-object p0
.end method

.method public withDebug(Z)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->isDebug:Z

    return-object p0
.end method

.method public withDxDataParserMap(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/expression/parser/IDXDataParser;",
            ">;)",
            "Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxDataParserMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object p0
.end method

.method public withDxDownloader(Lcom/taobao/android/dinamicx/template/download/IDXDownloader;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxDownloader:Lcom/taobao/android/dinamicx/template/download/IDXDownloader;

    return-object p0
.end method

.method public withDxEventHandlerMap(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/IDXEventHandler;",
            ">;)",
            "Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxEventHandlerMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object p0
.end method

.method public withDxWidgetMap(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;",
            ">;)",
            "Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxWidgetMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object p0
.end method

.method public withEnableDarkModeSupport(Z)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->enableDarkModeSupport:Z

    return-object p0
.end method

.method public withRemoteDebugLog(Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->remoteDebugLog:Lcom/taobao/android/dinamicx/log/IDXRemoteDebugLog;

    return-object p0
.end method

.method public withScreenOrientation(I)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 151
    iput p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->screenOrientation:I

    return-object p0
.end method

.method public withUmbrellaImpl(Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->umbrellaImpl:Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;

    return-object p0
.end method

.method public withWebImageInterface(Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;)Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXGlobalInitConfig$Builder;->dxWebImageInterface:Lcom/taobao/android/dinamicx/widget/IDXWebImageInterface;

    return-object p0
.end method
