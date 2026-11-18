.class final Landroid/taobao/windvane/extra/uc/WVUCWebView$3;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/extra/uc/WVUCWebView;->initUCLibBy7Z([Ljava/lang/String;Landroid/content/Context;[Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
    .locals 1

    .line 951
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 952
    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v0, :cond_0

    .line 953
    iget-object p1, p1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/br;

    iget-object p1, p1, Lcom/uc/webview/export/internal/setup/br;->dataDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->access$400(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 948
    check-cast p1, Lcom/uc/webview/export/utility/SetupTask;

    invoke-virtual {p0, p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView$3;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V

    return-void
.end method
