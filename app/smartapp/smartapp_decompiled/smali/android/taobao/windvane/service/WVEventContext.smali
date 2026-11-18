.class public Landroid/taobao/windvane/service/WVEventContext;
.super Ljava/lang/Object;
.source "WVEventContext.java"


# instance fields
.field public context:Landroid/content/Context;

.field public url:Ljava/lang/String;

.field public webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 19
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 19
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Landroid/taobao/windvane/service/WVEventContext;->context:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Landroid/taobao/windvane/service/WVEventContext;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    .line 27
    iput-object p2, p0, Landroid/taobao/windvane/service/WVEventContext;->url:Ljava/lang/String;

    return-void
.end method
