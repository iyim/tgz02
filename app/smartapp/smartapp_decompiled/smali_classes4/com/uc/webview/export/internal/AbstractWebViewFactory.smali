.class public abstract Lcom/uc/webview/export/internal/AbstractWebViewFactory;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Interface;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract createWebView(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/uc/webview/export/WebView;Z[I)Lcom/uc/webview/export/internal/interfaces/IWebView;
.end method
