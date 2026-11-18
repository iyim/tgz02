.class public Lcom/uc/webview/export/extension/ExtImageDecoder;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;,
        Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static requestExtImageDecoderResult()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-nez v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setExtImageDecoder(Lcom/uc/webview/export/extension/ExtImageDecoder$ExtImageDecoderParam;Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;)V
    .locals 2

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 80
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-nez v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    :try_start_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    new-instance v1, Lcom/uc/webview/export/extension/a;

    invoke-direct {v1, p1}, Lcom/uc/webview/export/extension/a;-><init>(Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;)V

    aput-object v1, v0, p0

    const/4 p0, 0x2

    new-instance v1, Lcom/uc/webview/export/extension/b;

    invoke-direct {v1, p1}, Lcom/uc/webview/export/extension/b;-><init>(Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;)V

    aput-object v1, v0, p0

    .line 104
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/16 p1, 0x69

    invoke-interface {p0, p1, v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 82
    :cond_2
    :goto_0
    invoke-interface {p1, v1}, Lcom/uc/webview/export/extension/ExtImageDecoder$ImageDecoderListener;->onInit(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
