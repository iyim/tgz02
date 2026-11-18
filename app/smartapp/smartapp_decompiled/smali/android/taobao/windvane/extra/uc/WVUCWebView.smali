.class public Landroid/taobao/windvane/extra/uc/WVUCWebView;
.super Lcom/uc/webview/export/WebView;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/taobao/windvane/webview/IWVWebView;
.implements Landroid/taobao/windvane/extra/performance2/IPerformance;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$WVDownLoadListener;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$WVValueCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$DownLoadCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$DecompressCallable;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$OldCoreVersionCallable;,
        Landroid/taobao/windvane/extra/uc/WVUCWebView$OnInitStart;
    }
.end annotation


# static fields
.field public static INNER_FLAG:I = 0x0

.field private static final STATIC_WEBVIEW_URL:Ljava/lang/String; = "about:blank?static"

.field private static final TAG:Ljava/lang/String; = "WVUCWebView"

.field public static UC_CORE_URL:Ljava/lang/String; = null

.field private static UC_PLAYER_URL:Ljava/lang/String; = null

.field public static final WINDVANE:Ljava/lang/String; = "windvane"

.field public static bizId:Ljava/lang/String; = "windvane"

.field private static coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback; = null

.field private static evaluateJavascriptSupported:Z = false

.field private static fromType:I = 0x46

.field private static gpuMultiPolicy:I = 0x0

.field private static initedJSBridge:Z = false

.field private static isSWInit:Z = false

.field public static isStop:Z = false

.field private static mDegradeAliNetwork:Z = false

.field private static mUseAliNetwork:Z = false

.field private static mUseSystemWebView:Z = false

.field private static needDownLoad:Z = false

.field private static openUCDebug:Z = false

.field private static pattern:Ljava/util/regex/Pattern;

.field private static renderMultiPolicy:I

.field private static final sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

.field private static final shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

.field public bizCode:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private currentUrl:Ljava/lang/String;

.field private dataOnActive:Ljava/lang/String;

.field dx:F

.field dy:F

.field protected entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

.field firstTimeLoad:Z

.field private flag4commit:Z

.field injectJs:Ljava/lang/StringBuilder;

.field private isLive:Z

.field isUser:Z

.field private jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

.field private longPressSaveImage:Z

.field private mAllowAllOpen:Z

.field mEventSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mH5MonitorCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mImageUrl:Ljava/lang/String;

.field private mIsCoreDestroy:Z

.field private mIsStaticWebView:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageLoadedCount:I

.field public mPageStart:J

.field private mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

