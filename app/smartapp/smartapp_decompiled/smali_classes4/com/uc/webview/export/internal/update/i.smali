.class final Lcom/uc/webview/export/internal/update/i;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/cyclone/update/UpdateService;

.field final synthetic b:Lcom/uc/webview/export/internal/update/b$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/update/b$a;Lcom/uc/webview/export/cyclone/update/UpdateService;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/uc/webview/export/internal/update/i;->b:Lcom/uc/webview/export/internal/update/b$a;

    iput-object p2, p0, Lcom/uc/webview/export/internal/update/i;->a:Lcom/uc/webview/export/cyclone/update/UpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/update/i;->a:Lcom/uc/webview/export/cyclone/update/UpdateService;

    invoke-interface {v0}, Lcom/uc/webview/export/cyclone/update/UpdateService;->getExtractDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 388
    invoke-static {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
