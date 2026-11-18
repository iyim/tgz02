.class public Landroid/taobao/windvane/debug/WVPageFinishJSRender$WVDevelopToolWebViewClientFilter;
.super Landroid/taobao/windvane/service/WVWebViewClientFilter;
.source "WVPageFinishJSRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/debug/WVPageFinishJSRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WVDevelopToolWebViewClientFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/taobao/windvane/service/WVWebViewClientFilter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onPageFinished(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-static {}, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 47
    instance-of p2, p1, Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz p2, :cond_0

    .line 48
    invoke-static {}, Landroid/taobao/windvane/debug/WVPageFinishJSRender;->access$100()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