.field private mPopupMenuTags:[Ljava/lang/String;

.field private mUseGlobalUrlConfig:Z

.field private mWvNativeCallbackId:I

.field private onErrorTime:J

.field public pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

.field private performanceDelegate:Landroid/taobao/windvane/extra/performance2/WVPerformance;

.field private popupClickListener:Landroid/view/View$OnClickListener;

.field private reportedFSP:Z

.field protected supportDownload:Z

.field private ucParam:Ljava/lang/String;

.field private useUrlConfig:Z

.field protected webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

.field protected webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

.field public wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

.field public wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

.field private wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

.field private wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

.field public wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

.field public wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 162
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->INNER_FLAG:I

    .line 188
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_32:Ljava/lang/String;

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/uc/UCSoSettings;->UC_PLAYER_URL:Ljava/lang/String;

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_PLAYER_URL:Ljava/lang/String;

    const/4 v0, 0x1

    .line 203
    sput-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    .line 208
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    .line 209
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    .line 211
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    .line 213
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    const/4 v0, 0x0

    .line 215
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    .line 219
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initedJSBridge:Z

    const-string v0, "WVUCWebView"

    const-string/jumbo v2, "static init uc core"

    .line 226
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->isUcCoreOuterControl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCCore()V

    .line 745
    :cond_1
    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 746
    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 2353
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->needDownLoad:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 432
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    const-string v0, ""

    .line 147
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 157
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 158
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v2, 0x0

    .line 160
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 168
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 171
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 177
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 180
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 218
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 220
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 232
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 233
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 236
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 240
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v4, 0x3e8

    .line 241
    iput v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 243
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 245
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 246
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 247
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 249
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v4, "Save to album"

    :goto_0
    aput-object v4, v0, v1

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 251
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 256
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 261
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 266
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 271
    iput v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 274
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 305
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v4, 0x0

    .line 306
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 1159
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 1280
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 2285
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 2286
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 2438
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 2528
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 2680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 434
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 435
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 425
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    const-string p2, ""

    .line 147
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 157
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 158
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v1, 0x0

    .line 160
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 168
    new-instance v2, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 171
    new-instance v2, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 177
    new-instance v2, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 180
    new-instance v2, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 218
    new-instance v2, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 220
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 232
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 233
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 236
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 240
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v3, 0x3e8

    .line 241
    iput v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 243
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 245
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 246
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 247
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 249
    new-array p2, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v3, "Save to album"

    :goto_0
    aput-object v3, p2, v0

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 251
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 256
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 261
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result p2

    iput-boolean p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 266
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 271
    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 274
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 305
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v3, 0x0

    .line 306
    iput-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 1159
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 1280
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 2285
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 2286
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 2438
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 2528
    iput-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 2680
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "javascript:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 427
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 428
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 418
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    const-string p2, ""

    .line 147
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 p3, 0x0

    .line 151
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 157
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 158
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 168
    new-instance v1, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 171
    new-instance v1, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 177
    new-instance v1, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 180
    new-instance v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 218
    new-instance v1, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 220
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 232
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 233
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 236
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 240
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v2, 0x3e8

    .line 241
    iput v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 243
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 245
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 246
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 249
    new-array p2, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v2, "Save to album"

    :goto_0
    aput-object v2, p2, p3

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 251
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 256
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 261
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result p2

    iput-boolean p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 266
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 271
    iput p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 274
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 305
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v2, 0x0

    .line 306
    iput-wide v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 1159
    iput-boolean p3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 1280
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 2285
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 2286
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 2438
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 2528
    iput-wide v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 2680
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "javascript:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 420
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 421
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 1165
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUseSystemWebView(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    const-string v0, ""

    .line 147
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizCode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 151
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->flag4commit:Z

    .line 157
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 158
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const/4 v2, 0x0

    .line 160
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 168
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    .line 171
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    .line 177
    new-instance v3, Landroid/taobao/windvane/extra/performance/WVErrorManager;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance/WVErrorManager;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvErrorManager:Landroid/taobao/windvane/extra/performance/WVErrorManager;

    .line 180
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    .line 218
    new-instance v3, Landroid/taobao/windvane/extra/performance2/WVWPData;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/performance2/WVWPData;-><init>()V

    iput-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wpData:Landroid/taobao/windvane/extra/performance2/WVWPData;

    .line 220
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    .line 232
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 233
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 236
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    .line 240
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    const/16 v4, 0x3e8

    .line 241
    iput v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 243
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    .line 245
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    .line 246
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucParam:Ljava/lang/String;

    .line 247
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 249
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v4, "Save to album"

    :goto_0
    aput-object v4, v0, v1

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 251
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 256
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    .line 261
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v0

    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    .line 266
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    .line 271
    iput v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 274
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$1;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    .line 305
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    const-wide/16 v4, 0x0

    .line 306
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 1159
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 1280
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    .line 2285
    iput-boolean v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    .line 2286
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 2438
    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 2528
    iput-wide v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageStart:J

    .line 2680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    .line 1166
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 1167
    iput-boolean p2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    .line 1168
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1169
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->WebViewWrapType(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1173
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-direct {p2, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1174
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    invoke-direct {p2, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 1175
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1177
    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCClient;

    invoke-direct {p2, p0}, Landroid/taobao/windvane/extra/uc/WVUCClient;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    invoke-virtual {p1, p2}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    goto :goto_1

    .line 1180
    :cond_2
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->init()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/uc/WVUCWebView;)[Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupMenuTags:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0

    .line 141
    invoke-static {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->createStaticWebViewOnMainThread(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$102(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 141
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100()V
    .locals 0

    .line 141
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroyStaticWebViewOnMainThread()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1200(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->longPressSaveImage:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->popupClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1401(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1502(Landroid/taobao/windvane/extra/uc/WVUCWebView;Z)Z
    .locals 0

    .line 141
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    return p1
.end method

.method static synthetic access$1600()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 141
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 141
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/content/Context;J)V
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onUCMCoreSwitched(Landroid/content/Context;J)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1900()Landroid/taobao/windvane/webview/CoreEventCallback;
    .locals 1

    .line 141
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/extra/uc/WVUCWebView;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p0
.end method

.method static synthetic access$2000()Z
    .locals 1

    .line 141
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    return v0
.end method

.method static synthetic access$202(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/taobao/windvane/view/PopupWindowController;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 141
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p1
.end method

.method static synthetic access$2100()V
    .locals 0

    .line 141
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->checkSW()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 141
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-static {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->saveUCCoeDexDirPath(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkOldCoreVersion(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static checkSW()V
    .locals 3

    const-string v0, "WVUCWebView"

    :try_start_0
    const-string/jumbo v1, "start to set ServiceWorker client"

    .line 2422
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    invoke-static {}, Lcom/uc/webview/export/ServiceWorkerController;->getInstance()Lcom/uc/webview/export/ServiceWorkerController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2425
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCServiceWorkerClient;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/uc/WVUCServiceWorkerClient;-><init>()V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/ServiceWorkerController;->setServiceWorkerClient(Lcom/uc/webview/export/ServiceWorkerClient;)V

    :cond_0
    const/4 v1, 0x1

    .line 2427
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 2429
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    const-string v1, "failed to set ServiceWorker client"

    .line 2430
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static createStaticWebViewIfNeeded(Landroid/content/Context;)V
    .locals 2

    .line 1189
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isWebViewMultiProcessEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1191
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$4;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static createStaticWebViewOnMainThread(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "sandbox"

    const-string v1, "createStaticWebViewOnMainThread"

    .line 1200
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    .line 1203
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    const-string v0, "about:blank?static"

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static destroyStaticWebViewIfNeeded()V
    .locals 2

    .line 1208
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isWebViewMultiProcessEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1210
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$5;

    invoke-direct {v1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static destroyStaticWebViewOnMainThread()V
    .locals 2

    const-string/jumbo v0, "sandbox"

    const-string v1, "destroyStaticWebViewOnMainThread"

    .line 1219
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->destroy()V

    const/4 v0, 0x0

    .line 1222
    sput-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sStaticUCWebView:Landroid/taobao/windvane/extra/uc/WVUCWebView;

    :cond_0
    return-void
.end method

.method private static getBusinessDecompressRootDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 821
    invoke-static {p0}, Lcom/uc/webview/export/extension/UCCore;->getExtractRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCore7zDecompressDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 817
    invoke-static {p0, p1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDegradeAliNetwork()Z
    .locals 1

    .line 477
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    return v0
.end method

.method public static getFromType()I
    .locals 1

    const/16 v0, 0x46

    .line 448
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    .line 449
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUseTaobaoNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    goto :goto_1

    .line 453
    :cond_1
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    if-nez v0, :cond_2

    const/16 v0, 0x47

    .line 454
    sput v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    .line 456
    :cond_2
    :goto_1
    sget v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    return v0
.end method

.method private static getMultiProcessPrivateDataDirectorySuffix()Ljava/lang/String;
    .locals 5

    .line 1118
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 1122
    :cond_0
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    .line 1123
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1122
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 1128
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "WVUCWebView"

    aput-object v4, v1, v3

    sget-object v3, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    .line 1129
    invoke-static {v3}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s getMultiProcessPrivateDataDirectorySuffix failure!Subprocess name: %s illegal."

    .line 1128
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getOld7zDecompressPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "WindVane"

    const-string v0, "UC_PATH"

    .line 777
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/ConfigStorage;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get dex path:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getUCSDKSupport()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 464
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    return v0
.end method

.method public static getUseTaobaoNetwork()Z
    .locals 1

    .line 481
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const-string v0, "WVUCWebView"

    .line 1445
    :try_start_0
    sget v1, Lcom/taobao/monitor/procedure/ViewToken;->APM_VIEW_TOKEN:I

    const-string v2, "invalid_view"

    invoke-virtual {p0, v1, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewToken doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    :goto_0
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "uc compensation initialization"

    .line 1450
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCCore()V

    .line 1453
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1454
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->WebViewWrapType(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 1456
    iput-boolean v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    const-string/jumbo v2, "uc webview init "

    .line 1457
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1459
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    .line 1460
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/GlobalConfig;->needSpeed()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    if-nez v2, :cond_2

    .line 1461
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->checkSW()V

    .line 1463
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1464
    invoke-static {v4}, Lcom/uc/webview/export/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 1467
    :cond_3
    iput-boolean v4, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 1471
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-wide v5, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucsdk_alinetwork_rate:D

    .line 1472
    sget-boolean v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    if-nez v2, :cond_4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUseTaobaoNetwork(Z)V

    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Webview init setUseTaobaoNetwork ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUseTaobaoNetwork()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v5, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1483
    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v5, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v5, v5, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    new-instance v6, Landroid/taobao/windvane/extra/uc/WVUCWebView$6;

    invoke-direct {v6, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$6;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-static {v2, v5, v6}, Lcom/uc/webview/export/extension/UCCore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1492
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->cookieUrlRule:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1493
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->cookieUrlRule:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pattern:Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pattern complile Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    :cond_6
    :goto_2
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/taobao/windvane/webview/WVRenderPolicy;->disableAccessibility(Landroid/content/Context;)V

    .line 1501
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v2

    .line 1502
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_7

    if-eqz v2, :cond_7

    .line 1505
    invoke-virtual {v2, v1}, Lcom/uc/webview/export/WebSettings;->setMixedContentMode(I)V

    .line 1508
    :cond_7
    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1509
    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setDomStorageEnabled(Z)V

    .line 1510
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v5, v6, :cond_8

    .line 1511
    invoke-virtual {v2, v1}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 1514
    :cond_8
    invoke-virtual {v2, v1}, Lcom/uc/webview/export/WebSettings;->setDatabaseEnabled(Z)V

    .line 1515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/localstorage"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/uc/webview/export/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setGeolocationEnabled(Z)V

    .line 1518
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/taobao/windvane/config/GlobalConfig;->getAppTag()Ljava/lang/String;

    move-result-object v5

    .line 1519
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v6

    .line 1520
    invoke-virtual {v2}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 1522
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1523
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AliApp("

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_9
    const-string v5, "UCBS/"

    .line 1525
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 1526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " UCBS/2.11.1.1"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    :cond_a
    const-string v5, "TTID/"

    .line 1528
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v5

    invoke-virtual {v5}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " TTID/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v7

    invoke-virtual {v7}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1532
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " WindVane/8.5.0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v5, -0x1

    .line 1533
    invoke-virtual {v2, v5}, Lcom/uc/webview/export/WebSettings;->setCacheMode(I)V

    .line 1534
    invoke-virtual {v2, v1}, Lcom/uc/webview/export/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 1535
    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 1536
    invoke-virtual {v2, v4}, Lcom/uc/webview/export/WebSettings;->setUseWideViewPort(Z)V

    const-string v5, "adapter_build_version"

    .line 1538
    invoke-static {v5, v6}, Lcom/uc/webview/export/extension/UCCore;->setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1540
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_c

    .line 1541
    sget-object v5, Lcom/uc/webview/export/WebSettings$TextSize;->NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

    iget v5, v5, Lcom/uc/webview/export/WebSettings$TextSize;->value:I

    invoke-virtual {v2, v5}, Lcom/uc/webview/export/WebSettings;->setTextZoom(I)V

    .line 1547
    :cond_c
    sget-boolean v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    if-eqz v2, :cond_d

    .line 1548
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1549
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    const-string v2, "UCCookieType"

    .line 1552
    invoke-static {v2, v4}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    .line 1556
    :cond_d
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "WebViewCoreType"

    if-eq v2, v4, :cond_f

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v2

    if-ne v2, v3, :cond_e

    goto :goto_3

    .line 1594
    :cond_e
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v2

    const-string v3, ""

    invoke-static {v6, v2, v3, v3}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1557
    :cond_f
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init  CurrentViewCoreType()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/taobao/windvane/extra/core/WVCore;->setUCSupport(Z)V

    .line 1559
    sget-boolean v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    if-eqz v2, :cond_10

    .line 1560
    new-instance v2, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v7, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizId:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    .line 1561
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->aliRequestAdapter:Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    new-instance v3, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;

    invoke-direct {v3}, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;-><init>()V

    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 1565
    :cond_10
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->openLog:Z

    if-eqz v2, :cond_11

    .line 1566
    new-instance v2, Landroid/taobao/windvane/extra/uc/UCLog;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/uc/UCLog;-><init>()V

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V

    :cond_11
    const-string v2, "EnableCustomErrPage"

    .line 1570
    invoke-static {v2, v4}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 1572
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    iget-object v2, v2, Landroid/taobao/windvane/config/UCParamData;->u4FocusAutoPopupInputHostList:Ljava/lang/String;

    const-string/jumbo v3, "u4_focus_auto_popup_input_list"

    invoke-static {v4, v4, v3, v2}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1575
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    iget-object v2, v2, Landroid/taobao/windvane/config/UCParamData;->cdResourceEmbedSurfaceEmbedViewEnableList:Ljava/lang/String;

    const-string v3, "crwp_embed_surface_embed_view_enable_list"

    invoke-static {v4, v4, v3, v2}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    const-string v2, "crwp_embed_view_reattach_list"

    const-string v3, "map"

    .line 1578
    invoke-static {v4, v4, v2, v3}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x5

    .line 1580
    invoke-virtual {p0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setPageCacheCapacity(I)V

    .line 1584
    :try_start_2
    invoke-static {}, Landroid/taobao/windvane/config/WVCookieConfig;->getInstance()Landroid/taobao/windvane/config/WVCookieConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCookieConfig;->cookieBlackList:Ljava/lang/String;

    .line 1585
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set cookie black list = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to uc"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CookiesBlacklistForJs"

    .line 1587
    invoke-static {v3, v2}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1592
    :catch_2
    :cond_12
    invoke-static {v6, v5}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    :goto_4
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebView$WVValueCallback;

    invoke-direct {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView$WVValueCallback;-><init>()V

    invoke-static {v2}, Lcom/uc/webview/export/extension/UCCore;->setStatDataCallback(Landroid/webkit/ValueCallback;)V

    .line 1627
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1628
    new-instance v2, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 1629
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1631
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCClient;

    invoke-direct {v3, p0}, Landroid/taobao/windvane/extra/uc/WVUCClient;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    invoke-virtual {v2, v3}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 1654
    :cond_13
    new-instance v2, Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/taobao/windvane/webview/WVUIModel;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 1656
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->init()V

    .line 1658
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    .line 1659
    new-instance v2, Landroid/taobao/windvane/jsbridge/WVAppEvent;

    invoke-direct {v2}, Landroid/taobao/windvane/jsbridge/WVAppEvent;-><init>()V

    .line 1660
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/taobao/windvane/jsbridge/WVAppEvent;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string v3, "AppEvent"

    .line 1661
    invoke-virtual {p0, v3, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1663
    sget-boolean v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initedJSBridge:Z

    const-string v3, "WVPerformance"

    if-nez v2, :cond_14

    .line 1664
    const-class v2, Landroid/taobao/windvane/extra/jsbridge/WVUCBase;

    const-string v6, "WVUCBase"

    invoke-static {v6, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1665
    const-class v2, Landroid/taobao/windvane/jsbridge/WVH5PP;

    invoke-static {v3, v2}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1666
    sput-boolean v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initedJSBridge:Z

    .line 1669
    :cond_14
    :try_start_3
    invoke-virtual {p0, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/jsbridge/WVH5PP;

    .line 1670
    invoke-virtual {v2}, Landroid/taobao/windvane/jsbridge/WVH5PP;->resetAllStoredSet()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    .line 1672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetAllStoredSet error: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    :goto_5
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setSupportLocalStorageFile()V

    .line 1682
    new-instance v2, Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-direct {v2, p0}, Landroid/taobao/windvane/jspatch/WVJsPatchListener;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 1683
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v2

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    sget v6, Landroid/taobao/windvane/service/WVEventService;->WV_BACKWARD_EVENT:I

    invoke-virtual {v2, v3, v6}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 1686
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_15

    :try_start_4
    const-string/jumbo v2, "searchBoxJavaBridge_"

    .line 1688
    invoke-virtual {p0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v2, "accessibility"

    .line 1689
    invoke-virtual {p0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v2, "accessibilityTraversal"

    .line 1690
    invoke-virtual {p0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v2

    .line 1692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeJavascriptInterface "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :cond_15
    :goto_6
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$7;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1730
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1731
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1733
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didWebViewInitAtTime(J)V

    .line 1736
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_17

    invoke-static {}, Landroid/taobao/windvane/webview/WVRenderPolicy;->shouldDisableHardwareRenderInLayer()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1738
    :try_start_5
    invoke-virtual {p0, v4, v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    .line 1740
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1746
    :cond_17
    :goto_7
    :try_start_6
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1748
    :catch_6
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setAcceptThirdPartyCookies()V

    .line 1751
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string v2, "__windvane__"

    invoke-virtual {p0, v0, v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "(function(f){try{if(f.__windvane__.nativeCall&&!f.__windvane__.call){var h=f.__windvane__||(f.__windvane__={});var c=\"wvapi:\"+(Math.floor(Math.random()*(1<<16))),a=0,b={},g=function(j){if(j&&typeof j==\"string\"){try{return JSON.parse(j)}catch(i){return{ret:\"HY_RESULT_PARSE_ERROR\"}}}else{return j||{}}};h.call=function(i,m,l,e,k){if(typeof l!=\"function\"){l=null}if(typeof e!=\"function\"){e=null}var j=c+(a++);b[j]={s:l,f:e,};if(k>0){b[j].t=setTimeout(function(){h.onFailure(j,{ret:\"HY_TIMEOUT\"})},k)}if(!m){m={}}if(typeof m!=\"string\"){m=JSON.stringify(m)}f.__windvane__.nativeCall(i,m,j,location.href)};h.find=function(i,j){var e=b[i]||{};if(e.t){clearTimeout(e.t);delete e.t}if(!j){delete b[i]}return e};h.onSuccess=function(j,e,k){var i=h.find(j,k).s;if(i){i(g(e))}};h.onFailure=function(j,e){var i=h.find(j,false).f;if(i){i(g(e))}}}}catch(d){}})(window);"

    .line 1753
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJsEarly(Ljava/lang/String;)V

    .line 1759
    :try_start_7
    invoke-static {}, Landroid/taobao/windvane/embed/WVEVManager;->getEmbedViewNames()Ljava/util/ArrayList;

    move-result-object v0

    .line 1760
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->disableMixViews:[Ljava/lang/String;

    array-length v3, v2

    :goto_8
    if-ge v1, v3, :cond_18

    aget-object v4, v2, v1

    .line 1761
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1763
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "window.__mix_view_environment__={availableTypes:{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    const-string v3, ","

    if-eqz v2, :cond_19

    :try_start_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 1767
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1768
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1a
    const-string/jumbo v0, "},matchType:\'name\',isForAppX:\'no\'}"

    .line 1771
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJsEarly(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    :catch_7
    return-void
.end method

.method public static initUCCore()V
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCCore(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initUCCore(Landroid/content/Context;)V
    .locals 6

    .line 577
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/GlobalConfig;->getUcsdkappkeySec()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 578
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WVUCWebView: can not init uc core for uc key is null"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void

    .line 584
    :cond_0
    sget-object p0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    if-nez p0, :cond_1

    .line 585
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "WVUCWebView: can not init uc core for context is nulll"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    return-void

    .line 590
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVCommonConfig;->hasInited()Z

    move-result p0

    const-string v0, "WVUCWebView"

    if-nez p0, :cond_2

    .line 591
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/WVCommonConfig;->init()V

    const-string p0, "init WVCommonConfig before init core"

    .line 592
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 596
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->is64Bit()Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo v3, "x86"

    .line 598
    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 600
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_X86:Ljava/lang/String;

    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    const-string p0, "UCCore use x86 core"

    .line 601
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 604
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "]"

    if-eqz v3, :cond_6

    :try_start_1
    const-string/jumbo v3, "true"

    .line 606
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/taobao/uc/UCSoSettings;->UC_CORE_THICK:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 607
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->openUCDebug()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 608
    sput-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->openUCDebug:Z

    :cond_4
    if-eqz p0, :cond_5

    .line 610
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_64:Ljava/lang/String;

    goto :goto_0

    .line 611
    :cond_5
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_DEBUG_32:Ljava/lang/String;

    :goto_0
    sput-object v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use 3.0 debug core, use 64bit = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 615
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "use 3.0 release core, use 64bit = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_7

    .line 616
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_64:Ljava/lang/String;

    goto :goto_1

    .line 617
    :cond_7
    invoke-static {}, Lcom/taobao/uc/UCSoSettings;->getInstance()Lcom/taobao/uc/UCSoSettings;

    move-result-object p0

    iget-object p0, p0, Lcom/taobao/uc/UCSoSettings;->UC_CORE_URL_32:Ljava/lang/String;

    :goto_1
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 621
    :catch_0
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 624
    :goto_2
    :try_start_2
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "init uclib inner"

    .line 625
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/taobao/windvane/config/GlobalConfig;->getUcsdkappkeySec()[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 627
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 630
    :catch_1
    sget-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->sCoreInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_8
    const-string/jumbo p0, "uc core has been initialized"

    .line 633
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public static initUCLIb(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->shouldUCLibInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 558
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "init uclib outer"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WVUCWebView"

    .line 563
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    .line 568
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getUcsdkappkeySec()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    const-string v0, "[all]"

    const-string v1, "]"

    const-string v2, "WVUCWebView"

    const-string v3, "UCSDK initUCLib begin "

    .line 643
    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->useSystemWebView:Z

    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUseSystemWebView(Z)V

    .line 648
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isAppDebug()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 649
    invoke-static {v4}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    goto :goto_0

    .line 651
    :cond_0
    invoke-static {v5}, Lcom/uc/webview/export/extension/UCCore;->setPrintLog(Z)V

    .line 654
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCSDK initUCLib UseSystemWebView "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    .line 667
    :cond_1
    :try_start_0
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    .line 668
    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUcCoreUrl(Ljava/lang/String;)V

    if-nez p0, :cond_2

    .line 670
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isTaobao()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 671
    sget-object p0, Landroid/taobao/windvane/WindVaneSDKForTB;->TB_UC_SDK_APP_KEY_SEC:[Ljava/lang/String;

    :cond_2
    const/4 v3, 0x5

    .line 676
    new-array v3, v3, [Ljava/lang/Object;

    .line 677
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    .line 678
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    .line 679
    new-instance v6, Landroid/taobao/windvane/extra/uc/WVUCWebView$2;

    invoke-direct {v6}, Landroid/taobao/windvane/extra/uc/WVUCWebView$2;-><init>()V

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    const/4 v4, 0x4

    aput-object v0, v3, v4

    .line 720
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucCore7ZFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uccore policy:["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v6, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sandbox:policy ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v6, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "];timeout ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v6, v6, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":sandboxed_privilege_process0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 726
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":sandboxed_process0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 727
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":gpu_process"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 730
    :cond_3
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setMultiPolicy(Landroid/content/Context;)V

    .line 731
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    if-nez v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u5185\u7f6euc\u521d\u59cb\u5316"

    .line 732
    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {p0, p1, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLibBy7Z([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 735
    :cond_4
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v5

    .line 738
    :cond_5
    invoke-static {p0, p1, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLibByDownload([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_6
    :goto_1
    return v5

    :catch_0
    move-exception p0

    .line 740
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UCCore init fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public static initUCLibBy7Z([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 10

    const-string v0, "CONTEXT"

    const/4 v1, 0x1

    .line 907
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->INNER_FLAG:I

    .line 908
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->ucCore7ZFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getOld7zDecompressPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 911
    invoke-static {p1, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCore7zDecompressDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, ""

    .line 926
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCSDK initUCLibBy7Z zipPath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WVUCWebView"

    invoke-static {v6, v5}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/uc/webview/export/business/BusinessWrapper;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v5

    const-string v7, "bo_dec_r_p"

    .line 930
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getBusinessDecompressRootDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 929
    invoke-virtual {v5, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v8, "webview_multi_process"

    sget v9, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 931
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string v8, "gpu_process_mode"

    sget v9, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 932
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v8, "webview_multi_process_fallback_timeout"

    sget-object v9, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v9, v9, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    .line 933
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v8, "webview_multi_process_enable_service_speedup"

    sget-object v9, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v9, v9, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiServiceSpeedUp:Z

    .line 934
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string v8, "bo_f_u_dec_r_p"

    .line 936
    invoke-virtual {v7, v8, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string v8, "first_use_sw"

    sget-object v9, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v9, v9, Landroid/taobao/windvane/config/WVCommonConfigData;->firstUseSystemWebViewOn7zInit:Z

    .line 938
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 937
    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string v8, "bo_new_ucm_zf"

    .line 939
    invoke-virtual {v7, v8, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string v8, "bo_new_ucm_z_type"

    const-string v9, "7z"

    .line 940
    invoke-virtual {v7, v8, v9}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v7

    check-cast v7, Lcom/uc/webview/export/utility/SetupTask;

    const-string v8, "bo_old_dex_dp"

    .line 941
    invoke-virtual {v7, v8, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_dex_old_dex_dir"

    .line 942
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_skip_io_dc"

    .line 943
    invoke-virtual {v4, v7, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_prom_sp_v_c_i"

    new-instance v8, Landroid/taobao/windvane/extra/uc/WVUCWebView$OldCoreVersionCallable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/taobao/windvane/extra/uc/WVUCWebView$OldCoreVersionCallable;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 944
    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_s_i_uc_core"

    new-instance v8, Landroid/taobao/windvane/extra/uc/WVUCWebView$OnInitStart;

    invoke-direct {v8, v9}, Landroid/taobao/windvane/extra/uc/WVUCWebView$OnInitStart;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 945
    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "bo_dec_cl"

    new-instance v8, Landroid/taobao/windvane/extra/uc/WVUCWebView$DecompressCallable;

    invoke-direct {v8, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DecompressCallable;-><init>(Landroid/content/Context;)V

    .line 946
    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v4

    check-cast v4, Lcom/uc/webview/export/utility/SetupTask;

    const-string v7, "be_init_success"

    new-instance v8, Landroid/taobao/windvane/extra/uc/WVUCWebView$3;

    invoke-direct {v8}, Landroid/taobao/windvane/extra/uc/WVUCWebView$3;-><init>()V

    .line 947
    invoke-virtual {v4, v7, v8}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 958
    invoke-static {v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setupUCParam(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string v0, "provided_keys"

    .line 962
    invoke-virtual {p1, v0, p0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VIDEO_AC"

    .line 964
    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "AC"

    .line 965
    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "core_ver_excludes"

    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->excludeUCVersions:Ljava/lang/String;

    .line 967
    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "MULTI_CORE_TYPE"

    .line 969
    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "SYSTEM_WEBVIEW"

    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    .line 971
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "WEBVIEW_POLICY"

    const/4 v0, 0x2

    .line 973
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "loadPolicy"

    const-string v0, "SPECIFIED_ONLY"

    .line 975
    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VERIFY_POLICY"

    const/4 v0, 0x0

    .line 977
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "delete_core"

    .line 979
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getDeleteCorePolicy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "log_conf"

    .line 981
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "wait_fallback_sys"

    .line 983
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->getUcCoreWaitMills()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "ucPlayer"

    sget-object p2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p2, p2, Landroid/taobao/windvane/config/WVCommonConfigData;->useUCPlayer:Z

    .line 985
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "skip_old_extra_kernel"

    sget-object p2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p2, p2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucSkipOldKernel:Z

    .line 987
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "sdk_international_env"

    .line 989
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isUcSdkInternationalEnv()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "startup_policy"

    sget-object p2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget p2, p2, Landroid/taobao/windvane/config/WVCommonConfigData;->initWebPolicy:I

    .line 991
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    .line 993
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getMultiProcessPrivateDataDirectorySuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "disable_multi_unknown_crash"

    .line 995
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isDisableMultiUnknownCrash()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "exception"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;

    invoke-direct {p2, v9}, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 997
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "success"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;

    .line 999
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;-><init>(J)V

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "switch"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;

    invoke-direct {p2, v9}, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 1001
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    .line 1003
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->setAsDefault()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object p0

    .line 1004
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1006
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initUCLibBy7Z fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :goto_0
    sget-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public static initUCLibByDownload([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "UCCore"

    const/4 v1, 0x1

    .line 1017
    :try_start_0
    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucCoreUrl:Ljava/lang/String;

    .line 1018
    invoke-static {v2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setUcCoreUrl(Ljava/lang/String;)V

    .line 1022
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/GlobalConfig;->getUcLibDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "WVUCWebView"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "dexFilePath"

    .line 1028
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v6

    invoke-virtual {v6}, Landroid/taobao/windvane/config/GlobalConfig;->getUcLibDir()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    const-string v6, "asset\u76ee\u5f55\u5185\u6838\u521d\u59cb\u5316"

    .line 1029
    invoke-static {v3, v6}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    sput v4, Landroid/taobao/windvane/extra/uc/WVUCWebView;->INNER_FLAG:I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "\u4e0b\u8f7d\u5185\u6838\u521d\u59cb\u5316"

    .line 1033
    invoke-static {v3, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    invoke-static {v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setupUCParam(Ljava/lang/String;)V

    const-string v2, "dlChecker"

    .line 1038
    new-instance v3, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;

    sget-object v6, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-direct {v3, v6}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v2

    const-string/jumbo v3, "ucmUpdUrl"

    sget-object v6, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    .line 1040
    invoke-virtual {v2, v3, v6}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v2

    check-cast v2, Lcom/uc/webview/export/utility/SetupTask;

    .line 1043
    :goto_0
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    .line 1044
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    .line 1045
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    .line 1046
    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    const-string v3, "CONTEXT"

    .line 1048
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v2, "webview_multi_process"

    sget v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 1050
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string v2, "gpu_process_mode"

    sget v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 1051
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v2, "webview_multi_process_fallback_timeout"

    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiTimeOut:I

    .line 1052
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo v2, "webview_multi_process_enable_service_speedup"

    sget-object v3, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v3, v3, Landroid/taobao/windvane/config/WVCommonConfigData;->ucMultiServiceSpeedUp:Z

    .line 1053
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p1

    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    const-string v2, "provided_keys"

    .line 1055
    invoke-virtual {p1, v2, p0}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VIDEO_AC"

    .line 1057
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "AC"

    .line 1058
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "core_ver_excludes"

    sget-object v2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v2, v2, Landroid/taobao/windvane/config/WVCommonConfigData;->excludeUCVersions:Ljava/lang/String;

    .line 1060
    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "MULTI_CORE_TYPE"

    .line 1062
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "SYSTEM_WEBVIEW"

    sget-boolean v2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    .line 1064
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "WEBVIEW_POLICY"

    .line 1066
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "loadPolicy"

    const-string v2, "SPECIFIED_ONLY"

    .line 1068
    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "VERIFY_POLICY"

    const/4 v2, 0x0

    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "delete_core"

    .line 1072
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/GlobalConfig;->getDeleteCorePolicy()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "log_conf"

    .line 1074
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "wait_fallback_sys"

    .line 1076
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->getUcCoreWaitMills()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "ucPlayer"

    sget-object p2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p2, p2, Landroid/taobao/windvane/config/WVCommonConfigData;->useUCPlayer:Z

    .line 1078
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "skip_old_extra_kernel"

    sget-object p2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean p2, p2, Landroid/taobao/windvane/config/WVCommonConfigData;->ucSkipOldKernel:Z

    .line 1080
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "sdk_international_env"

    .line 1082
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isUcSdkInternationalEnv()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "startup_policy"

    sget-object p2, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget p2, p2, Landroid/taobao/windvane/config/WVCommonConfigData;->initWebPolicy:I

    .line 1084
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    .line 1086
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getMultiProcessPrivateDataDirectorySuffix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "disable_multi_unknown_crash"

    .line 1088
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/GlobalConfig;->isDisableMultiUnknownCrash()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "updateProgress"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownLoadCallback;

    invoke-direct {p2, v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownLoadCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 1089
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string p1, "exception"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;

    invoke-direct {p2, v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView$ExceptionValueCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 1091
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "success"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Landroid/taobao/windvane/extra/uc/WVUCWebView$CorePreparedCallback;-><init>(J)V

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    const-string/jumbo p1, "switch"

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;

    invoke-direct {p2, v5}, Landroid/taobao/windvane/extra/uc/WVUCWebView$SwitchValueCallback;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView$1;)V

    .line 1095
    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    .line 1097
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->setAsDefault()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object p0

    .line 1098
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 1100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "final UCCore:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UCCore init fail "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :goto_1
    sget-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method private static isMainProcess()Z
    .locals 3

    .line 1110
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u662f\u5426\u5728\u4e3b\u8fdb\u7a0b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVUCWebView"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isNeedCookie(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1145
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 1146
    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1147
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern complile Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "WVUCWebView"

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isNeedDownLoad()Z
    .locals 1

    .line 2356
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->needDownLoad:Z

    return v0
.end method

.method private static isUseSystemWebView(Landroid/content/Context;)Z
    .locals 5

    .line 397
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    if-nez v0, :cond_1

    .line 400
    :try_start_0
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    const-string v2, "WindVane_common_config"

    const-string/jumbo v3, "useSysWebViewBizList"

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ";"

    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 403
    array-length v2, v1

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 406
    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public static isWebViewMultiProcessEnabled()Z
    .locals 1

    .line 1228
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static onUCMCoreSwitched(Landroid/content/Context;J)V
    .locals 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCSDK init onUCMCoreSwitched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string v0, "CorePreparedCallback   isUCSDKSupport = true"

    .line 508
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/core/WVCore;->setUCSupport(Z)V

    .line 511
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    sget-object v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->setCoreEventCallback(Landroid/taobao/windvane/webview/CoreEventCallback;)V

    .line 514
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 515
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->getInstance()Landroid/taobao/windvane/extra/uc/WVCoreSettings;

    move-result-object v0

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVCoreSettings;->coreEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/webview/CoreEventCallback;

    if-nez v1, :cond_1

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {v1}, Landroid/taobao/windvane/webview/CoreEventCallback;->onUCCorePrepared()V

    goto :goto_0

    .line 524
    :cond_2
    new-instance v0, Landroid/taobao/windvane/ha/UCHAManager;

    invoke-direct {v0}, Landroid/taobao/windvane/ha/UCHAManager;-><init>()V

    .line 525
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->getUcHASettings()Landroid/taobao/windvane/config/UCHASettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/ha/UCHAManager;->initHAParam(Landroid/taobao/windvane/config/UCHASettings;)V

    .line 527
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getWvMonitorInterface()Landroid/taobao/windvane/monitor/WVMonitorInterface;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    sget-object p1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget p1, p1, Landroid/taobao/windvane/config/WVCommonConfigData;->initUCCorePolicy:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Landroid/taobao/windvane/monitor/WVMonitorInterface;->commitCoreInitTime(JLjava/lang/String;)V

    .line 528
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object p1

    const/16 p2, 0xbc8

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 529
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object p1

    invoke-virtual {p1}, Landroid/taobao/windvane/config/GlobalConfig;->needSpeed()Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isSWInit:Z

    if-nez p1, :cond_3

    .line 530
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->checkSW()V

    .line 532
    :cond_3
    sget-boolean p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    if-eqz p1, :cond_4

    .line 533
    new-instance p1, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizId:Ljava/lang/String;

    invoke-direct {p1, p0, p2}, Landroid/taobao/windvane/extra/uc/AliNetworkAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;

    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/AliNetworkDecider;-><init>()V

    invoke-static {p1, p0}, Lcom/uc/webview/export/extension/UCCore;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 541
    :cond_4
    :try_start_0
    sget-object p0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    sget-object p1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_PLAYER_URL:Ljava/lang/String;

    new-instance p2, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;

    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-direct {p2, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$DownloadEnv;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UCCore update UCPlayer failed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UCCore"

    invoke-static {p1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private static saveUCCoeDexDirPath(Ljava/lang/String;)V
    .locals 2

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "save dex path:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WindVane"

    const-string v1, "UC_PATH"

    .line 784
    invoke-static {v0, v1, p0}, Landroid/taobao/windvane/util/ConfigStorage;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAcceptThirdPartyCookies()V
    .locals 3

    .line 2271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2274
    :try_start_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2275
    instance-of v2, v0, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 2276
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static setBizCode(Ljava/lang/String;)V
    .locals 0

    .line 2608
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->bizId:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setCoreEventCallback(Landroid/taobao/windvane/webview/CoreEventCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->coreEventCallback:Landroid/taobao/windvane/webview/CoreEventCallback;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setDegradeAliNetwork(Z)V
    .locals 0

    .line 473
    sput-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mDegradeAliNetwork:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static setMultiPolicy(Landroid/content/Context;)V
    .locals 8

    .line 749
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->webMultiPolicy:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 750
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->gpuMultiPolicy:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 752
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "2"

    .line 753
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 754
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 755
    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 757
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 759
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/extra/core/WVCore;->checkIsolateIfOpen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    sput p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    .line 761
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_4

    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isMainProcess()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const/4 v7, 0x2

    :cond_4
    :goto_1
    sput v7, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    .line 764
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object p0

    sget v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->renderMultiPolicy:I

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/core/WVCore;->setUsedWebMulti(I)V

    .line 765
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object p0

    sget v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->gpuMultiPolicy:I

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/core/WVCore;->setUsedGpuMulti(I)V

    return-void
.end method

.method private setSupportLocalStorageFile()V
    .locals 3

    .line 1780
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1781
    new-instance v0, Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-direct {v0}, Landroid/taobao/windvane/filter/WVSecurityFilter;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 1783
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    sget v2, Landroid/taobao/windvane/service/WVEventService;->WV_FORWARD_EVENT:I

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    :cond_0
    return-void
.end method

.method public static setUcCoreUrl(Ljava/lang/String;)V
    .locals 1

    .line 443
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    sput-object p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->UC_CORE_URL:Ljava/lang/String;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUseSystemWebView(Z)V
    .locals 0

    .line 468
    sput-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseSystemWebView:Z

    const/16 p0, 0x46

    .line 469
    sput p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->fromType:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUseTaobaoNetwork(Z)V
    .locals 0

    .line 485
    sput-boolean p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseAliNetwork:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static setupUCParam(Ljava/lang/String;)V
    .locals 6

    .line 2565
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-object v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->ucParam:Landroid/taobao/windvane/config/UCParamData;

    .line 2567
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget-boolean v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->enableUcShareCore:Z

    const-string v2, "WVUCWebView"

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 2568
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->hostApp()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->needLoadNeedShareCoreApp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2570
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2572
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->hostApp()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2573
    invoke-static {}, Landroid/taobao/windvane/util/NetWork;->isConnectionInexpensive()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "sc_lshco"

    .line 2574
    iput-object v3, v0, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    const-string v3, "1"

    .line 2575
    iput-object v3, v0, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    .line 2577
    :cond_1
    iget-object v3, v0, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "sc_ustwm"

    .line 2578
    iget-object v4, v0, Landroid/taobao/windvane/config/UCParamData;->scWaitMilts:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2581
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/UCParamData;->hostApp()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "sc_ta_fp"

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroid/taobao/windvane/config/UCParamData;->validShareCoreToSdcardParams()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2582
    iget-object v3, v0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sc_cpy"

    .line 2583
    iget-object v5, v0, Landroid/taobao/windvane/config/UCParamData;->scCopyToSdcardCd:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sc_hucmv"

    .line 2584
    iget-object v5, v0, Landroid/taobao/windvane/config/UCParamData;->hostUcmVersionsCd:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "sc_udst"

    .line 2585
    iget-object v5, v0, Landroid/taobao/windvane/config/UCParamData;->scStillUpd:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2586
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "sc_cd_fp"

    .line 2587
    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2589
    :cond_3
    invoke-virtual {v0}, Landroid/taobao/windvane/config/UCParamData;->validShareCoreFromSdcardParams()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 2590
    iget-object p0, v0, Landroid/taobao/windvane/config/UCParamData;->sdCopyPathCd:Ljava/lang/String;

    invoke-virtual {v1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "sc_taucmv"

    .line 2591
    iget-object v3, v0, Landroid/taobao/windvane/config/UCParamData;->thirtyUcmVersionsCd:Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "sc_ldpl"

    .line 2592
    iget-object v3, v0, Landroid/taobao/windvane/config/UCParamData;->scLoadPolicyCd:Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "sc_pkgl"

    .line 2593
    iget-object v0, v0, Landroid/taobao/windvane/config/UCParamData;->scPkgNames:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2596
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSON_CMD"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2597
    invoke-static {v2, p0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    invoke-static {p0}, Lcom/uc/webview/export/extension/UCCore;->setParam(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 2600
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "failed to setup uc param"

    invoke-static {v2, v1, p0, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string p0, "not taobao, or shared core disabled by config, or uc param is empty."

    .line 2603
    invoke-static {v2, p0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private tryPrcacheDocument(Ljava/lang/String;)V
    .locals 3

    .line 1357
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->canPrecacheDoc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1361
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    if-nez v0, :cond_1

    return-void

    .line 1364
    :cond_1
    new-instance v0, Lcom/uc/webview/export/WebResourceRequest;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/uc/webview/export/WebResourceRequest;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1366
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    invoke-virtual {v1, p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1368
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1369
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "maxAge"

    const-string v2, "10"

    .line 1372
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ignoreQuery"

    const-string v2, "0"

    .line 1377
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    invoke-static {v1, p1}, Lcom/uc/webview/export/extension/UCCore;->precacheResources(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 1383
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->getInstance()Landroid/taobao/windvane/config/WVUCPrecacheManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/config/WVUCPrecacheManager;->addPrecacheDoc(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static ucCore7ZFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 769
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/GlobalConfig;->getUc7ZPath()Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "libkernelu4_7z_uc.so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public OnScrollChanged(IIII)V
    .locals 1

    .line 2023
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2024
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onScrollChanged(IIII)V

    .line 2027
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->onScrollChanged(IIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2029
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public _getContext()Landroid/content/Context;
    .locals 2

    .line 1870
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1871
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_0

    .line 1872
    nop

    nop

    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public _post(Ljava/lang/Runnable;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 2533
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v0, "WVUCWebView"

    const-string v1, " wait webview attach to window"

    .line 2534
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 2538
    :cond_0
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessibility"

    .line 1790
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "accessibilityTraversal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1793
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1858
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 1859
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->addEntry(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public allowAllOpen()Z
    .locals 1

    .line 2186
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    return v0
.end method

.method public back()Z
    .locals 3

    .line 1413
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1414
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->goBack()V

    .line 1415
    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 1416
    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    goto :goto_0

    .line 1418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back pressed, mPageLoadedCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WVUCWebView"

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBack()Z
    .locals 2

    .line 2264
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbbc

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2266
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canUseGlobalUrlConfig()Z
    .locals 1

    .line 2171
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    return v0
.end method

.method public canUseUrlConfig()Z
    .locals 1

    .line 2161
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    return v0
.end method

.method public clearCache()V
    .locals 1

    const/4 v0, 0x1

    .line 2141
    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public clearH5MonitorData()V
    .locals 1

    .line 2509
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2510
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public containsH5MonitorData(Ljava/lang/String;)Z
    .locals 1

    .line 2521
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2524
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public coreDestroy()V
    .locals 13

    const-string/jumbo v0, "x86"

    const-string v1, "Delay destroy core"

    const-string v2, "WVUCWebView::coreDestroy finally Exception:"

    const-string v3, "WVUCWebView"

    const-wide/16 v4, 0x32

    const/4 v6, 0x1

    const/16 v7, 0x13

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 1951
    :try_start_0
    iget-boolean v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_3

    .line 1988
    :try_start_1
    iget-boolean v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    if-nez v10, :cond_2

    .line 1990
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v10

    if-eq v10, v8, :cond_1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_0

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2000
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 2001
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 2002
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_1

    .line 1991
    :cond_1
    :goto_0
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1993
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_2
    const-string v10, "call core destroy"

    .line 1955
    invoke-static {v3, v10}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    iput v9, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 1957
    iget-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    const-string v11, "input_method"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 1958
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1959
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4
    const/4 v10, 0x0

    .line 1961
    invoke-super {p0, v10}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 1962
    invoke-super {p0, v10}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 1963
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 1964
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 1965
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 1966
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v11

    invoke-virtual {v11}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->tryToRunTailBridges()V

    .line 1967
    iget-object v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    invoke-virtual {v11}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onDestroy()V

    .line 1968
    invoke-virtual {p0, v10}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1969
    iput-object v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1971
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v10

    const/16 v11, 0xbbb

    invoke-virtual {v10, v11}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 1972
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v10

    iget-object v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-virtual {v10, v11}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 1973
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v10

    iget-object v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-virtual {v10, v11}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 1974
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->removeAllViews()V

    .line 1975
    sget-object v10, Landroid/taobao/windvane/extra/uc/WVUCWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v10, :cond_5

    .line 1976
    sget-object v10, Landroid/taobao/windvane/extra/uc/WVUCWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1979
    :cond_5
    iput-boolean v9, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    .line 1981
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/view/ViewGroup;

    if-eqz v10, :cond_6

    .line 1982
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1988
    :cond_6
    :try_start_3
    iget-boolean v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    if-nez v10, :cond_b

    .line 1990
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v10

    if-eq v10, v8, :cond_8

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_7

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 2000
    :cond_7
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 2001
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 2002
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto/16 :goto_5

    .line 1991
    :cond_8
    :goto_2
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1993
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v0

    .line 2006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4

    :catchall_0
    move-exception v10

    goto :goto_6

    :catch_2
    move-exception v10

    .line 1985
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WVUCWebView::coreDestroy Exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1988
    :try_start_5
    iget-boolean v10, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    if-nez v10, :cond_b

    .line 1990
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v10

    if-eq v10, v8, :cond_a

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_9

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 2000
    :cond_9
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 2001
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 2002
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_5

    .line 1991
    :cond_a
    :goto_3
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1993
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 2006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void

    .line 1988
    :goto_6
    :try_start_6
    iget-boolean v11, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    if-nez v11, :cond_e

    .line 1990
    invoke-static {}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCoreType()I

    move-result v11

    if-eq v11, v8, :cond_d

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v7, :cond_c

    invoke-static {v0}, Landroid/taobao/windvane/extra/uc/WVUCUtils;->isArchContains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    .line 2000
    :cond_c
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->coreDestroy()V

    .line 2001
    iput-boolean v6, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsCoreDestroy:Z

    .line 2002
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    goto :goto_8

    .line 1991
    :cond_d
    :goto_7
    invoke-static {v3, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1993
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$9;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 2006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    :cond_e
    :goto_8
    throw v10
.end method

.method public coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dx:F

    .line 2296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dy:F

    .line 2297
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    if-nez v0, :cond_3

    .line 2298
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v2

    :cond_0
    const/4 v3, 0x2

    const/high16 v4, 0x40a00000    # 5.0f

    if-ne v0, v3, :cond_1

    .line 2302
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dy:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_1
    if-ne v0, v2, :cond_3

    .line 2306
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dy:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 2307
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isUser:Z

    return v2

    .line 2310
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 2312
    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2313
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2314
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2318
    :cond_3
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->coreDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public coreOnScrollChanged(IIII)V
    .locals 0

    .line 2035
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->OnScrollChanged(IIII)V

    .line 2036
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->coreOnScrollChanged(IIII)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1798
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateJavascript : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVUCWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    if-nez v0, :cond_0

    return-void

    .line 1807
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    const-string v2, "javascript:"

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    const/16 v0, 0xb

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1808
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1812
    :cond_1
    sget-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    const/4 v1, 0x3

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 1828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1830
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 1814
    :cond_4
    :goto_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1821
    :catch_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 1822
    sput-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    .line 1823
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const-string p2, "2"

    const-string v0, "exception"

    .line 1824
    invoke-static {p2, p1, v0}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitUCWebviewError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1816
    :catch_1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentViewCoreType()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 1817
    sput-boolean v3, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascriptSupported:Z

    .line 1818
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 2

    .line 2094
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    const-string/jumbo v1, "{}"

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2099
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentContext()Landroid/content/Context;
    .locals 1

    .line 1233
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 4

    const-string v0, "WVUCWebView"

    .line 2060
    :try_start_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2062
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView had destroyed,forbid to be called getUrl. currentUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 2065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl by currentUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    return-object v0

    .line 2068
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrl by webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getDataOnActive()Ljava/lang/String;
    .locals 1

    .line 2083
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    return-object v0
.end method

.method public getH5MonitorData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2470
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2473
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    if-nez p1, :cond_1

    return-object v1

    .line 2477
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getH5MonitorDatas()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2481
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 2482
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0

    .line 2485
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2486
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2487
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2488
    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 2490
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2491
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 2492
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2493
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2494
    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2496
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2499
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "resources"

    .line 2500
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1864
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1865
    :cond_0
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPageLoadedCount()I
    .locals 1

    .line 2181
    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    return v0
.end method

.method public getPerformanceDelegate()Landroid/taobao/windvane/extra/performance2/WVPerformance;
    .locals 1

    .line 365
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->performanceDelegate:Landroid/taobao/windvane/extra/performance2/WVPerformance;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1408
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 2150
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 2108
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1

    .line 2103
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    return-object v0
.end method

.method public getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;
    .locals 1

    .line 2112
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 2205
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "WVUCWebView"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 2252
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u5931\u8d25"

    goto :goto_0

    :cond_0
    const-string v1, "Failed to save picture"

    :goto_0
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY_SAVE_IMAGE_FAIL fail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    .line 2244
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u6210\u529f"

    goto :goto_2

    :cond_1
    const-string v1, "Success to save picture"

    :goto_2
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 2246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY_SAVE_IMAGE_SUCCESS fail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return v2

    .line 2237
    :pswitch_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 2238
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_3
    return v2

    .line 2227
    :pswitch_3
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_4

    .line 2228
    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->loadErrorPage()V

    .line 2230
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    .line 2231
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_6

    .line 2232
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_6
    return v2

    .line 2216
    :pswitch_4
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_8

    .line 2217
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    .line 2218
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->resetNaviBar()V

    .line 2220
    :cond_8
    iget-wide v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xbb8

    cmp-long p1, v0, v3

    if-lez p1, :cond_9

    .line 2221
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideErrorPage()V

    :cond_9
    return v2

    .line 2207
    :pswitch_5
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_b

    .line 2208
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    .line 2209
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1, v2}, Landroid/taobao/windvane/webview/WVUIModel;->switchNaviBar(I)V

    .line 2211
    :cond_b
    iget p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    add-int/2addr p1, v2

    iput p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    .line 2212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOTIFY_PAGE_START mPageLoadedCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mPageLoadedCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hideLoadingView()V
    .locals 1

    .line 2128
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 2129
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_0
    return-void
.end method

.method public injectJsEarly(Ljava/lang/String;)V
    .locals 2

    const-string v0, "javascript:"

    .line 2688
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 2689
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2691
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->injectJs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2694
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$10;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$10;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/uc/webview/export/extension/UCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    :cond_1
    return-void
.end method

.method public insertH5MonitorData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2448
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2451
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 2452
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    .line 2454
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_2

    .line 2456
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2457
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mH5MonitorCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2459
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p3, ""

    :cond_3
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isLive()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    return v0
.end method

.method public isPageEmpty(Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;)V
    .locals 1

    .line 2727
    new-instance v0, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;

    invoke-direct {v0, p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$11;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/taobao/windvane/extra/uc/WVUCWebView$whiteScreenCallback;)V

    const-string p1, "(function(d){var filteredTagNames={\'IFRAME\':1,\'STYLE\':1,\'HTML\':1,\'BODY\':1,\'HEAD\':1,\'SCRIPT\':1,\'TITLE\':1};if(d.body){for(var nodes=d.body.childNodes,i=0;i<nodes.length;i++){var node=nodes[i];if(node!=undefined){if(node.nodeType==1&&filteredTagNames[node.tagName]!=1&&node.style.display!=\'none\'){return\'0\'}else if(node.nodeType==3&&node.nodeValue.trim().length>0){return\'0\'}}}}return\'1\'}(document))"

    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public isReportedFSP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStaticWebView()Z
    .locals 1

    .line 1185
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mIsStaticWebView:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1288
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVUCWebView"

    if-eqz v0, :cond_2

    .line 1289
    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1290
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v0

    .line 1291
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1292
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "cause"

    const-string v2, "GET_ACCESS_FORBIDDEN"

    .line 1293
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 1294
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 1295
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1298
    :cond_1
    :try_start_0
    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1300
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1307
    :cond_2
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {p1, v2, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl filter url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "UrlConfigFilterType"

    const-string v2, "WVUCWebView.loadUrl"

    .line 1309
    invoke-static {v1, v0, v2, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1314
    :cond_3
    iget-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    if-eqz v2, :cond_4

    const-string v2, "&_wv_preload=true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    .line 1317
    iput-boolean v2, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->firstTimeLoad:Z

    :cond_4
    if-eqz v0, :cond_5

    .line 1321
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "userAgent"

    .line 1322
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    invoke-static {}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->getInstance()Lcom/taobao/weaver/prefetch/WMLPrefetch;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->prefetchData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 1324
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_5

    move-object p1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to call prefetch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 1333
    :cond_5
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1335
    invoke-interface {v2, p1}, Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-eqz v0, :cond_7

    .line 1340
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 1342
    invoke-direct {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->tryPrcacheDocument(Ljava/lang/String;)V

    .line 1347
    :cond_7
    :try_start_2
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->onUrlChange(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1351
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1880
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iget-object v0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 1882
    :cond_1
    invoke-static {p2, p3}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 1883
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iget-object v1, v1, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1884
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 1889
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_2

    .line 1890
    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string v0, "WVUCWebView"

    const-string v1, " webview attach to window, and execute remain task"

    .line 2543
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 2545
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2547
    :cond_0
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2548
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onAttachedToWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2553
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onDetachedFromWindow()V

    .line 2554
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->removeWebview(Landroid/taobao/windvane/extra/uc/WVUCWebView;)V

    .line 2555
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2556
    sget-object v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onMessage(ILjava/lang/Object;)V
    .locals 1

    .line 2195
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2197
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2198
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2199
    iget-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 2013
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2014
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onPause()V

    .line 2016
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 2017
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 2019
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbb9

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 2041
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 2042
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onResume()V

    .line 2044
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 2046
    :try_start_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2048
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2051
    :cond_1
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbba

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    const/4 v0, 0x1

    .line 2052
    iput-boolean v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isLive:Z

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 1920
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 1921
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->_getContext()Landroid/content/Context;

    move-result-object v0

    .line 1922
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1923
    nop

    nop

    .line 1924
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1926
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1927
    new-instance v1, Landroid/taobao/windvane/extra/uc/WVUCWebView$8;

    invoke-direct {v1, p0, v0}, Landroid/taobao/windvane/extra/uc/WVUCWebView$8;-><init>(Landroid/taobao/windvane/extra/uc/WVUCWebView;Landroid/view/View;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1936
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1241
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "WVUCWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1242
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object p2

    .line 1243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "cause"

    const-string v1, "POST_ACCESS_FORBIDDEN"

    .line 1245
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "url"

    .line 1246
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 1247
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1250
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1252
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1259
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "postUrl filter url="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UrlConfigFilterType"

    const-string v0, "WVUCWebView.loadUrl"

    .line 1261
    invoke-static {p2, v1, v0, p1}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1266
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1268
    invoke-interface {v0, p1}, Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1272
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->onUrlChange(Landroid/taobao/windvane/extra/uc/WVUCWebView;Ljava/lang/String;)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postUrl : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->postUrl(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1276
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public receiveJSMessageForCustomizedFSP(J)V
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedCustomizedFSP(J)V

    return-void
.end method

.method public receiveJSMessageForCustomizedStage(JLjava/lang/String;)V
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedCustomizedStage(JLjava/lang/String;)V

    return-void
.end method

.method public receiveJSMessageForFP(J)V
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->receiveFPTime(J)V

    .line 377
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedFP(J)V

    return-void
.end method

.method public receiveJSMessageForFSP(J)V
    .locals 1

    .line 370
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvfspManager:Landroid/taobao/windvane/extra/performance2/WVFSPManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVFSPManager;->receiveJSMessage(J)V

    .line 371
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedFSP(J)V

    return-void
.end method

.method public receiveJSMessageForTTI(J)V
    .locals 1

    .line 382
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvh5PPManager:Landroid/taobao/windvane/extra/performance/WVH5PPManager;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->receiveTTITime(J)V

    .line 383
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->pageTracker:Landroid/taobao/windvane/extra/performance2/WVPageTracker;

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker;->onPageReceivedTTI(J)V

    return-void
.end method

.method public refresh()V
    .locals 0

    .line 1389
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reload()V

    return-void
.end method

.method public reload()V
    .locals 3

    .line 1395
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "userAgent"

    .line 1396
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    invoke-static {}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->getInstance()Lcom/taobao/weaver/prefetch/WMLPrefetch;

    move-result-object v1

    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weaver/prefetch/WMLPrefetch;->prefetchData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to call prefetch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WVUCWebView"

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1403
    :goto_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->reload()V

    return-void
.end method

.method public script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1840
    iget v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mWvNativeCallbackId:I

    .line 1841
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/WVNativeCallbackUtil;->putNativeCallbak(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1842
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:console.log(\'wvNativeCallback/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/\'+function(){var s = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; return (typeof s === \'object\' ? JSON.stringify(s) : typeof s === \'string\' ? \'\"\' + s + \'\"\' : s);}())"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1848
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setAllowAllOpen(Z)V
    .locals 0

    .line 2191
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mAllowAllOpen:Z

    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2075
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->currentUrl:Ljava/lang/String;

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCurrentUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WVUCWebView"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataOnActive(Ljava/lang/String;)V
    .locals 0

    .line 2090
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->dataOnActive:Ljava/lang/String;

    return-void
.end method

.method public setGlobalUrlConfigSwitch(Z)V
    .locals 0

    .line 2176
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->mUseGlobalUrlConfig:Z

    return-void
.end method

.method protected setOnErrorTime(J)V
    .locals 0

    .line 2561
    iput-wide p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->onErrorTime:J

    return-void
.end method

.method public setOuterContext(Landroid/content/Context;)V
    .locals 2

    .line 2704
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_0

    .line 2705
    nop

    nop

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    goto :goto_0

    .line 2707
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->context:Landroid/content/Context;

    .line 2709
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->isUCSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2710
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/content/MutableContextWrapper;

    if-eqz v0, :cond_1

    .line 2711
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 1

    .line 1428
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/extension/UCExtension;->getUCSettings()Lcom/uc/webview/export/extension/UCSettings;

    const-string v0, "CachePageNumber"

    .line 1433
    invoke-static {v0, p1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalIntValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setPerformanceDelegate(Landroid/taobao/windvane/extra/performance2/WVPerformance;)V
    .locals 0

    .line 361
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->performanceDelegate:Landroid/taobao/windvane/extra/performance2/WVPerformance;

    return-void
.end method

.method public setReportedFSP(Z)V
    .locals 0

    .line 2739
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->reportedFSP:Z

    return-void
.end method

.method public setSupportDownload(Z)V
    .locals 0

    .line 2145
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->supportDownload:Z

    return-void
.end method

.method public setUrlConfigSwitch(Z)V
    .locals 0

    .line 2166
    iput-boolean p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->useUrlConfig:Z

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .line 2155
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 1

    .line 1908
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    if-eqz v0, :cond_0

    .line 1909
    move-object v0, p1

    nop

    nop

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    .line 1910
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webChromeClient:Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;

    iput-object p0, v0, Landroid/taobao/windvane/extra/uc/WVUCWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 1911
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    return-void

    .line 1913
    :cond_0
    new-instance p1, Landroid/taobao/windvane/webview/WindVaneError;

    const-string v0, "Your WebChromeClient must be extended from WVUCWebChromeClient"

    invoke-direct {p1, v0}, Landroid/taobao/windvane/webview/WindVaneError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 1

    .line 1897
    instance-of v0, p1, Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    if-eqz v0, :cond_0

    .line 1898
    move-object v0, p1

    nop

    nop

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->webViewClient:Landroid/taobao/windvane/extra/uc/WVUCWebViewClient;

    .line 1899
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    return-void

    .line 1901
    :cond_0
    new-instance p1, Landroid/taobao/windvane/webview/WindVaneError;

    const-string v0, "Your WebViewClient must be extended from WVUCWebViewClient"

    invoke-direct {p1, v0}, Landroid/taobao/windvane/webview/WindVaneError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWvUIModel(Landroid/taobao/windvane/webview/WVUIModel;)V
    .locals 0

    .line 2116
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .line 2121
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 2122
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 2135
    sput-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isStop:Z

    .line 2136
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->stopLoading()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
