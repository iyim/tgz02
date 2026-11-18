.class final Lcom/uc/webview/export/internal/setup/by;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/webkit/ValueCallback;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/bw;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bw;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/by;->b:Lcom/uc/webview/export/internal/setup/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/by;->b:Lcom/uc/webview/export/internal/setup/bw;

    const-string v0, "switch"

    invoke-virtual {p1, v0}, Lcom/uc/webview/export/internal/setup/bw;->getCallback(Ljava/lang/String;)Landroid/webkit/ValueCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/by;->a:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    .line 160
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    .line 1164
    invoke-static {}, Lcom/uc/webview/export/internal/setup/bw;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "switch callback."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/by;->a:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 1166
    invoke-interface {v0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
