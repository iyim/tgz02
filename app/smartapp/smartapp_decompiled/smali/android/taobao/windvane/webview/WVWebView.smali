.class public Landroid/taobao/windvane/webview/WVWebView;
.super Landroid/webkit/WebView;
.source "WVWebView.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/taobao/windvane/webview/IWVWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVWebView"

.field private static evaluateJavascriptSupported:Z


# instance fields
.field private final WVURL_SUFFIX:Ljava/lang/String;

.field public bizCode:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field private currentUrl:Ljava/lang/String;

.field private dataOnActive:Ljava/lang/String;

.field dx:F

.field dy:F

.field protected entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

.field protected isAlive:Z

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

.field protected mHandler:Landroid/os/Handler;

.field private mImageUrl:Ljava/lang/String;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPageLoadedCount:I

.field private mPopupClickListener:Landroid/view/View$OnClickListener;

.field private mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

.field private mPopupMenuTags:[Ljava/lang/String;

.field private mUseGlobalUrlConfig:Z

.field private mWvNativeCallbackId:I

.field private onErrorTime:J

.field protected supportDownload:Z

.field private useUrlConfig:Z

.field protected webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

.field protected webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

.field private wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

.field private wvSupportFileSchema:Z

.field private wvSupportNativeJs:Z

.field private wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 131
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 72
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 83
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    const/4 v2, 0x0

    .line 84
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 85
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v3

    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 87
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    const-string v3, "?wvFackUrlState="

    .line 89
    iput-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 94
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 95
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 100
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    .line 105
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v3

    iput-boolean v3, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    .line 110
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    .line 115
    iput v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const-wide/16 v3, 0x0

    .line 572
    iput-wide v3, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 630
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    .line 631
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v3, "Save picture to album"

    :goto_0
    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 634
    new-instance v1, Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/webview/WVWebView$2;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 998
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 999
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 132
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 133
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 124
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, ""

    .line 71
    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    const/16 p2, 0x3e8

    .line 72
    iput p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 83
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 85
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v2

    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 87
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    const-string v2, "?wvFackUrlState="

    .line 89
    iput-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 94
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 95
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 100
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    .line 105
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v2

    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    .line 110
    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    .line 115
    iput v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const-wide/16 v2, 0x0

    .line 572
    iput-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 630
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    .line 631
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v2, "Save picture to album"

    :goto_0
    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 634
    new-instance v0, Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/webview/WVWebView$2;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 998
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 999
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 125
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ""

    .line 71
    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->bizCode:Ljava/lang/String;

    const/16 p2, 0x3e8

    .line 72
    iput p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    const/4 p3, 0x0

    .line 76
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 83
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    .line 85
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v1

    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    .line 87
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    const-string v1, "?wvFackUrlState="

    .line 89
    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->WVURL_SUFFIX:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 94
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 95
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 100
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    .line 105
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/config/GlobalConfig;->isUseGlobalUrlConfig()Z

    move-result v1

    iput-boolean v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    .line 110
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    .line 115
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const-wide/16 v1, 0x0

    .line 572
    iput-wide v1, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 630
    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    .line 631
    new-array p3, p2, [Ljava/lang/String;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\u4fdd\u5b58\u5230\u76f8\u518c"

    goto :goto_0

    :cond_0
    const-string v1, "Save picture to album"

    :goto_0
    aput-object v1, p3, v0

    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    .line 634
    new-instance p3, Landroid/taobao/windvane/webview/WVWebView$2;

    invoke-direct {p3, p0}, Landroid/taobao/windvane/webview/WVWebView$2;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object p3, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 998
    iput-boolean p2, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    .line 999
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    .line 119
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Landroid/taobao/windvane/webview/WVWebView;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/webview/WVWebView;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    return p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/webview/WVWebView;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Landroid/taobao/windvane/webview/WVWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/taobao/windvane/webview/WVWebView;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p0
.end method

.method static synthetic access$202(Landroid/taobao/windvane/webview/WVWebView;Landroid/taobao/windvane/view/PopupWindowController;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 68
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p1
.end method

.method static synthetic access$300(Landroid/taobao/windvane/webview/WVWebView;)[Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupMenuTags:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Landroid/taobao/windvane/webview/WVWebView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private init()V
    .locals 7

    .line 301
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbc0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 304
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 305
    new-instance v0, Landroid/taobao/windvane/webview/WVWebViewClient;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/webview/WVWebViewClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    .line 306
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 307
    new-instance v0, Landroid/taobao/windvane/webview/WVWebChromeClient;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/taobao/windvane/webview/WVWebChromeClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    .line 308
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 309
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    iput-object p0, v0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    const/4 v0, 0x0

    .line 312
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVWebView;->setVerticalScrollBarEnabled(Z)V

    .line 313
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->requestFocus()Z

    .line 314
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 315
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 316
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 318
    :cond_1
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/taobao/windvane/webview/WVRenderPolicy;->disableAccessibility(Landroid/content/Context;)V

    .line 319
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 321
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 322
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 323
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getAppTag()Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 327
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AliApp("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v3, "TTID/"

    .line 331
    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " TTID/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/taobao/windvane/config/GlobalConfig;->getInstance()Landroid/taobao/windvane/config/GlobalConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/config/GlobalConfig;->getTtid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WindVane/8.5.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 336
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 338
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    .line 339
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 348
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 350
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_5

    .line 354
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 358
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 360
    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 361
    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 366
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v3, v4, :cond_6

    .line 367
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 370
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_7

    const/16 v3, 0x64

    .line 371
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    goto :goto_0

    .line 373
    :cond_7
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 376
    :goto_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_8

    .line 377
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 380
    :cond_8
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->init()V

    .line 382
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v1, v3, p0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;-><init>(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    .line 383
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVAppEvent;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVAppEvent;-><init>()V

    .line 384
    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v1, v3, p0}, Landroid/taobao/windvane/jsbridge/WVAppEvent;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/WVWebView;)V

    const-string v3, "AppEvent"

    .line 385
    invoke-virtual {p0, v3, v1}, Landroid/taobao/windvane/webview/WVWebView;->addJsObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v1, v3, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v1, v3, :cond_9

    :try_start_0
    const-string/jumbo v1, "searchBoxJavaBridge_"

    .line 390
    invoke-virtual {p0, v1}, Landroid/taobao/windvane/webview/WVWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v1, "accessibility"

    .line 391
    invoke-virtual {p0, v1}, Landroid/taobao/windvane/webview/WVWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v1, "accessibilityTraversal"

    .line 392
    invoke-virtual {p0, v1}, Landroid/taobao/windvane/webview/WVWebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 394
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 398
    :cond_9
    :goto_1
    new-instance v1, Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-direct {v1}, Landroid/taobao/windvane/filter/WVSecurityFilter;-><init>()V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    .line 400
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    sget v4, Landroid/taobao/windvane/service/WVEventService;->WV_FORWARD_EVENT:I

    invoke-virtual {v1, v3, v4}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 401
    new-instance v1, Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/jspatch/WVJsPatchListener;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    iput-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    .line 402
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    sget v4, Landroid/taobao/windvane/service/WVEventService;->WV_BACKWARD_EVENT:I

    invoke-virtual {v1, v3, v4}, Landroid/taobao/windvane/service/WVEventService;->addEventListener(Landroid/taobao/windvane/service/WVEventListener;I)V

    .line 405
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v1, v3, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v1, v3, :cond_b

    .line 407
    :try_start_1
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_b

    .line 409
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, ""

    const-string/jumbo v5, "\u521d\u59cb\u5316"

    if-nez v3, :cond_a

    .line 411
    :try_start_2
    invoke-static {v5, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_2

    :cond_a
    const-string v6, "intent:#Intent;S.K_1171477665=;end"

    .line 412
    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v3, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 413
    invoke-static {v5, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 420
    :cond_b
    :goto_2
    new-instance v0, Landroid/taobao/windvane/webview/WVUIModel;

    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/taobao/windvane/webview/WVUIModel;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    .line 422
    new-instance v0, Landroid/taobao/windvane/webview/WVWebView$1;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/webview/WVWebView$1;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 450
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 451
    new-instance v0, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/webview/WVWebView$WVDownLoadListener;-><init>(Landroid/taobao/windvane/webview/WVWebView;)V

    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 453
    invoke-static {}, Landroid/taobao/windvane/webview/WVTweakWebCoreHandler;->tryTweakWebCoreHandler()V

    .line 454
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    .line 455
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPackageMonitorInterface()Landroid/taobao/windvane/monitor/WVPackageMonitorInterface;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 457
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didWebViewInitAtTime(J)V

    .line 459
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    invoke-static {}, Landroid/taobao/windvane/webview/WVRenderPolicy;->shouldDisableHardwareRenderInLayer()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 461
    :try_start_3
    invoke-virtual {p0, v2, v0}, Landroid/taobao/windvane/webview/WVWebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 467
    :cond_d
    :goto_3
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVBridgeEngine;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    const-string v1, "__windvane__"

    invoke-virtual {p0, v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _getContext()Landroid/content/Context;
    .locals 1

    .line 787
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public _post(Ljava/lang/Runnable;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 496
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const-string v0, "WVWebView"

    const-string v1, " webview has not attach to window"

    .line 497
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    .line 501
    :cond_0
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/webview/WVWebView;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const-string v0, "accessibility"

    .line 751
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "accessibilityTraversal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 754
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    const-string p1, "WVWebView"

    const-string p2, "addJavascriptInterface is disabled before API level 17 for security reason."

    .line 757
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public addJsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 774
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->addEntry(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public allowAllOpen()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    return v0
.end method

.method public back()Z
    .locals 3

    .line 885
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->goBack()V

    .line 887
    iget v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 888
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    goto :goto_0

    .line 890
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "back pressed, mPageLoadedCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WVWebView"

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public canGoBack()Z
    .locals 2

    .line 878
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbbc

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/service/WVEventResult;->isSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 880
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canUseGlobalUrlConfig()Z
    .locals 1

    .line 972
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    return v0
.end method

.method public canUseUrlConfig()Z
    .locals 1

    .line 962
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    return v0
.end method

.method public clearCache()V
    .locals 1

    const/4 v0, 0x1

    .line 947
    invoke-super {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public closeLongPressSaveImage()V
    .locals 1

    const/4 v0, 0x0

    .line 848
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 524
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    .line 527
    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    .line 530
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 531
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    const/4 v0, 0x0

    .line 536
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 537
    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 538
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    .line 539
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    .line 540
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v1

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->tryToRunTailBridges()V

    .line 541
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onDestroy()V

    .line 542
    iget-object v1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 543
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 544
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    .line 546
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    const/16 v2, 0xbbb

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 547
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSecurityFilter:Landroid/taobao/windvane/filter/WVSecurityFilter;

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 548
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v1

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->jsPatchListener:Landroid/taobao/windvane/jspatch/WVJsPatchListener;

    invoke-virtual {v1, v2}, Landroid/taobao/windvane/service/WVEventService;->removeEventListener(Landroid/taobao/windvane/service/WVEventListener;)V

    .line 549
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->removeAllViews()V

    .line 550
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    .line 551
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPopupClickListener:Landroid/view/View$OnClickListener;

    .line 552
    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 553
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/webview/WVWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 554
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    .line 555
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 559
    :cond_3
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 811
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

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

    const-string v0, "javascript:"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 824
    :cond_0
    sget-boolean v2, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    if-eqz v2, :cond_1

    .line 826
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 831
    :catch_0
    sput-boolean v1, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    .line 832
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 828
    :catch_1
    sput-boolean v1, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascriptSupported:Z

    .line 829
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 835
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->script2NativeCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public fireEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "{}"

    .line 913
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 918
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .line 139
    invoke-super {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 4

    .line 860
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVWebView"

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrl by currentUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    return-object v0

    .line 865
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrl by webview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDataOnActive()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 780
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 782
    :cond_0
    invoke-virtual {v0, p1}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPageLoadedCount()I
    .locals 1

    .line 982
    iget v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 854
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .line 952
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWVCallBackContext()Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 923
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;)V

    return-object v0
.end method

.method public getWVHandler()Landroid/os/Handler;
    .locals 1

    .line 712
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWvUIModel()Landroid/taobao/windvane/webview/WVUIModel;
    .locals 1

    .line 569
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 585
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    .line 623
    :pswitch_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u5931\u8d25"

    goto :goto_0

    :cond_0
    const-string v0, "Failed to save picture"

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 619
    :pswitch_1
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u56fe\u7247\u4fdd\u5b58\u5230\u76f8\u518c\u6210\u529f"

    goto :goto_1

    :cond_1
    const-string v0, "Success to save picture"

    :goto_1
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 613
    :pswitch_2
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_3

    .line 614
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_3
    return v1

    .line 605
    :pswitch_3
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->loadErrorPage()V

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    .line 607
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 608
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_5
    return v1

    .line 595
    :pswitch_4
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    .line 596
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    .line 597
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->resetNaviBar()V

    .line 599
    :cond_7
    iget-wide v2, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/taobao/windvane/webview/WVWebView;->onErrorTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long p1, v2, v4

    if-lez p1, :cond_8

    .line 600
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->hideErrorPage()V

    :cond_8
    return v1

    .line 587
    :pswitch_5
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->isShowLoading()Z

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_a

    .line 588
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    .line 589
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/webview/WVUIModel;->switchNaviBar(I)V

    .line 591
    :cond_a
    iget p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mPageLoadedCount:I

    return v1

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

    .line 940
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->hideLoadingView()V

    :cond_0
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    return v0
.end method

.method public isSupportFileSchema()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadDataWithBaseURL: baseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVWebView"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    .line 168
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 172
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "cause"

    const-string v2, "GET_ACCESS_FORBIDDEN"

    .line 176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 177
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 178
    invoke-virtual {p0, p1, v0}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_1
    :try_start_0
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 190
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl filter url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v2, 0xbc2

    invoke-virtual {v0, v2}, Landroid/taobao/windvane/service/WVEventService;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 196
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/webview/WVSchemeInterceptService;->getWVSchemeIntercepter()Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 201
    invoke-interface {v0, p1}, Landroid/taobao/windvane/webview/WVSchemeIntercepterInterface;->dealUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_5
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVABTestHandler()Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->shouldTryABTest(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 206
    invoke-static {}, Landroid/taobao/windvane/urlintercept/WVURLInterceptService;->getWVABTestHandler()Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/taobao/windvane/urlintercept/WVABTestUrlHandler;->toABTestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " abTestUrl to : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    .line 212
    :cond_6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 230
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 234
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "cause"

    const-string v1, "GET_ACCESS_FORBIDDEN"

    .line 238
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "url"

    .line 239
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_1
    :try_start_0
    invoke-super {p0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadUrl filter url="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 257
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl with headers: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 791
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 506
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 507
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 509
    :cond_0
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 510
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 515
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 516
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Landroid/taobao/windvane/webview/WVWebView;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onMessage(ILjava/lang/Object;)V
    .locals 1

    .line 575
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 577
    iput p1, v0, Landroid/os/Message;->what:I

    .line 578
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 677
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onPause()V

    .line 680
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 681
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 683
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

    .line 702
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onResume()V

    .line 705
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 706
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 708
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/service/WVEventService;->getInstance()Landroid/taobao/windvane/service/WVEventService;

    move-result-object v0

    const/16 v1, 0xbba

    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/taobao/windvane/service/WVEventService;->onEvent(ILandroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .line 665
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->entryManager:Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->onScrollChanged(IIII)V

    .line 669
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 671
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dx:F

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    .line 1010
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v0, :cond_3

    .line 1011
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v2

    :cond_0
    const/4 v3, 0x2

    const/high16 v4, 0x40a00000    # 5.0f

    if-ne v0, v3, :cond_1

    .line 1016
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_1
    if-ne v0, v2, :cond_3

    .line 1021
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroid/taobao/windvane/webview/WVWebView;->dy:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 1022
    iput-boolean v2, p0, Landroid/taobao/windvane/webview/WVWebView;->isUser:Z

    return v2

    .line 1025
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 1027
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1028
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1029
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mEventSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1033
    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public openLongPressSaveImage()V
    .locals 1

    const/4 v0, 0x1

    .line 843
    iput-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->longPressSaveImage:Z

    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .line 688
    invoke-super {p0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 689
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVWebView"

    const-string v1, "You  must be careful  to Call pauseTimers ,It\'s Global"

    .line 690
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3

    .line 264
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 267
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/util/WVUrlUtil;->isCommonUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "WVWebView"

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Landroid/taobao/windvane/config/WVServerConfig;->isBlackUrl(Ljava/lang/String;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-static {}, Landroid/taobao/windvane/config/WVURLConfig;->getInstance()Landroid/taobao/windvane/config/WVURLConfig;

    move-result-object p2

    invoke-virtual {p2}, Landroid/taobao/windvane/config/WVURLConfig;->getForbiddenDomainRedirectURL()Ljava/lang/String;

    move-result-object p2

    .line 269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "cause"

    const-string v1, "POST_ACCESS_FORBIDDEN"

    .line 271
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "url"

    .line 272
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x192

    .line 273
    invoke-virtual {p0, p1, p2}, Landroid/taobao/windvane/webview/WVWebView;->onMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->context:Landroid/content/Context;

    invoke-static {p1, v0, p0}, Landroid/taobao/windvane/webview/WVURLFilter;->doFilter(Ljava/lang/String;Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadUrl filter url="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_3
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postUrl: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :cond_5
    :goto_1
    return-void
.end method

.method public refresh()V
    .locals 0

    .line 220
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->reload()V

    return-void
.end method

.method public reload()V
    .locals 0

    .line 151
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public resumeTimers()V
    .locals 2

    .line 695
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 696
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVWebView"

    const-string v1, "You  must be careful  to Call resumeTimers ,It\'s Global"

    .line 697
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

    .line 803
    iget v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/windvane/webview/WVWebView;->mWvNativeCallbackId:I

    .line 804
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/WVNativeCallbackUtil;->putNativeCallbak(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 805
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

    .line 807
    invoke-virtual {p0, p1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setAllowAllOpen(Z)V
    .locals 0

    .line 992
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mAllowAllOpen:Z

    return-void
.end method

.method public setCurrentUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 872
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->currentUrl:Ljava/lang/String;

    .line 873
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

    const-string p2, "WVWebView"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataOnActive(Ljava/lang/String;)V
    .locals 0

    .line 902
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVWebView;->dataOnActive:Ljava/lang/String;

    return-void
.end method

.method public setGlobalUrlConfigSwitch(Z)V
    .locals 0

    .line 977
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->mUseGlobalUrlConfig:Z

    return-void
.end method

.method public setSupportDownload(Z)V
    .locals 0

    .line 739
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->supportDownload:Z

    return-void
.end method

.method public setSupportFileSchema(Z)V
    .locals 0

    .line 743
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportFileSchema:Z

    return-void
.end method

.method public setUrlConfigSwitch(Z)V
    .locals 0

    .line 967
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->useUrlConfig:Z

    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .line 957
    invoke-virtual {p0}, Landroid/taobao/windvane/webview/WVWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    .line 484
    instance-of v0, p1, Landroid/taobao/windvane/webview/WVWebChromeClient;

    if-eqz v0, :cond_0

    .line 485
    move-object v0, p1

    nop

    nop

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    .line 486
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    iput-object p0, v0, Landroid/taobao/windvane/webview/WVWebChromeClient;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 487
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webChromeClient:Landroid/taobao/windvane/webview/WVWebChromeClient;

    if-eqz v0, :cond_1

    .line 489
    iput-object p1, v0, Landroid/taobao/windvane/webview/WVWebChromeClient;->extraWebChromeClient:Landroid/webkit/WebChromeClient;

    :cond_1
    :goto_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 473
    instance-of v0, p1, Landroid/taobao/windvane/webview/WVWebViewClient;

    if-eqz v0, :cond_0

    .line 474
    move-object v0, p1

    nop

    nop

    iput-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    .line 475
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->webViewClient:Landroid/taobao/windvane/webview/WVWebViewClient;

    if-eqz v0, :cond_1

    .line 477
    iput-object p1, v0, Landroid/taobao/windvane/webview/WVWebViewClient;->extraWebViewClient:Landroid/webkit/WebViewClient;

    :cond_1
    :goto_0
    return-void
.end method

.method public showLoadingView()V
    .locals 1

    .line 933
    iget-object v0, p0, Landroid/taobao/windvane/webview/WVWebView;->wvUIModel:Landroid/taobao/windvane/webview/WVUIModel;

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {v0}, Landroid/taobao/windvane/webview/WVUIModel;->showLoadingView()V

    :cond_0
    return-void
.end method

.method public superLoadUrl(Ljava/lang/String;)V
    .locals 1

    .line 224
    iget-boolean v0, p0, Landroid/taobao/windvane/webview/WVWebView;->isAlive:Z

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public supportJavascriptInterface(Z)V
    .locals 0

    .line 764
    iput-boolean p1, p0, Landroid/taobao/windvane/webview/WVWebView;->wvSupportNativeJs:Z

    return-void
.end method
